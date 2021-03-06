from enum import Enum
from hypothesis import assume, settings, find, Phase
from hypothesis.strategies import builds, integers, lists, tuples
from hypothesis.errors import NoSuchExample
from io import StringIO
from itertools import product
from typing import Dict, Tuple
import time
import csv

from properties import Person, PersonSequence, PName, p_function_map, p_name_list

usable_ints = integers(min_value=0, max_value=5)
names = usable_ints
ages = usable_ints
people = builds(Person, name=names, age=ages)
inputlist_strategy = lists(people, min_size=3, max_size=5)
outputlist_strategy = lists(people, min_size=2, max_size=5)
io_pair_strategy = tuples(inputlist_strategy, outputlist_strategy)

inputlist_strategy_trivial = lists(people, min_size=0, max_size=5)
outputlist_strategy_trivial = lists(people, min_size=0, max_size=5)
io_pair_strategy_trivial = tuples(inputlist_strategy_trivial, outputlist_strategy_trivial)


IOPair = Tuple[PersonSequence, PersonSequence]
PCombo = Dict[PName, bool]

def is_known_unsatisfiable(p_combo: PCombo):
    # TODO - more detailed explanations of implications
    if p_combo[PName.P5] and not p_combo[PName.P2]:
        return (True, "p5 -> p2")
    elif p_combo[PName.P4] and not p_combo[PName.P1]:
        return (True, "p4 -> p1")
    elif p_combo[PName.P1] and p_combo[PName.P5] and not p_combo[PName.P6]:
        return (True, "(p1 & p5) -> p6")
    elif p_combo[PName.P2] and p_combo[PName.P4] and not p_combo[PName.P6]:
        return (True, "(p2 & p4) -> p6")
    elif p_combo[PName.P4] and p_combo[PName.P5] and not p_combo[PName.P6]:
        return (True, "(p4 & p5) -> p6")
    elif p_combo[PName.P4] and p_combo[PName.P6] and not p_combo[PName.P5]:
        return (True, "(p4 & p6) -> p5")
    elif p_combo[PName.P5] and p_combo[PName.P6] and not p_combo[PName.P4]:
        return (True, "(p5 & p6) -> p4")
    else:
        return (False, None)

class AbstractWriter:
    def __init__(self):
        self.start_time = None
        pass

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

    def make_test_name(self, p_combo: PCombo, bucket: int):
        if all(p_combo.values()):
            return f"allprop_{bucket}"
        return f"notp-{'-'.join(p.name[1:] for p, value in p_combo.items() if not value)}_{bucket}" # TODO - able to generate multiple examples per bucket?

def makename(p_combo):
    if all(p_combo.values()):
        return "allprop"
    else:
        return f"notp-{'-'.join(p.name[1:] for p, value in p_combo.items() if not value)}"

class DebugWriter(AbstractWriter):
    def __init__(self):
        super().__init__()
        self.start_time = time.process_time()
        self.count = {
            "known_invalid": 0,
            "example_found": 0,
            "no_example": 0,
        }

    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        p_combo_name = self.make_test_name(p_combo, 0)
        print(f"{p_combo_name}: \n\t{reason}")
        self.count["known_invalid"] += 1

    def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
        p_combo_name = self.make_test_name(p_combo, bucket)
        print(f"{p_combo_name}: \n\t{example}")
        self.count["example_found"] += 1

    def write_example_not_found(self, p_combo: PCombo, bucket: int):
        p_combo_name = self.make_test_name(p_combo, bucket)
        print(f"{p_combo_name}: \n\tNo example found")
        self.count["no_example"] += 1

    def mark_end(self):
        print(self.count)
        print(time.process_time() - self.start_time)

