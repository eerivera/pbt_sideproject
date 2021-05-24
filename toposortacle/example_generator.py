from hypothesis import assume, settings, find, Phase
from hypothesis.strategies import booleans, builds, composite, lists, permutations, sampled_from, tuples
from hypothesis.errors import NoSuchExample
from io import StringIO
from itertools import combinations, product
from typing import Dict, List, Tuple
import time

from properties import DAG, Output, PName, p_function_map, p_name_list

IOPair = Tuple[DAG, Output]

MAX_N = 10
NODE_MASTER_LIST_TRIVIAL = [(n,
                             list(map(str, range(n))),
                             list(map(str, range(min(n+1, MAX_N)))))
                            for n in range(MAX_N)]
NODE_MASTER_LIST = NODE_MASTER_LIST_TRIVIAL[4:]
OUTPUT_MASTER_LIST = list(map(str, range(10)))

@composite
def io_pair_strat_comp(draw):
    n, node_list, output_node_list = draw(sampled_from(NODE_MASTER_LIST))
    output_strat = lists(sampled_from(output_node_list), min_size=3, max_size=10)
    ordering = draw(permutations(node_list))
    possible_edges = list(combinations(ordering, 2))
    edges_strat = lists(sampled_from(possible_edges), min_size=2, unique=True)
    dag_strat = builds(DAG, edge_tuples=edges_strat)
    return draw(tuples(dag_strat, output_strat))

@composite
def io_pair_strat_trivial_comp(draw):
    n, node_list, output_node_list = draw(sampled_from(NODE_MASTER_LIST_TRIVIAL))
    output_strat = lists(sampled_from(output_node_list), min_size=0, max_size=10)
    if n < 2:
        return (DAG([]), draw(output_strat))
    ordering = draw(permutations(node_list))
    possible_edges = list(combinations(ordering, 2))
    edges_strat = lists(sampled_from(possible_edges), min_size=0, unique=True)
    dag_strat = builds(DAG, edge_tuples=edges_strat)
    return draw(tuples(dag_strat, output_strat))

io_pair_strat = io_pair_strat_comp() # TODO - determine best min_n
io_pair_strat_trivial = io_pair_strat_trivial_comp() # TODO - better trivial generation

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

    # new for p6, empirical but should be validated against Alloy
    if all((p_combo[PName.P3], p_combo[PName.P4])) and \
       not p_combo[PName.P6]:
        return (True, "(p3 & p4) -> p6")
    if all((p_combo[PName.P2], not p_combo[PName.P4])) and \
       p_combo[PName.P6]:
        return (True, "(p2 & not p4) -> not p6")

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

class PythonWriter(AbstractWriter):
    def __init__(self, filename: str):
        super().__init__()
        self.filename = filename
        self.stringio = None

        # each element is (str, [IOPair])
        self.examples: List[Tuple[str, List[IOPair]]] = [("allprop", [])]

        # each element is a (p_name, reason)
        self.known_invalid_combos: List[Tuple[str, str]] = []

        # each element is a p_name
        self.not_found_combos: List[str] = []

    def __enter__(self):
        super().__enter__()
        self.stringio: StringIO = StringIO()
        return self

    def __exit__(self, *_): # TODO - handle errors
        super().__exit__()
        self.wrap_up_examples()
        self.write_python_header()
        self.write_python_examples()
        self.write_python_known_invalid()
        self.write_python_not_found()

        with open(self.filename, 'w') as file:
            file.write(self.stringio.getvalue())
        self.stringio.close()
        self.stringio = None

    def write_known_unsatisfiable(self, p_combo: PCombo, reason: str):
        self.known_invalid_combos.append((self.make_test_name(p_combo), reason))

    def write_valid_example(self, p_combo: PCombo, example: IOPair, bucket: int):
        prev_p_combo_name, prev_examples = self.examples[-1]
        current_p_combo_name = self.make_test_name(p_combo)
        print(f"Found example for {current_p_combo_name}_{bucket}")

        if prev_p_combo_name != current_p_combo_name:
            if len(prev_examples) == 0:
                self.examples.pop()
                self.not_found_combos.append(prev_p_combo_name)
            self.examples.append((current_p_combo_name, []))

        _, curr_examples = self.examples[-1]
        curr_examples.append(example)

    def write_example_not_found(self, p_combo: PCombo, bucket: int):
        print(f"Missing example for {self.make_test_name(p_combo)}_{bucket}")

    def wrap_up_examples(self):
        prev_p_combo_name, prev_examples = self.examples[-1]
        if not prev_examples:
            self.examples.pop()
            self.not_found_combos.append(prev_p_combo_name)

    def make_test_name(self, p_combo: PCombo):
        if all(p_combo.values()):
            return f"allprop"
        return f"notp-{'-'.join(p.name[1:] for p, value in p_combo.items() if not value)}"

    def write_python_header(self):
        self.stringio.write(
            "n = {}\n"
            "instrs = {}\n"
            "outstrs = {}\n"
            "propnums = {}\n"
            "\n"
            f"for idx in range({len(self.examples)}):\n"
            f"\tinstrs[idx] = {{}}\n"
            f"\toutstrs[idx] = {{}}\n"
            "\n"
        )

    def write_python_examples(self):
        for outer_i, (propname, examples) in enumerate(self.examples):
            self.stringio.write(
                f"propnums[{outer_i}] = \'{propname}\'\n"
                f"n[{outer_i}] = {len(examples)}\n"
            )
            for inner_i, (input_dag, output_list) in enumerate(examples):
                self.stringio.write(
                    f"# PROPERTY: {propname} ({inner_i})\n"
                    f"instrs[{outer_i}][{inner_i}] = \"{repr(input_dag.original_tuples)}\"\n"
                    f"outstrs[{outer_i}][{inner_i}] = \"{repr(output_list)}\"\n"
                    "\n"
                )

    def write_python_known_invalid(self):
        for name, reason in self.known_invalid_combos:
            self.stringio.write(
                f"# No check was generated for \"{name}\"\n"
                f"# The example generator gave the following reason: {reason}.\n\n"
            )

    def write_python_not_found(self):
        for name in self.not_found_combos:
            self.stringio.write(
                f"# No check was generated for \"{name}\"\n"
                "# Please re-run the example generator.\n\n"
            )


if __name__ == '__main__':
    OUTPUT_FILE = "hypothesis_tests_new.py"
    EXAMPLES_PER_BUCKET = 10
    SHRUNK_EXAMPLES_PER_BUCKET = 3
    TRIVIAL_SHRUNK_EXAMPLES_PER_BUCKET = 1

    # with DebugWriter() as writer:
    with PythonWriter(OUTPUT_FILE) as writer:
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
