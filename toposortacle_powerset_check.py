from collections import deque
import csv

suite_name_map = {
    "SAM": "Solver",
    "ELIJAH": "Hypothesis",
    "PJ": "PJ",
    "TA": "TA",
}

# Collect by student and by bucket at the same time
students_to_failing_buckets = {} # {student -> {suite -> set(buckets)}}
buckets_to_failing_students = {} # {bucket -> {suite -> set(students)}}
with open("testResults-combined-processed.csv") as file:
     # open("oracle_most_recent_thomas_collated.csv") as collated_file:

    reader = csv.DictReader(file)
    for line in reader:
        student_name = line["student_id"]
        student = students_to_failing_buckets.setdefault(student_name, {})
        for col_name, raw_value in line.items():
            if col_name in ("student_id", "all_suites_agree?"):
                continue
            raw_suite_name, bucket_and_index = col_name.split(": ")
            if raw_suite_name not in suite_name_map:
                continue
            suite_name = suite_name_map[raw_suite_name]
            try:
                bucket_name, _ = bucket_and_index.split("_")
            except:
                bucket_name = bucket_and_index

            student_suite = student.setdefault(suite_name, set())
            bucket_suite = buckets_to_failing_students.setdefault(bucket_name, {}) \
                                                      .setdefault(suite_name, set())
            value = True if raw_value.lower() == "true" else False
            if not value:
                student_suite.add(bucket_name)
                bucket_suite.add(student_name)

# # Collect positive failures
# students_failing_positives = buckets_to_failing_students["POSITIVEF"]["PJ"]

# # Remove the above students from our resulting data
# for student_name in students_failing_positives:
#     del students_to_failing_buckets[student_name]

# for bucket_name, suite_to_students in buckets_to_failing_students.items():
#     for suite_name, student_set in suite_to_students.items():
#         student_set -= students_failing_positives

NUM_PROPS = 6
def make_bucket_name(bucket):
    if not bucket:
        return "allprop"
    return f"notp-{'-'.join(map(str, bucket))}"

def make_parent_buckets(bucket):
    if len(bucket) == 1:
        yield tuple()
        return
    yield from (bucket[:i] + bucket[i+1:] for i in range(len(bucket)))

# Result for table 2
print("TABLE 2:")
old_prop_map = {
    "ORDERED": "notp-4-6",
    "RETAIN": "notp-2-5",
    "NONEW": "notp-1-5",
    "NOTLENGTH": "notp-1-2",
    "NODUPES": "notp-3-5",
}
pad_length = max(map(len, old_prop_map))
not_positivef = buckets_to_failing_students["POSITIVEF"]["PJ"]

# POSITIVER
old_failures = buckets_to_failing_students["POSITIVER"]["PJ"] | not_positivef
solver_failures = buckets_to_failing_students["allprop"]["Solver"]
hypo_failures = buckets_to_failing_students["allprop"]["Hypothesis"]
pj_vs_c = solver_failures - old_failures
c_vs_pj = old_failures - solver_failures
pj_vs_h = hypo_failures - old_failures
h_vs_pj = old_failures - hypo_failures
c_vs_h = hypo_failures - solver_failures
h_vs_c = solver_failures - hypo_failures

print(f"Toposortacle & POSITIVEF+R & {len(old_failures):<2} & {len(solver_failures):<2} & {len(pj_vs_c):>2},{len(c_vs_pj):<2} & {len(hypo_failures):<2} & {len(pj_vs_h):>2},{len(h_vs_pj):<2} & {len(c_vs_h):>2},{len(h_vs_c):<2} & allprop   \\\\")

old_caught_so_far = set()
old_caught_so_far.update(old_failures)
solver_caught_so_far = set()
solver_caught_so_far.update(solver_failures)
hypo_caught_so_far = set()
hypo_caught_so_far.update(hypo_failures)

