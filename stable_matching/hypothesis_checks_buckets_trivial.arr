check "allprop_0":
  is-valid(
    [list: ],
    [list: ],
    [set: ]
  ) is true
end

check "allprop_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 2), hire(2, 1)]
  ) is true
end

check "allprop_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 2)]
  ) is true
end

check "allprop_3":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(0, 1), hire(1, 0), hire(2, 2)]
  ) is true
end

check "allprop_4":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(1, 1), hire(2, 2), hire(0, 0)]
  ) is true
end

check "allprop_5":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(2, 1), hire(1, 0)]
  ) is true
end

check "allprop_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(1, 1), hire(0, 2), hire(2, 0)]
  ) is true
end

check "allprop_7":
  is-valid(
    [list: [list: 1, 2, 0, 3], [list: 1, 2, 3, 0], [list: 1, 2, 0, 3], [list: 2, 0, 3, 1]],
    [list: [list: 0, 3, 1, 2], [list: 2, 0, 3, 1], [list: 3, 2, 0, 1], [list: 0, 3, 1, 2]],
    [set: hire(2, 1), hire(3, 2), hire(0, 3), hire(1, 0)]
  ) is true
end

check "allprop_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(2, 2), hire(1, 1), hire(0, 0)]
  ) is true
end

check "allprop_9":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(0, 0), hire(2, 1)]
  ) is true
end

check "allprop_10":
  is-valid(
    [list: [list: 3, 1, 2, 0], [list: 3, 2, 1, 0], [list: 2, 3, 0, 1], [list: 1, 3, 0, 2]],
    [list: [list: 3, 1, 2, 0], [list: 3, 2, 1, 0], [list: 2, 3, 0, 1], [list: 2, 0, 3, 1]],
    [set: hire(1, 3), hire(3, 1), hire(0, 0), hire(2, 2)]
  ) is true
end

check "allprop_11":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(2, 0), hire(0, 1)]
  ) is true
end

check "allprop_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(0, 0), hire(2, 2), hire(1, 1)]
  ) is true
end

check "allprop_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(2, 1), hire(0, 0)]
  ) is true
end

check "allprop_14":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(2, 0), hire(0, 2), hire(1, 1)]
  ) is true
end

# No check was generated for "notp-6_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

# No check was generated for "notp-5_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

check "notp-5-6_0":
  is-valid(
    [list: ],
    [list: ],
    [set: hire(0, 0)]
  ) is false
end

check "notp-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 2), hire(1, 3), hire(2, 1), hire(3, 0), hire(4, 4)]
  ) is false
end

check "notp-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 0), hire(2, 1), hire(3, 3)]
  ) is false
end

check "notp-5-6_3":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(2, 0), hire(1, 2), hire(0, 1), hire(4, 3), hire(3, 6)]
  ) is false
end

check "notp-5-6_4":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(0, 0), hire(2, 2), hire(5, 4), hire(1, 1)]
  ) is false
end

check "notp-5-6_5":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(1, 0), hire(2, 1), hire(5, 3), hire(0, 2), hire(3, 5)]
  ) is false
end

check "notp-5-6_6":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(1, 0), hire(2, 1), hire(0, 2), hire(3, 6)]
  ) is false
end

check "notp-5-6_7":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(2, 0), hire(1, 1), hire(3, 4), hire(0, 2)]
  ) is false
end

check "notp-5-6_8":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(2, 0), hire(3, 4), hire(0, 2), hire(1, 1)]
  ) is false
end

check "notp-5-6_9":
  is-valid(
    [list: [list: 1, 2, 0, 3], [list: 3, 0, 2, 1], [list: 2, 1, 0, 3], [list: 2, 1, 0, 3]],
    [list: [list: 1, 2, 0, 3], [list: 3, 0, 2, 1], [list: 2, 3, 0, 1], [list: 2, 1, 0, 3]],
    [set: hire(1, 0), hire(5, 4), hire(0, 3), hire(3, 1), hire(2, 2)]
  ) is false
end

check "notp-5-6_10":
  is-valid(
    [list: [list: 2, 0, 3, 1], [list: 0, 1, 3, 2], [list: 1, 3, 0, 2], [list: 0, 2, 3, 1]],
    [list: [list: 0, 2, 3, 1], [list: 2, 3, 1, 0], [list: 3, 0, 2, 1], [list: 0, 1, 3, 2]],
    [set: hire(6, 5), hire(0, 0), hire(1, 3), hire(3, 2), hire(2, 1)]
  ) is false
end

check "notp-5-6_11":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(2, 0), hire(4, 4), hire(0, 1)]
  ) is false
end

check "notp-5-6_12":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(5, 4), hire(2, 0), hire(1, 2)]
  ) is false
end

check "notp-5-6_13":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(6, 5), hire(0, 1), hire(5, 3), hire(2, 0), hire(4, 4), hire(1, 2)]
  ) is false
end

check "notp-5-6_14":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(2, 1), hire(0, 0), hire(5, 5)]
  ) is false
end

check "notp-4_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 0), hire(0, 1), hire(1, 0)]
  ) is false
end

check "notp-4_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-4_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-4_3":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 2, 1, 0, 3], [list: 3, 0, 2, 1], [list: 0, 3, 2, 1]],
    [list: [list: 3, 2, 0, 1], [list: 2, 1, 0, 3], [list: 3, 0, 2, 1], [list: 0, 3, 2, 1]],
    [set: hire(1, 1), hire(0, 3), hire(0, 2), hire(2, 0), hire(3, 0), hire(0, 1)]
  ) is false
end

check "notp-4_4":
  is-valid(
    [list: [list: 3, 1, 2, 0], [list: 2, 1, 0, 3], [list: 1, 3, 2, 0], [list: 1, 2, 3, 0]],
    [list: [list: 3, 2, 0, 1], [list: 0, 1, 2, 3], [list: 3, 0, 2, 1], [list: 2, 0, 1, 3]],
    [set: hire(3, 0), hire(0, 2), hire(1, 1), hire(3, 1), hire(0, 3), hire(2, 1)]
  ) is false
end

check "notp-4_5":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 1, 0, 3, 2], [list: 0, 1, 2, 3]],
    [list: [list: 2, 0, 1, 3], [list: 0, 3, 1, 2], [list: 2, 0, 3, 1], [list: 1, 2, 3, 0]],
    [set: hire(1, 2), hire(3, 0), hire(2, 0), hire(2, 3), hire(0, 1), hire(2, 1)]
  ) is false
end

check "notp-4_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(1, 1), hire(2, 0), hire(0, 0)]
  ) is false
end

check "notp-4_7":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(2, 2), hire(2, 1), hire(0, 0), hire(1, 1)]
  ) is false
end

check "notp-4_8":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 0, 1, 2, 3], [list: 2, 1, 3, 0], [list: 3, 2, 0, 1]],
    [list: [list: 3, 0, 1, 2], [list: 0, 1, 2, 3], [list: 2, 1, 3, 0], [list: 3, 2, 0, 1]],
    [set: hire(1, 2), hire(0, 1), hire(2, 2), hire(1, 0), hire(3, 3)]
  ) is false
end

check "notp-4_9":
  is-valid(
    [list: [list: 1, 2, 0, 3], [list: 1, 0, 2, 3], [list: 3, 1, 2, 0], [list: 2, 0, 1, 3]],
    [list: [list: 3, 1, 2, 0], [list: 1, 2, 3, 0], [list: 3, 2, 0, 1], [list: 0, 2, 3, 1]],
    [set: hire(0, 0), hire(3, 2), hire(2, 3), hire(1, 1), hire(2, 2)]
  ) is false
end

check "notp-4_10":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(1, 1), hire(1, 2), hire(0, 0), hire(2, 1)]
  ) is false
end

check "notp-4_11":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 3, 1, 2, 0], [list: 3, 0, 1, 2], [list: 3, 0, 2, 1]],
    [list: [list: 0, 3, 1, 2], [list: 1, 3, 0, 2], [list: 0, 2, 1, 3], [list: 1, 3, 0, 2]],
    [set: hire(0, 0), hire(1, 1), hire(2, 1), hire(2, 3), hire(3, 1), hire(1, 2)]
  ) is false
end

check "notp-4_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(2, 2), hire(1, 0), hire(2, 1), hire(0, 2)]
  ) is false
end

check "notp-4_13":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 1, 0, 2, 3], [list: 2, 3, 1, 0], [list: 1, 3, 2, 0]],
    [list: [list: 3, 0, 2, 1], [list: 0, 3, 2, 1], [list: 0, 1, 3, 2], [list: 3, 2, 1, 0]],
    [set: hire(3, 3), hire(3, 0), hire(1, 2), hire(0, 2), hire(3, 1), hire(2, 2)]
  ) is false
end

check "notp-4_14":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(0, 0), hire(0, 1), hire(2, 2), hire(1, 2), hire(1, 0), hire(0, 2)]
  ) is false
end

check "notp-4-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2), hire(1, 0), hire(2, 3)]
  ) is false
end

check "notp-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(0, 0), hire(0, 2), hire(1, 3), hire(2, 1)]
  ) is false
end

check "notp-4-6_3":
  is-valid(
    [list: [list: 2, 3, 1, 0], [list: 2, 0, 1, 3], [list: 1, 2, 0, 3], [list: 2, 0, 1, 3]],
    [list: [list: 2, 0, 1, 3], [list: 3, 1, 2, 0], [list: 2, 0, 1, 3], [list: 1, 0, 3, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 1), hire(1, 2), hire(0, 4), hire(3, 3)]
  ) is false
end

check "notp-4-6_4":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 0, 1, 2]],
    [set: hire(2, 1), hire(1, 3), hire(1, 5), hire(0, 6), hire(0, 0), hire(0, 2)]
  ) is false
end

check "notp-4-6_5":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 1, 2]],
    [set: hire(1, 3), hire(1, 1), hire(2, 1), hire(0, 0), hire(1, 2)]
  ) is false
end

check "notp-4-6_6":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 0), hire(0, 5), hire(0, 2), hire(1, 1), hire(2, 6)]
  ) is false
end

check "notp-4-6_7":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(2, 2), hire(1, 3), hire(0, 1), hire(2, 1)]
  ) is false
end

check "notp-4-6_8":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(0, 5), hire(0, 0), hire(2, 2), hire(1, 6), hire(0, 2), hire(0, 1)]
  ) is false
end

check "notp-4-6_9":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(0, 2), hire(1, 5), hire(0, 0), hire(1, 1), hire(2, 5), hire(0, 4)]
  ) is false
end

check "notp-4-6_10":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(0, 1), hire(2, 1), hire(1, 5), hire(1, 0), hire(2, 2), hire(1, 4)]
  ) is false
end

check "notp-4-6_11":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(0, 2), hire(1, 2), hire(1, 6), hire(0, 0), hire(0, 1), hire(2, 0)]
  ) is false
end

check "notp-4-6_12":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(2, 6), hire(1, 5), hire(2, 1), hire(1, 0), hire(1, 6), hire(0, 2)]
  ) is false
end

check "notp-4-6_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(2, 0), hire(0, 2), hire(2, 3), hire(1, 5), hire(1, 1)]
  ) is false
end

check "notp-4-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [set: hire(2, 1), hire(0, 0), hire(1, 0), hire(1, 1), hire(2, 2), hire(2, 6)]
  ) is false
end

check "notp-4-5_0":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 1), hire(2, 2), hire(3, 0)]
  ) is false
end

check "notp-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 0), hire(3, 2)]
  ) is false
end

check "notp-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 2), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-4-5_3":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 1, 2, 3, 0], [list: 2, 3, 0, 1], [list: 3, 2, 0, 1]],
    [list: [list: 3, 0, 2, 1], [list: 2, 0, 3, 1], [list: 3, 1, 2, 0], [list: 2, 3, 0, 1]],
    [set: hire(1, 3), hire(0, 0), hire(3, 2), hire(4, 0), hire(2, 1), hire(5, 2)]
  ) is false
end

check "notp-4-5_4":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(5, 0), hire(2, 1), hire(2, 0), hire(1, 2), hire(0, 0), hire(4, 0)]
  ) is false
end

check "notp-4-5_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(0, 0), hire(2, 0), hire(2, 1), hire(0, 2), hire(1, 2), hire(3, 1)]
  ) is false
end

check "notp-4-5_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(1, 2), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-4-5_7":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(4, 1), hire(1, 0), hire(0, 0), hire(1, 1), hire(2, 0), hire(4, 2)]
  ) is false
end

check "notp-4-5_8":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(0, 2), hire(1, 0), hire(0, 1), hire(2, 2), hire(6, 2)]
  ) is false
end

check "notp-4-5_9":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 3, 2, 1, 0], [list: 0, 2, 3, 1], [list: 0, 2, 3, 1]],
    [list: [list: 2, 3, 0, 1], [list: 2, 3, 1, 0], [list: 3, 2, 1, 0], [list: 0, 2, 3, 1]],
    [set: hire(6, 3), hire(1, 1), hire(2, 0), hire(0, 3), hire(2, 1), hire(3, 2)]
  ) is false
end

check "notp-4-5_10":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(1, 0), hire(2, 2), hire(0, 1), hire(2, 1), hire(1, 1)]
  ) is false
end

check "notp-4-5_11":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 1), hire(1, 0), hire(0, 2), hire(2, 0), hire(5, 0)]
  ) is false
end

check "notp-4-5_12":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 0), hire(0, 0), hire(2, 2), hire(2, 1), hire(6, 2), hire(3, 1)]
  ) is false
end

check "notp-4-5_13":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(2, 0), hire(0, 1), hire(2, 1), hire(6, 0), hire(3, 0), hire(1, 2)]
  ) is false
end

check "notp-4-5_14":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(0, 2), hire(5, 0), hire(0, 0), hire(2, 1), hire(4, 0), hire(1, 1)]
  ) is false
end

check "notp-4-5-6_0":
  is-valid(
    [list: ],
    [list: ],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(0, 3), hire(1, 0), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 3), hire(1, 2), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-4-5-6_3":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(0, 0), hire(4, 6), hire(2, 1), hire(6, 5), hire(2, 0), hire(1, 2)]
  ) is false
end

check "notp-4-5-6_4":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 1, 0]],
    [set: hire(1, 5), hire(0, 1), hire(1, 6), hire(1, 0), hire(4, 1), hire(2, 2)]
  ) is false
end

check "notp-4-5-6_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(5, 0), hire(0, 1), hire(4, 6), hire(2, 3), hire(2, 0), hire(1, 2)]
  ) is false
end

check "notp-4-5-6_6":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(4, 1), hire(3, 6), hire(2, 5), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-4-5-6_7":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 2, 1, 0]],
    [set: hire(0, 1), hire(0, 4), hire(6, 1), hire(1, 0), hire(5, 1), hire(2, 2)]
  ) is false
end

check "notp-4-5-6_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 2, 1, 0]],
    [set: hire(0, 1), hire(1, 2), hire(1, 0), hire(6, 5), hire(3, 3), hire(2, 2)]
  ) is false
end

check "notp-4-5-6_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 0), hire(2, 2), hire(3, 2), hire(1, 0), hire(6, 1), hire(3, 6)]
  ) is false
end

check "notp-4-5-6_10":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(1, 0), hire(5, 5), hire(2, 1), hire(0, 2), hire(6, 0), hire(1, 5)]
  ) is false
end

check "notp-4-5-6_11":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(5, 6), hire(5, 4), hire(5, 3), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-4-5-6_12":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(2, 1), hire(6, 2), hire(0, 0), hire(4, 3), hire(1, 0)]
  ) is false
end

check "notp-4-5-6_13":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(1, 1), hire(0, 4), hire(2, 0), hire(3, 2), hire(1, 0)]
  ) is false
end

check "notp-4-5-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(6, 4), hire(1, 0), hire(5, 6), hire(2, 1), hire(0, 2), hire(5, 2)]
  ) is false
end

check "notp-3_0":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 1, 0, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 1, 0, 2, 3]],
    [set: hire(0, 3), hire(1, 2), hire(2, 0), hire(3, 1)]
  ) is false
end

check "notp-3_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 3, 2], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 1), hire(1, 2), hire(2, 0), hire(3, 3)]
  ) is false
end

check "notp-3_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 2)]
  ) is false
end

check "notp-3_3":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(0, 1), hire(1, 2), hire(2, 0)]
  ) is false
end

check "notp-3_4":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(2, 2), hire(0, 0), hire(1, 1)]
  ) is false
end

check "notp-3_5":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(2, 1), hire(1, 2), hire(0, 0)]
  ) is false
end

check "notp-3_6":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 2, 1, 0, 3], [list: 3, 1, 2, 0], [list: 2, 3, 0, 1]],
    [list: [list: 3, 2, 0, 1], [list: 2, 1, 0, 3], [list: 3, 1, 2, 0], [list: 2, 3, 0, 1]],
    [set: hire(2, 2), hire(0, 1), hire(1, 0), hire(3, 3)]
  ) is false
end

check "notp-3_7":
  is-valid(
    [list: [list: 2, 0, 1, 3], [list: 3, 2, 0, 1], [list: 3, 1, 2, 0], [list: 1, 3, 2, 0]],
    [list: [list: 2, 0, 1, 3], [list: 3, 2, 0, 1], [list: 2, 1, 3, 0], [list: 3, 1, 0, 2]],
    [set: hire(1, 3), hire(3, 1), hire(0, 2), hire(2, 0)]
  ) is false
end

