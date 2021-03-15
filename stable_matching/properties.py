from collections import defaultdict
from dataclasses import dataclass
from enum import Enum
from typing import Any, Callable, Dict, List, Tuple, Set, Optional
from itertools import product

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
def make_matches_dicts_p3(input_pair: InputPair, matches: Matches): 
    # map every company to min pref for any candidate
    #     every candidate to min pref for any company
    companies, candidates = input_pair
    n = len(companies)
    company_matches: Dict[int, int] = defaultdict(lambda:n)
    candidate_matches: Dict[int, int] = defaultdict(lambda:n)
    for hire in matches:
        hire_candidate = hire.candidate
        hire_company = hire.company
        if hire_candidate < n and hire_company < n:
            company_pref_of_candidate = companies[hire_company].index(hire_candidate)
            candidate_pref_of_company = candidates[hire_candidate].index(hire_company)
            
            company_matches[hire_company] = min(company_matches[hire_company], company_pref_of_candidate)
            candidate_matches[hire_candidate] = min(candidate_matches[hire_candidate], candidate_pref_of_company)
    return company_matches, candidate_matches

def p3(input_pair: InputPair, matches: Matches) -> bool:
    companies, candidates = input_pair
    company_best_matches, candidate_best_matches = make_matches_dicts_p3(input_pair, matches)
    n = len(companies)
    for cheater_company, cheater_company_prefs in enumerate(companies):
        cheater_company_best_pref = company_best_matches[cheater_company]
        for i, cheater_candidate in enumerate(cheater_company_prefs):
            if i >= cheater_company_best_pref: break
            if candidates[cheater_candidate].index(cheater_company) < candidate_best_matches[cheater_candidate]:
                return False
    # for (cheater_company, cheater_company_prefs), (cheater_candidate, cheater_candidate_prefs) in product(enumerate(companies), enumerate(candidates)):
    #     if Hire(cheater_company, cheater_candidate) in matches:
    #         continue
        
    #     cheater_company_pref_for_cheater_candidate = cheater_company_prefs.index(cheater_candidate)
    #     cheater_candidate_pref_for_cheater_company = cheater_candidate_prefs.index(cheater_company)
    #     # Checking for None means that we just ignore companies in the output that weren't in the input
    #     if cheater_company_pref_for_cheater_candidate < company_best_matches[cheater_company] and \
    #        cheater_candidate_pref_for_cheater_company < candidate_best_matches[cheater_candidate]:
    #        return True

    return True
    # if there exists a pair that's valid in the input, that isn't matched
    # and if the person in that pair prefers the company to everyone currently matched to
    # and if the company in that pair prefers the person to everyone currently matched to
    # Then p3 is false

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
    PName.P3: p3, 
    PName.P4: p4, 
    PName.P5: p5, 
    PName.P6: p6
}

p_name_list = sorted(p_function_map.keys(), key=lambda x:x.name)

# We rely heavily on the well-formedness of inputs.

if __name__ == '__main__':
    example_companies = [[1, 2, 0, 3], [1, 2, 3, 0], [1, 2, 0, 3], [2, 0, 3, 1]]
    example_candidates = [[0, 3, 1, 2], [2, 0, 3, 1], [3, 2, 0, 1], [0, 3, 1, 2]]

    example_output = {Hire(2, 1), Hire(3, 2), Hire(0, 3), Hire(1, 0)}

    print(p3((example_companies, example_candidates), example_output))