# Previous properties (- POSITIVEF)
for old_prop, new_prop in old_prop_map.items():
    old_failures = buckets_to_failing_students[old_prop]["PJ"] - not_positivef
    solver_failures = buckets_to_failing_students[new_prop]["Solver"] - not_positivef
    hypo_failures = buckets_to_failing_students[new_prop]["Hypothesis"] - not_positivef
    print(f"Toposortacle & {old_prop:<11} & {len(old_failures):<2} & {len(solver_failures):<2} & {len(solver_failures - old_failures):>2},{len(old_failures - solver_failures):<2} & {len(hypo_failures):<2} & {len(hypo_failures - old_failures):>2},{len(old_failures - hypo_failures):<2} & {len(hypo_failures - solver_failures):>2},{len(solver_failures - hypo_failures):<2} & {new_prop:<9} \\\\")

    old_caught_so_far.update(old_failures)
    solver_caught_so_far.update(solver_failures)
    hypo_caught_so_far.update(hypo_failures)


# NOT PREVIOUSLY CAUGHT
old_failures = set()
solver_failures = set()
hypo_failures = set()
for bucket, suite_to_students in buckets_to_failing_students.items():
    if bucket.startswith("ALL "):
        continue
    for suite_name, students in suite_to_students.items():
        if suite_name == "PJ":
            new_students = students - old_caught_so_far - not_positivef
            if new_students:
                print(suite_name, bucket, len(new_students))
            old_failures.update(new_students)
        elif suite_name == "Solver":
            new_students = students - solver_caught_so_far - not_positivef
            # if new_students:
            #     print(suite_name, bucket, len(new_students))
            solver_failures.update(new_students)
        elif suite_name == "Hypothesis":
            new_students = students - hypo_caught_so_far - not_positivef
            # if new_students:
            #     print(suite_name, bucket, len(new_students))
            hypo_failures.update(new_students)

pj_vs_c = solver_failures - old_failures
c_vs_pj = old_failures - solver_failures
pj_vs_h = hypo_failures - old_failures
h_vs_pj = old_failures - hypo_failures
c_vs_h = hypo_failures - solver_failures
h_vs_c = solver_failures - hypo_failures

print(f"Toposortacle & NOTCAUGHT   & {len(old_failures):<2} & {len(solver_failures):<2} & {len(pj_vs_c):>2},{len(c_vs_pj):<2} & {len(hypo_failures):<2} & {len(pj_vs_h):>2},{len(h_vs_pj):<2} & {len(c_vs_h):>2},{len(h_vs_c):<2} & notp-2-3  \\\\")


# # BFS traversal of powerset to find new failures (both Hypothesis and Solver in tandem)
# bucket_to_newly_failing_students = {} # {bucket_tuple -> {suite -> set(student)}}
# queue = deque([(1, 2, 3, 4, 5, 6)])
# seen = set()
# while queue:
#     bucket = queue.popleft()
#     if bucket in seen:
#         continue
#     seen.add(bucket)
#     bucket_name = make_bucket_name(bucket)
#     for suite in ("Solver", "Hypothesis"):
#         previously_failing = set.union(*(child_failing.get(suite, set())
#                                          for child, child_failing in bucket_to_newly_failing_students.items()
#                                          if set(bucket).issubset(set(child))), set())
#         currently_failing = buckets_to_failing_students.get(bucket_name, {}).get(suite, set())
#         bucket_to_newly_failing_students.setdefault(bucket, {})[suite] = currently_failing - previously_failing
#         print(bucket_to_newly_failing_students[bucket][suite])
#     queue.extend(make_parent_buckets(bucket))
# print(list(sorted(seen, key=lambda x:(len(x), x))))