check "notp-3_8":
  is-valid(
    [list: [list: 2, 3, 1, 0], [list: 1, 0, 3, 2], [list: 0, 3, 2, 1], [list: 2, 0, 3, 1]],
    [list: [list: 1, 0, 2, 3], [list: 2, 0, 3, 1], [list: 3, 2, 0, 1], [list: 2, 1, 3, 0]],
    [set: hire(0, 1), hire(3, 3), hire(2, 0), hire(1, 2)]
  ) is false
end

# No check was generated for "notp-3_9"
# Please re-run the example generator.

check "notp-3_10":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(0, 0), hire(1, 2), hire(2, 1)]
  ) is false
end

check "notp-3_11":
  is-valid(
    [list: [list: 3, 2, 1, 0, 4], [list: 1, 3, 0, 4, 2], [list: 1, 4, 3, 0, 2], [list: 1, 0, 2, 4, 3], [list: 1, 2, 0, 4, 3]],
    [list: [list: 1, 0, 2, 4, 3], [list: 2, 0, 3, 4, 1], [list: 3, 2, 1, 4, 0], [list: 1, 0, 2, 4, 3], [list: 1, 2, 0, 4, 3]],
    [set: hire(1, 3), hire(2, 1), hire(4, 0), hire(0, 2), hire(3, 4)]
  ) is false
end

check "notp-3_12":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [set: hire(2, 0), hire(0, 2), hire(1, 1)]
  ) is false
end

check "notp-3_13":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(1, 0), hire(2, 1), hire(0, 2)]
  ) is false
end

check "notp-3_14":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(1, 2), hire(2, 1), hire(0, 0)]
  ) is false
end

# No check was generated for "notp-3-6_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

# No check was generated for "notp-3-5_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

check "notp-3-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 1), hire(1, 0)]
  ) is false
end

check "notp-3-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 4), hire(1, 3), hire(2, 1), hire(3, 2), hire(4, 0)]
  ) is false
end

check "notp-3-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 1), hire(2, 2), hire(3, 0)]
  ) is false
end

check "notp-3-5-6_3":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(6, 5), hire(4, 4), hire(5, 2), hire(2, 1), hire(0, 6)]
  ) is false
end

check "notp-3-5-6_4":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(6, 1), hire(2, 6), hire(3, 5), hire(1, 2)]
  ) is false
end

check "notp-3-5-6_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(2, 1), hire(1, 3), hire(4, 0)]
  ) is false
end

check "notp-3-5-6_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(3, 4), hire(1, 5), hire(5, 3), hire(0, 1), hire(6, 2), hire(2, 0)]
  ) is false
end

check "notp-3-5-6_7":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(6, 1), hire(2, 2), hire(4, 0), hire(0, 4), hire(1, 6)]
  ) is false
end

check "notp-3-5-6_8":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(0, 0), hire(1, 1), hire(6, 6), hire(2, 2)]
  ) is false
end

check "notp-3-5-6_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(2, 0), hire(5, 1), hire(3, 3), hire(0, 2), hire(1, 5)]
  ) is false
end

check "notp-3-5-6_10":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(0, 0), hire(2, 2), hire(4, 3), hire(3, 1), hire(1, 4)]
  ) is false
end

check "notp-3-5-6_11":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(6, 0), hire(2, 1), hire(1, 4)]
  ) is false
end

check "notp-3-5-6_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(4, 3), hire(5, 6), hire(2, 1), hire(1, 2), hire(0, 5), hire(6, 0)]
  ) is false
end

check "notp-3-5-6_13":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 2, 3, 0, 1], [list: 2, 3, 0, 1], [list: 1, 3, 2, 0]],
    [list: [list: 0, 1, 2, 3], [list: 0, 3, 1, 2], [list: 1, 3, 2, 0], [list: 0, 3, 1, 2]],
    [set: hire(0, 0), hire(2, 1), hire(1, 3), hire(5, 2), hire(3, 5)]
  ) is false
end

check "notp-3-5-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(6, 4), hire(3, 5), hire(4, 3), hire(0, 0), hire(1, 2), hire(2, 1)]
  ) is false
end

check "notp-3-4_0":
  is-valid(
    [list: [list: 1, 0], [list: 0, 1]],
    [list: [list: 1, 0], [list: 0, 1]],
    [set: hire(0, 0), hire(0, 1), hire(1, 1)]
  ) is false
end

check "notp-3-4_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 2, 3, 1], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(0, 3), hire(1, 1), hire(2, 2), hire(3, 0)]
  ) is false
end

check "notp-3-4_2":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 0, 2, 1, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(0, 3), hire(1, 2), hire(2, 0), hire(3, 1)]
  ) is false
end

check "notp-3-4_3":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 1, 0, 3, 2], [list: 2, 3, 1, 0], [list: 3, 0, 1, 2]],
    [list: [list: 0, 2, 1, 3], [list: 1, 0, 3, 2], [list: 0, 1, 2, 3], [list: 3, 2, 1, 0]],
    [set: hire(0, 0), hire(2, 1), hire(1, 0), hire(3, 2), hire(3, 3)]
  ) is false
end

check "notp-3-4_4":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 0, 1, 2, 3], [list: 3, 0, 1, 2], [list: 1, 2, 3, 0]],
    [list: [list: 0, 3, 1, 2], [list: 0, 1, 2, 3], [list: 3, 0, 1, 2], [list: 1, 2, 3, 0]],
    [set: hire(1, 0), hire(3, 3), hire(2, 3), hire(1, 2), hire(2, 2), hire(0, 1)]
  ) is false
end

check "notp-3-4_5":
  is-valid(
    [list: [list: 3, 1, 2, 4, 0], [list: 3, 2, 1, 4, 0], [list: 4, 3, 2, 0, 1], [list: 0, 2, 4, 3, 1], [list: 0, 2, 4, 3, 1]],
    [list: [list: 4, 2, 3, 0, 1], [list: 4, 0, 2, 1, 3], [list: 0, 2, 3, 1, 4], [list: 1, 2, 0, 4, 3], [list: 4, 2, 0, 3, 1]],
    [set: hire(2, 1), hire(1, 2), hire(0, 1), hire(3, 4), hire(3, 0), hire(4, 3)]
  ) is false
end

check "notp-3-4_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(0, 0), hire(2, 0), hire(2, 2), hire(1, 1)]
  ) is false
end

check "notp-3-4_7":
  is-valid(
    [list: [list: 2, 3, 0, 4, 1], [list: 3, 0, 2, 1, 4], [list: 4, 2, 3, 1, 0], [list: 3, 2, 4, 0, 1], [list: 0, 3, 2, 1, 4]],
    [list: [list: 4, 1, 3, 0, 2], [list: 3, 1, 0, 4, 2], [list: 1, 2, 4, 3, 0], [list: 0, 2, 1, 4, 3], [list: 3, 0, 1, 2, 4]],
    [set: hire(1, 0), hire(3, 3), hire(1, 1), hire(2, 2), hire(0, 4), hire(4, 1)]
  ) is false
end

check "notp-3-4_8":
  is-valid(
    [list: [list: 3, 0, 2, 4, 1], [list: 1, 3, 2, 0, 4], [list: 1, 0, 4, 3, 2], [list: 4, 1, 2, 3, 0], [list: 0, 3, 1, 4, 2]],
    [list: [list: 1, 4, 2, 0, 3], [list: 4, 0, 3, 1, 2], [list: 4, 1, 0, 3, 2], [list: 1, 0, 2, 3, 4], [list: 4, 2, 0, 3, 1]],
    [set: hire(2, 0), hire(4, 2), hire(3, 0), hire(1, 3), hire(0, 4), hire(0, 1)]
  ) is false
end

check "notp-3-4_9":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 2, 0, 3, 1], [list: 0, 1, 3, 2], [list: 0, 1, 3, 2]],
    [list: [list: 0, 1, 3, 2], [list: 0, 2, 3, 1], [list: 0, 1, 3, 2], [list: 3, 2, 1, 0]],
    [set: hire(1, 0), hire(3, 2), hire(2, 3), hire(0, 0), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-3-4_10":
  is-valid(
    [list: [list: 3, 1, 2, 0], [list: 3, 0, 1, 2], [list: 3, 0, 1, 2], [list: 2, 0, 3, 1]],
    [list: [list: 3, 2, 1, 0], [list: 3, 1, 2, 0], [list: 3, 0, 1, 2], [list: 3, 0, 1, 2]],
    [set: hire(1, 2), hire(3, 2), hire(1, 0), hire(3, 3), hire(0, 1), hire(2, 0)]
  ) is false
end

check "notp-3-4_11":
  is-valid(
    [list: [list: 1, 4, 3, 2, 0], [list: 1, 3, 4, 0, 2], [list: 2, 1, 0, 3, 4], [list: 0, 3, 1, 4, 2], [list: 1, 3, 4, 0, 2]],
    [list: [list: 0, 3, 2, 1, 4], [list: 0, 3, 1, 2, 4], [list: 2, 0, 3, 4, 1], [list: 1, 4, 2, 3, 0], [list: 2, 0, 4, 1, 3]],
    [set: hire(3, 0), hire(2, 2), hire(0, 1), hire(3, 4), hire(4, 0), hire(1, 3)]
  ) is false
end

check "notp-3-4_12":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 3, 2, 1, 0], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3]],
    [list: [list: 3, 2, 0, 1], [list: 3, 2, 1, 0], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3]],
    [set: hire(1, 3), hire(0, 0), hire(3, 1), hire(1, 2), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-3-4_13":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 3, 2, 0, 1], [list: 1, 3, 0, 2], [list: 0, 2, 3, 1]],
    [list: [list: 0, 3, 2, 1], [list: 3, 2, 0, 1], [list: 0, 2, 3, 1], [list: 3, 2, 0, 1]],
    [set: hire(1, 3), hire(1, 2), hire(1, 1), hire(0, 3), hire(2, 0), hire(3, 2)]
  ) is false
end

check "notp-3-4_14":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 3, 2, 0, 1], [list: 0, 3, 1, 2], [list: 1, 0, 2, 3]],
    [list: [list: 0, 3, 1, 2], [list: 3, 2, 0, 1], [list: 0, 3, 1, 2], [list: 1, 0, 2, 3]],
    [set: hire(1, 0), hire(0, 0), hire(1, 2), hire(3, 3), hire(0, 1), hire(2, 2)]
  ) is false
end

check "notp-3-4-6_0":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 3), hire(1, 0), hire(2, 2)]
  ) is false
end

check "notp-3-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 2), hire(0, 3), hire(1, 4), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-3-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2]],
    [set: hire(0, 0), hire(0, 3), hire(1, 2), hire(2, 1), hire(3, 4)]
  ) is false
end

check "notp-3-4-6_3":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(0, 3), hire(1, 6), hire(2, 1), hire(0, 5)]
  ) is false
end

check "notp-3-4-6_4":
  is-valid(
    [list: [list: 2, 0, 3, 1], [list: 3, 1, 2, 0], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3]],
    [list: [list: 1, 2, 3, 0], [list: 1, 2, 3, 0], [list: 0, 1, 2, 3], [list: 0, 2, 1, 3]],
    [set: hire(2, 6), hire(1, 0), hire(2, 4), hire(3, 1), hire(0, 3), hire(1, 2)]
  ) is false
end

check "notp-3-4-6_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(1, 1), hire(1, 6), hire(1, 0), hire(0, 2), hire(2, 2), hire(0, 3)]
  ) is false
end

check "notp-3-4-6_6":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 2, 1, 0]],
    [set: hire(0, 1), hire(2, 2), hire(2, 5), hire(2, 0), hire(1, 3)]
  ) is false
end

check "notp-3-4-6_7":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(2, 0), hire(1, 4), hire(0, 6), hire(1, 3), hire(1, 2), hire(0, 1)]
  ) is false
end

check "notp-3-4-6_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(0, 2), hire(2, 1), hire(1, 0), hire(1, 5)]
  ) is false
end

check "notp-3-4-6_9":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(2, 5), hire(0, 1), hire(0, 2)]
  ) is false
end

check "notp-3-4-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(0, 4), hire(2, 1), hire(1, 0), hire(1, 2)]
  ) is false
end

check "notp-3-4-6_11":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(2, 1), hire(2, 3), hire(0, 2), hire(1, 6)]
  ) is false
end

check "notp-3-4-6_12":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 1, 2, 0, 3], [list: 3, 1, 0, 2], [list: 3, 0, 1, 2]],
    [list: [list: 3, 0, 1, 2], [list: 1, 2, 0, 3], [list: 3, 1, 0, 2], [list: 3, 0, 1, 2]],
    [set: hire(1, 6), hire(2, 0), hire(1, 2), hire(0, 3), hire(2, 1), hire(3, 3)]
  ) is false
end

check "notp-3-4-6_13":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 0, 3, 2, 1], [list: 1, 2, 3, 0], [list: 0, 1, 2, 3]],
    [list: [list: 0, 2, 1, 3], [list: 0, 3, 2, 1], [list: 1, 2, 3, 0], [list: 0, 1, 2, 3]],
    [set: hire(1, 3), hire(0, 2), hire(1, 0), hire(0, 1), hire(3, 5), hire(2, 4)]
  ) is false
end

check "notp-3-4-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 3), hire(0, 1), hire(1, 1), hire(2, 2), hire(0, 0), hire(2, 6)]
  ) is false
end

check "notp-3-4-5_0":
  is-valid(
    [list: [list: 1, 0], [list: 0, 1]],
    [list: [list: 1, 0], [list: 0, 1]],
    [set: hire(0, 0), hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-3-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(1, 1), hire(2, 0), hire(3, 2), hire(4, 3)]
  ) is false
end

check "notp-3-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 3), hire(1, 0), hire(2, 1), hire(3, 0), hire(4, 2)]
  ) is false
end

check "notp-3-4-5_3":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 3, 2, 0, 1], [list: 2, 1, 3, 0], [list: 3, 1, 0, 2]],
    [list: [list: 1, 3, 2, 0], [list: 0, 2, 1, 3], [list: 0, 1, 2, 3], [list: 2, 1, 0, 3]],
    [set: hire(0, 1), hire(3, 2), hire(6, 0), hire(2, 3), hire(0, 3), hire(1, 3)]
  ) is false
end

check "notp-3-4-5_4":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(2, 0), hire(3, 1), hire(1, 1), hire(5, 0), hire(1, 2)]
  ) is false
end

check "notp-3-4-5_5":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(3, 2), hire(0, 0), hire(1, 2), hire(2, 2), hire(3, 0), hire(1, 1)]
  ) is false
end

check "notp-3-4-5_6":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 3, 1, 2, 0], [list: 3, 1, 2, 0], [list: 0, 2, 3, 1]],
    [list: [list: 1, 3, 2, 0], [list: 3, 1, 2, 0], [list: 2, 1, 3, 0], [list: 0, 1, 2, 3]],
    [set: hire(1, 1), hire(3, 1), hire(2, 0), hire(5, 3), hire(4, 2), hire(0, 1)]
  ) is false
end

check "notp-3-4-5_7":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(2, 2), hire(1, 0), hire(6, 1), hire(3, 0), hire(0, 2), hire(4, 1)]
  ) is false
end

check "notp-3-4-5_8":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [set: hire(2, 2), hire(0, 0), hire(1, 0), hire(4, 0), hire(3, 1)]
  ) is false
end

check "notp-3-4-5_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(2, 2), hire(0, 0), hire(6, 2)]
  ) is false
end

check "notp-3-4-5_10":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 1, 3, 0, 2], [list: 0, 1, 3, 2], [list: 0, 1, 2, 3]],
    [list: [list: 2, 0, 3, 1], [list: 2, 1, 0, 3], [list: 1, 2, 0, 3], [list: 1, 0, 2, 3]],
    [set: hire(2, 1), hire(3, 1), hire(0, 1), hire(1, 0), hire(6, 2), hire(6, 3)]
  ) is false
end

check "notp-3-4-5_11":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(0, 0), hire(3, 2), hire(4, 1), hire(1, 1), hire(2, 1)]
  ) is false
end

check "notp-3-4-5_12":
  is-valid(
    [list: [list: 2, 1, 3, 0], [list: 0, 2, 3, 1], [list: 2, 0, 1, 3], [list: 3, 1, 0, 2]],
    [list: [list: 1, 0, 3, 2], [list: 0, 1, 2, 3], [list: 0, 2, 3, 1], [list: 1, 0, 2, 3]],
    [set: hire(0, 3), hire(3, 2), hire(2, 1), hire(1, 0), hire(3, 1), hire(6, 0)]
  ) is false
end

check "notp-3-4-5_13":
  is-valid(
    [list: [list: 1, 2, 0, 3], [list: 1, 2, 3, 0], [list: 1, 0, 2, 3], [list: 0, 1, 3, 2]],
    [list: [list: 1, 2, 0, 3], [list: 2, 0, 1, 3], [list: 0, 2, 1, 3], [list: 0, 1, 2, 3]],
    [set: hire(2, 2), hire(1, 2), hire(3, 1), hire(5, 3), hire(6, 0), hire(0, 3)]
  ) is false
end

check "notp-3-4-5_14":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 2, 1, 0]],
    [set: hire(0, 1), hire(2, 2), hire(2, 1), hire(3, 1), hire(1, 2), hire(4, 0)]
  ) is false
end

check "notp-3-4-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 1), hire(0, 2), hire(1, 0)]
  ) is false
end

check "notp-3-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 3), hire(2, 0), hire(3, 1)]
  ) is false
end

check "notp-3-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 3), hire(1, 0), hire(2, 0), hire(3, 2)]
  ) is false
end

