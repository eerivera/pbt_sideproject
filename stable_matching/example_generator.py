from enum import Enum
from hypothesis import assume, settings, find, Phase
from hypothesis.strategies import builds, composite, integers, permutations, lists, sampled_from, shared, sets, tuples
from hypothesis.errors import NoSuchExample
from io import StringIO
from itertools import product
from typing import Dict, List, Tuple
import time

from properties import Hire, IOPair, Matches, PName, Preferences, p_function_map, p_name_list

MIN_N = 0
MAX_N = 6
N_MASTER_LIST = [list(range(n)) for n in range(MIN_N, MAX_N)]

@composite
def input_pairs(draw, min_n = MIN_N, max_n = MAX_N):
    n_list = draw(sampled_from(N_MASTER_LIST[min_n:max_n]))
    n = len(n_list)
    ranking_strat = permutations(n_list)
    ranking_set_strat = lists(ranking_strat, min_size=n, max_size=n)
    return draw(tuples(ranking_set_strat, ranking_set_strat))

usable_ints = integers(min_value=MIN_N, max_value=MAX_N)
hire_strat = builds(Hire, company=usable_ints, candidate=usable_ints)
matches_strat = sets(hire_strat, min_size=0, max_size=MAX_N)
io_pair_strat = tuples(input_pairs(min_n=3), matches_strat) # TODO - determine best min_n
io_pair_strat_trivial = tuples(input_pairs(min_n=0), matches_strat) # TODO - better trivial generation

PCombo = Dict[PName, bool]

def is_known_unsatisfiable(p_combo: PCombo):
    # Handwavy argument for below implications:

    # trying to find a case where neither p1 nor p5 are true, but rest are
    # candidates = [0,1,2]
    # companies = [0,1,2]
    # p2 says that matches must include companies 0, 1, 2
    # matches = [(_,0), (_,1), (_,2)] + any of [(_,3), (_,4), (_,5), (_,6)]
    # p6 says that all candidates in matches were in the input
    # there were only 3 candidates in the input, so only at most 3 can exist in matches
    # p4 says that no company or candidate has more than 1 match
    # by the pigeonhole principle (and a little bit of handwaving),
    # i must use all 3 candidates and no more (meaning p1 is implied)
    # and i must all 3 companies and no more (meaning p5 is implied)
    # therefore, p2 & p4 & p6 -> p1 & p5
    # this generalizes to any n
    
    # without loss of generality, the same argument applies to prove that
    # p1 & p4 & p5 -> p2 & p6

    if all((p_combo[PName.P2], p_combo[PName.P4], p_combo[PName.P6])) \
       and not all((p_combo[PName.P1], p_combo[PName.P5])):
        return (True, "(p2 & p4 & p6) -> (p1 & p5)")
    elif all((p_combo[PName.P1], p_combo[PName.P4], p_combo[PName.P5])) \
        and not all((p_combo[PName.P2], p_combo[PName.P6])):
        return (True, "(p1 & p4 & p5) -> (p2 & p6)")

    # more implications assumed from empirical evidence
    # TODO - justify these
    elif p_combo[PName.P3] and not any((p_combo[PName.P1], p_combo[PName.P2])):
        return (True, "(p3) -> (p1 | p2)")
    elif all((p_combo[PName.P1], p_combo[PName.P3], p_combo[PName.P4])) \
        and not any((p_combo[PName.P2], p_combo[PName.P5])):
        return (True, "(p1 & p3 & p4) -> (p2 | p5)")
    elif all((p_combo[PName.P2], p_combo[PName.P3], p_combo[PName.P4])) \
        and not any((p_combo[PName.P1], p_combo[PName.P6])):
        return (True, "(p2 & p3 & p4) -> (p1 | p6)")

    # REVISIT THESE ASSUMPTIONS NOW THAT THOMAS CAUGHT A BUG IN P3



    return (False, None)

class AbstractWriter:
    def __init__(self):
        self.start_time = None

    def __enter__(self):
        self.start_time = time.process_time()
        return self

    def __exit__(self, *_):
        print(time.process_time() - self.start_time)
        self.start_time = None

    # TODO - mark as abstract methods
    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        raise NotImplementedError

    def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
        raise NotImplementedError

    def write_example_not_found(self, p_combo: PCombo, bucket: int):
        raise NotImplementedError

    def mark_end(self):
        raise NotImplementedError


class DebugWriter(AbstractWriter):
    def __init__(self):
        super().__init__()
        self.count = {
            "known_invalid": 0,
            "example_found": 0,
            "no_example": 0,
        }

    def __exit__(self, *_): # TODO - handle errors
        super().exit()
        print(self.count)

    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        print(f"{p_combo}: \n\t{reason}")
        self.count["known_invalid"] += 1

    def write_valid_example(self, p_combo: PCombo, example: IOPair, _: int):
        print(f"{p_combo}: \n\t{example}")
        self.count["example_found"] += 1

    def write_example_not_found(self, p_combo: PCombo, _: int):
        print(f"{p_combo}: \n\tNo example found")
        self.count["no_example"] += 1