# # Result for table 1
# print("TABLE 1:")
# for bucket_tuple, suite_to_students in sorted(bucket_to_newly_failing_students.items(), key=lambda x:(len(x[0]),x[0])):
#     # if "Solver" not in suite_to_students:
#     #     continue
#     bucket_name = make_bucket_name(bucket_tuple)
#     negs = ','.join(map(str, bucket_tuple))
#     num_failed_solver = len(suite_to_students["Solver"])
#     num_failed_hypo = len(suite_to_students["Hypothesis"])
#     if num_failed_hypo == 0 and num_failed_solver == 0:
#         continue
#     num_failed_solver_but_not_hypo = len(suite_to_students["Solver"] - suite_to_students["Hypothesis"])
#     num_failed_hypo_but_not_solver = len(suite_to_students["Hypothesis"] - suite_to_students["Solver"])
#     print(f"Toposortacle & {negs:<11} & {num_failed_solver:<2} & {num_failed_hypo:<2} & {num_failed_solver_but_not_hypo:>2},{num_failed_hypo_but_not_solver:<2} \\\\")
# print()

# result_set = set()
# for student, suite_to_bucket in students_to_failing_buckets.items():
#     if frozenset(suite_to_bucket["Solver"] - set(["ALL SAM"])) == frozenset(["notp-1-2"]):
#         print(student)
#     result_set.add(frozenset(suite_to_bucket["Solver"] - set(["ALL SAM"])))

# print(len(result_set))
# second_set = set()
# for student, suite_to_bucket in students_to_failing_buckets.items():
#     second_set.add(frozenset(suite_to_bucket["Hypothesis"] - set(["ALL ELIJAH"])))

# print(len(second_set - result_set))
# print(len(result_set - second_set))
# print(len(result_set | second_set))
# for s in sorted(second_set - result_set, key=len, reverse=True):
#     print(s)

# for fset in second_set:
#     for x in fset:
#         if not (x.startswith("notp-") or x == "allprop"):
#             print("HELP ME")

# # Old Result for table 1
# print("TABLE 1:")
# for bucket_name, suite_to_students in sorted(buckets_to_failing_students.items()):
#     # if "Solver" not in suite_to_students:
#     #     continue
#     if not bucket_name.startswith("notp"):
#         continue
#     negs = ','.join(bucket_name[5:].split('-'))
#     num_failed_solver = len(suite_to_students["Solver"])
#     num_failed_hypo = len(suite_to_students["Hypothesis"])
#     num_failed_solver_but_not_hypo = len(suite_to_students["Solver"] - suite_to_students["Hypothesis"])
#     num_failed_hypo_but_not_solver = len(suite_to_students["Hypothesis"] - suite_to_students["Solver"])
#     print(f"Toposortacle & {negs:<11} & {num_failed_solver:<2} & {num_failed_hypo:<2} & {num_failed_solver_but_not_hypo:>2},{num_failed_hypo_but_not_solver:<2} \\\\")
# print()

# # Result for table 3
# print("TABLE 3:")
# ta_failures = set()
# solver_failures = set()
# hypo_failures = set()
# for student, suite_to_buckets in students_to_failing_buckets.items():
#     if "TA" in suite_to_buckets and len(suite_to_buckets["TA"]) > 0:
#         ta_failures.add(student)
#     if "Solver" in suite_to_buckets and len(suite_to_buckets["Solver"]) > 0:
#         solver_failures.add(student)
#     if "Hypothesis" in suite_to_buckets and len(suite_to_buckets["Hypothesis"]) > 0:
#         hypo_failures.add(student)

# print(f"Toposortacle & {len(ta_failures)} & {len(solver_failures)} & {len(solver_failures - ta_failures)},{len(ta_failures - solver_failures)} & {len(hypo_failures)} & {len(hypo_failures - ta_failures)},{len(ta_failures - hypo_failures)} & --")
# print()

# # Concretizing
# new_failures = (solver_failures | hypo_failures) - ta_failures
# new_buckets = set()
# for student, suite_to_buckets in students_to_failing_buckets.items():
#     if student in new_failures:
#         new_buckets.update(suite_to_buckets["Hypothesis"], suite_to_buckets["Solver"])
# print(new_buckets)

higher_powerset = buckets_to_failing_students["notp-1-2"]["Solver"] | buckets_to_failing_students["notp-1-2"]["Hypothesis"] | buckets_to_failing_students["notp-3-5"]["Solver"] | buckets_to_failing_students["notp-3-5"]["Hypothesis"]
# print(new_failures - higher_powerset)