check "notp-3-4-5-6_3":
  is-valid(
    [list: [list: 1, 2, 3, 0], [list: 2, 1, 0, 3], [list: 3, 0, 1, 2], [list: 3, 0, 1, 2]],
    [list: [list: 1, 0, 3, 2], [list: 1, 2, 3, 0], [list: 0, 2, 3, 1], [list: 1, 2, 3, 0]],
    [set: hire(2, 1), hire(0, 4), hire(1, 3), hire(3, 2), hire(6, 0), hire(4, 2)]
  ) is false
end

check "notp-3-4-5-6_4":
  is-valid(
    [list: [list: 2, 3, 0, 1], [list: 3, 0, 1, 2], [list: 2, 1, 0, 3], [list: 3, 0, 2, 1]],
    [list: [list: 1, 0, 2, 3], [list: 1, 3, 2, 0], [list: 2, 0, 3, 1], [list: 3, 1, 0, 2]],
    [set: hire(6, 1), hire(0, 2), hire(2, 3), hire(4, 0), hire(3, 4), hire(1, 0)]
  ) is false
end

check "notp-3-4-5-6_5":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(4, 6), hire(5, 0), hire(2, 2), hire(0, 1), hire(4, 3)]
  ) is false
end

check "notp-3-4-5-6_6":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(2, 3), hire(6, 0), hire(4, 2), hire(0, 1)]
  ) is false
end

check "notp-3-4-5-6_7":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(0, 5), hire(5, 0), hire(6, 6), hire(4, 0), hire(2, 1)]
  ) is false
end

check "notp-3-4-5-6_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(4, 1), hire(4, 4), hire(0, 2), hire(2, 2)]
  ) is false
end

check "notp-3-4-5-6_9":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(4, 1), hire(1, 4), hire(2, 5), hire(0, 2), hire(4, 4), hire(3, 0)]
  ) is false
end

check "notp-3-4-5-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(2, 5), hire(2, 2), hire(6, 0), hire(2, 4), hire(0, 1), hire(1, 4)]
  ) is false
end

check "notp-3-4-5-6_11":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(2, 1), hire(3, 5), hire(6, 2), hire(5, 0), hire(1, 4), hire(0, 0)]
  ) is false
end

check "notp-3-4-5-6_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(4, 1), hire(2, 0), hire(0, 5), hire(1, 0), hire(4, 2)]
  ) is false
end

check "notp-3-4-5-6_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(3, 2), hire(0, 0), hire(2, 4), hire(2, 1), hire(1, 5), hire(1, 4)]
  ) is false
end

check "notp-3-4-5-6_14":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 2, 3, 1, 0], [list: 0, 2, 1, 3], [list: 2, 0, 1, 3]],
    [list: [list: 0, 2, 3, 1], [list: 2, 0, 3, 1], [list: 2, 0, 1, 3], [list: 0, 1, 2, 3]],
    [set: hire(1, 1), hire(2, 6), hire(5, 6), hire(4, 2), hire(3, 3), hire(0, 0)]
  ) is false
end

# No check was generated for "notp-2_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

# No check was generated for "notp-2-6_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

# No check was generated for "notp-2-5_-1"
# The example generator gave the following reason: (p1 & p3 & p4) -> (p2 | p5).

# No check was generated for "notp-2-5-6_-1"
# The example generator gave the following reason: (p1 & p3 & p4) -> (p2 | p5).

check "notp-2-4_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-2-4_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2), hire(1, 0)]
  ) is false
end

check "notp-2-4_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 1)]
  ) is false
end

check "notp-2-4_3":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 0), hire(2, 1), hire(1, 2)]
  ) is false
end

check "notp-2-4_4":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-2-4_5":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 0, 3, 1, 2], [list: 3, 0, 1, 2], [list: 0, 3, 1, 2]],
    [list: [list: 0, 3, 2, 1], [list: 0, 3, 1, 2], [list: 3, 0, 1, 2], [list: 0, 3, 1, 2]],
    [set: hire(1, 0), hire(3, 1), hire(0, 3), hire(0, 2)]
  ) is false
end

check "notp-2-4_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(1, 2), hire(2, 0)]
  ) is false
end

check "notp-2-4_7":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 0, 3, 2, 1], [list: 3, 2, 1, 0], [list: 2, 1, 3, 0]],
    [list: [list: 0, 3, 2, 1], [list: 2, 0, 3, 1], [list: 2, 1, 0, 3], [list: 0, 3, 1, 2]],
    [set: hire(3, 1), hire(0, 3), hire(3, 0), hire(3, 2), hire(2, 2)]
  ) is false
end

check "notp-2-4_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 1), hire(0, 0)]
  ) is false
end

check "notp-2-4_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 0), hire(2, 2), hire(2, 1)]
  ) is false
end

check "notp-2-4_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(2, 1), hire(2, 0), hire(0, 1), hire(2, 2)]
  ) is false
end

check "notp-2-4_11":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(2, 0), hire(0, 2), hire(0, 1)]
  ) is false
end

check "notp-2-4_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(0, 2), hire(1, 2), hire(1, 0)]
  ) is false
end

check "notp-2-4_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(1, 2), hire(1, 0)]
  ) is false
end

check "notp-2-4_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(1, 0), hire(1, 2), hire(2, 1)]
  ) is false
end

check "notp-2-4-6_0":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2), hire(0, 4), hire(1, 3)]
  ) is false
end

check "notp-2-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 3), hire(1, 2)]
  ) is false
end

check "notp-2-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2), hire(0, 3), hire(1, 0)]
  ) is false
end

check "notp-2-4-6_3":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(0, 6), hire(0, 0), hire(1, 1), hire(0, 2)]
  ) is false
end

check "notp-2-4-6_4":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(0, 1), hire(1, 0), hire(0, 6), hire(0, 5), hire(1, 2), hire(1, 3)]
  ) is false
end

check "notp-2-4-6_5":
  is-valid(
    [list: [list: 0, 2, 3, 1], [list: 2, 1, 3, 0], [list: 2, 1, 0, 3], [list: 2, 1, 3, 0]],
    [list: [list: 2, 0, 1, 3], [list: 3, 0, 2, 1], [list: 3, 1, 2, 0], [list: 0, 3, 1, 2]],
    [set: hire(1, 6), hire(0, 0), hire(3, 3), hire(3, 2), hire(3, 1)]
  ) is false
end

check "notp-2-4-6_6":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(1, 0), hire(2, 2), hire(1, 6)]
  ) is false
end

check "notp-2-4-6_7":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(1, 1), hire(2, 0), hire(1, 6)]
  ) is false
end

check "notp-2-4-6_8":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 1, 2, 3, 0], [list: 2, 0, 3, 1], [list: 3, 1, 2, 0]],
    [list: [list: 2, 3, 1, 0], [list: 3, 1, 2, 0], [list: 0, 2, 1, 3], [list: 0, 3, 2, 1]],
    [set: hire(3, 2), hire(0, 3), hire(2, 0), hire(0, 6), hire(3, 1)]
  ) is false
end

check "notp-2-4-6_9":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 2), hire(1, 3), hire(1, 0), hire(1, 6), hire(0, 0)]
  ) is false
end

check "notp-2-4-6_10":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(1, 1), hire(0, 1), hire(1, 5), hire(1, 0), hire(0, 3), hire(1, 2)]
  ) is false
end

check "notp-2-4-6_11":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 2, 0, 1, 3], [list: 3, 0, 1, 2], [list: 1, 2, 3, 0]],
    [list: [list: 3, 2, 0, 1], [list: 0, 1, 3, 2], [list: 2, 1, 0, 3], [list: 1, 0, 3, 2]],
    [set: hire(1, 3), hire(0, 1), hire(3, 1), hire(1, 2), hire(0, 4), hire(0, 0)]
  ) is false
end

check "notp-2-4-6_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(0, 1), hire(1, 6), hire(1, 0)]
  ) is false
end

check "notp-2-4-6_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 3), hire(1, 1), hire(1, 0), hire(0, 2), hire(1, 4)]
  ) is false
end

check "notp-2-4-6_14":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(1, 0), hire(2, 1), hire(2, 6), hire(2, 0)]
  ) is false
end

check "notp-2-4-5_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 0), hire(0, 1), hire(2, 0)]
  ) is false
end

check "notp-2-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2), hire(1, 0), hire(3, 0)]
  ) is false
end

check "notp-2-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 1), hire(3, 0)]
  ) is false
end

check "notp-2-4-5_3":
  is-valid(
    [list: [list: 1, 3, 0, 2], [list: 1, 3, 0, 2], [list: 0, 1, 2, 3], [list: 1, 2, 0, 3]],
    [list: [list: 0, 1, 2, 3], [list: 2, 3, 1, 0], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(1, 0), hire(2, 2), hire(0, 3), hire(6, 0), hire(0, 1), hire(2, 0)]
  ) is false
end

check "notp-2-4-5_4":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(1, 0), hire(4, 0), hire(2, 1)]
  ) is false
end

check "notp-2-4-5_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 2, 1, 0]],
    [set: hire(2, 2), hire(4, 2), hire(0, 0), hire(2, 1)]
  ) is false
end

check "notp-2-4-5_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(1, 1), hire(4, 2), hire(3, 2), hire(1, 2), hire(6, 0), hire(2, 0)]
  ) is false
end

check "notp-2-4-5_7":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 1, 3, 0, 2], [list: 1, 0, 3, 2], [list: 0, 3, 2, 1]],
    [list: [list: 0, 3, 2, 1], [list: 1, 3, 0, 2], [list: 0, 3, 2, 1], [list: 0, 2, 3, 1]],
    [set: hire(0, 2), hire(5, 1), hire(0, 0), hire(3, 3), hire(1, 1), hire(4, 2)]
  ) is false
end

check "notp-2-4-5_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(5, 1), hire(6, 1), hire(0, 1), hire(1, 0), hire(5, 2)]
  ) is false
end

check "notp-2-4-5_9":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(2, 0), hire(2, 1), hire(0, 2), hire(5, 2)]
  ) is false
end

check "notp-2-4-5_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 0), hire(1, 1), hire(3, 1), hire(1, 2)]
  ) is false
end

check "notp-2-4-5_11":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 0, 3, 1, 2], [list: 3, 0, 2, 1], [list: 3, 1, 2, 0]],
    [list: [list: 2, 0, 3, 1], [list: 2, 1, 0, 3], [list: 0, 2, 1, 3], [list: 1, 3, 0, 2]],
    [set: hire(1, 3), hire(0, 0), hire(2, 1), hire(5, 2), hire(1, 2), hire(0, 3)]
  ) is false
end

check "notp-2-4-5_12":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(0, 0), hire(0, 1), hire(5, 2), hire(0, 2), hire(3, 2), hire(2, 2)]
  ) is false
end

check "notp-2-4-5_13":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(6, 1), hire(2, 0), hire(1, 1), hire(1, 2)]
  ) is false
end

check "notp-2-4-5_14":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(0, 0), hire(4, 0), hire(2, 1)]
  ) is false
end

check "notp-2-4-5-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 1, 0]],
    [set: hire(1, 0), hire(1, 1), hire(2, 2)]
  ) is false
end

check "notp-2-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2), hire(1, 0), hire(3, 3)]
  ) is false
end

check "notp-2-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 2), hire(1, 1), hire(3, 3)]
  ) is false
end

check "notp-2-4-5-6_3":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(5, 2), hire(2, 1), hire(1, 0), hire(1, 6)]
  ) is false
end

check "notp-2-4-5-6_4":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(1, 4), hire(1, 1), hire(6, 1), hire(0, 0)]
  ) is false
end

check "notp-2-4-5-6_5":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(2, 2), hire(2, 1), hire(4, 4)]
  ) is false
end

check "notp-2-4-5-6_6":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(6, 3), hire(1, 2), hire(1, 1), hire(4, 4), hire(6, 0), hire(2, 0)]
  ) is false
end

check "notp-2-4-5-6_7":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(1, 1), hire(1, 0), hire(0, 3), hire(0, 5), hire(6, 5), hire(0, 2)]
  ) is false
end

check "notp-2-4-5-6_8":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(3, 1), hire(1, 1), hire(1, 6), hire(0, 2), hire(1, 0)]
  ) is false
end

check "notp-2-4-5-6_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(6, 6), hire(4, 2), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-2-4-5-6_10":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 2, 3, 0, 1], [list: 0, 3, 2, 1], [list: 3, 2, 0, 1]],
    [list: [list: 0, 3, 2, 1], [list: 1, 3, 2, 0], [list: 3, 2, 0, 1], [list: 0, 2, 3, 1]],
    [set: hire(1, 2), hire(0, 1), hire(4, 6), hire(0, 0), hire(3, 3)]
  ) is false
end

check "notp-2-4-5-6_11":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(6, 3), hire(0, 0), hire(1, 1), hire(4, 5), hire(5, 2)]
  ) is false
end

check "notp-2-4-5-6_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 1, 0]],
    [set: hire(2, 2), hire(2, 1), hire(0, 0), hire(3, 6)]
  ) is false
end

check "notp-2-4-5-6_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(3, 0), hire(0, 2), hire(2, 0), hire(0, 1), hire(3, 1), hire(5, 4)]
  ) is false
end

check "notp-2-4-5-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(0, 0), hire(5, 3), hire(3, 3), hire(6, 3), hire(1, 2)]
  ) is false
end

# No check was generated for "notp-2-3_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

# No check was generated for "notp-2-3-6_-1"
# The example generator gave the following reason: (p1 & p4 & p5) -> (p2 & p6).

check "notp-2-3-5_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(1, 0)]
  ) is false
end

check "notp-2-3-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 0), hire(3, 1)]
  ) is false
end

check "notp-2-3-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 0), hire(3, 1)]
  ) is false
end

check "notp-2-3-5_3":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(1, 2), hire(5, 1), hire(6, 0)]
  ) is false
end

check "notp-2-3-5_4":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(5, 0), hire(4, 2), hire(1, 1)]
  ) is false
end

check "notp-2-3-5_5":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(1, 2), hire(5, 0)]
  ) is false
end

check "notp-2-3-5_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(2, 2), hire(4, 0)]
  ) is false
end

check "notp-2-3-5_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(2, 2), hire(6, 0), hire(0, 1)]
  ) is false
end

check "notp-2-3-5_8":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(3, 1), hire(5, 0), hire(6, 2)]
  ) is false
end

check "notp-2-3-5_9":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(1, 0), hire(3, 1), hire(2, 2)]
  ) is false
end

check "notp-2-3-5_10":
  is-valid(
    [list: [list: 2, 4, 0, 1, 3], [list: 0, 1, 2, 3, 4], [list: 2, 0, 4, 1, 3], [list: 2, 3, 1, 4, 0], [list: 0, 3, 1, 2, 4]],
    [list: [list: 2, 3, 0, 1, 4], [list: 0, 3, 2, 1, 4], [list: 1, 3, 4, 0, 2], [list: 0, 4, 3, 1, 2], [list: 3, 0, 4, 2, 1]],
    [set: hire(0, 4), hire(3, 2), hire(1, 0), hire(6, 1), hire(4, 3)]
  ) is false
end

check "notp-2-3-5_11":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 1, 0]],
    [set: hire(1, 1), hire(0, 2), hire(6, 0)]
  ) is false
end

check "notp-2-3-5_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(5, 0), hire(2, 1), hire(3, 2)]
  ) is false
end

check "notp-2-3-5_13":
  is-valid(
    [list: [list: 1, 2, 3, 0], [list: 1, 3, 0, 2], [list: 1, 2, 0, 3], [list: 0, 2, 1, 3]],
    [list: [list: 0, 3, 1, 2], [list: 1, 3, 2, 0], [list: 0, 2, 1, 3], [list: 0, 2, 3, 1]],
    [set: hire(1, 0), hire(5, 3), hire(4, 1), hire(3, 2)]
  ) is false
end

check "notp-2-3-5_14":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 0), hire(6, 1), hire(5, 2)]
  ) is false
end

check "notp-2-3-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-2-3-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 3), hire(3, 1), hire(4, 2)]
  ) is false
end

check "notp-2-3-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(3, 2), hire(4, 3)]
  ) is false
end

check "notp-2-3-5-6_3":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(1, 2), hire(6, 3), hire(3, 0), hire(5, 1), hire(4, 4), hire(0, 5)]
  ) is false
end

check "notp-2-3-5-6_4":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 2, 1, 0]],
    [set: hire(2, 2), hire(3, 3), hire(1, 1), hire(6, 5), hire(5, 0)]
  ) is false
end

check "notp-2-3-5-6_5":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(2, 2), hire(0, 4), hire(5, 0)]
  ) is false
end

check "notp-2-3-5-6_6":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(5, 2), hire(4, 6), hire(2, 5), hire(3, 1), hire(6, 0)]
  ) is false
end

check "notp-2-3-5-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(3, 2), hire(2, 0), hire(6, 6), hire(1, 1)]
  ) is false
end

check "notp-2-3-5-6_8":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(3, 2), hire(5, 1), hire(2, 3), hire(1, 0)]
  ) is false
end

check "notp-2-3-5-6_9":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(1, 0), hire(4, 2), hire(3, 3), hire(0, 1)]
  ) is false
end

check "notp-2-3-5-6_10":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(5, 0), hire(1, 2), hire(0, 3), hire(3, 1)]
  ) is false
end

check "notp-2-3-5-6_11":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(0, 2), hire(5, 4), hire(4, 1), hire(3, 0)]
  ) is false
end

check "notp-2-3-5-6_12":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(1, 6), hire(6, 0), hire(2, 2), hire(5, 1), hire(3, 5)]
  ) is false
