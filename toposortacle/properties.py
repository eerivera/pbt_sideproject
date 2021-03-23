from collections import defaultdict
from enum import Enum
from typing import Callable, Dict, List, Set, Tuple

Node = str
EdgeMap = Dict[Node, Set[Node]]
EdgeTuples = List[Tuple[Node, Node]]

class DAG:
    def __init__(self, edge_tuples: EdgeTuples):
        self.original_tuples = edge_tuples
        self.edge_map: EdgeMap = {}
        for source, sink in edge_tuples:
            self.edge_map.setdefault(source, set()).add(sink)
            self.edge_map.setdefault(sink, set())
        self.nodes: Set[Node] = set(self.edge_map.keys())

    def __iter__(self):
        yield from ((source, sink) for source, sinks in self.edge_map.items() for sink in sinks)

    def __repr__(self):
        return f"DAG([{', '.join(map(str, self))}])"

Output = List[Node]
Property = Callable[[DAG, Output], bool]

# if an element is in output, it must be mentioned in an input tuple
def p1(dag: DAG, output: Output) -> bool:
    return set(output).issubset(dag.nodes)

# if an element is in an input tuple, it must be mentioned in output
def p2(dag: DAG, output: Output) -> bool:
    return dag.nodes.issubset(set(output))

# output elements unique in output
def p3(dag: DAG, output: Output) -> bool:
    return len(set(output)) == len(output)

# (temp stub, need to ask about flexibility, conflicting with other properties) 
# for all input tuples (x,y), idx[x] <= idx[y] in output
def make_output_dict(output: Output) -> Dict[Node, int]:
    # maps to first index
    # for now, assume that if something isn't in output, it is actually at index len(output) + 1
    n = len(output)
    result = defaultdict(lambda:n)
    for i, node in enumerate(output):
        if node not in result:
            result[node] = i
    return result

def p4(dag: DAG, output: Output) -> bool:
    output_dict = make_output_dict(output)
    return all((output_dict[source] < output_dict[sink] for source, sink in dag))

# misconception subproperty: same output size as unique entries in input
def p5(dag: DAG, output: Output) -> bool:
    return len(output) == len(dag.nodes)

class PName(Enum):
    P1 = "p1"
    P2 = "p2"
    P3 = "p3"
    P4 = "p4"
    P5 = "p5"

p_function_map: Dict[PName, Property] = {
    PName.P1: p1, 
    PName.P2: p2, 
    PName.P3: p3, 
    PName.P4: p4, 
    PName.P5: p5, 
}

p_name_list = sorted(p_function_map.keys(), key=lambda x:x.name)
