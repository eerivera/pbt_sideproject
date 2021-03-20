from hypothesis import assume, settings, find, Phase
from hypothesis.strategies import booleans, builds, composite, lists, permutations, sampled_from, tuples
from hypothesis.errors import NoSuchExample
from io import StringIO
from itertools import product
from typing import Dict, List, Tuple
import time

from properties import DAG, Output, PName, p_function_map, p_name_list

IOPair = Tuple[DAG, Output]

MIN_N = 0
MIN_N_NONTRIVIAL = 3
MAX_N = 10
MIN_EDGES = 0
MIN_EDGES_NONTRIVIAL = 7


NODE_MASTER_LIST = [list(map(str, range(n))) for n in range(MIN_N, MAX_N)]
OUTPUT_MASTER_LIST = list(map(str, range(10)))

@composite
def edge_pairs_strat(draw, is_trivial=False):
    min_n = MIN_N if is_trivial else MIN_N_NONTRIVIAL
    n_list = draw(sampled_from(NODE_MASTER_LIST[min_n:MAX_N]))
    n = len(n_list)
    ordering = draw(permutations(n_list))
    edges = [(source, sink) 
             for i, source in enumerate(ordering)
             for j, sink in enumerate(ordering[i+1:], start=i+1)
             if draw(booleans())]
    min_edges = MIN_EDGES if is_trivial else MIN_EDGES_NONTRIVIAL
    if not is_trivial:
        assume(len(edges) >= min_edges)
    return draw(permutations(edges))

dag_strat = builds(DAG, edge_tuples=edge_pairs_strat())
dag_strat_trivial = builds(DAG, edge_tuples=edge_pairs_strat(is_trivial=True))

output_strat = lists(sampled_from(OUTPUT_MASTER_LIST), min_size=MIN_N_NONTRIVIAL, max_size=MAX_N)
output_strat_trivial = lists(sampled_from(OUTPUT_MASTER_LIST), max_size=MAX_N)

io_pair_strat = tuples(dag_strat, output_strat) # TODO - determine best min_n
io_pair_strat_trivial = tuples(dag_strat_trivial, output_strat_trivial) # TODO - better trivial generation

PCombo = Dict[PName, bool]

def is_known_unsatisfiable(p_combo: PCombo):
    if all((p_combo[PName.P1], p_combo[PName.P2])) and \
       not (p_combo[PName.P3] == p_combo[PName.P5]):
        return (True, "(p1 & p2) -> (p3 <-> p5)")

    if all((p_combo[PName.P3], p_combo[PName.P5])) and \
       not (p_combo[PName.P1] == p_combo[PName.P2]):
        return (True, "(p3 & p5) -> (p1 <-> p2)")

    # empirical, not logical (yet)
    if all((not p_combo[PName.P1], p_combo[PName.P2], not p_combo[PName.P3], p_combo[PName.P5])):
        return (True, "(not p1 & p2 & not p3 & p5) -> False")


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
        super().__exit__()
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


# class PyretWriter(AbstractWriter):
#     def __init__(self, filename):
#         super().__init__()
#         self.filename = filename
#         self.stringio = None

#     def __enter__(self):
#         super().__enter__()
#         self.stringio = StringIO()
#         return self

#     def __exit__(self, *_): # TODO - handle errors
#         super().__exit__()
#         with open(self.filename, 'w') as file:
#             file.write(self.stringio.getvalue())
#         self.stringio.close()
#         self.stringio = None

#     def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
#         self.stringio.write(
#             f"# No check was generated for \"{self.make_test_name(p_combo, -1)}\"\n"
#             f"# The example generator gave the following reason: {reason}.\n\n"
#         )

#     def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
#         input_pair, matches = example
#         companies, candidates = input_pair
#         self.stringio.write(
#             f"check \"{self.make_test_name(p_combo, bucket)}\":\n"
#             f"  is-valid(\n"
#             f"    {self.make_prefs_list_str(companies)},\n"
#             f"    {self.make_prefs_list_str(candidates)},\n"
#             f"    {self.make_matches_str(matches)}\n"
#             f"  ) is {'true' if all(p_combo.values()) else 'false'}\n"
#             "end\n\n"
#         )

#     def write_example_not_found(self, p_combo: PCombo, bucket: int):
#         self.stringio.write(
#             f"# No check was generated for \"{self.make_test_name(p_combo, bucket)}\"\n"
#             "# Please re-run the example generator.\n\n"
#         )

if __name__ == '__main__':
    OUTPUT_FILE = "hypothesis_checks_buckets_trivial.arr"
    EXAMPLES_PER_BUCKET = 1
    SHRUNK_EXAMPLES_PER_BUCKET = 1
    TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET = 1

    with DebugWriter() as writer:
    # with PyretWriter(OUTPUT_FILE) as writer:
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
                                           settings=settings(max_examples=10_000, phases=phases_to_use))
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