end

check "notp-2-3-5-6_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(4, 1), hire(1, 4), hire(6, 0), hire(2, 2)]
  ) is false
end

check "notp-2-3-5-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(3, 4), hire(2, 6), hire(1, 2), hire(6, 1), hire(5, 0)]
  ) is false
end

check "notp-2-3-4_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(1, 0), hire(1, 1)]
  ) is false
end

check "notp-2-3-4_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2)]
  ) is false
end

check "notp-2-3-4_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2)]
  ) is false
end

check "notp-2-3-4_3":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(1, 1), hire(2, 2), hire(1, 2), hire(2, 0)]
  ) is false
end

check "notp-2-3-4_4":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(2, 0), hire(0, 2), hire(2, 1)]
  ) is false
end

check "notp-2-3-4_5":
  is-valid(
    [list: [list: 3, 4, 2, 0, 1], [list: 0, 2, 3, 1, 4], [list: 3, 4, 2, 0, 1], [list: 2, 3, 4, 0, 1], [list: 0, 4, 3, 2, 1]],
    [list: [list: 4, 0, 2, 1, 3], [list: 2, 3, 4, 0, 1], [list: 3, 4, 0, 2, 1], [list: 3, 1, 2, 4, 0], [list: 2, 4, 0, 3, 1]],
    [set: hire(0, 2), hire(2, 1), hire(1, 4), hire(2, 0), hire(3, 1), hire(1, 3)]
  ) is false
end

check "notp-2-3-4_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(1, 2), hire(0, 0)]
  ) is false
end

check "notp-2-3-4_7":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(1, 2), hire(2, 1)]
  ) is false
end

check "notp-2-3-4_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(1, 1), hire(1, 0)]
  ) is false
end

check "notp-2-3-4_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-2-3-4_10":
  is-valid(
    [list: [list: 4, 0, 1, 2, 3], [list: 3, 4, 2, 1, 0], [list: 4, 2, 0, 3, 1], [list: 3, 0, 2, 1, 4], [list: 4, 3, 2, 0, 1]],
    [list: [list: 2, 4, 0, 3, 1], [list: 2, 0, 1, 4, 3], [list: 2, 4, 0, 3, 1], [list: 1, 2, 0, 3, 4], [list: 3, 2, 0, 1, 4]],
    [set: hire(2, 4), hire(4, 2), hire(0, 1), hire(4, 0), hire(4, 3), hire(3, 0)]
  ) is false
end

check "notp-2-3-4_11":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 1, 2, 3, 0], [list: 1, 3, 0, 2], [list: 2, 3, 0, 1]],
    [list: [list: 0, 3, 2, 1], [list: 1, 2, 3, 0], [list: 1, 3, 0, 2], [list: 2, 3, 0, 1]],
    [set: hire(1, 1), hire(3, 2), hire(1, 3), hire(0, 2), hire(1, 0)]
  ) is false
end

check "notp-2-3-4_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(2, 2), hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-2-3-4_13":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-2-3-4_14":
  is-valid(
    [list: [list: 1, 4, 2, 0, 3], [list: 2, 0, 3, 1, 4], [list: 2, 0, 3, 1, 4], [list: 0, 2, 1, 3, 4], [list: 4, 3, 1, 2, 0]],
    [list: [list: 1, 0, 2, 4, 3], [list: 2, 4, 3, 1, 0], [list: 4, 1, 2, 0, 3], [list: 4, 1, 3, 2, 0], [list: 2, 3, 4, 0, 1]],
    [set: hire(3, 0), hire(1, 2), hire(0, 3), hire(4, 4), hire(3, 3), hire(0, 1)]
  ) is false
end

check "notp-2-3-4-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(1, 0), hire(1, 1), hire(1, 2)]
  ) is false
end

check "notp-2-3-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2), hire(0, 3)]
  ) is false
end

check "notp-2-3-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2), hire(0, 3), hire(0, 4), hire(0, 5)]
  ) is false
end

check "notp-2-3-4-6_3":
  is-valid(
    [list: [list: 2, 4, 0, 1, 3], [list: 4, 3, 2, 1, 0], [list: 0, 1, 3, 2, 4], [list: 2, 4, 3, 1, 0], [list: 1, 0, 4, 2, 3]],
    [list: [list: 0, 3, 1, 4, 2], [list: 2, 0, 4, 1, 3], [list: 2, 1, 4, 0, 3], [list: 4, 1, 2, 3, 0], [list: 4, 1, 2, 0, 3]],
    [set: hire(2, 4), hire(3, 2), hire(2, 5), hire(1, 1), hire(1, 0), hire(3, 3)]
  ) is false
end

check "notp-2-3-4-6_4":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(0, 5), hire(0, 0), hire(1, 2), hire(0, 4), hire(0, 1)]
  ) is false
end

check "notp-2-3-4-6_5":
  is-valid(
    [list: [list: 3, 2, 1, 4, 0], [list: 1, 3, 0, 2, 4], [list: 3, 0, 2, 4, 1], [list: 2, 3, 4, 1, 0], [list: 2, 4, 1, 3, 0]],
    [list: [list: 0, 3, 1, 4, 2], [list: 4, 2, 0, 1, 3], [list: 0, 3, 2, 1, 4], [list: 3, 1, 4, 0, 2], [list: 1, 4, 0, 3, 2]],
    [set: hire(1, 2), hire(0, 0), hire(3, 1), hire(3, 3), hire(4, 4), hire(3, 6)]
  ) is false
end

check "notp-2-3-4-6_6":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 2, 0, 3, 1], [list: 3, 0, 2, 1], [list: 1, 2, 3, 0]],
    [list: [list: 3, 0, 1, 2], [list: 2, 0, 3, 1], [list: 1, 2, 3, 0], [list: 3, 0, 1, 2]],
    [set: hire(1, 0), hire(0, 3), hire(2, 5), hire(1, 1), hire(0, 5), hire(0, 2)]
  ) is false
end

check "notp-2-3-4-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(1, 2), hire(1, 1), hire(1, 3), hire(0, 1), hire(0, 0)]
  ) is false
end

check "notp-2-3-4-6_8":
  is-valid(
    [list: [list: 1, 0, 2, 4, 3], [list: 1, 4, 0, 3, 2], [list: 0, 3, 4, 2, 1], [list: 4, 3, 0, 1, 2], [list: 3, 1, 2, 0, 4]],
    [list: [list: 0, 2, 3, 1, 4], [list: 1, 0, 2, 3, 4], [list: 3, 4, 0, 2, 1], [list: 3, 4, 2, 0, 1], [list: 1, 3, 0, 2, 4]],
    [set: hire(0, 3), hire(1, 0), hire(3, 4), hire(4, 2), hire(4, 6), hire(0, 1)]
  ) is false
end

check "notp-2-3-4-6_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(1, 3), hire(0, 2), hire(1, 4), hire(1, 0), hire(1, 1), hire(0, 0)]
  ) is false
end

check "notp-2-3-4-6_10":
  is-valid(
    [list: [list: 1, 3, 0, 2], [list: 3, 2, 0, 1], [list: 0, 2, 3, 1], [list: 0, 1, 2, 3]],
    [list: [list: 1, 2, 0, 3], [list: 0, 3, 1, 2], [list: 2, 0, 3, 1], [list: 2, 3, 0, 1]],
    [set: hire(2, 2), hire(1, 1), hire(3, 0), hire(1, 3), hire(3, 3), hire(3, 5)]
  ) is false
end

check "notp-2-3-4-6_11":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 4), hire(1, 1), hire(1, 0), hire(1, 3), hire(1, 2), hire(0, 3)]
  ) is false
end

check "notp-2-3-4-6_12":
  is-valid(
    [list: [list: 2, 4, 3, 0, 1], [list: 1, 4, 2, 3, 0], [list: 1, 0, 4, 2, 3], [list: 3, 1, 4, 2, 0], [list: 2, 4, 3, 0, 1]],
    [list: [list: 1, 0, 4, 3, 2], [list: 2, 1, 0, 3, 4], [list: 0, 4, 3, 2, 1], [list: 0, 4, 3, 2, 1], [list: 1, 0, 4, 3, 2]],
    [set: hire(4, 3), hire(0, 1), hire(3, 4), hire(0, 0), hire(4, 2), hire(4, 5)]
  ) is false
end

check "notp-2-3-4-6_13":
  is-valid(
    [list: [list: 0, 3, 2, 4, 1], [list: 2, 0, 1, 3, 4], [list: 3, 2, 4, 0, 1], [list: 3, 2, 4, 1, 0], [list: 0, 3, 2, 4, 1]],
    [list: [list: 2, 0, 4, 1, 3], [list: 2, 0, 1, 4, 3], [list: 3, 2, 0, 4, 1], [list: 1, 2, 3, 0, 4], [list: 0, 2, 4, 3, 1]],
    [set: hire(2, 0), hire(4, 2), hire(0, 3), hire(2, 6), hire(1, 4), hire(4, 1)]
  ) is false
end

check "notp-2-3-4-6_14":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(2, 1), hire(2, 6), hire(2, 0), hire(0, 4), hire(0, 2)]
  ) is false
end

check "notp-2-3-4-5_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(2, 0), hire(2, 1)]
  ) is false
end

check "notp-2-3-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(0, 1), hire(0, 2), hire(4, 3)]
  ) is false
end

check "notp-2-3-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5_3":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 2, 1, 0, 3], [list: 3, 0, 2, 1], [list: 0, 1, 2, 3]],
    [list: [list: 0, 3, 1, 2], [list: 2, 0, 1, 3], [list: 2, 0, 1, 3], [list: 0, 1, 2, 3]],
    [set: hire(2, 0), hire(1, 2), hire(6, 1), hire(1, 3)]
  ) is false
end

check "notp-2-3-4-5_4":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(2, 1), hire(6, 2), hire(4, 1), hire(3, 1), hire(2, 0), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5_5":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(3, 1), hire(6, 0), hire(6, 2)]
  ) is false
end

check "notp-2-3-4-5_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(3, 1), hire(1, 1), hire(0, 2), hire(0, 1), hire(5, 0)]
  ) is false
end

check "notp-2-3-4-5_7":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 2, 3, 1, 0], [list: 0, 3, 1, 2], [list: 3, 0, 2, 1]],
    [list: [list: 0, 2, 3, 1], [list: 0, 1, 2, 3], [list: 3, 0, 2, 1], [list: 1, 2, 3, 0]],
    [set: hire(0, 1), hire(4, 2), hire(5, 0), hire(2, 3), hire(3, 0), hire(6, 0)]
  ) is false
end

check "notp-2-3-4-5_8":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 0), hire(5, 1), hire(1, 2), hire(0, 2), hire(5, 2), hire(3, 1)]
  ) is false
end

check "notp-2-3-4-5_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 1, 0]],
    [set: hire(0, 0), hire(5, 1), hire(0, 2)]
  ) is false
end

check "notp-2-3-4-5_10":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 2, 3, 0, 1], [list: 2, 3, 0, 1], [list: 1, 3, 0, 2]],
    [list: [list: 0, 1, 3, 2], [list: 0, 3, 2, 1], [list: 1, 3, 0, 2], [list: 0, 3, 1, 2]],
    [set: hire(4, 3), hire(5, 2), hire(1, 0), hire(1, 1), hire(3, 0)]
  ) is false
end

check "notp-2-3-4-5_11":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 2, 0, 1]],
    [set: hire(5, 0), hire(1, 2), hire(6, 1), hire(5, 2)]
  ) is false
end

check "notp-2-3-4-5_12":
  is-valid(
    [list: [list: 4, 1, 3, 2, 0], [list: 3, 4, 0, 1, 2], [list: 0, 3, 2, 1, 4], [list: 1, 2, 0, 3, 4], [list: 2, 1, 0, 3, 4]],
    [list: [list: 2, 4, 0, 3, 1], [list: 2, 3, 0, 1, 4], [list: 3, 0, 1, 2, 4], [list: 4, 2, 3, 0, 1], [list: 1, 3, 0, 4, 2]],
    [set: hire(2, 0), hire(4, 1), hire(5, 1), hire(0, 3), hire(6, 4), hire(1, 2)]
  ) is false
end

check "notp-2-3-4-5_13":
  is-valid(
    [list: [list: 1, 2, 0, 3], [list: 1, 0, 2, 3], [list: 3, 2, 0, 1], [list: 3, 2, 0, 1]],
    [list: [list: 2, 1, 3, 0], [list: 2, 3, 0, 1], [list: 3, 1, 0, 2], [list: 1, 2, 0, 3]],
    [set: hire(6, 2), hire(3, 3), hire(1, 1), hire(0, 2), hire(5, 0), hire(6, 3)]
  ) is false
end

check "notp-2-3-4-5_14":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(6, 1), hire(0, 2), hire(3, 0), hire(6, 2), hire(4, 2), hire(0, 0)]
  ) is false
end

check "notp-2-3-4-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(1, 0), hire(1, 1)]
  ) is false
end

check "notp-2-3-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 3), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(0, 3), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5-6_3":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(5, 6), hire(1, 6), hire(5, 0), hire(4, 1), hire(5, 3), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5-6_4":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(6, 1), hire(1, 4), hire(4, 2), hire(5, 1), hire(6, 0), hire(4, 4)]
  ) is false
end

check "notp-2-3-4-5-6_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(5, 0), hire(1, 0), hire(6, 2), hire(0, 1), hire(3, 4)]
  ) is false
end

check "notp-2-3-4-5-6_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(1, 1), hire(2, 4), hire(5, 2), hire(5, 0), hire(3, 4)]
  ) is false
end

check "notp-2-3-4-5-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(3, 0), hire(5, 1), hire(5, 2), hire(2, 1), hire(1, 5), hire(4, 1)]
  ) is false
end

check "notp-2-3-4-5-6_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(0, 1), hire(4, 5), hire(0, 2), hire(1, 0), hire(6, 2)]
  ) is false
end

check "notp-2-3-4-5-6_9":
  is-valid(
    [list: [list: 2, 1, 0, 3], [list: 0, 1, 3, 2], [list: 3, 1, 0, 2], [list: 2, 3, 1, 0]],
    [list: [list: 0, 1, 3, 2], [list: 0, 1, 3, 2], [list: 1, 0, 3, 2], [list: 2, 1, 3, 0]],
    [set: hire(6, 3), hire(3, 1), hire(5, 2), hire(4, 1), hire(6, 6), hire(2, 0)]
  ) is false
end

check "notp-2-3-4-5-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(4, 5), hire(3, 1), hire(5, 0), hire(1, 2), hire(2, 2), hire(5, 2)]
  ) is false
end

check "notp-2-3-4-5-6_11":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [set: hire(1, 1), hire(4, 3), hire(6, 0), hire(3, 1), hire(1, 2), hire(6, 2)]
  ) is false
end

check "notp-2-3-4-5-6_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(5, 4), hire(4, 1), hire(1, 2), hire(2, 0), hire(3, 2)]
  ) is false
end

check "notp-2-3-4-5-6_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(4, 3), hire(5, 2), hire(0, 3), hire(1, 5), hire(4, 0), hire(1, 1)]
  ) is false
end

check "notp-2-3-4-5-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(3, 2), hire(1, 6), hire(3, 5), hire(4, 0), hire(3, 1), hire(0, 5)]
  ) is false
end

# No check was generated for "notp-1_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

# No check was generated for "notp-1-6_-1"
# The example generator gave the following reason: (p2 & p3 & p4) -> (p1 | p6).

# No check was generated for "notp-1-5_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

# No check was generated for "notp-1-5-6_-1"
# The example generator gave the following reason: (p2 & p3 & p4) -> (p1 | p6).

check "notp-1-4_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 0), hire(1, 0)]
  ) is false
end

check "notp-1-4_1":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 0), hire(1, 2), hire(2, 0), hire(3, 1)]
  ) is false
end

check "notp-1-4_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-1-4_3":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(2, 0), hire(2, 2), hire(0, 0)]
  ) is false
end

check "notp-1-4_4":
  is-valid(
    [list: [list: 1, 2, 3, 0], [list: 1, 2, 3, 0], [list: 0, 1, 2, 3], [list: 2, 1, 0, 3]],
    [list: [list: 2, 0, 1, 3], [list: 1, 2, 3, 0], [list: 0, 1, 2, 3], [list: 2, 1, 0, 3]],
    [set: hire(1, 1), hire(2, 0), hire(3, 0), hire(3, 1), hire(3, 2), hire(0, 0)]
  ) is false
end

check "notp-1-4_5":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(0, 1), hire(2, 2)]
  ) is false
end

check "notp-1-4_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(1, 2), hire(2, 2), hire(0, 1)]
  ) is false
end

check "notp-1-4_7":
  is-valid(
    [list: [list: 2, 1, 0, 3], [list: 0, 1, 2, 3], [list: 1, 0, 2, 3], [list: 2, 1, 0, 3]],
    [list: [list: 1, 0, 3, 2], [list: 1, 3, 0, 2], [list: 1, 0, 3, 2], [list: 1, 0, 2, 3]],
    [set: hire(3, 2), hire(2, 1), hire(1, 0), hire(0, 1)]
  ) is false
end

check "notp-1-4_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(0, 2), hire(2, 1), hire(1, 1)]
  ) is false
end

check "notp-1-4_9":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(2, 2), hire(1, 2)]
  ) is false
end

