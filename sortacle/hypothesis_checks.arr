check "allp-passing_0":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 0), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Snow White', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is true
end

check "notp-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 1), person('Doc', 1)]
  ) is false
end

check "notp-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-3_0":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Doc', 0), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 0), person('Snow White', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 0), person('Doc', 1)],
    [list: person('Snow White', 0), person('Doc', 0), person('Doc', 1), person('Doc', 0)]
  ) is false
end

check "notp-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Doc', 0), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 0), person('Doc', 1)]
  ) is false
end

check "notp-2-4-6_0":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Snow White', 2)]
  ) is false
end

check "notp-2-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-3-4-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 0), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0), person('Doc', 0)]
  ) is false
end

check "notp-2-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 1), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)]
  ) is false
end

check "notp-1-2-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 1), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-1-2-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

