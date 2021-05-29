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

# Not technically correct, see notes in Alloy spec
#(e.g. doesn't handle input = [(1, 2), (2, 3)], output = [1, 1, 1] )

# def p4(dag: DAG, output: Output) -> bool:
#     output_dict = make_output_dict(output)
#     return all((output_dict[source] < output_dict[sink] for source, sink in dag))

# borrowed from: https://stackoverflow.com/questions/8673482/transitive-closure-python-tuples
def transitive_closure(a):
    closure = set(a)
    while True:
        new_relations = set((x,w) for x,y in closure for q,w in closure if q == y)
        closure_until_now = closure | new_relations
        if closure_until_now == closure:
            break
        closure = closure_until_now
    return closure

def p4(dag: DAG, output: Output) -> bool:
    partial_order = transitive_closure(dag.original_tuples)
    for i, ele1 in enumerate(output):
        for j, ele2 in enumerate(output[i+1:], start=i+1):
            if (ele2, ele1) in partial_order:
                return False
    return True


# misconception subproperty: same output size as unique entries in input
def p5(dag: DAG, output: Output) -> bool:
    return len(output) == len(dag.nodes)

# regression test property: all nodes have the right "bag" of incoming edges that appear before that node
def p6(instr, outstr):
    for i, node in enumerate(outstr):
        contained_edges = {}
        for edge_start, edge_end in instr:
            if edge_end == node:
                if edge_start not in contained_edges:
                    contained_edges[edge_start] = 0
                contained_edges[edge_start] += 1

        prev_node_edges = {}
        for prev_i, prev_node in enumerate(outstr[:i]):
            if prev_node not in prev_node_edges:
                prev_node_edges[prev_node] = 0
            prev_node_edges[prev_node] += 1

        valid_subset = all(item in prev_node_edges.items()
                           for item in contained_edges.items())
        if not valid_subset:
            return False

    return True

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
    PName.P6: p6,
}

p_name_list = sorted(p_function_map.keys(), key=lambda x:x.name)

if __name__ == '__main__':
    dag = DAG([('a', 'b'), ('b', 'c'), ('c', 'd')])
    print(p4(dag, ['a', 'a', 'a', 'a']))