check "notp-1-4_10":
  is-valid(
    [list: [list: 2, 0, 3, 1], [list: 3, 1, 0, 2], [list: 2, 0, 1, 3], [list: 2, 0, 1, 3]],
    [list: [list: 2, 1, 0, 3], [list: 3, 0, 2, 1], [list: 3, 1, 0, 2], [list: 0, 3, 2, 1]],
    [set: hire(0, 3), hire(2, 0), hire(1, 1), hire(3, 1)]
  ) is false
end

check "notp-1-4_11":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-1-4_12":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(1, 1), hire(0, 1), hire(1, 0), hire(2, 1)]
  ) is false
end

check "notp-1-4_13":
  is-valid(
    [list: [list: 3, 2, 4, 1, 0], [list: 1, 2, 4, 0, 3], [list: 4, 0, 1, 3, 2], [list: 1, 0, 3, 4, 2], [list: 0, 2, 3, 1, 4]],
    [list: [list: 0, 4, 3, 2, 1], [list: 2, 4, 3, 1, 0], [list: 2, 3, 1, 0, 4], [list: 3, 1, 0, 2, 4], [list: 1, 0, 4, 2, 3]],
    [set: hire(1, 4), hire(0, 1), hire(2, 1), hire(3, 3), hire(4, 0), hire(0, 4)]
  ) is false
end

check "notp-1-4_14":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(1, 1), hire(0, 0), hire(2, 1)]
  ) is false
end

check "notp-1-4-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 1, 0]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 1), hire(0, 2), hire(1, 1)]
  ) is false
end

check "notp-1-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 3), hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 3), hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-1-4-6_3":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 2, 0, 3, 1], [list: 2, 3, 1, 0], [list: 3, 2, 0, 1]],
    [list: [list: 2, 3, 1, 0], [list: 3, 0, 1, 2], [list: 1, 2, 0, 3], [list: 1, 2, 3, 0]],
    [set: hire(3, 4), hire(2, 5), hire(0, 1), hire(2, 3), hire(3, 3), hire(1, 2)]
  ) is false
end

check "notp-1-4-6_4":
  is-valid(
    [list: [list: 1, 0, 3, 2], [list: 2, 3, 0, 1], [list: 1, 0, 3, 2], [list: 1, 3, 0, 2]],
    [list: [list: 0, 3, 2, 1], [list: 2, 3, 0, 1], [list: 1, 0, 3, 2], [list: 1, 3, 0, 2]],
    [set: hire(1, 2), hire(1, 4), hire(2, 1), hire(3, 1), hire(0, 0)]
  ) is false
end

check "notp-1-4-6_5":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 2, 1, 3, 0], [list: 1, 3, 2, 0], [list: 1, 3, 0, 2]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 2, 3, 1, 0], [list: 3, 1, 0, 2]],
    [set: hire(1, 2), hire(0, 6), hire(2, 3), hire(0, 3), hire(3, 3), hire(0, 1)]
  ) is false
end

check "notp-1-4-6_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(0, 2), hire(2, 1), hire(0, 4), hire(1, 2)]
  ) is false
end

check "notp-1-4-6_7":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 2, 3, 0, 1], [list: 0, 3, 2, 1], [list: 0, 2, 1, 3]],
    [list: [list: 1, 3, 2, 0], [list: 2, 3, 0, 1], [list: 0, 3, 2, 1], [list: 0, 2, 1, 3]],
    [set: hire(2, 0), hire(1, 4), hire(1, 6), hire(0, 2), hire(3, 0), hire(1, 3)]
  ) is false
end

check "notp-1-4-6_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(1, 3), hire(1, 0), hire(0, 2), hire(1, 5), hire(2, 0)]
  ) is false
end

check "notp-1-4-6_9":
  is-valid(
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(2, 1), hire(1, 0), hire(0, 4), hire(2, 3), hire(0, 0)]
  ) is false
end

check "notp-1-4-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(2, 0), hire(2, 2), hire(1, 0), hire(1, 5), hire(0, 6), hire(0, 0)]
  ) is false
end

check "notp-1-4-6_11":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(1, 0), hire(2, 1), hire(1, 5), hire(0, 0), hire(1, 6)]
  ) is false
end

check "notp-1-4-6_12":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(0, 6), hire(2, 1), hire(1, 1), hire(0, 0), hire(1, 4), hire(1, 3)]
  ) is false
end

check "notp-1-4-6_13":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 3, 1, 2], [list: 3, 0, 2, 1], [list: 1, 0, 3, 2]],
    [list: [list: 1, 0, 2, 3], [list: 0, 1, 3, 2], [list: 2, 3, 0, 1], [list: 1, 0, 3, 2]],
    [set: hire(1, 0), hire(2, 0), hire(0, 1), hire(3, 3), hire(1, 4)]
  ) is false
end

check "notp-1-4-6_14":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(2, 1), hire(0, 3), hire(1, 0), hire(0, 1)]
  ) is false
end

check "notp-1-4-5_0":
  is-valid(
    [list: [list: 0, 1], [list: 1, 0]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 1), hire(1, 1), hire(2, 1)]
  ) is false
end

check "notp-1-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-1-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 2, 1, 3], [list: 0, 2, 3, 1]],
    [list: [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3], [list: 0, 1, 2, 3]],
    [set: hire(0, 3), hire(1, 2), hire(2, 0), hire(3, 0), hire(4, 0)]
  ) is false
end

check "notp-1-4-5_3":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(2, 1), hire(5, 1), hire(0, 0)]
  ) is false
end

check "notp-1-4-5_4":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(2, 1), hire(3, 1), hire(1, 1), hire(0, 1), hire(2, 2)]
  ) is false
end

check "notp-1-4-5_5":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(0, 1), hire(1, 2), hire(2, 1), hire(3, 1)]
  ) is false
end

check "notp-1-4-5_6":
  is-valid(
    [list: [list: 2, 1, 0, 3], [list: 3, 2, 0, 1], [list: 2, 1, 3, 0], [list: 0, 3, 2, 1]],
    [list: [list: 2, 1, 0, 3], [list: 3, 2, 0, 1], [list: 2, 1, 3, 0], [list: 0, 3, 2, 1]],
    [set: hire(0, 3), hire(2, 2), hire(1, 3), hire(3, 0), hire(6, 2), hire(5, 3)]
  ) is false
end

check "notp-1-4-5_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(0, 1), hire(1, 1), hire(2, 1), hire(3, 1)]
  ) is false
end

check "notp-1-4-5_8":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(2, 1), hire(2, 2), hire(4, 1), hire(1, 2), hire(3, 2)]
  ) is false
end

check "notp-1-4-5_9":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(0, 1), hire(3, 1), hire(5, 1), hire(1, 1), hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-4-5_10":
  is-valid(
    [list: [list: 3, 1, 0, 2], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 1, 0, 2, 3]],
    [list: [list: 1, 2, 0, 3], [list: 0, 3, 1, 2], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3]],
    [set: hire(1, 0), hire(3, 1), hire(0, 1), hire(2, 0), hire(4, 2), hire(1, 1)]
  ) is false
end

check "notp-1-4-5_11":
  is-valid(
    [list: [list: 2, 0, 1, 3], [list: 1, 0, 2, 3], [list: 2, 1, 0, 3], [list: 1, 2, 0, 3]],
    [list: [list: 2, 0, 1, 3], [list: 1, 0, 2, 3], [list: 2, 1, 0, 3], [list: 1, 2, 0, 3]],
    [set: hire(0, 0), hire(3, 2), hire(0, 1), hire(1, 1), hire(4, 1), hire(2, 2)]
  ) is false
end

check "notp-1-4-5_12":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(1, 2), hire(0, 0), hire(4, 2), hire(2, 0), hire(3, 0)]
  ) is false
end

check "notp-1-4-5_13":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(2, 0), hire(0, 1), hire(6, 1)]
  ) is false
end

check "notp-1-4-5_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(0, 1), hire(4, 2), hire(2, 1), hire(1, 2)]
  ) is false
end

check "notp-1-4-5-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 1, 0]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 1), hire(1, 1), hire(2, 2)]
  ) is false
end

check "notp-1-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 0), hire(3, 3)]
  ) is false
end

check "notp-1-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 0), hire(3, 3)]
  ) is false
end

check "notp-1-4-5-6_3":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(4, 5), hire(1, 0), hire(2, 1), hire(0, 1), hire(2, 5), hire(4, 4)]
  ) is false
end

check "notp-1-4-5-6_4":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 2, 1, 0]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(0, 1), hire(3, 1), hire(1, 2), hire(1, 3), hire(2, 2), hire(6, 2)]
  ) is false
end

check "notp-1-4-5-6_5":
  is-valid(
    [list: [list: 2, 0, 1, 3], [list: 3, 0, 2, 1], [list: 0, 3, 1, 2], [list: 0, 3, 1, 2]],
    [list: [list: 0, 3, 1, 2], [list: 0, 3, 1, 2], [list: 2, 3, 0, 1], [list: 0, 3, 2, 1]],
    [set: hire(3, 0), hire(1, 0), hire(0, 2), hire(0, 5), hire(2, 3), hire(5, 4)]
  ) is false
end

check "notp-1-4-5-6_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(2, 2), hire(0, 5), hire(1, 0), hire(3, 2), hire(5, 5), hire(0, 2)]
  ) is false
end

check "notp-1-4-5-6_7":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(1, 2), hire(1, 3), hire(2, 1), hire(0, 1), hire(3, 1), hire(0, 4)]
  ) is false
end

check "notp-1-4-5-6_8":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 0, 2, 1]],
    [set: hire(5, 3), hire(1, 3), hire(1, 0), hire(2, 2), hire(0, 0)]
  ) is false
end

check "notp-1-4-5-6_9":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 2, 1, 0]],
    [set: hire(2, 0), hire(1, 0), hire(0, 1), hire(2, 1), hire(3, 4), hire(6, 5)]
  ) is false
end

check "notp-1-4-5-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(0, 2), hire(5, 4), hire(1, 2), hire(2, 0), hire(0, 4), hire(2, 5)]
  ) is false
end

check "notp-1-4-5-6_11":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 3, 0, 1, 2], [list: 0, 1, 3, 2], [list: 0, 2, 1, 3]],
    [list: [list: 3, 1, 0, 2], [list: 3, 0, 1, 2], [list: 1, 2, 3, 0], [list: 2, 0, 1, 3]],
    [set: hire(2, 2), hire(4, 6), hire(1, 2), hire(3, 0), hire(0, 3), hire(1, 4)]
  ) is false
end

check "notp-1-4-5-6_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 1, 2], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 3), hire(2, 1), hire(5, 3), hire(1, 1), hire(5, 4)]
  ) is false
end

check "notp-1-4-5-6_13":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(3, 1), hire(1, 5), hire(1, 2), hire(0, 1), hire(2, 1), hire(4, 1)]
  ) is false
end

check "notp-1-4-5-6_14":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 2, 1, 0]],
    [set: hire(2, 2), hire(4, 2), hire(0, 0), hire(6, 4), hire(1, 2)]
  ) is false
end

# No check was generated for "notp-1-3_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

check "notp-1-3-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 1)]
  ) is false
end

check "notp-1-3-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 3), hire(2, 0)]
  ) is false
end

check "notp-1-3-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 1), hire(2, 0)]
  ) is false
end

check "notp-1-3-6_3":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(0, 2), hire(1, 4), hire(2, 1)]
  ) is false
end

check "notp-1-3-6_4":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 1, 0, 3, 2], [list: 2, 3, 1, 0], [list: 1, 0, 2, 3]],
    [list: [list: 3, 2, 0, 1], [list: 2, 3, 1, 0], [list: 2, 3, 1, 0], [list: 1, 0, 2, 3]],
    [set: hire(0, 0), hire(1, 4), hire(2, 3), hire(3, 6)]
  ) is false
end

check "notp-1-3-6_5":
  is-valid(
    [list: [list: 1, 0, 3, 2, 4], [list: 1, 0, 4, 2, 3], [list: 1, 0, 2, 3, 4], [list: 2, 3, 0, 4, 1], [list: 2, 4, 1, 3, 0]],
    [list: [list: 1, 0, 2, 3, 4], [list: 0, 3, 2, 4, 1], [list: 0, 3, 4, 2, 1], [list: 3, 1, 4, 2, 0], [list: 1, 4, 2, 3, 0]],
    [set: hire(2, 5), hire(4, 2), hire(1, 3), hire(0, 6), hire(3, 1)]
  ) is false
end

check "notp-1-3-6_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 5), hire(2, 1), hire(0, 4)]
  ) is false
end

check "notp-1-3-6_7":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(0, 6), hire(2, 4), hire(1, 2)]
  ) is false
end

check "notp-1-3-6_8":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 1), hire(2, 6), hire(0, 0)]
  ) is false
end

check "notp-1-3-6_9":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(1, 0), hire(2, 3), hire(0, 6)]
  ) is false
end

check "notp-1-3-6_10":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(1, 6), hire(0, 1), hire(2, 5)]
  ) is false
end

check "notp-1-3-6_11":
  is-valid(
    [list: [list: 3, 1, 0, 2], [list: 1, 0, 3, 2], [list: 2, 0, 3, 1], [list: 0, 3, 2, 1]],
    [list: [list: 1, 0, 2, 3], [list: 3, 2, 1, 0], [list: 0, 2, 3, 1], [list: 1, 2, 3, 0]],
    [set: hire(1, 5), hire(3, 1), hire(0, 3), hire(2, 2)]
  ) is false
end

check "notp-1-3-6_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(2, 4), hire(0, 1), hire(1, 5)]
  ) is false
end

check "notp-1-3-6_13":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(0, 3), hire(2, 0), hire(1, 2)]
  ) is false
end

check "notp-1-3-6_14":
  is-valid(
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(1, 2), hire(0, 6), hire(2, 1)]
  ) is false
end

# No check was generated for "notp-1-3-5_-1"
# The example generator gave the following reason: (p2 & p4 & p6) -> (p1 & p5).

check "notp-1-3-5-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 2), hire(1, 3), hire(2, 0)]
  ) is false
end

check "notp-1-3-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 4), hire(2, 1), hire(3, 0)]
  ) is false
end

check "notp-1-3-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(1, 0), hire(2, 4), hire(3, 3)]
  ) is false
end

check "notp-1-3-5-6_3":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(4, 0), hire(0, 5), hire(1, 1), hire(2, 3)]
  ) is false
end

check "notp-1-3-5-6_4":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 1, 0, 2]],
    [set: hire(1, 4), hire(5, 6), hire(2, 2), hire(0, 5)]
  ) is false
end

check "notp-1-3-5-6_5":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(0, 0), hire(2, 1), hire(4, 6), hire(3, 4), hire(6, 5), hire(1, 3)]
  ) is false
end

check "notp-1-3-5-6_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(0, 3), hire(6, 2), hire(2, 4), hire(1, 1)]
  ) is false
end

check "notp-1-3-5-6_7":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(6, 4), hire(0, 3), hire(1, 0), hire(2, 2)]
  ) is false
end

check "notp-1-3-5-6_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(0, 6), hire(1, 5), hire(6, 4), hire(2, 1)]
  ) is false
end

check "notp-1-3-5-6_9":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 0), hire(0, 6), hire(2, 5), hire(3, 4)]
  ) is false
end

check "notp-1-3-5-6_10":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(2, 6), hire(3, 3), hire(0, 2)]
  ) is false
end

check "notp-1-3-5-6_11":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(1, 5), hire(2, 1), hire(0, 6), hire(5, 0)]
  ) is false
end

check "notp-1-3-5-6_12":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(0, 0), hire(1, 2), hire(4, 5), hire(2, 4)]
  ) is false
end

check "notp-1-3-5-6_13":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 2, 1, 0]],
    [set: hire(2, 1), hire(0, 4), hire(5, 6), hire(3, 0), hire(1, 3)]
  ) is false
end

check "notp-1-3-5-6_14":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 0, 3, 1, 2], [list: 0, 3, 2, 1], [list: 1, 3, 2, 0]],
    [list: [list: 0, 2, 1, 3], [list: 0, 1, 2, 3], [list: 0, 2, 1, 3], [list: 0, 3, 2, 1]],
    [set: hire(6, 4), hire(3, 6), hire(2, 0), hire(0, 3), hire(5, 2), hire(1, 5)]
  ) is false
end

check "notp-1-3-4_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 1), hire(1, 1)]
  ) is false
end

check "notp-1-3-4_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-3-4_2":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(1, 0), hire(2, 0), hire(3, 0), hire(4, 0)]
  ) is false
end

check "notp-1-3-4_3":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 2, 3, 1, 0], [list: 3, 0, 1, 2], [list: 3, 1, 0, 2]],
    [list: [list: 1, 3, 0, 2], [list: 2, 0, 1, 3], [list: 3, 1, 0, 2], [list: 2, 3, 0, 1]],
    [set: hire(3, 0), hire(1, 3), hire(0, 0), hire(2, 1)]
  ) is false
end

check "notp-1-3-4_4":
  is-valid(
    [list: [list: 1, 3, 0, 2], [list: 3, 2, 0, 1], [list: 3, 2, 1, 0], [list: 3, 2, 0, 1]],
    [list: [list: 1, 3, 0, 2], [list: 3, 2, 0, 1], [list: 2, 0, 1, 3], [list: 2, 0, 1, 3]],
    [set: hire(0, 1), hire(3, 1), hire(1, 1), hire(2, 1)]
  ) is false
end

check "notp-1-3-4_5":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 2, 3, 1, 0], [list: 3, 2, 1, 0], [list: 0, 1, 2, 3]],
    [list: [list: 1, 0, 2, 3], [list: 1, 0, 2, 3], [list: 0, 1, 2, 3], [list: 1, 2, 3, 0]],
    [set: hire(1, 2), hire(1, 1), hire(3, 1), hire(2, 1), hire(1, 3), hire(0, 3)]
  ) is false
