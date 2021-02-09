from hypothesis import assume, settings, HealthCheck, find
from hypothesis.strategies import builds, integers, lists, tuples
from hypothesis.errors import NoSuchExample
from itertools import product
import time

from implementation import *

usable_ints = integers(min_value=0, max_value=5)
names = usable_ints
ages = usable_ints
people = builds(Person, name=names, age=ages)
inputlist_strategy = lists(people, min_size=4, max_size=5)
outputlist_strategy = lists(people, min_size=3, max_size=5)
io_pair_strategy = tuples(inputlist_strategy, outputlist_strategy)

# copied from Python itertools documentation
# TODO - proper citation
# def powerset(iterable):
#     "powerset([1,2,3]) --> () (1,) (2,) (3,) (1,2) (1,3) (2,3) (1,2,3)"
#     s = list(iterable)
#     return chain.from_iterable(combinations(s, r) for r in range(len(s)+1))

# @pytest.mark.parametrize("p_combo", powerset(all_p.keys()))
# @settings(max_examples=1_000) # need many more examples to find counterexamples (see HUGE NOTE below)
# @given(input_list=inputlist_strategy, output_list=outputlist_strategy)
# def _test_geninvalid(p_combo: Tuple[Property], input_list: PersonSequence, output_list: PersonSequence):
#     assume(input_list != output_list)
#     assert all(all_p[p](input_list, output_list) for p in p_combo) == all(p(input_list, output_list) for p in all_p.values())

# @settings(max_examples=50_000) # need many more examples to find counterexamples for p4
# @given(input_list=inputlist_strategy, output_list=outputlist_strategy)
# def _test_genvalid(input_list: PersonSequence, output_list: PersonSequence):
#     assume(input_list != output_list)
#     assert not all(p(input_list, output_list) for p in all_p)

def tupleify_p_combo(p_combo):
    return tuple(sorted(p_combo.items(), key=lambda x:x[0].name))

def is_known_invalid(p_combo):
    # TODO - more detailed explanations of implications
    if p_combo[PName.P5] and not p_combo[PName.P1]:
        return (True, "p5 -> p1")
    if p_combo[PName.P4] and not p_combo[PName.P2]:
        return (True, "p4 -> p2")
    if p_combo[PName.P1] and p_combo[PName.P4] and not p_combo[PName.P6]:
        return (True, "(p1 & p4) -> p6")
    if p_combo[PName.P2] and p_combo[PName.P5] and not p_combo[PName.P6]:
        return (True, "(p2 & p5) -> p6")
    if p_combo[PName.P4] and p_combo[PName.P5] and not p_combo[PName.P6]:
        return (True, "(p4 & p5) -> p6")
    if p_combo[PName.P4] and p_combo[PName.P6] and not p_combo[PName.P5]:
        return (True, "(p4 & p6) -> p5")
    if p_combo[PName.P5] and p_combo[PName.P6] and not p_combo[PName.P4]:
        return (True, "(p5 & p6) -> p4")

    return (False, None)

if __name__ == '__main__':
    start_time = time.process_time()
    count = {
        "known_invalid": 0,
        "example_found": 0,
        "no_example": 0,
    }
    for bitvector in product((True, False), repeat=6):
        p_combo = {p_name: answer for p_name, answer in zip(p_name_list, bitvector)}
        is_invalid, reason = is_known_invalid(p_combo)
        if is_invalid:
            print(f"{p_combo}: \n\t{reason}")
            count["known_invalid"] += 1
            continue

        def find_callable(io_pair: Tuple[PersonSequence, PersonSequence]):
            input_list, output_list = io_pair
            assume(input_list != output_list)
            return all((p_function_map[p_name](input_list, output_list) == answer
                        for p_name, answer in p_combo.items()
                        if answer is not None))
        try:
            hypo_output = find(io_pair_strategy, 
                               find_callable,
                               settings=settings(max_examples=500_000))
            print(f"{p_combo}: \n\t{hypo_output}")
            count["example_found"] += 1
        except NoSuchExample:
            print(f"{p_combo}: \n\tNo example found")
            count["no_example"] += 1

    print(count)
    print(time.process_time() - start_time)

# NOTE: assume(input_list != output_list) means that any sets that would be correct are difficult to find

# SMT solver integration
# Powerset - true/false/dont care
# Get info out of Hypothesis directly

# HUGE NOTE: Hypothesis learns over time? The first time it learns a space is not the same as subsequent times it sees the same space.
# Took 82s to find the first example for test_genvalid. Took 4s the second time for the same thing.
# Either that or it got lucky once. Need more repetitions of tests, both with and without deleting the cache folder.
# Second time encountering the same thing. Couldn't produce an example after 2min. Then produced one after 30s more. Then 0.3s.
# Full suite, first time: 

# For efficiency, we should separate combinations of properties that we know are valid solutions, so that Hypothesis doesn't keep spinning on them.
