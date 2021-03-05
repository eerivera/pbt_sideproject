from dataclasses import dataclass
from enum import Enum
from typing import Any, Callable, Dict, List, Tuple, Set

@dataclass(eq=True, frozen=True)
class Hire:
    company: int
    candidate: int

Preferences = List[int]
Candidates = List[Preferences]
Companies = List[Preferences]
InputPair = Tuple[Companies, Candidates]
Matches = Set[Hire]

IOPair = Tuple[InputPair, Matches]
Property = Callable[[InputPair, Matches], bool]

# TOTALITY
# if a candidate is in the input, they should be matched
def p1(input_pair: InputPair, matches: Matches) -> bool:
    n = len(input_pair[0])
    possible_candidates = set(range(n))
    candidates_in_matches = {h.candidate for h in matches}
    return possible_candidates.issubset(candidates_in_matches) # everyone possible is in matches, but matches can have extra

# if a company is in the input, they should be matched
def p2(input_pair: InputPair, matches: Matches) -> bool:
    n = len(input_pair[0])
    possible_companies = set(range(n))
    companies_in_matches = {h.company for h in matches}
    return possible_companies.issubset(companies_in_matches) # everyone possible is in matches, but matches can have extra

# STABILITY
def p3(input_pair: InputPair, matches: Matches) -> bool:
    pass

# FUNCTIONALITY
# no candidate or company has more than one match
def p4(input_pair: InputPair, matches: Matches) -> bool:
    seen_candidates = set()
    seen_companies = set()
    for h in matches:
        if h.candidate in seen_candidates: return False
        seen_candidates.add(h.candidate)
        if h.company in seen_companies: return False
        seen_companies.add(h.company)
    return True

# DOMAIN RESPECTED
# every company matched was in the input
def p5(input_pair: InputPair, matches: Matches) -> bool:
    n = len(input_pair[0])
    possible_companies = set(range(n))
    return all((h.company in possible_companies for h in matches))

# every candidate matched was in the input
def p6(input_pair: InputPair, matches: Matches) -> bool:
    n = len(input_pair[0])
    possible_candidates = set(range(n))
    return all((h.candidate in possible_candidates for h in matches))

class PName(Enum):
    P1 = "p1"
    P2 = "p2"
    P3 = "p3"
    P4 = "p4"
    P5 = "p5"
    P6 = "p6"

p_function_map: Dict[PName, Property] = {
    PName.P1: p1, 
    PName.P2: p2, 
    # PName.P3: p3, 
    PName.P4: p4, 
    PName.P5: p5, 
    PName.P6: p6
}

p_name_list = sorted(p_function_map.keys(), key=lambda x:x.name)

# We rely heavily on the well-formedness of inputs.