end

check "notp-1-3-4_6":
  is-valid(
    [list: [list: 1, 0, 2, 4, 3], [list: 2, 4, 0, 3, 1], [list: 0, 3, 1, 2, 4], [list: 0, 3, 4, 1, 2], [list: 3, 0, 4, 1, 2]],
    [list: [list: 0, 1, 4, 3, 2], [list: 0, 2, 1, 4, 3], [list: 2, 4, 1, 3, 0], [list: 2, 0, 1, 4, 3], [list: 4, 2, 3, 1, 0]],
    [set: hire(2, 3), hire(0, 3), hire(4, 1), hire(2, 1), hire(3, 0), hire(1, 0)]
  ) is false
end

check "notp-1-3-4_7":
  is-valid(
    [list: [list: 4, 0, 1, 3, 2], [list: 1, 4, 3, 2, 0], [list: 2, 3, 4, 1, 0], [list: 0, 3, 4, 1, 2], [list: 2, 1, 3, 0, 4]],
    [list: [list: 1, 4, 3, 0, 2], [list: 0, 4, 3, 2, 1], [list: 2, 4, 1, 3, 0], [list: 4, 3, 0, 2, 1], [list: 0, 2, 3, 4, 1]],
    [set: hire(4, 0), hire(0, 0), hire(4, 3), hire(1, 0), hire(2, 1), hire(3, 3)]
  ) is false
end

check "notp-1-3-4_8":
  is-valid(
    [list: [list: 0, 1, 2, 4, 3], [list: 0, 3, 2, 4, 1], [list: 0, 1, 4, 2, 3], [list: 0, 4, 1, 2, 3], [list: 3, 2, 4, 1, 0]],
    [list: [list: 0, 4, 1, 2, 3], [list: 0, 2, 3, 1, 4], [list: 1, 2, 4, 0, 3], [list: 0, 3, 4, 1, 2], [list: 4, 3, 0, 2, 1]],
    [set: hire(3, 0), hire(4, 0), hire(1, 1), hire(4, 1), hire(2, 1), hire(0, 1)]
  ) is false
end

check "notp-1-3-4_9":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(0, 2), hire(1, 1), hire(2, 1)]
  ) is false
end

check "notp-1-3-4_10":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 2, 0, 1]],
    [set: hire(1, 0), hire(1, 1), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-1-3-4_11":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(2, 1), hire(1, 2), hire(0, 1)]
  ) is false
end

check "notp-1-3-4_12":
  is-valid(
    [list: [list: 2, 3, 0, 1, 4], [list: 0, 4, 2, 1, 3], [list: 3, 4, 0, 2, 1], [list: 4, 0, 1, 2, 3], [list: 0, 1, 4, 2, 3]],
    [list: [list: 2, 4, 3, 0, 1], [list: 0, 3, 1, 4, 2], [list: 2, 0, 4, 1, 3], [list: 4, 3, 0, 1, 2], [list: 3, 0, 4, 1, 2]],
    [set: hire(4, 3), hire(1, 1), hire(2, 2), hire(3, 2), hire(0, 0), hire(0, 3)]
  ) is false
end

check "notp-1-3-4_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 2, 0]],
    [set: hire(1, 1), hire(2, 1), hire(0, 2), hire(1, 2)]
  ) is false
end

check "notp-1-3-4_14":
  is-valid(
    [list: [list: 3, 2, 1, 0], [list: 0, 3, 2, 1], [list: 0, 2, 1, 3], [list: 0, 1, 3, 2]],
    [list: [list: 2, 3, 0, 1], [list: 0, 1, 3, 2], [list: 1, 0, 3, 2], [list: 1, 0, 2, 3]],
    [set: hire(3, 1), hire(0, 1), hire(2, 1), hire(1, 1)]
  ) is false
end

check "notp-1-3-4-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 1), hire(0, 2)]
  ) is false
end

check "notp-1-3-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-3-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-3-4-6_3":
  is-valid(
    [list: [list: 1, 2, 3, 0], [list: 1, 2, 0, 3], [list: 1, 2, 0, 3], [list: 1, 3, 0, 2]],
    [list: [list: 1, 2, 3, 0], [list: 1, 2, 0, 3], [list: 1, 2, 3, 0], [list: 1, 2, 3, 0]],
    [set: hire(0, 0), hire(3, 2), hire(2, 1), hire(1, 5), hire(3, 4), hire(2, 5)]
  ) is false
end

check "notp-1-3-4-6_4":
  is-valid(
    [list: [list: 1, 3, 0, 2], [list: 2, 3, 0, 1], [list: 3, 0, 1, 2], [list: 1, 2, 3, 0]],
    [list: [list: 1, 0, 3, 2], [list: 0, 3, 1, 2], [list: 2, 3, 1, 0], [list: 0, 1, 2, 3]],
    [set: hire(0, 6), hire(3, 6), hire(3, 2), hire(1, 3), hire(3, 0), hire(2, 2)]
  ) is false
end

check "notp-1-3-4-6_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(1, 4), hire(2, 4), hire(1, 3), hire(0, 3)]
  ) is false
end

check "notp-1-3-4-6_6":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(0, 6), hire(1, 3), hire(2, 5), hire(2, 4), hire(0, 1)]
  ) is false
end

check "notp-1-3-4-6_7":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 2, 1]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(1, 1), hire(2, 1), hire(0, 2), hire(0, 1), hire(2, 4)]
  ) is false
end

check "notp-1-3-4-6_8":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 1, 0]],
    [set: hire(1, 3), hire(0, 5), hire(2, 0), hire(1, 2)]
  ) is false
end

check "notp-1-3-4-6_9":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 0, 2, 1]],
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(2, 3), hire(0, 6), hire(1, 4), hire(1, 3)]
  ) is false
end

check "notp-1-3-4-6_10":
  is-valid(
    [list: [list: 0, 1, 3, 2], [list: 2, 0, 1, 3], [list: 3, 0, 1, 2], [list: 3, 2, 1, 0]],
    [list: [list: 0, 2, 1, 3], [list: 2, 3, 0, 1], [list: 3, 1, 0, 2], [list: 1, 2, 0, 3]],
    [set: hire(1, 5), hire(3, 6), hire(2, 1), hire(1, 3), hire(0, 1), hire(2, 5)]
  ) is false
end

check "notp-1-3-4-6_11":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 0, 2, 1]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 2), hire(2, 6), hire(0, 4), hire(0, 2)]
  ) is false
end

check "notp-1-3-4-6_12":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 0, 2, 1]],
    [set: hire(1, 1), hire(2, 5), hire(0, 0), hire(1, 0)]
  ) is false
end

check "notp-1-3-4-6_13":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3], [list: 0, 3, 2, 1]],
    [list: [list: 1, 2, 0, 3], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3], [list: 0, 2, 1, 3]],
    [set: hire(1, 6), hire(2, 1), hire(1, 4), hire(3, 2), hire(0, 2)]
  ) is false
end

check "notp-1-3-4-6_14":
  is-valid(
    [list: [list: 1, 0, 2, 4, 3], [list: 1, 0, 2, 4, 3], [list: 3, 2, 1, 0, 4], [list: 2, 4, 0, 1, 3], [list: 1, 3, 4, 0, 2]],
    [list: [list: 0, 2, 3, 1, 4], [list: 1, 3, 2, 4, 0], [list: 4, 2, 1, 3, 0], [list: 2, 3, 0, 4, 1], [list: 4, 3, 0, 2, 1]],
    [set: hire(2, 5), hire(1, 5), hire(0, 3), hire(1, 6), hire(4, 4), hire(3, 4)]
  ) is false
end

check "notp-1-3-4-5_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 1), hire(1, 1), hire(2, 1)]
  ) is false
end

check "notp-1-3-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 0), hire(3, 0)]
  ) is false
end

check "notp-1-3-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 0), hire(2, 0), hire(3, 0)]
  ) is false
end

check "notp-1-3-4-5_3":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(1, 0), hire(0, 1), hire(5, 0), hire(2, 1), hire(6, 1), hire(4, 1)]
  ) is false
end

check "notp-1-3-4-5_4":
  is-valid(
    [list: [list: 4, 0, 1, 3, 2], [list: 0, 2, 3, 4, 1], [list: 1, 0, 3, 4, 2], [list: 2, 1, 0, 4, 3], [list: 2, 1, 0, 3, 4]],
    [list: [list: 3, 1, 2, 4, 0], [list: 3, 1, 2, 4, 0], [list: 3, 1, 0, 2, 4], [list: 0, 3, 1, 2, 4], [list: 3, 1, 0, 2, 4]],
    [set: hire(0, 0), hire(4, 2), hire(2, 0), hire(1, 0), hire(3, 2), hire(5, 0)]
  ) is false
end

check "notp-1-3-4-5_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 0, 2, 1], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(4, 0), hire(2, 0), hire(6, 0), hire(5, 1), hire(1, 1)]
  ) is false
end

check "notp-1-3-4-5_6":
  is-valid(
    [list: [list: 3, 4, 0, 1, 2], [list: 4, 0, 2, 1, 3], [list: 1, 4, 3, 2, 0], [list: 1, 4, 0, 3, 2], [list: 1, 2, 4, 0, 3]],
    [list: [list: 3, 4, 0, 1, 2], [list: 4, 0, 2, 1, 3], [list: 1, 4, 3, 2, 0], [list: 1, 4, 0, 3, 2], [list: 1, 2, 4, 0, 3]],
    [set: hire(5, 0), hire(2, 4), hire(0, 4), hire(4, 2), hire(3, 0), hire(1, 1)]
  ) is false
end

check "notp-1-3-4-5_7":
  is-valid(
    [list: [list: 1, 2, 3, 0], [list: 3, 2, 0, 1], [list: 0, 1, 3, 2], [list: 3, 2, 1, 0]],
    [list: [list: 2, 1, 0, 3], [list: 2, 1, 3, 0], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2]],
    [set: hire(3, 2), hire(5, 0), hire(4, 0), hire(1, 2), hire(0, 0), hire(2, 0)]
  ) is false
end

check "notp-1-3-4-5_8":
  is-valid(
    [list: [list: 0, 3, 1, 2], [list: 0, 1, 2, 3], [list: 3, 1, 0, 2], [list: 3, 2, 1, 0]],
    [list: [list: 0, 2, 3, 1], [list: 1, 2, 0, 3], [list: 1, 2, 0, 3], [list: 1, 3, 2, 0]],
    [set: hire(3, 1), hire(4, 0), hire(3, 0), hire(1, 1), hire(2, 1), hire(0, 0)]
  ) is false
end

check "notp-1-3-4-5_9":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 3, 2, 1, 0], [list: 1, 2, 0, 3], [list: 3, 1, 0, 2]],
    [list: [list: 2, 3, 1, 0], [list: 3, 0, 2, 1], [list: 2, 3, 1, 0], [list: 0, 3, 2, 1]],
    [set: hire(4, 3), hire(1, 2), hire(0, 1), hire(5, 3), hire(2, 3), hire(3, 3)]
  ) is false
end

check "notp-1-3-4-5_10":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 2, 3, 0, 1], [list: 0, 1, 3, 2], [list: 2, 0, 3, 1]],
    [list: [list: 0, 2, 1, 3], [list: 1, 0, 2, 3], [list: 3, 1, 2, 0], [list: 1, 2, 0, 3]],
    [set: hire(0, 2), hire(3, 1), hire(2, 1), hire(1, 0), hire(4, 0)]
  ) is false
end

check "notp-1-3-4-5_11":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 1, 2, 0, 3], [list: 1, 3, 2, 0], [list: 3, 2, 0, 1]],
    [list: [list: 1, 3, 2, 0], [list: 1, 2, 0, 3], [list: 1, 2, 0, 3], [list: 3, 2, 0, 1]],
    [set: hire(2, 1), hire(3, 1), hire(2, 0), hire(1, 2), hire(6, 1), hire(0, 0)]
  ) is false
end

check "notp-1-3-4-5_12":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 3, 2, 0, 1], [list: 2, 3, 1, 0], [list: 3, 0, 2, 1]],
    [list: [list: 3, 0, 2, 1], [list: 3, 1, 0, 2], [list: 3, 0, 2, 1], [list: 3, 2, 0, 1]],
    [set: hire(3, 0), hire(2, 1), hire(4, 0), hire(1, 2), hire(0, 2), hire(0, 0)]
  ) is false
end

check "notp-1-3-4-5_13":
  is-valid(
    [list: [list: 4, 0, 3, 1, 2], [list: 1, 3, 4, 2, 0], [list: 2, 0, 4, 1, 3], [list: 4, 0, 3, 1, 2], [list: 3, 0, 2, 4, 1]],
    [list: [list: 1, 0, 3, 2, 4], [list: 3, 2, 0, 4, 1], [list: 2, 3, 1, 0, 4], [list: 1, 3, 0, 2, 4], [list: 0, 1, 2, 4, 3]],
    [set: hire(1, 3), hire(6, 0), hire(2, 4), hire(0, 1), hire(3, 3), hire(4, 0)]
  ) is false
end

check "notp-1-3-4-5_14":
  is-valid(
    [list: [list: 2, 3, 0, 1], [list: 1, 2, 3, 0], [list: 1, 3, 0, 2], [list: 3, 1, 0, 2]],
    [list: [list: 3, 0, 2, 1], [list: 1, 0, 2, 3], [list: 1, 2, 3, 0], [list: 2, 0, 3, 1]],
    [set: hire(2, 1), hire(3, 0), hire(1, 1), hire(4, 1), hire(0, 1)]
  ) is false
end

check "notp-1-3-4-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(0, 1), hire(1, 1)]
  ) is false
end

check "notp-1-3-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(1, 3), hire(2, 0), hire(3, 0)]
  ) is false
end

check "notp-1-3-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(1, 0), hire(2, 0), hire(3, 0)]
  ) is false
end

check "notp-1-3-4-5-6_3":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 2, 1, 0]],
    [set: hire(2, 3), hire(6, 3), hire(4, 5), hire(1, 0), hire(2, 0), hire(0, 5)]
  ) is false
end

check "notp-1-3-4-5-6_4":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(0, 0), hire(1, 2), hire(5, 3), hire(2, 5), hire(2, 2), hire(2, 6)]
  ) is false
end

check "notp-1-3-4-5-6_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 0, 2]],
    [list: [list: 1, 2, 0], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(2, 3), hire(5, 1), hire(0, 4), hire(0, 0), hire(1, 6), hire(5, 3)]
  ) is false
end

check "notp-1-3-4-5-6_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(3, 1), hire(1, 0), hire(2, 3), hire(6, 0), hire(0, 0), hire(4, 1)]
  ) is false
end

check "notp-1-3-4-5-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(1, 5), hire(0, 0), hire(0, 6), hire(3, 5), hire(2, 1), hire(1, 0)]
  ) is false
end

check "notp-1-3-4-5-6_8":
  is-valid(
    [list: [list: 3, 1, 0, 2], [list: 2, 0, 1, 3], [list: 1, 0, 3, 2], [list: 2, 0, 1, 3]],
    [list: [list: 3, 0, 1, 2], [list: 3, 2, 0, 1], [list: 0, 3, 2, 1], [list: 1, 3, 0, 2]],
    [set: hire(1, 6), hire(0, 2), hire(3, 3), hire(2, 4), hire(1, 4), hire(5, 0)]
  ) is false
end

check "notp-1-3-4-5-6_9":
  is-valid(
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(0, 3), hire(0, 0), hire(2, 5), hire(6, 4), hire(3, 4)]
  ) is false
end

check "notp-1-3-4-5-6_10":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(0, 5), hire(1, 1), hire(2, 2), hire(3, 6), hire(1, 4)]
  ) is false
end

check "notp-1-3-4-5-6_11":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(1, 2), hire(0, 2), hire(3, 6), hire(2, 6), hire(0, 5), hire(1, 0)]
  ) is false
end

check "notp-1-3-4-5-6_12":
  is-valid(
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(5, 5), hire(1, 1), hire(1, 3), hire(2, 5), hire(3, 6), hire(0, 5)]
  ) is false
end

check "notp-1-3-4-5-6_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(5, 0), hire(0, 3), hire(3, 5), hire(2, 5), hire(1, 5), hire(4, 0)]
  ) is false
end

check "notp-1-3-4-5-6_14":
  is-valid(
    [list: [list: 2, 0, 1, 3], [list: 3, 2, 1, 0], [list: 0, 1, 2, 3], [list: 0, 2, 3, 1]],
    [list: [list: 1, 3, 0, 2], [list: 2, 1, 0, 3], [list: 1, 2, 3, 0], [list: 0, 3, 1, 2]],
    [set: hire(0, 2), hire(3, 3), hire(4, 4), hire(1, 4), hire(5, 4), hire(2, 0)]
  ) is false
end

# No check was generated for "notp-1-2_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-6_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-5_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-5-6_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-4_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-4-6_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-4-5_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

# No check was generated for "notp-1-2-4-5-6_-1"
# The example generator gave the following reason: (p3) -> (p1 | p2).

check "notp-1-2-3_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: ]
  ) is false
end

check "notp-1-2-3_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_3":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_4":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_6":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_7":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_8":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_9":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_10":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_11":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_12":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_13":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3_14":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: ]
  ) is false
end

check "notp-1-2-3-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 2)]
  ) is false
end

check "notp-1-2-3-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3)]
  ) is false
end

check "notp-1-2-3-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3)]
  ) is false
