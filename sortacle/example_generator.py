from hypothesis import assume, settings, find
from hypothesis.strategies import builds, integers, lists, tuples
from hypothesis.errors import NoSuchExample
from itertools import product
from typing import Tuple
import time

from properties import *

usable_ints = integers(min_value=0, max_value=5)
names = usable_ints
ages = usable_ints
people = builds(Person, name=names, age=ages)
inputlist_strategy = lists(people, min_size=4, max_size=5)
outputlist_strategy = lists(people, min_size=3, max_size=5)
io_pair_strategy = tuples(inputlist_strategy, outputlist_strategy)

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

        def valid_example(io_pair: Tuple[PersonSequence, PersonSequence]):
            input_list, output_list = io_pair
            assume(input_list != output_list)
            return all((p_function_map[p_name](input_list, output_list) == answer
                        for p_name, answer in p_combo.items()
                        if answer is not None))
        try:
            example = find(io_pair_strategy, 
                           valid_example,
                           settings=settings(max_examples=500_000))
            print(f"{p_combo}: \n\t{hypo_output}")
            count["example_found"] += 1
        except NoSuchExample:
            print(f"{p_combo}: \n\tNo example found")
            count["no_example"] += 1

    print(count)
    print(time.process_time() - start_time)

# NOTE: assume(input_list != output_list) eliminates many sets that would be correct. 
#       The remaining sets are difficult to find and take many more examples.

# TODO - allow for "don't care" (is this necessary if we have all points on the lattice?)

# Hypothesis learns over time, and caches results in a local database (that I .gitignore).