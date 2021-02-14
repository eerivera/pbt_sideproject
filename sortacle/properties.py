from dataclasses import dataclass
from enum import Enum
from typing import Any, Callable, List, Tuple

@dataclass
class Person:
    name: int
    age: int

    def __eq__(self, other: Any):
        if not isinstance(other, Person):
            return False
        return self.name == other.name and self.age == other.age

    def __hash__(self):
        return hash((self.name, self.age))

PersonSequence = List[Person]
Property = Callable[[PersonSequence, PersonSequence], bool]

def sortacle(l: PersonSequence) -> PersonSequence:
    return sorted(l, key=lambda x:(x.name, x.age))

# if an element is in output, it must be mentioned in input
def p1(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return all((e in output_list for e in input_list))

# if an element is in input, it must be mentioned in output
def p2(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return all((e in input_list for e in output_list))

# SORTED: for all output x, adjacencies <= by age
def p3(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return all((o1.age <= o2.age for o1, o2 in zip(output_list, output_list[1:])))

# Stronger p2: output is permutation of input (check by output)
def p4(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return all(input_list.count(e) == output_list.count(e) for e in set(output_list))

# Stronger p1: output is permutation of input (check by input)
def p5(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return all(input_list.count(e) == output_list.count(e) for e in set(input_list))

# A misconception of the permutation property: lose nothing in count
def p6(input_list: PersonSequence, output_list: PersonSequence) -> bool:
    return len(input_list) == len(output_list)

class PName(Enum):
    P1 = "p1"
    P2 = "p2"
    P3 = "p3"
    P4 = "p4"
    P5 = "p5"
    P6 = "p6"

p_function_map = {
    PName.P1: p1, 
    PName.P2: p2, 
    PName.P3: p3, 
    PName.P4: p4, 
    PName.P5: p5, 
    PName.P6: p6
}

p_name_list = sorted(list(PName), key=lambda x:x.name)