end

check "notp-1-2-3-6_3":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 2, 1], [list: 2, 0, 1]],
    [set: hire(2, 3)]
  ) is false
end

check "notp-1-2-3-6_4":
  is-valid(
    [list: [list: 3, 4, 1, 2, 0], [list: 4, 1, 2, 3, 0], [list: 3, 1, 4, 2, 0], [list: 1, 3, 2, 4, 0], [list: 3, 0, 1, 4, 2]],
    [list: [list: 4, 1, 3, 0, 2], [list: 4, 2, 1, 0, 3], [list: 2, 0, 4, 3, 1], [list: 0, 2, 4, 3, 1], [list: 3, 1, 2, 4, 0]],
    [set: hire(2, 5)]
  ) is false
end

check "notp-1-2-3-6_5":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [list: [list: 2, 0, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(2, 6)]
  ) is false
end

check "notp-1-2-3-6_6":
  is-valid(
    [list: [list: 2, 4, 1, 0, 3], [list: 1, 4, 2, 3, 0], [list: 2, 3, 0, 1, 4], [list: 4, 2, 3, 1, 0], [list: 0, 1, 3, 2, 4]],
    [list: [list: 2, 0, 3, 4, 1], [list: 3, 0, 1, 2, 4], [list: 1, 3, 4, 2, 0], [list: 0, 4, 3, 1, 2], [list: 3, 2, 0, 4, 1]],
    [set: hire(3, 0), hire(1, 6)]
  ) is false
end

check "notp-1-2-3-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(2, 4)]
  ) is false
end

check "notp-1-2-3-6_8":
  is-valid(
    [list: [list: 2, 1, 0, 3], [list: 0, 1, 2, 3], [list: 2, 1, 0, 3], [list: 3, 0, 1, 2]],
    [list: [list: 2, 1, 3, 0], [list: 2, 3, 1, 0], [list: 1, 3, 0, 2], [list: 0, 2, 3, 1]],
    [set: hire(3, 5)]
  ) is false
end

check "notp-1-2-3-6_9":
  is-valid(
    [list: [list: 1, 4, 3, 2, 0], [list: 1, 2, 3, 4, 0], [list: 0, 4, 1, 2, 3], [list: 2, 4, 0, 1, 3], [list: 3, 2, 1, 4, 0]],
    [list: [list: 2, 0, 4, 1, 3], [list: 2, 1, 4, 0, 3], [list: 3, 0, 1, 2, 4], [list: 2, 3, 4, 0, 1], [list: 0, 3, 1, 4, 2]],
    [set: hire(0, 5)]
  ) is false
end

check "notp-1-2-3-6_10":
  is-valid(
    [list: [list: 2, 4, 3, 0, 1], [list: 1, 4, 2, 3, 0], [list: 3, 1, 2, 4, 0], [list: 1, 0, 3, 4, 2], [list: 2, 0, 4, 3, 1]],
    [list: [list: 2, 0, 3, 4, 1], [list: 1, 0, 3, 2, 4], [list: 2, 3, 1, 0, 4], [list: 1, 2, 3, 4, 0], [list: 0, 1, 4, 2, 3]],
    [set: hire(1, 6)]
  ) is false
end

check "notp-1-2-3-6_11":
  is-valid(
    [list: [list: 3, 0, 2, 1], [list: 1, 2, 0, 3], [list: 0, 2, 1, 3], [list: 1, 0, 3, 2]],
    [list: [list: 0, 1, 3, 2], [list: 2, 0, 1, 3], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2]],
    [set: hire(0, 4)]
  ) is false
end

check "notp-1-2-3-6_12":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 2, 0, 1]],
    [set: hire(2, 5)]
  ) is false
end

check "notp-1-2-3-6_13":
  is-valid(
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 1, 2]],
    [set: hire(0, 2), hire(1, 6)]
  ) is false
end

check "notp-1-2-3-6_14":
  is-valid(
    [list: [list: 2, 4, 3, 1, 0], [list: 4, 2, 0, 3, 1], [list: 4, 0, 2, 1, 3], [list: 3, 2, 0, 4, 1], [list: 2, 0, 1, 3, 4]],
    [list: [list: 1, 3, 4, 2, 0], [list: 2, 0, 3, 1, 4], [list: 0, 2, 3, 4, 1], [list: 2, 0, 1, 4, 3], [list: 3, 4, 0, 2, 1]],
    [set: hire(2, 4), hire(0, 5)]
  ) is false
end

check "notp-1-2-3-5_0":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(3, 0)]
  ) is false
end

check "notp-1-2-3-5_1":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(5, 0)]
  ) is false
end

check "notp-1-2-3-5_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(3, 0)]
  ) is false
end

check "notp-1-2-3-5_3":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 1, 2, 0]],
    [set: hire(3, 1)]
  ) is false
end

check "notp-1-2-3-5_4":
  is-valid(
    [list: [list: 2, 0, 1, 3], [list: 2, 0, 1, 3], [list: 0, 1, 3, 2], [list: 0, 2, 1, 3]],
    [list: [list: 2, 1, 0, 3], [list: 1, 2, 0, 3], [list: 1, 2, 3, 0], [list: 0, 3, 1, 2]],
    [set: hire(5, 1)]
  ) is false
end

check "notp-1-2-3-5_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 1, 0]],
    [set: hire(4, 1)]
  ) is false
end

check "notp-1-2-3-5_6":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(3, 1)]
  ) is false
end

check "notp-1-2-3-5_7":
  is-valid(
    [list: [list: 3, 0, 1, 2], [list: 3, 0, 2, 1], [list: 2, 1, 0, 3], [list: 3, 0, 1, 2]],
    [list: [list: 3, 0, 2, 1], [list: 2, 0, 3, 1], [list: 2, 0, 3, 1], [list: 0, 2, 1, 3]],
    [set: hire(4, 2), hire(3, 3)]
  ) is false
end

check "notp-1-2-3-5_8":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 2, 0, 1], [list: 2, 1, 0], [list: 0, 2, 1]],
    [set: hire(0, 2), hire(6, 1)]
  ) is false
end

check "notp-1-2-3-5_9":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 3, 0, 1, 2], [list: 1, 0, 3, 2], [list: 2, 3, 1, 0]],
    [list: [list: 3, 1, 2, 0], [list: 2, 0, 3, 1], [list: 1, 3, 2, 0], [list: 2, 0, 1, 3]],
    [set: hire(6, 2), hire(0, 3)]
  ) is false
end

check "notp-1-2-3-5_10":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 3, 2, 0, 1], [list: 1, 3, 0, 2], [list: 3, 2, 1, 0]],
    [list: [list: 3, 2, 0, 1], [list: 0, 1, 2, 3], [list: 0, 1, 3, 2], [list: 2, 1, 3, 0]],
    [set: hire(4, 2)]
  ) is false
end

check "notp-1-2-3-5_11":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 0, 2, 1], [list: 0, 2, 1]],
    [set: hire(6, 0), hire(3, 2)]
  ) is false
end

check "notp-1-2-3-5_12":
  is-valid(
    [list: [list: 3, 2, 0, 4, 1], [list: 4, 3, 2, 1, 0], [list: 1, 3, 0, 2, 4], [list: 1, 0, 2, 4, 3], [list: 4, 2, 0, 3, 1]],
    [list: [list: 1, 3, 2, 0, 4], [list: 1, 0, 3, 2, 4], [list: 2, 4, 0, 1, 3], [list: 3, 4, 0, 2, 1], [list: 0, 1, 2, 4, 3]],
    [set: hire(5, 2), hire(6, 1)]
  ) is false
end

check "notp-1-2-3-5_13":
  is-valid(
    [list: [list: 3, 2, 1, 0, 4], [list: 1, 0, 3, 4, 2], [list: 1, 2, 4, 0, 3], [list: 4, 2, 0, 1, 3], [list: 1, 2, 0, 3, 4]],
    [list: [list: 2, 1, 4, 3, 0], [list: 3, 2, 1, 0, 4], [list: 2, 3, 4, 1, 0], [list: 2, 3, 4, 0, 1], [list: 1, 4, 3, 0, 2]],
    [set: hire(6, 2)]
  ) is false
end

check "notp-1-2-3-5_14":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 3, 0, 2, 1], [list: 1, 0, 2, 3], [list: 1, 3, 2, 0]],
    [list: [list: 3, 2, 1, 0], [list: 3, 0, 2, 1], [list: 3, 2, 1, 0], [list: 1, 0, 2, 3]],
    [set: hire(4, 0)]
  ) is false
end

check "notp-1-2-3-5-6_0":
  is-valid(
    [list: [list: 0]],
    [list: [list: 0]],
    [set: hire(1, 1)]
  ) is false
end

check "notp-1-2-3-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(3, 3)]
  ) is false
end

check "notp-1-2-3-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 3), hire(3, 0)]
  ) is false
end

check "notp-1-2-3-5-6_3":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(5, 5)]
  ) is false
end

check "notp-1-2-3-5-6_4":
  is-valid(
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [list: [list: 0, 2, 1], [list: 0, 2, 1], [list: 1, 0, 2]],
    [set: hire(4, 3)]
  ) is false
end

check "notp-1-2-3-5-6_5":
  is-valid(
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 2, 1, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 1, 2, 0]],
    [set: hire(4, 4)]
  ) is false
end

check "notp-1-2-3-5-6_6":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 0, 1, 2], [list: 1, 0, 2]],
    [set: hire(1, 5), hire(6, 4)]
  ) is false
end

check "notp-1-2-3-5-6_7":
  is-valid(
    [list: [list: 1, 0, 3, 2], [list: 0, 2, 1, 3], [list: 3, 1, 2, 0], [list: 1, 2, 3, 0]],
    [list: [list: 3, 2, 1, 0], [list: 1, 2, 3, 0], [list: 2, 0, 3, 1], [list: 1, 2, 3, 0]],
    [set: hire(1, 4), hire(6, 2)]
  ) is false
end

check "notp-1-2-3-5-6_8":
  is-valid(
    [list: [list: 2, 3, 1, 4, 0], [list: 1, 2, 4, 0, 3], [list: 0, 2, 3, 1, 4], [list: 0, 3, 2, 4, 1], [list: 1, 3, 2, 0, 4]],
    [list: [list: 1, 4, 0, 2, 3], [list: 1, 2, 0, 3, 4], [list: 2, 1, 0, 4, 3], [list: 4, 2, 1, 0, 3], [list: 0, 2, 4, 3, 1]],
    [set: hire(5, 5)]
  ) is false
end

check "notp-1-2-3-5-6_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 0, 2, 1]],
    [set: hire(5, 1), hire(2, 4)]
  ) is false
end

check "notp-1-2-3-5-6_10":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(4, 4), hire(1, 1), hire(0, 3), hire(6, 2)]
  ) is false
end

check "notp-1-2-3-5-6_11":
  is-valid(
    [list: [list: 3, 1, 4, 2, 0], [list: 2, 4, 0, 3, 1], [list: 0, 3, 1, 2, 4], [list: 2, 4, 3, 1, 0], [list: 0, 2, 3, 4, 1]],
    [list: [list: 2, 3, 1, 0, 4], [list: 0, 3, 1, 2, 4], [list: 4, 2, 0, 1, 3], [list: 1, 2, 4, 3, 0], [list: 4, 2, 3, 0, 1]],
    [set: hire(3, 2), hire(5, 4), hire(2, 5)]
  ) is false
end

check "notp-1-2-3-5-6_12":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 0, 2, 1, 3], [list: 0, 1, 3, 2], [list: 0, 2, 1, 3]],
    [list: [list: 3, 2, 1, 0], [list: 1, 0, 2, 3], [list: 3, 2, 1, 0], [list: 2, 0, 3, 1]],
    [set: hire(6, 6)]
  ) is false
end

check "notp-1-2-3-5-6_13":
  is-valid(
    [list: [list: 4, 1, 2, 0, 3], [list: 4, 3, 1, 0, 2], [list: 3, 1, 4, 2, 0], [list: 4, 2, 1, 0, 3], [list: 3, 0, 4, 1, 2]],
    [list: [list: 3, 4, 2, 1, 0], [list: 1, 3, 4, 2, 0], [list: 1, 3, 4, 2, 0], [list: 3, 2, 4, 0, 1], [list: 3, 2, 1, 0, 4]],
    [set: hire(5, 5)]
  ) is false
end

check "notp-1-2-3-5-6_14":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(4, 5)]
  ) is false
end

check "notp-1-2-3-4_0":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-1-2-3-4_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-1-2-3-4_2":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(0, 1)]
  ) is false
end

check "notp-1-2-3-4_3":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(0, 0)]
  ) is false
end

check "notp-1-2-3-4_4":
  is-valid(
    [list: [list: 0, 3, 2, 1], [list: 2, 0, 3, 1], [list: 2, 1, 3, 0], [list: 1, 3, 0, 2]],
    [list: [list: 0, 1, 2, 3], [list: 1, 3, 2, 0], [list: 2, 3, 1, 0], [list: 0, 1, 3, 2]],
    [set: hire(1, 0), hire(2, 0)]
  ) is false
end

check "notp-1-2-3-4_5":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 1, 0, 3, 2], [list: 2, 3, 1, 0], [list: 1, 2, 3, 0]],
    [list: [list: 0, 2, 1, 3], [list: 3, 0, 1, 2], [list: 3, 0, 1, 2], [list: 0, 3, 2, 1]],
    [set: hire(2, 2), hire(2, 1), hire(1, 3)]
  ) is false
end

check "notp-1-2-3-4_6":
  is-valid(
    [list: [list: 3, 1, 2, 0], [list: 2, 3, 1, 0], [list: 2, 3, 0, 1], [list: 3, 1, 0, 2]],
    [list: [list: 0, 2, 3, 1], [list: 3, 1, 2, 0], [list: 1, 3, 0, 2], [list: 0, 1, 3, 2]],
    [set: hire(0, 2), hire(3, 0), hire(0, 1)]
  ) is false
end

check "notp-1-2-3-4_7":
  is-valid(
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 2, 0, 1], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(1, 0), hire(1, 1)]
  ) is false
end

check "notp-1-2-3-4_8":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 0, 2, 1]],
    [set: hire(0, 0), hire(0, 2)]
  ) is false
end

check "notp-1-2-3-4_9":
  is-valid(
    [list: [list: 0, 2, 1], [list: 2, 1, 0], [list: 1, 2, 0]],
    [list: [list: 0, 2, 1], [list: 1, 2, 0], [list: 2, 1, 0]],
    [set: hire(2, 2), hire(2, 0)]
  ) is false
end

check "notp-1-2-3-4_10":
  is-valid(
    [list: [list: 2, 0, 1, 4, 3], [list: 1, 3, 2, 0, 4], [list: 2, 1, 4, 0, 3], [list: 2, 3, 4, 1, 0], [list: 0, 1, 3, 4, 2]],
    [list: [list: 1, 0, 4, 2, 3], [list: 4, 3, 1, 2, 0], [list: 2, 0, 4, 1, 3], [list: 0, 4, 3, 1, 2], [list: 1, 2, 0, 4, 3]],
    [set: hire(4, 4), hire(2, 4), hire(3, 4), hire(3, 0)]
  ) is false
end

check "notp-1-2-3-4_11":
  is-valid(
    [list: [list: 0, 2, 3, 1], [list: 1, 2, 0, 3], [list: 2, 3, 0, 1], [list: 2, 0, 3, 1]],
    [list: [list: 0, 2, 3, 1], [list: 0, 1, 2, 3], [list: 2, 1, 0, 3], [list: 3, 0, 1, 2]],
    [set: hire(1, 0), hire(2, 2), hire(1, 3)]
  ) is false
end

check "notp-1-2-3-4_12":
  is-valid(
    [list: [list: 1, 2, 0, 4, 3], [list: 3, 1, 0, 2, 4], [list: 2, 4, 3, 0, 1], [list: 0, 3, 4, 1, 2], [list: 0, 3, 4, 1, 2]],
    [list: [list: 3, 4, 2, 1, 0], [list: 2, 0, 1, 4, 3], [list: 1, 4, 2, 3, 0], [list: 3, 4, 0, 1, 2], [list: 3, 1, 4, 2, 0]],
    [set: hire(0, 4), hire(0, 3)]
  ) is false
end

check "notp-1-2-3-4_13":
  is-valid(
    [list: [list: 2, 0, 3, 1], [list: 0, 3, 1, 2], [list: 0, 2, 1, 3], [list: 1, 0, 3, 2]],
    [list: [list: 2, 0, 3, 1], [list: 0, 3, 1, 2], [list: 0, 2, 1, 3], [list: 1, 0, 3, 2]],
    [set: hire(0, 1), hire(0, 3), hire(3, 1), hire(2, 1), hire(3, 2)]
  ) is false
end

check "notp-1-2-3-4_14":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 0, 1], [list: 2, 1, 0]],
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 0, 1, 2]],
    [set: hire(0, 1), hire(0, 2)]
  ) is false
end

check "notp-1-2-3-4-6_0":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(0, 5)]
  ) is false
end

check "notp-1-2-3-4-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 3)]
  ) is false
end

check "notp-1-2-3-4-6_2":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(0, 5)]
  ) is false
end

check "notp-1-2-3-4-6_3":
  is-valid(
    [list: [list: 4, 0, 2, 1, 3], [list: 0, 3, 2, 4, 1], [list: 0, 4, 1, 2, 3], [list: 1, 3, 0, 4, 2], [list: 3, 4, 0, 1, 2]],
    [list: [list: 3, 0, 2, 4, 1], [list: 4, 3, 2, 0, 1], [list: 4, 2, 0, 3, 1], [list: 1, 4, 3, 2, 0], [list: 4, 2, 1, 3, 0]],
    [set: hire(1, 6), hire(1, 2), hire(3, 4), hire(2, 3)]
  ) is false