class PyretWriter(AbstractWriter):
    def __init__(self, filename):
        super().__init__()
        self.filename = filename
        self.stringio = None

    def __enter__(self):
        super().__enter__()
        self.stringio = StringIO()
        return self

    def __exit__(self, *_): # TODO - handle errors
        super().__exit__()
        with open(self.filename, 'w') as file:
            file.write(self.stringio.getvalue())
        self.stringio.close()
        self.stringio = None

    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        self.stringio.write(
            f"# No check was generated for \"{self.make_test_name(p_combo, -1)}\"\n"
            f"# The example generator gave the following reason: {reason}.\n\n"
        )

    def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
        input_pair, matches = example
        companies, candidates = input_pair
        self.stringio.write(
            f"check \"{self.make_test_name(p_combo, bucket)}\":\n"
            f"  is-valid(\n"
            f"    {self.make_prefs_list_str(companies)},\n"
            f"    {self.make_prefs_list_str(candidates)},\n"
            f"    {self.make_matches_str(matches)}\n"
            f"  ) is {'true' if all(p_combo.values()) else 'false'}\n"
            "end\n\n"
        )

    def write_example_not_found(self, p_combo: PCombo, bucket: int):
        self.stringio.write(
            f"# No check was generated for \"{self.make_test_name(p_combo, bucket)}\"\n"
            "# Please re-run the example generator.\n\n"
        )

    def make_test_name(self, p_combo: PCombo, bucket: int):
        if all(p_combo.values()):
            return f"allprop_{bucket}"
        return f"notp-{'-'.join(p.name[1:] for p, value in p_combo.items() if not value)}_{bucket}" # TODO - able to generate multiple examples per bucket?

    def make_prefs_list_str(self, prefs_list: List[Preferences]):
        return f"[list: {', '.join(map(self.make_prefs_str, prefs_list))}]"

    def make_prefs_str(self, prefs: Preferences):
        return f"[list: {', '.join(map(str, prefs))}]"

    def make_matches_str(self, matches: Matches):
        return f"[set: {', '.join(map(self.make_hire_str, matches))}]"

    def make_hire_str(self, hire: Hire):
        return f"hire({hire.company}, {hire.candidate})"

if __name__ == '__main__':
    OUTPUT_FILE = "hypothesis_checks_buckets_trivial.arr"
    EXAMPLES_PER_BUCKET = 15
    SHRUNK_EXAMPLES_PER_BUCKET = 3
    TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET = 1

    # with DebugWriter() as writer:
    with PyretWriter(OUTPUT_FILE) as writer:
        for bitvector in product((True, False), repeat=len(p_name_list)):
            print(bitvector)
            p_combo = {p_name: answer for p_name, answer in zip(p_name_list, bitvector)}

            is_invalid, reason = is_known_unsatisfiable(p_combo)
            if is_invalid:
                writer.write_known_unsatisfiable(p_combo, reason)
                continue

            is_trivial = True
            phases_to_use = [Phase.generate, Phase.target, Phase.shrink]

            def valid_example(io_pair: IOPair):
                return all((p_function_map[p_name](*io_pair) == answer
                            for p_name, answer in p_combo.items()
                            if answer is not None))
            
            for bucket in range(EXAMPLES_PER_BUCKET):
                if bucket == SHRUNK_EXAMPLES_PER_BUCKET:
                    del phases_to_use[-1] # i.e. stop shrinking future examples
                if bucket == TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET:
                    is_trivial = False
                try:
                    example: IOPair = find(io_pair_strat_trivial if is_trivial else io_pair_strat, # type: ignore # mypy doesn't know enough about the type info of Hypothesis
                                           valid_example,
                                           settings=settings(max_examples=500_000, phases=phases_to_use))
                    writer.write_valid_example(p_combo, example, bucket)
                except NoSuchExample:
                    writer.write_example_not_found(p_combo, bucket)
            print(time.process_time() - writer.start_time)

# NOTE: assume(input_list != output_list) eliminates many sets that would be correct. 
#       The remaining sets are difficult to find and take many more examples.

# TODO - allow for "don't care" (is this necessary if we have all points on the lattice?)

# Hypothesis learns over time, and caches results in a local database (that I .gitignore).
# EXCEPT that the function is dynamically defined, so Hypothesis can't hash it to cache results
# TODO - essentially make a macro that expands to a larger Python file, with one function definition per p_combo,
#        allowing Hypothesis to remember
