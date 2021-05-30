from collections import deque
import csv

solver_filename = "oracle_solver_10_standard_FULLPS.arr"
hypo_filename = "oracle_hypothesis_tests.arr"
pj_filename = "oracle_jack.arr"
suite_name_map = {
    solver_filename: "Solver",
    hypo_filename: "Hypothesis",
    pj_filename: "PJ",

}

# Collect by student and by bucket at the same time
students_to_failing_buckets = {} # {student -> {suite -> set(buckets)}}
buckets_to_failing_students = {} # {bucket -> {suite -> set(students)}}
with open("oracle_most_recent_thomas.csv") as file:
     # open("oracle_most_recent_thomas_collated.csv") as collated_file:

    reader = csv.DictReader(file)
    for line in reader:
        student_name = line["student"]
        student = students_to_failing_buckets.setdefault(student_name, {})
        for col_name, raw_value in line.items():
            if col_name == "student":
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

# Collect positive failures
students_failing_positives = set()
students_failing_positives.update(buckets_to_failing_students["allprop"]["Solver"],
                                  buckets_to_failing_students["allprop"]["Hypothesis"],
                                  buckets_to_failing_students["FUNCTIONAL"]["PJ"],
                                  buckets_to_failing_students["RELATIONAL"]["PJ"])

# Remove the above students from our resulting data
for student_name in students_failing_positives:
    del students_to_failing_buckets[student_name]

for bucket_name, suite_to_students in buckets_to_failing_students.items():
    for suite_name, student_set in suite_to_students.items():
        student_set -= students_failing_positives

def make_bucket_name(bucket):
    return f"notp-{'-'.join(map(str, bucket))}"

# BFS traversal of powerset to find new failures (both Hypothesis and Solver in tandem)
NUM_PROPS = 6
bucket_to_newly_failing_students = {} # {bucket_tuple -> {suite -> set(student)}}
queue = deque([(i,) for i in range(1, NUM_PROPS+1)])
while queue:
    bucket = queue.popleft()
    bucket_name = make_bucket_name(bucket)
    for suite in ("Solver", "Hypothesis"):
        previously_failing = set.union(*(parent_failing.get(suite, set())
                                         for parent, parent_failing in bucket_to_newly_failing_students.items()
                                         if set(parent).issubset(set(bucket))), set())
        currently_failing = buckets_to_failing_students.get(bucket_name, {}).get(suite, set())
        bucket_to_newly_failing_students.setdefault(bucket, {})[suite] = currently_failing - previously_failing
    queue.extend((bucket + (i,) for i in range(bucket[-1] + 1, NUM_PROPS+1)))

# Result for table 1
print("TABLE 1:")
for bucket_tuple, suite_to_students in sorted(bucket_to_newly_failing_students.items(), key=lambda x:(len(x[0]),x[0])):
    # if "Solver" not in suite_to_students:
    #     continue
    bucket_name = make_bucket_name(bucket_tuple)
    negs = ','.join(map(str, bucket_tuple))
    num_failed_solver = len(suite_to_students["Solver"])
    num_failed_hypo = len(suite_to_students["Hypothesis"])
    if num_failed_hypo == 0 and num_failed_solver == 0:
        continue
    num_failed_solver_but_not_hypo = len(suite_to_students["Solver"] - suite_to_students["Hypothesis"])
    num_failed_hypo_but_not_solver = len(suite_to_students["Hypothesis"] - suite_to_students["Solver"])
    print(f"Matcher & {negs:<11} & {num_failed_solver:<2} & {num_failed_hypo:<2} & {num_failed_solver_but_not_hypo:>2},{num_failed_hypo_but_not_solver:<2} \\\\")
print()


# # Old Result for table 1
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
#     print(f"Matcher & {negs:<11} & {num_failed_solver:<2} & {num_failed_hypo:<2} & {num_failed_solver_but_not_hypo:>2},{num_failed_hypo_but_not_solver:<2} \\\\")