end

check "notp-1-2-3-4-6_4":
  is-valid(
    [list: [list: 3, 2, 0, 1], [list: 2, 1, 3, 0], [list: 1, 0, 3, 2], [list: 2, 1, 0, 3]],
    [list: [list: 3, 1, 0, 2], [list: 1, 2, 0, 3], [list: 2, 3, 1, 0], [list: 2, 0, 3, 1]],
    [set: hire(1, 3), hire(1, 6), hire(2, 0), hire(3, 5)]
  ) is false
end

check "notp-1-2-3-4-6_5":
  is-valid(
    [list: [list: 2, 0, 3, 1], [list: 0, 3, 2, 1], [list: 1, 3, 2, 0], [list: 1, 2, 0, 3]],
    [list: [list: 1, 2, 0, 3], [list: 2, 1, 3, 0], [list: 2, 1, 0, 3], [list: 1, 2, 3, 0]],
    [set: hire(2, 1), hire(3, 1), hire(3, 3), hire(1, 6)]
  ) is false
end

check "notp-1-2-3-4-6_6":
  is-valid(
    [list: [list: 0, 2, 4, 1, 3], [list: 0, 2, 1, 4, 3], [list: 0, 4, 3, 1, 2], [list: 3, 4, 0, 2, 1], [list: 4, 3, 1, 2, 0]],
    [list: [list: 1, 0, 4, 3, 2], [list: 1, 2, 0, 3, 4], [list: 4, 3, 2, 1, 0], [list: 0, 2, 3, 4, 1], [list: 0, 2, 1, 4, 3]],
    [set: hire(2, 1), hire(2, 5), hire(1, 3), hire(4, 0), hire(3, 6)]
  ) is false
end

check "notp-1-2-3-4-6_7":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 2, 0, 1]],
    [list: [list: 2, 0, 1], [list: 1, 2, 0], [list: 2, 0, 1]],
    [set: hire(1, 6), hire(1, 2)]
  ) is false
end

check "notp-1-2-3-4-6_8":
  is-valid(
    [list: [list: 0, 1, 2], [list: 1, 2, 0], [list: 0, 2, 1]],
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 1, 0, 2]],
    [set: hire(2, 1), hire(2, 4)]
  ) is false
end

check "notp-1-2-3-4-6_9":
  is-valid(
    [list: [list: 3, 1, 0, 2], [list: 2, 0, 1, 3], [list: 2, 3, 0, 1], [list: 3, 1, 0, 2]],
    [list: [list: 0, 3, 2, 1], [list: 0, 3, 1, 2], [list: 1, 2, 3, 0], [list: 2, 3, 1, 0]],
    [set: hire(1, 4), hire(3, 4)]
  ) is false
end

check "notp-1-2-3-4-6_10":
  is-valid(
    [list: [list: 1, 2, 0, 4, 3], [list: 3, 0, 4, 1, 2], [list: 1, 4, 2, 0, 3], [list: 4, 0, 1, 3, 2], [list: 4, 3, 1, 0, 2]],
    [list: [list: 1, 3, 2, 4, 0], [list: 3, 4, 2, 1, 0], [list: 4, 3, 2, 0, 1], [list: 4, 2, 3, 1, 0], [list: 0, 2, 3, 1, 4]],
    [set: hire(2, 5), hire(3, 0), hire(2, 4), hire(2, 1), hire(1, 3)]
  ) is false
end

check "notp-1-2-3-4-6_11":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 2, 0, 1]],
    [set: hire(0, 3), hire(0, 4)]
  ) is false
end

check "notp-1-2-3-4-6_12":
  is-valid(
    [list: [list: 3, 2, 1, 0], [list: 2, 1, 0, 3], [list: 1, 2, 3, 0], [list: 1, 3, 0, 2]],
    [list: [list: 3, 1, 0, 2], [list: 1, 0, 2, 3], [list: 1, 2, 3, 0], [list: 0, 1, 3, 2]],
    [set: hire(3, 1), hire(1, 0), hire(1, 4)]
  ) is false
end

check "notp-1-2-3-4-6_13":
  is-valid(
    [list: [list: 1, 3, 2, 0], [list: 1, 3, 0, 2], [list: 2, 1, 0, 3], [list: 3, 2, 0, 1]],
    [list: [list: 1, 3, 2, 0], [list: 1, 3, 0, 2], [list: 2, 1, 0, 3], [list: 3, 2, 0, 1]],
    [set: hire(0, 1), hire(0, 3), hire(3, 4), hire(1, 0)]
  ) is false
end

check "notp-1-2-3-4-6_14":
  is-valid(
    [list: [list: 1, 4, 0, 2, 3], [list: 0, 2, 1, 3, 4], [list: 0, 1, 2, 3, 4], [list: 3, 1, 2, 0, 4], [list: 0, 1, 3, 2, 4]],
    [list: [list: 2, 1, 3, 4, 0], [list: 1, 0, 4, 2, 3], [list: 4, 0, 2, 3, 1], [list: 2, 1, 3, 4, 0], [list: 1, 4, 3, 0, 2]],
    [set: hire(4, 4), hire(3, 3), hire(3, 6)]
  ) is false
end

check "notp-1-2-3-4-5_0":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(5, 0)]
  ) is false
end

check "notp-1-2-3-4-5_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(3, 0)]
  ) is false
end

check "notp-1-2-3-4-5_2":
  is-valid(
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [list: [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4], [list: 0, 1, 2, 3, 4]],
    [set: hire(0, 0), hire(5, 0)]
  ) is false
end

check "notp-1-2-3-4-5_3":
  is-valid(
    [list: [list: 3, 1, 2, 0], [list: 0, 2, 1, 3], [list: 3, 1, 2, 0], [list: 0, 2, 3, 1]],
    [list: [list: 1, 3, 0, 2], [list: 1, 2, 3, 0], [list: 0, 1, 3, 2], [list: 2, 1, 3, 0]],
    [set: hire(4, 1), hire(0, 0), hire(3, 0), hire(0, 2)]
  ) is false
end

check "notp-1-2-3-4-5_4":
  is-valid(
    [list: [list: 0, 4, 1, 3, 2], [list: 3, 1, 0, 2, 4], [list: 3, 1, 2, 0, 4], [list: 4, 1, 3, 0, 2], [list: 2, 4, 0, 3, 1]],
    [list: [list: 0, 2, 4, 1, 3], [list: 4, 1, 3, 2, 0], [list: 4, 3, 2, 1, 0], [list: 2, 0, 4, 1, 3], [list: 3, 2, 1, 0, 4]],
    [set: hire(6, 4), hire(6, 2), hire(1, 0)]
  ) is false
end

check "notp-1-2-3-4-5_5":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 0, 1, 2]],
    [list: [list: 2, 0, 1], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(3, 1), hire(2, 1)]
  ) is false
end

check "notp-1-2-3-4-5_6":
  is-valid(
    [list: [list: 3, 4, 1, 0, 2], [list: 1, 2, 3, 0, 4], [list: 2, 0, 1, 3, 4], [list: 4, 1, 2, 0, 3], [list: 0, 2, 4, 3, 1]],
    [list: [list: 2, 4, 1, 0, 3], [list: 2, 1, 4, 3, 0], [list: 2, 3, 0, 4, 1], [list: 3, 4, 2, 0, 1], [list: 4, 2, 3, 0, 1]],
    [set: hire(5, 3), hire(6, 1), hire(5, 2), hire(0, 0), hire(1, 0), hire(1, 1)]
  ) is false
end

check "notp-1-2-3-4-5_7":
  is-valid(
    [list: [list: 2, 0, 3, 4, 1], [list: 4, 0, 3, 2, 1], [list: 0, 1, 3, 4, 2], [list: 0, 2, 1, 4, 3], [list: 1, 4, 0, 2, 3]],
    [list: [list: 1, 2, 4, 3, 0], [list: 2, 3, 0, 1, 4], [list: 3, 4, 2, 1, 0], [list: 4, 3, 0, 1, 2], [list: 1, 4, 0, 2, 3]],
    [set: hire(0, 0), hire(2, 0), hire(3, 4), hire(6, 1)]
  ) is false
end

check "notp-1-2-3-4-5_8":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [list: [list: 1, 0, 2], [list: 0, 1, 2], [list: 1, 2, 0]],
    [set: hire(3, 2), hire(0, 2)]
  ) is false
end

check "notp-1-2-3-4-5_9":
  is-valid(
    [list: [list: 3, 1, 0, 4, 2], [list: 2, 0, 1, 3, 4], [list: 2, 0, 1, 4, 3], [list: 2, 1, 0, 4, 3], [list: 0, 2, 4, 3, 1]],
    [list: [list: 1, 0, 2, 4, 3], [list: 4, 2, 3, 1, 0], [list: 4, 3, 2, 1, 0], [list: 0, 3, 1, 2, 4], [list: 4, 1, 2, 3, 0]],
    [set: hire(6, 0), hire(0, 0), hire(3, 4), hire(2, 4)]
  ) is false
end

check "notp-1-2-3-4-5_10":
  is-valid(
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 1, 0, 2]],
    [list: [list: 2, 1, 0], [list: 1, 0, 2], [list: 0, 1, 2]],
    [set: hire(1, 0), hire(0, 0), hire(6, 1)]
  ) is false
end

check "notp-1-2-3-4-5_11":
  is-valid(
    [list: [list: 4, 0, 2, 1, 3], [list: 4, 0, 1, 2, 3], [list: 4, 3, 1, 0, 2], [list: 4, 3, 0, 2, 1], [list: 0, 2, 1, 3, 4]],
    [list: [list: 3, 4, 1, 0, 2], [list: 1, 2, 0, 3, 4], [list: 1, 3, 0, 4, 2], [list: 4, 0, 2, 1, 3], [list: 0, 2, 3, 1, 4]],
    [set: hire(0, 0), hire(2, 2), hire(5, 3), hire(0, 1), hire(1, 0)]
  ) is false
end

check "notp-1-2-3-4-5_12":
  is-valid(
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 0, 2, 1]],
    [list: [list: 0, 1, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(2, 1), hire(3, 1)]
  ) is false
end

check "notp-1-2-3-4-5_13":
  is-valid(
    [list: [list: 0, 2, 1, 3], [list: 2, 3, 1, 0], [list: 0, 1, 2, 3], [list: 3, 0, 1, 2]],
    [list: [list: 0, 1, 2, 3], [list: 3, 0, 1, 2], [list: 2, 1, 0, 3], [list: 1, 2, 3, 0]],
    [set: hire(4, 2), hire(0, 2), hire(1, 0)]
  ) is false
end

check "notp-1-2-3-4-5_14":
  is-valid(
    [list: [list: 1, 0, 4, 2, 3], [list: 4, 2, 1, 0, 3], [list: 0, 2, 1, 3, 4], [list: 4, 0, 1, 2, 3], [list: 1, 2, 0, 4, 3]],
    [list: [list: 2, 3, 0, 4, 1], [list: 2, 0, 4, 1, 3], [list: 1, 3, 2, 0, 4], [list: 3, 1, 2, 0, 4], [list: 4, 3, 0, 2, 1]],
    [set: hire(2, 1), hire(0, 0), hire(1, 1), hire(2, 4), hire(1, 0), hire(5, 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_0":
  is-valid(
    [list: [list: 0, 1], [list: 0, 1]],
    [list: [list: 0, 1], [list: 0, 1]],
    [set: hire(0, 2), hire(2, 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_1":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 3), hire(3, 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_2":
  is-valid(
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [list: [list: 0, 1, 2], [list: 0, 1, 2], [list: 0, 1, 2]],
    [set: hire(0, 0), hire(0, 1), hire(3, 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_3":
  is-valid(
    [list: [list: 0, 1, 4, 2, 3], [list: 3, 0, 2, 4, 1], [list: 0, 2, 1, 3, 4], [list: 0, 3, 4, 1, 2], [list: 1, 3, 0, 2, 4]],
    [list: [list: 1, 0, 4, 2, 3], [list: 3, 4, 1, 0, 2], [list: 0, 4, 1, 3, 2], [list: 2, 4, 0, 3, 1], [list: 1, 3, 0, 4, 2]],
    [set: hire(2, 0), hire(6, 6), hire(1, 5), hire(4, 2), hire(0, 4), hire(6, 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_4":
  is-valid(
    [list: [list: 2, 4, 3, 0, 1], [list: 2, 3, 1, 0, 4], [list: 4, 0, 2, 1, 3], [list: 4, 2, 0, 3, 1], [list: 4, 0, 1, 2, 3]],
    [list: [list: 1, 4, 3, 0, 2], [list: 3, 1, 4, 0, 2], [list: 2, 1, 4, 3, 0], [list: 2, 3, 4, 0, 1], [list: 0, 4, 1, 2, 3]],
    [set: hire(6, 4), hire(3, 5), hire(2, 3), hire(0, 0), hire(5, 6), hire(3, 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_5":
  is-valid(
    [list: [list: 1, 0, 2], [list: 0, 2, 1], [list: 2, 0, 1]],
    [list: [list: 2, 1, 0], [list: 1, 2, 0], [list: 1, 0, 2]],
    [set: hire(5, 4), hire(3, 0), hire(1, 1), hire(4, 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_6":
  is-valid(
    [list: [list: 3, 1, 0, 2], [list: 1, 2, 0, 3], [list: 2, 3, 1, 0], [list: 3, 1, 0, 2]],
    [list: [list: 1, 0, 2, 3], [list: 2, 1, 0, 3], [list: 3, 0, 2, 1], [list: 1, 2, 3, 0]],
    [set: hire(6, 5), hire(3, 0), hire(3, 4), hire(4, 3), hire(2, 2), hire(2, 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_7":
  is-valid(
    [list: [list: 1, 2, 0], [list: 1, 2, 0], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [set: hire(5, 1), hire(4, 3), hire(1, 3), hire(6, 0), hire(0, 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_8":
  is-valid(
    [list: [list: 2, 0, 1, 3, 4], [list: 4, 3, 0, 1, 2], [list: 1, 0, 2, 4, 3], [list: 1, 2, 3, 4, 0], [list: 3, 4, 0, 1, 2]],
    [list: [list: 2, 4, 0, 1, 3], [list: 3, 2, 1, 4, 0], [list: 2, 1, 0, 3, 4], [list: 2, 4, 0, 3, 1], [list: 2, 3, 4, 0, 1]],
    [set: hire(3, 5), hire(4, 2), hire(5, 3), hire(4, 6)]
  ) is false
end

check "notp-1-2-3-4-5-6_9":
  is-valid(
    [list: [list: 2, 1, 0], [list: 2, 1, 0], [list: 2, 0, 1]],
    [list: [list: 1, 0, 2], [list: 1, 0, 2], [list: 1, 0, 2]],
    [set: hire(6, 6), hire(4, 4), hire(3, 3), hire(6, 4), hire(2, 4), hire(0, 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_10":
  is-valid(
    [list: [list: 0, 1, 2], [list: 2, 0, 1], [list: 1, 2, 0]],
    [list: [list: 1, 2, 0], [list: 2, 0, 1], [list: 2, 1, 0]],
    [set: hire(6, 0), hire(2, 1), hire(3, 1), hire(4, 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_11":
  is-valid(
    [list: [list: 1, 4, 0, 3, 2], [list: 3, 2, 4, 0, 1], [list: 4, 0, 3, 2, 1], [list: 1, 3, 4, 2, 0], [list: 0, 1, 4, 3, 2]],
    [list: [list: 4, 3, 1, 2, 0], [list: 1, 0, 3, 4, 2], [list: 3, 4, 0, 2, 1], [list: 2, 1, 3, 4, 0], [list: 2, 4, 1, 0, 3]],
    [set: hire(3, 5), hire(4, 6), hire(1, 1), hire(4, 4), hire(6, 0), hire(5, 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_12":
  is-valid(
    [list: [list: 3, 4, 2, 1, 0], [list: 0, 4, 3, 2, 1], [list: 3, 4, 2, 1, 0], [list: 0, 3, 2, 4, 1], [list: 4, 2, 3, 0, 1]],
    [list: [list: 1, 0, 3, 2, 4], [list: 3, 1, 4, 2, 0], [list: 0, 1, 2, 4, 3], [list: 1, 2, 3, 4, 0], [list: 2, 3, 4, 1, 0]],
    [set: hire(6, 5), hire(2, 3), hire(2, 1), hire(6, 4), hire(3, 6), hire(1, 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_13":
  is-valid(
    [list: [list: 2, 3, 0, 1], [list: 0, 1, 3, 2], [list: 3, 1, 0, 2], [list: 3, 2, 0, 1]],
    [list: [list: 2, 1, 0, 3], [list: 3, 1, 2, 0], [list: 1, 2, 0, 3], [list: 1, 2, 0, 3]],
    [set: hire(4, 0), hire(0, 5), hire(6, 2), hire(0, 6)]
  ) is false
end

check "notp-1-2-3-4-5-6_14":
  is-valid(
    [list: [list: 0, 2, 1], [list: 1, 0, 2], [list: 2, 1, 0]],
    [list: [list: 1, 0, 2], [list: 2, 1, 0], [list: 0, 1, 2]],
    [set: hire(4, 3), hire(3, 4), hire(0, 4), hire(2, 4)]
  ) is false
end