class PyretWriter(AbstractWriter):
    DWARF_NAMES = {
        0: "Snow White",
        1: "Doc",
        2: "Grumpy",
        3: "Happy",
        4: "Sleepy",
        5: "Bashful",
        6: "Sneezy",
        7: "Dopey",
    }

    def __init__(self, filename):
        super().__init__()
        self.filename = filename
        self.stringio = None

    def __enter__(self):
        self.stringio = StringIO()
        return self

    def __exit__(self, *_): # TODO - handle errors
        with open(self.filename, 'w') as file:
            file.write(self.stringio.getvalue())
        self.stringio.close()
        self.stringio = None

    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        pass

    def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
        input_list, output_list = example
        self.stringio.write(
            f"check \"{self.make_test_name(p_combo, bucket)}\":\n"
            f"  is-valid(\n"
            f"    {self.make_personlist_str(input_list)},\n"
            f"    {self.make_personlist_str(output_list)}\n"
            f"  ) is {'true' if all(p_combo.values()) else 'false'}\n"
            "end\n\n"
        )

    def write_example_not_found(self, p_combo: PCombo, bucket: int):
        self.stringio.write(
            f"# No check was generated for \"{self.make_test_name(p_combo, bucket)}\"\n"
            "# Please re-run the example generator.\n\n"
        )

    def make_personlist_str(self, person_list: PersonSequence):
        return f"[list: {', '.join(self.make_person_str(person) for person in person_list)}]"

    def make_person_str(self, person: Person):
        return f"person(\'{PyretWriter.DWARF_NAMES[person.name]}\', {person.age})"

if __name__ == '__main__':
    OUTPUT_FILE = "hypothesis_tests_benchmark.arr"
    BENCHMARK_FILE = "hypothesis_benchmarks.csv"
    EXAMPLES_PER_BUCKET = 10
    SHRUNK_EXAMPLES_PER_BUCKET = 3
    TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET = 1

    # with DebugWriter() as writer:
    with PyretWriter(OUTPUT_FILE) as writer:
        benchmark_rows = []
        for bitvector in product((True, False), repeat=6):
            p_combo = {p_name: answer for p_name, answer in zip(p_name_list, bitvector)}

            is_invalid, reason = is_known_unsatisfiable(p_combo)
            if is_invalid:
                writer.write_known_unsatisfiable(p_combo, reason)
                continue

            bucket_name = makename(p_combo)
            timers = [None for _ in range(EXAMPLES_PER_BUCKET)]
            start_bucket_time = time.process_time()

            is_trivial = True
            phases_to_use = [Phase.generate, Phase.target, Phase.shrink]

            def valid_example(io_pair: IOPair):
                input_list, output_list = io_pair
                if not is_trivial:
                    assume(input_list != output_list) # TODO - do we still want/need this?
                return all((p_function_map[p_name](input_list, output_list) == answer
                            for p_name, answer in p_combo.items()
                            if answer is not None))

            for bucket in range(EXAMPLES_PER_BUCKET):
                start_index_time = time.process_time()
                if bucket == SHRUNK_EXAMPLES_PER_BUCKET:
                    del phases_to_use[-1] # i.e. stop shrinking future examples
                if bucket == TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET:
                    is_trivial = False
                try:
                    example: IOPair = find(io_pair_strategy_trivial if is_trivial else io_pair_strategy, # type: ignore # mypy doesn't know enough about the type info of Hypothesis
                                           valid_example,
                                           settings=settings(max_examples=500_000, phases=phases_to_use))
                    writer.write_valid_example(p_combo, example, bucket)
                except NoSuchExample:
                    writer.write_example_not_found(p_combo, bucket)
                finally:
                    end_index_time = time.process_time()
                    timers[bucket] = end_index_time - start_index_time
            end_bucket_time = time.process_time()
            benchmark_rows.append([bucket_name, end_bucket_time - start_bucket_time] + timers)

    with open(BENCHMARK_FILE, 'w', newline='') as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(["bucket", "total bucket time"] + list(range(EXAMPLES_PER_BUCKET)))
        csv_writer.writerows(benchmark_rows)

# NOTE: assume(input_list != output_list) eliminates many sets that would be correct.
#       The remaining sets are difficult to find and take many more examples.

# TODO - allow for "don't care" (is this necessary if we have all points on the lattice?)

# Hypothesis learns over time, and caches results in a local database (that I .gitignore).
# EXCEPT that the function is dynamically defined, so Hypothesis can't hash it to cache results
# TODO - essentially make a macro that expands to a larger Python file, with one function definition per p_combo,
#        allowing Hypothesis to remember
