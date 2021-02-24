check "allprop_0":
  is-valid(
    [list: ],
    [list: ]
  ) is true
end

check "allprop_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)]
  ) is true
end

check "allprop_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)]
  ) is true
end

check "allprop_3":
  is-valid(
    [list: person('Sleepy', 3), person('Doc', 2), person('Sleepy', 3)],
    [list: person('Doc', 2), person('Sleepy', 3), person('Sleepy', 3)]
  ) is true
end

check "allprop_4":
  is-valid(
    [list: person('Snow White', 1), person('Sleepy', 1), person('Doc', 1), person('Grumpy', 1), person('Grumpy', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Sleepy', 1), person('Grumpy', 1), person('Grumpy', 1)]
  ) is true
end

check "allprop_5":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Snow White', 4)],
    [list: person('Snow White', 4), person('Doc', 5), person('Doc', 5)]
  ) is true
end

check "allprop_6":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Snow White', 1)]
  ) is true
end

check "allprop_7":
  is-valid(
    [list: person('Doc', 4), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 4)]
  ) is true
end

check "allprop_8":
  is-valid(
    [list: person('Happy', 5), person('Happy', 0), person('Grumpy', 0)],
    [list: person('Happy', 0), person('Grumpy', 0), person('Happy', 5)]
  ) is true
end

check "allprop_9":
  is-valid(
    [list: person('Snow White', 4), person('Sleepy', 4), person('Grumpy', 0)],
    [list: person('Grumpy', 0), person('Snow White', 4), person('Sleepy', 4)]
  ) is true
end

check "allprop_10":
  is-valid(
    [list: person('Doc', 5), person('Doc', 1), person('Snow White', 1)],
    [list: person('Doc', 1), person('Snow White', 1), person('Doc', 5)]
  ) is true
end

check "allprop_11":
  is-valid(
    [list: person('Doc', 1), person('Doc', 5), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 5)]
  ) is true
end

check "allprop_12":
  is-valid(
    [list: person('Snow White', 1), person('Bashful', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Bashful', 1), person('Snow White', 1)]
  ) is true
end

check "allprop_13":
  is-valid(
    [list: person('Happy', 4), person('Happy', 1), person('Sleepy', 1)],
    [list: person('Sleepy', 1), person('Happy', 1), person('Happy', 4)]
  ) is true
end

check "allprop_14":
  is-valid(
    [list: person('Bashful', 5), person('Doc', 5), person('Doc', 5)],
    [list: person('Doc', 5), person('Bashful', 5), person('Doc', 5)]
  ) is true
end

check "notp-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 1), person('Doc', 1)]
  ) is false
end

check "notp-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-4-5_3":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 0), person('Doc', 0)],
    [list: person('Doc', 0), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-4-5_4":
  is-valid(
    [list: person('Grumpy', 1), person('Doc', 1), person('Doc', 2), person('Doc', 1)],
    [list: person('Grumpy', 1), person('Doc', 1), person('Grumpy', 1), person('Doc', 2)]
  ) is false
end

check "notp-4-5_5":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 3), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Doc', 3), person('Doc', 3)]
  ) is false
end

check "notp-4-5_6":
  is-valid(
    [list: person('Grumpy', 3), person('Grumpy', 3), person('Bashful', 2)],
    [list: person('Bashful', 2), person('Bashful', 2), person('Grumpy', 3)]
  ) is false
end

check "notp-4-5_7":
  is-valid(
    [list: person('Doc', 3), person('Bashful', 3), person('Doc', 0), person('Doc', 3), person('Snow White', 5)],
    [list: person('Doc', 0), person('Doc', 3), person('Bashful', 3), person('Bashful', 3), person('Snow White', 5)]
  ) is false
end

check "notp-4-5_8":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 1), person('Doc', 3), person('Doc', 5)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 3), person('Doc', 5)]
  ) is false
end

check "notp-4-5_9":
  is-valid(
    [list: person('Happy', 1), person('Happy', 1), person('Grumpy', 1)],
    [list: person('Grumpy', 1), person('Grumpy', 1), person('Happy', 1)]
  ) is false
end

check "notp-4-5_10":
  is-valid(
    [list: person('Doc', 2), person('Doc', 1), person('Doc', 1), person('Doc', 2), person('Doc', 3)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 2), person('Doc', 3)]
  ) is false
end

check "notp-4-5_11":
  is-valid(
    [list: person('Sleepy', 0), person('Doc', 1), person('Doc', 1), person('Snow White', 3), person('Doc', 3)],
    [list: person('Sleepy', 0), person('Doc', 1), person('Doc', 3), person('Snow White', 3), person('Doc', 3)]
  ) is false
end

check "notp-4-5_12":
  is-valid(
    [list: person('Sleepy', 1), person('Doc', 1), person('Sleepy', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Sleepy', 1)]
  ) is false
end

check "notp-4-5_13":
  is-valid(
    [list: person('Grumpy', 2), person('Doc', 5), person('Doc', 5)],
    [list: person('Grumpy', 2), person('Grumpy', 2), person('Doc', 5)]
  ) is false
end

check "notp-4-5_14":
  is-valid(
    [list: person('Sleepy', 1), person('Doc', 2), person('Sleepy', 0), person('Bashful', 1), person('Doc', 2)],
    [list: person('Sleepy', 0), person('Sleepy', 1), person('Bashful', 1), person('Bashful', 1), person('Doc', 2)]
  ) is false
end

check "notp-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_3":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_4":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_5":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_6":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_7":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_8":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_9":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_10":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_11":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_12":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_13":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-4-5-6_14":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-3_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-3_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Doc', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)]
  ) is false
end

check "notp-3_2":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)]
  ) is false
end

check "notp-3_3":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 1), person('Grumpy', 1), person('Snow White', 4)],
    [list: person('Doc', 5), person('Doc', 1), person('Doc', 5), person('Grumpy', 1), person('Snow White', 4)]
  ) is false
end

check "notp-3_4":
  is-valid(
    [list: person('Doc', 1), person('Doc', 4), person('Doc', 1), person('Doc', 4), person('Doc', 5)],
    [list: person('Doc', 4), person('Doc', 1), person('Doc', 1), person('Doc', 4), person('Doc', 5)]
  ) is false
end

check "notp-3_5":
  is-valid(
    [list: person('Doc', 1), person('Snow White', 5), person('Bashful', 2)],
    [list: person('Snow White', 5), person('Bashful', 2), person('Doc', 1)]
  ) is false
end

check "notp-3_6":
  is-valid(
    [list: person('Doc', 2), person('Grumpy', 4), person('Snow White', 3)],
    [list: person('Grumpy', 4), person('Snow White', 3), person('Doc', 2)]
  ) is false
end

check "notp-3_7":
  is-valid(
    [list: person('Happy', 3), person('Snow White', 0), person('Happy', 1)],
    [list: person('Happy', 3), person('Happy', 1), person('Snow White', 0)]
  ) is false
end

check "notp-3_8":
  is-valid(
    [list: person('Sleepy', 3), person('Doc', 0), person('Happy', 0)],
    [list: person('Doc', 0), person('Sleepy', 3), person('Happy', 0)]
  ) is false
end

check "notp-3_9":
  is-valid(
    [list: person('Bashful', 2), person('Snow White', 1), person('Doc', 1)],
    [list: person('Bashful', 2), person('Doc', 1), person('Snow White', 1)]
  ) is false
end

check "notp-3_10":
  is-valid(
    [list: person('Doc', 4), person('Bashful', 5), person('Snow White', 0), person('Snow White', 0), person('Bashful', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Bashful', 0), person('Bashful', 5), person('Doc', 4)]
  ) is false
end

check "notp-3_11":
  is-valid(
    [list: person('Sleepy', 3), person('Sleepy', 3), person('Sleepy', 2)],
    [list: person('Sleepy', 3), person('Sleepy', 2), person('Sleepy', 3)]
  ) is false
end

check "notp-3_12":
  is-valid(
    [list: person('Grumpy', 5), person('Doc', 3), person('Bashful', 4), person('Doc', 5), person('Bashful', 4)],
    [list: person('Grumpy', 5), person('Doc', 3), person('Doc', 5), person('Bashful', 4), person('Bashful', 4)]
  ) is false
end

check "notp-3_13":
  is-valid(
    [list: person('Doc', 1), person('Doc', 2), person('Doc', 4), person('Doc', 2)],
    [list: person('Doc', 1), person('Doc', 4), person('Doc', 2), person('Doc', 2)]
  ) is false
end

check "notp-3_14":
  is-valid(
    [list: person('Doc', 1), person('Happy', 2), person('Snow White', 3)],
    [list: person('Doc', 1), person('Snow White', 3), person('Happy', 2)]
  ) is false
end

check "notp-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 1), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 1), person('Snow White', 0)]
  ) is false
end

check "notp-3-4-5_1":
  is-valid(
    [list: person('Doc', 0), person('Doc', 0), person('Doc', 0), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 0), person('Doc', 0), person('Doc', 1), person('Doc', 0)]
  ) is false
end

check "notp-3-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 0), person('Doc', 0), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 1), person('Doc', 0)]
  ) is false
end

check "notp-3-4-5_3":
  is-valid(
    [list: person('Bashful', 1), person('Doc', 5), person('Doc', 0), person('Bashful', 1), person('Doc', 1)],
    [list: person('Doc', 5), person('Doc', 1), person('Doc', 0), person('Bashful', 1), person('Doc', 1)]
  ) is false
end

check "notp-3-4-5_4":
  is-valid(
    [list: person('Doc', 1), person('Doc', 2), person('Doc', 0), person('Doc', 3), person('Doc', 2)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 0), person('Doc', 3), person('Doc', 2)]
  ) is false
end

check "notp-3-4-5_5":
  is-valid(
    [list: person('Doc', 1), person('Doc', 2), person('Doc', 2), person('Doc', 0), person('Doc', 2)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 2), person('Doc', 0), person('Doc', 2)]
  ) is false
end

check "notp-3-4-5_6":
  is-valid(
    [list: person('Sleepy', 5), person('Happy', 1), person('Happy', 1), person('Doc', 0), person('Bashful', 4)],
    [list: person('Sleepy', 5), person('Happy', 1), person('Bashful', 4), person('Doc', 0), person('Bashful', 4)]
  ) is false
end

check "notp-3-4-5_7":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 2), person('Doc', 2), person('Doc', 0)],
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 0), person('Doc', 2), person('Doc', 0)]
  ) is false
end

check "notp-3-4-5_8":
  is-valid(
    [list: person('Doc', 3), person('Doc', 3), person('Doc', 1), person('Doc', 0), person('Doc', 3)],
    [list: person('Doc', 1), person('Doc', 3), person('Doc', 1), person('Doc', 0), person('Doc', 3)]
  ) is false
end

check "notp-3-4-5_9":
  is-valid(
    [list: person('Bashful', 4), person('Snow White', 2), person('Doc', 5), person('Sleepy', 5), person('Doc', 5)],
    [list: person('Bashful', 4), person('Snow White', 2), person('Bashful', 4), person('Sleepy', 5), person('Doc', 5)]
  ) is false
end

check "notp-3-4-5_10":
  is-valid(
    [list: person('Doc', 3), person('Doc', 4), person('Doc', 4), person('Doc', 1), person('Doc', 3)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 4), person('Doc', 1), person('Doc', 3)]
  ) is false
end

check "notp-3-4-5_11":
  is-valid(
    [list: person('Doc', 4), person('Bashful', 1), person('Doc', 4), person('Sleepy', 4), person('Grumpy', 3)],
    [list: person('Doc', 4), person('Bashful', 1), person('Sleepy', 4), person('Sleepy', 4), person('Grumpy', 3)]
  ) is false
end

check "notp-3-4-5_12":
  is-valid(
    [list: person('Bashful', 2), person('Bashful', 3), person('Doc', 5), person('Doc', 5), person('Sleepy', 0)],
    [list: person('Bashful', 2), person('Bashful', 3), person('Bashful', 3), person('Doc', 5), person('Sleepy', 0)]
  ) is false
end

check "notp-3-4-5_13":
  is-valid(
    [list: person('Doc', 0), person('Doc', 4), person('Doc', 4), person('Doc', 0), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 0), person('Doc', 4), person('Doc', 0), person('Doc', 1)]
  ) is false
end

check "notp-3-4-5_14":
  is-valid(
    [list: person('Doc', 2), person('Bashful', 1), person('Bashful', 1)],
    [list: person('Doc', 2), person('Doc', 2), person('Bashful', 1)]
  ) is false
end

check "notp-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)]
  ) is false
end

check "notp-3-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-3-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-3-4-5-6_3":
  is-valid(
    [list: person('Grumpy', 5), person('Doc', 2), person('Grumpy', 5)],
    [list: person('Grumpy', 5), person('Doc', 2)]
  ) is false
end

check "notp-3-4-5-6_4":
  is-valid(
    [list: person('Doc', 5), person('Snow White', 5), person('Doc', 5), person('Doc', 4), person('Doc', 5)],
    [list: person('Snow White', 5), person('Doc', 5), person('Doc', 4)]
  ) is false
end

check "notp-3-4-5-6_5":
  is-valid(
    [list: person('Doc', 1), person('Doc', 5), person('Doc', 1)],
    [list: person('Doc', 5), person('Doc', 1)]
  ) is false
end

check "notp-3-4-5-6_6":
  is-valid(
    [list: person('Grumpy', 5), person('Grumpy', 2), person('Doc', 3), person('Doc', 2), person('Doc', 2)],
    [list: person('Grumpy', 2), person('Doc', 3), person('Doc', 2), person('Grumpy', 5)]
  ) is false
end

check "notp-3-4-5-6_7":
  is-valid(
    [list: person('Snow White', 4), person('Doc', 4), person('Doc', 0), person('Bashful', 1)],
    [list: person('Bashful', 1), person('Doc', 0), person('Snow White', 4), person('Doc', 4), person('Bashful', 1)]
  ) is false
end

check "notp-3-4-5-6_8":
  is-valid(
    [list: person('Sleepy', 0), person('Doc', 1), person('Doc', 5)],
    [list: person('Doc', 1), person('Sleepy', 0), person('Doc', 5), person('Doc', 5), person('Doc', 5)]
  ) is false
end

check "notp-3-4-5-6_9":
  is-valid(
    [list: person('Doc', 2), person('Snow White', 1), person('Doc', 2), person('Doc', 1), person('Doc', 2)],
    [list: person('Doc', 1), person('Doc', 2), person('Snow White', 1)]
  ) is false
end

check "notp-3-4-5-6_10":
  is-valid(
    [list: person('Snow White', 5), person('Sleepy', 3), person('Snow White', 5)],
    [list: person('Snow White', 5), person('Sleepy', 3)]
  ) is false
end

check "notp-3-4-5-6_11":
  is-valid(
    [list: person('Sleepy', 4), person('Sleepy', 4), person('Sleepy', 0)],
    [list: person('Sleepy', 4), person('Sleepy', 0)]
  ) is false
end

check "notp-3-4-5-6_12":
  is-valid(
    [list: person('Sleepy', 4), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Sleepy', 4), person('Snow White', 0)]
  ) is false
end

check "notp-3-4-5-6_13":
  is-valid(
    [list: person('Doc', 1), person('Doc', 3), person('Doc', 3)],
    [list: person('Doc', 3), person('Doc', 1)]
  ) is false
end

check "notp-3-4-5-6_14":
  is-valid(
    [list: person('Happy', 2), person('Happy', 2), person('Happy', 3)],
    [list: person('Happy', 3), person('Happy', 2)]
  ) is false
end

check "notp-2-4-6_0":
  is-valid(
    [list: ],
    [list: person('Snow White', 0)]
  ) is false
end

check "notp-2-4-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-4-6_3":
  is-valid(
    [list: person('Snow White', 1), person('Bashful', 2), person('Bashful', 2), person('Grumpy', 3)],
    [list: person('Grumpy', 0), person('Snow White', 1), person('Bashful', 2), person('Bashful', 2), person('Grumpy', 3)]
  ) is false
end

check "notp-2-4-6_4":
  is-valid(
    [list: person('Doc', 1), person('Doc', 4), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 4)]
  ) is false
end

check "notp-2-4-6_5":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Happy', 1), person('Grumpy', 1)]
  ) is false
end

check "notp-2-4-6_6":
  is-valid(
    [list: person('Grumpy', 2), person('Doc', 2), person('Doc', 2), person('Doc', 2)],
    [list: person('Happy', 0), person('Doc', 2), person('Doc', 2), person('Doc', 2), person('Grumpy', 2)]
  ) is false
end

check "notp-2-4-6_7":
  is-valid(
    [list: person('Sleepy', 0), person('Sleepy', 1), person('Sleepy', 3), person('Snow White', 5)],
    [list: person('Snow White', 0), person('Sleepy', 0), person('Sleepy', 1), person('Sleepy', 3), person('Snow White', 5)]
  ) is false
end

check "notp-2-4-6_8":
  is-valid(
    [list: person('Doc', 3), person('Doc', 3), person('Sleepy', 1)],
    [list: person('Sleepy', 1), person('Doc', 1), person('Doc', 1), person('Doc', 3), person('Doc', 3)]
  ) is false
end

check "notp-2-4-6_9":
  is-valid(
    [list: person('Doc', 2), person('Doc', 0), person('Doc', 2)],
    [list: person('Doc', 0), person('Doc', 2), person('Doc', 2), person('Doc', 4), person('Snow White', 4)]
  ) is false
end

check "notp-2-4-6_10":
  is-valid(
    [list: person('Doc', 0), person('Doc', 5), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 1), person('Grumpy', 1), person('Sleepy', 5), person('Doc', 5)]
  ) is false
end

check "notp-2-4-6_11":
  is-valid(
    [list: person('Snow White', 1), person('Bashful', 1), person('Snow White', 4), person('Doc', 4)],
    [list: person('Doc', 0), person('Snow White', 1), person('Bashful', 1), person('Snow White', 4), person('Doc', 4)]
  ) is false
end

check "notp-2-4-6_12":
  is-valid(
    [list: person('Happy', 4), person('Happy', 3), person('Doc', 3)],
    [list: person('Grumpy', 1), person('Doc', 1), person('Doc', 3), person('Happy', 3), person('Happy', 4)]
  ) is false
end

check "notp-2-4-6_13":
  is-valid(
    [list: person('Snow White', 1), person('Sleepy', 1), person('Happy', 2), person('Doc', 2)],
    [list: person('Grumpy', 0), person('Snow White', 1), person('Sleepy', 1), person('Happy', 2), person('Doc', 2)]
  ) is false
end

check "notp-2-4-6_14":
  is-valid(
    [list: person('Sleepy', 1), person('Bashful', 1), person('Doc', 1), person('Doc', 2)],
    [list: person('Doc', 1), person('Snow White', 1), person('Sleepy', 1), person('Bashful', 1), person('Doc', 2)]
  ) is false
end

check "notp-2-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5_1":
  is-valid(
    [list: person('Doc', 0), person('Doc', 0), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 0)]
  ) is false
end

check "notp-2-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5_3":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Sleepy', 1), person('Bashful', 4), person('Doc', 5)]
  ) is false
end

check "notp-2-4-5_4":
  is-valid(
    [list: person('Grumpy', 1), person('Grumpy', 1), person('Doc', 1)],
    [list: person('Grumpy', 1), person('Doc', 1), person('Bashful', 2)]
  ) is false
end

check "notp-2-4-5_5":
  is-valid(
    [list: person('Doc', 2), person('Doc', 4), person('Doc', 4)],
    [list: person('Happy', 0), person('Doc', 2), person('Doc', 4)]
  ) is false
end

check "notp-2-4-5_6":
  is-valid(
    [list: person('Happy', 2), person('Happy', 2), person('Happy', 2)],
    [list: person('Happy', 2), person('Grumpy', 2), person('Snow White', 2)]
  ) is false
end

check "notp-2-4-5_7":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Doc', 4), person('Grumpy', 4), person('Doc', 4)],
    [list: person('Snow White', 1), person('Snow White', 1), person('Sleepy', 4), person('Grumpy', 4), person('Doc', 4)]
  ) is false
end

check "notp-2-4-5_8":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5_9":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 5)]
  ) is false
end

check "notp-2-4-5_10":
  is-valid(
    [list: person('Doc', 5), person('Grumpy', 2), person('Doc', 5)],
    [list: person('Grumpy', 2), person('Happy', 3), person('Doc', 5)]
  ) is false
end

check "notp-2-4-5_11":
  is-valid(
    [list: person('Doc', 5), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 3), person('Doc', 5)]
  ) is false
end

check "notp-2-4-5_12":
  is-valid(
    [list: person('Grumpy', 2), person('Sleepy', 5), person('Snow White', 5), person('Sleepy', 5)],
    [list: person('Grumpy', 2), person('Snow White', 5), person('Grumpy', 5), person('Sleepy', 5)]
  ) is false
end

check "notp-2-4-5_13":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 2), person('Doc', 2)],
    [list: person('Snow White', 1), person('Doc', 2), person('Grumpy', 4)]
  ) is false
end

check "notp-2-4-5_14":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5-6_0":
  is-valid(
    [list: person('Doc', 1)],
    [list: person('Snow White', 0), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5-6_3":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 5), person('Doc', 5)],
    [list: person('Bashful', 0), person('Doc', 5)]
  ) is false
end

check "notp-2-4-5-6_4":
  is-valid(
    [list: person('Doc', 0), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 1), person('Snow White', 1), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-2-4-5-6_5":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 1), person('Grumpy', 1)]
  ) is false
end

check "notp-2-4-5-6_6":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-4-5-6_7":
  is-valid(
    [list: person('Doc', 1), person('Happy', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Happy', 0), person('Doc', 1), person('Happy', 1), person('Doc', 1), person('Snow White', 3)]
  ) is false
end

check "notp-2-4-5-6_8":
  is-valid(
    [list: person('Sleepy', 2), person('Sleepy', 2), person('Sleepy', 2)],
    [list: person('Doc', 2), person('Sleepy', 2)]
  ) is false
end

check "notp-2-4-5-6_9":
  is-valid(
    [list: person('Snow White', 2), person('Snow White', 2), person('Snow White', 2)],
    [list: person('Bashful', 0), person('Snow White', 2)]
  ) is false
end

check "notp-2-4-5-6_10":
  is-valid(
    [list: person('Doc', 3), person('Doc', 3), person('Doc', 3)],
    [list: person('Sleepy', 0), person('Doc', 3)]
  ) is false
end

check "notp-2-4-5-6_11":
  is-valid(
    [list: person('Doc', 3), person('Doc', 3), person('Doc', 3), person('Doc', 3)],
    [list: person('Doc', 1), person('Doc', 3)]
  ) is false
end

check "notp-2-4-5-6_12":
  is-valid(
    [list: person('Happy', 3), person('Happy', 3), person('Happy', 3)],
    [list: person('Snow White', 3), person('Happy', 3)]
  ) is false
end

check "notp-2-4-5-6_13":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 1)]
  ) is false
end

check "notp-2-4-5-6_14":
  is-valid(
    [list: person('Happy', 4), person('Happy', 4), person('Happy', 4)],
    [list: person('Doc', 1), person('Happy', 4)]
  ) is false
end

check "notp-2-3-4-6_0":
  is-valid(
    [list: ],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 2), person('Doc', 0)]
  ) is false
end

check "notp-2-3-4-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 0), person('Snow White', 2), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-6_3":
  is-valid(
    [list: person('Doc', 4), person('Bashful', 3), person('Doc', 0)],
    [list: person('Doc', 0), person('Grumpy', 1), person('Sleepy', 0), person('Doc', 4), person('Bashful', 3)]
  ) is false
end

check "notp-2-3-4-6_4":
  is-valid(
    [list: person('Happy', 0), person('Doc', 5), person('Happy', 0)],
    [list: person('Sleepy', 5), person('Happy', 0), person('Happy', 0), person('Sleepy', 3), person('Doc', 5)]
  ) is false
end

check "notp-2-3-4-6_5":
  is-valid(
    [list: person('Bashful', 0), person('Grumpy', 1), person('Happy', 3)],
    [list: person('Happy', 1), person('Bashful', 0), person('Grumpy', 1), person('Happy', 3), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-6_6":
  is-valid(
    [list: person('Sleepy', 2), person('Doc', 2), person('Doc', 2), person('Doc', 1)],
    [list: person('Doc', 2), person('Doc', 1), person('Doc', 2), person('Sleepy', 2), person('Grumpy', 2)]
  ) is false
end

check "notp-2-3-4-6_7":
  is-valid(
    [list: person('Bashful', 0), person('Doc', 1), person('Grumpy', 0)],
    [list: person('Doc', 1), person('Doc', 0), person('Grumpy', 0), person('Bashful', 0)]
  ) is false
end

check "notp-2-3-4-6_8":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Sleepy', 1), person('Happy', 0), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-6_9":
  is-valid(
    [list: person('Sleepy', 3), person('Sleepy', 2), person('Doc', 1)],
    [list: person('Doc', 1), person('Sleepy', 1), person('Happy', 0), person('Sleepy', 3), person('Sleepy', 2)]
  ) is false
end

check "notp-2-3-4-6_10":
  is-valid(
    [list: person('Doc', 4), person('Doc', 5), person('Doc', 1)],
    [list: person('Doc', 1), person('Grumpy', 1), person('Doc', 0), person('Doc', 4), person('Doc', 5)]
  ) is false
end

check "notp-2-3-4-6_11":
  is-valid(
    [list: person('Doc', 0), person('Doc', 1), person('Doc', 4)],
    [list: person('Doc', 4), person('Bashful', 1), person('Snow White', 0), person('Doc', 0), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-6_12":
  is-valid(
    [list: person('Snow White', 1), person('Bashful', 2), person('Bashful', 1)],
    [list: person('Bashful', 1), person('Doc', 0), person('Snow White', 1), person('Bashful', 2), person('Happy', 4)]
  ) is false
end

check "notp-2-3-4-6_13":
  is-valid(
    [list: person('Doc', 2), person('Doc', 3), person('Doc', 5)],
    [list: person('Doc', 5), person('Grumpy', 1), person('Snow White', 0), person('Doc', 2), person('Doc', 3)]
  ) is false
end

check "notp-2-3-4-6_14":
  is-valid(
    [list: person('Bashful', 2), person('Sleepy', 0), person('Sleepy', 4)],
    [list: person('Sleepy', 0), person('Sleepy', 4), person('Doc', 0), person('Sleepy', 1), person('Bashful', 2)]
  ) is false
end

check "notp-2-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5_3":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 5), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-5_4":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Snow White', 5), person('Doc', 0), person('Doc', 2)]
  ) is false
end

check "notp-2-3-4-5_5":
  is-valid(
    [list: person('Grumpy', 0), person('Happy', 2), person('Grumpy', 0)],
    [list: person('Happy', 2), person('Grumpy', 0), person('Sleepy', 2)]
  ) is false
end

check "notp-2-3-4-5_6":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 0), person('Doc', 1), person('Doc', 1), person('Doc', 5), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-5_7":
  is-valid(
    [list: person('Grumpy', 1), person('Grumpy', 1), person('Doc', 2)],
    [list: person('Doc', 1), person('Doc', 2), person('Grumpy', 1)]
  ) is false
end

check "notp-2-3-4-5_8":
  is-valid(
    [list: person('Doc', 4), person('Doc', 3), person('Doc', 5), person('Doc', 3), person('Doc', 5)],
    [list: person('Doc', 3), person('Doc', 0), person('Doc', 4), person('Doc', 5), person('Snow White', 5)]
  ) is false
end

check "notp-2-3-4-5_9":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 2), person('Doc', 2), person('Doc', 2)],
    [list: person('Doc', 2), person('Snow White', 1), person('Doc', 3), person('Grumpy', 0)]
  ) is false
end

check "notp-2-3-4-5_10":
  is-valid(
    [list: person('Grumpy', 3), person('Doc', 0), person('Doc', 1), person('Sleepy', 0), person('Doc', 1)],
    [list: person('Grumpy', 3), person('Doc', 0), person('Doc', 4), person('Sleepy', 0), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-5_11":
  is-valid(
    [list: person('Grumpy', 5), person('Doc', 5), person('Doc', 5), person('Grumpy', 5), person('Happy', 5)],
    [list: person('Grumpy', 5), person('Doc', 5), person('Bashful', 2), person('Grumpy', 5), person('Happy', 5)]
  ) is false
end

check "notp-2-3-4-5_12":
  is-valid(
    [list: person('Bashful', 3), person('Sleepy', 0), person('Doc', 4), person('Doc', 4), person('Happy', 2)],
    [list: person('Bashful', 3), person('Sleepy', 0), person('Sleepy', 3), person('Doc', 4), person('Happy', 2)]
  ) is false
end

check "notp-2-3-4-5_13":
  is-valid(
    [list: person('Doc', 2), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 2), person('Snow White', 1)]
  ) is false
end

check "notp-2-3-4-5_14":
  is-valid(
    [list: person('Grumpy', 0), person('Grumpy', 0), person('Doc', 2), person('Doc', 3), person('Doc', 2)],
    [list: person('Grumpy', 0), person('Doc', 2), person('Doc', 3), person('Grumpy', 5), person('Happy', 3)]
  ) is false
end

check "notp-2-3-4-5-6_0":
  is-valid(
    [list: person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0), person('Snow White', 1)]
  ) is false
end

check "notp-2-3-4-5-6_2":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Snow White', 1)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-2-3-4-5-6_3":
  is-valid(
    [list: person('Doc', 3), person('Doc', 1), person('Doc', 1)],
    [list: person('Snow White', 4), person('Doc', 3), person('Doc', 4), person('Doc', 2), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-5-6_4":
  is-valid(
    [list: person('Doc', 3), person('Doc', 3), person('Sleepy', 1), person('Sleepy', 1)],
    [list: person('Doc', 0), person('Sleepy', 1), person('Bashful', 4), person('Bashful', 3), person('Doc', 3)]
  ) is false
end

check "notp-2-3-4-5-6_5":
  is-valid(
    [list: person('Doc', 1), person('Snow White', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 4), person('Snow White', 1), person('Doc', 1)]
  ) is false
end

check "notp-2-3-4-5-6_6":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Snow White', 1)],
    [list: person('Doc', 4), person('Bashful', 1), person('Sleepy', 0), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-2-3-4-5-6_7":
  is-valid(
    [list: person('Bashful', 5), person('Happy', 5), person('Bashful', 5)],
    [list: person('Sleepy', 1), person('Bashful', 5), person('Happy', 5), person('Doc', 4), person('Happy', 0)]
  ) is false
end

check "notp-2-3-4-5-6_8":
  is-valid(
    [list: person('Doc', 1), person('Doc', 5), person('Doc', 1)],
    [list: person('Doc', 1), person('Happy', 1), person('Grumpy', 0), person('Doc', 5), person('Grumpy', 1)]
  ) is false
end

check "notp-2-3-4-5-6_9":
  is-valid(
    [list: person('Doc', 5), person('Bashful', 2), person('Bashful', 2)],
    [list: person('Bashful', 2), person('Doc', 5), person('Sleepy', 1), person('Bashful', 1), person('Snow White', 5)]
  ) is false
end

check "notp-2-3-4-5-6_10":
  is-valid(
    [list: person('Sleepy', 5), person('Doc', 4), person('Doc', 4)],
    [list: person('Sleepy', 0), person('Sleepy', 5), person('Doc', 4), person('Sleepy', 0)]
  ) is false
end

check "notp-2-3-4-5-6_11":
  is-valid(
    [list: person('Snow White', 2), person('Doc', 0), person('Doc', 0)],
    [list: person('Doc', 5), person('Happy', 0), person('Snow White', 2), person('Doc', 0), person('Grumpy', 0)]
  ) is false
end

check "notp-2-3-4-5-6_12":
  is-valid(
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Snow White', 1), person('Sleepy', 1), person('Doc', 4), person('Sleepy', 2)]
  ) is false
end

check "notp-2-3-4-5-6_13":
  is-valid(
    [list: person('Happy', 1), person('Doc', 4), person('Happy', 1)],
    [list: person('Doc', 1), person('Doc', 0), person('Doc', 4), person('Happy', 1), person('Snow White', 1)]
  ) is false
end

check "notp-2-3-4-5-6_14":
  is-valid(
    [list: person('Doc', 5), person('Grumpy', 5), person('Sleepy', 2), person('Doc', 5)],
    [list: person('Grumpy', 0), person('Doc', 5), person('Grumpy', 5), person('Sleepy', 2), person('Bashful', 0)]
  ) is false
end

check "notp-1-5-6_0":
  is-valid(
    [list: person('Snow White', 0)],
    [list: ]
  ) is false
end

check "notp-1-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_3":
  is-valid(
    [list: person('Grumpy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_4":
  is-valid(
    [list: person('Happy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_5":
  is-valid(
    [list: person('Sleepy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_6":
  is-valid(
    [list: person('Happy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_7":
  is-valid(
    [list: person('Sleepy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_8":
  is-valid(
    [list: person('Sleepy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_9":
  is-valid(
    [list: person('Grumpy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_10":
  is-valid(
    [list: person('Bashful', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_11":
  is-valid(
    [list: person('Grumpy', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_12":
  is-valid(
    [list: person('Bashful', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_13":
  is-valid(
    [list: person('Doc', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-5-6_14":
  is-valid(
    [list: person('Bashful', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_3":
  is-valid(
    [list: person('Doc', 4), person('Happy', 0), person('Doc', 0)],
    [list: person('Doc', 4), person('Doc', 4), person('Doc', 4)]
  ) is false
end

check "notp-1-4-5_4":
  is-valid(
    [list: person('Snow White', 3), person('Doc', 3), person('Doc', 0)],
    [list: person('Snow White', 3), person('Doc', 3), person('Snow White', 3)]
  ) is false
end

check "notp-1-4-5_5":
  is-valid(
    [list: person('Bashful', 1), person('Doc', 3), person('Grumpy', 1)],
    [list: person('Bashful', 1), person('Bashful', 1), person('Grumpy', 1)]
  ) is false
end

check "notp-1-4-5_6":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_7":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 0), person('Doc', 1)],
    [list: person('Doc', 1), person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-1-4-5_8":
  is-valid(
    [list: person('Doc', 0), person('Doc', 3), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_9":
  is-valid(
    [list: person('Doc', 3), person('Snow White', 3), person('Doc', 1), person('Sleepy', 4), person('Bashful', 5)],
    [list: person('Doc', 3), person('Snow White', 3), person('Doc', 3), person('Sleepy', 4), person('Bashful', 5)]
  ) is false
end

check "notp-1-4-5_10":
  is-valid(
    [list: person('Doc', 1), person('Doc', 5), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_11":
  is-valid(
    [list: person('Sleepy', 2), person('Doc', 3), person('Doc', 1), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_12":
  is-valid(
    [list: person('Doc', 3), person('Doc', 2), person('Doc', 1), person('Bashful', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Bashful', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5_13":
  is-valid(
    [list: person('Grumpy', 4), person('Bashful', 4), person('Doc', 2), person('Snow White', 4), person('Snow White', 5)],
    [list: person('Grumpy', 4), person('Bashful', 4), person('Grumpy', 4), person('Snow White', 4), person('Snow White', 5)]
  ) is false
end

check "notp-1-4-5_14":
  is-valid(
    [list: person('Sleepy', 5), person('Doc', 1), person('Doc', 0)],
    [list: person('Doc', 1), person('Doc', 1), person('Doc', 1)]
  ) is false
end

check "notp-1-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_3":
  is-valid(
    [list: person('Grumpy', 3), person('Grumpy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_4":
  is-valid(
    [list: person('Doc', 5), person('Happy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_5":
  is-valid(
    [list: person('Doc', 4), person('Bashful', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_6":
  is-valid(
    [list: person('Bashful', 0), person('Grumpy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_7":
  is-valid(
    [list: person('Snow White', 4), person('Doc', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_8":
  is-valid(
    [list: person('Grumpy', 2), person('Grumpy', 1), person('Snow White', 4), person('Grumpy', 4), person('Grumpy', 1)],
    [list: person('Grumpy', 1), person('Grumpy', 4)]
  ) is false
end

check "notp-1-4-5-6_9":
  is-valid(
    [list: person('Happy', 5), person('Bashful', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_10":
  is-valid(
    [list: person('Grumpy', 0), person('Sleepy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_11":
  is-valid(
    [list: person('Happy', 3), person('Grumpy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_12":
  is-valid(
    [list: person('Grumpy', 0), person('Grumpy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_13":
  is-valid(
    [list: person('Doc', 0), person('Happy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-4-5-6_14":
  is-valid(
    [list: person('Bashful', 3), person('Grumpy', 0), person('Snow White', 0)],
    [list: person('Snow White', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 2)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_3":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 2), person('Sleepy', 5), person('Snow White', 2), person('Doc', 0)],
    [list: person('Doc', 2), person('Sleepy', 5), person('Snow White', 2)]
  ) is false
end

check "notp-1-3-5-6_4":
  is-valid(
    [list: person('Doc', 2), person('Happy', 4), person('Happy', 1), person('Doc', 3), person('Doc', 1)],
    [list: person('Happy', 4), person('Happy', 1), person('Doc', 3)]
  ) is false
end

check "notp-1-3-5-6_5":
  is-valid(
    [list: person('Grumpy', 1), person('Doc', 4), person('Snow White', 0), person('Snow White', 1), person('Doc', 1)],
    [list: person('Doc', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_6":
  is-valid(
    [list: person('Grumpy', 1), person('Snow White', 0), person('Doc', 3), person('Snow White', 1), person('Doc', 0)],
    [list: person('Doc', 3), person('Doc', 0)]
  ) is false
end

check "notp-1-3-5-6_7":
  is-valid(
    [list: person('Bashful', 2), person('Grumpy', 0), person('Doc', 2), person('Doc', 5), person('Doc', 3)],
    [list: person('Doc', 5), person('Doc', 2)]
  ) is false
end

check "notp-1-3-5-6_8":
  is-valid(
    [list: person('Bashful', 3), person('Snow White', 0), person('Happy', 1), person('Sleepy', 1), person('Snow White', 4)],
    [list: person('Bashful', 3), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-5-6_9":
  is-valid(
    [list: person('Bashful', 0), person('Doc', 3), person('Snow White', 1), person('Doc', 5)],
    [list: person('Doc', 3), person('Snow White', 1)]
  ) is false
end

check "notp-1-3-5-6_10":
  is-valid(
    [list: person('Sleepy', 1), person('Doc', 5), person('Doc', 0)],
    [list: person('Sleepy', 1), person('Doc', 0)]
  ) is false
end

check "notp-1-3-5-6_11":
  is-valid(
    [list: person('Sleepy', 2), person('Sleepy', 3), person('Doc', 3), person('Grumpy', 0), person('Sleepy', 2)],
    [list: person('Sleepy', 3), person('Doc', 3), person('Grumpy', 0)]
  ) is false
end

check "notp-1-3-5-6_12":
  is-valid(
    [list: person('Snow White', 2), person('Snow White', 3), person('Sleepy', 0), person('Snow White', 5), person('Doc', 3)],
    [list: person('Snow White', 5), person('Snow White', 3)]
  ) is false
end

check "notp-1-3-5-6_13":
  is-valid(
    [list: person('Doc', 1), person('Doc', 5), person('Doc', 2)],
    [list: person('Doc', 5), person('Doc', 1)]
  ) is false
end

check "notp-1-3-5-6_14":
  is-valid(
    [list: person('Doc', 1), person('Doc', 2), person('Doc', 0)],
    [list: person('Doc', 2), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5_3":
  is-valid(
    [list: person('Bashful', 2), person('Doc', 5), person('Doc', 4), person('Doc', 2), person('Doc', 2)],
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 4), person('Doc', 2), person('Doc', 2)]
  ) is false
end

check "notp-1-3-4-5_4":
  is-valid(
    [list: person('Sleepy', 0), person('Snow White', 2), person('Doc', 4), person('Doc', 3), person('Doc', 0)],
    [list: person('Doc', 4), person('Doc', 0), person('Doc', 4), person('Doc', 3), person('Doc', 0)]
  ) is false
end

check "notp-1-3-4-5_5":
  is-valid(
    [list: person('Grumpy', 0), person('Grumpy', 1), person('Doc', 2), person('Doc', 5), person('Doc', 5)],
    [list: person('Doc', 2), person('Doc', 2), person('Grumpy', 1), person('Grumpy', 1), person('Doc', 5)]
  ) is false
end

check "notp-1-3-4-5_6":
  is-valid(
    [list: person('Sleepy', 2), person('Sleepy', 4), person('Doc', 4), person('Doc', 2), person('Doc', 2)],
    [list: person('Doc', 4), person('Doc', 4), person('Doc', 4), person('Doc', 2), person('Doc', 2)]
  ) is false
end

check "notp-1-3-4-5_7":
  is-valid(
    [list: person('Bashful', 0), person('Bashful', 4), person('Doc', 4), person('Sleepy', 4), person('Happy', 2)],
    [list: person('Bashful', 0), person('Bashful', 4), person('Sleepy', 4), person('Sleepy', 4), person('Happy', 2)]
  ) is false
end

check "notp-1-3-4-5_8":
  is-valid(
    [list: person('Sleepy', 2), person('Doc', 4), person('Doc', 1), person('Doc', 1), person('Doc', 2)],
    [list: person('Doc', 4), person('Doc', 1), person('Doc', 1), person('Doc', 1), person('Doc', 2)]
  ) is false
end

check "notp-1-3-4-5_9":
  is-valid(
    [list: person('Doc', 0), person('Snow White', 2), person('Doc', 1), person('Sleepy', 1), person('Doc', 4)],
    [list: person('Doc', 1), person('Doc', 0), person('Doc', 1), person('Sleepy', 1), person('Doc', 4)]
  ) is false
end

check "notp-1-3-4-5_10":
  is-valid(
    [list: person('Doc', 5), person('Snow White', 2), person('Sleepy', 1)],
    [list: person('Snow White', 2), person('Sleepy', 1), person('Sleepy', 1)]
  ) is false
end

check "notp-1-3-4-5_11":
  is-valid(
    [list: person('Grumpy', 3), person('Grumpy', 2), person('Doc', 3), person('Doc', 3), person('Doc', 2)],
    [list: person('Grumpy', 2), person('Doc', 3), person('Doc', 3), person('Grumpy', 2), person('Doc', 3)]
  ) is false
end

check "notp-1-3-4-5_12":
  is-valid(
    [list: person('Happy', 5), person('Sleepy', 2), person('Doc', 0), person('Doc', 4), person('Doc', 3)],
    [list: person('Doc', 3), person('Doc', 4), person('Doc', 0), person('Doc', 4), person('Doc', 3)]
  ) is false
end

check "notp-1-3-4-5_13":
  is-valid(
    [list: person('Snow White', 0), person('Happy', 1), person('Doc', 3), person('Doc', 0), person('Doc', 4)],
    [list: person('Doc', 0), person('Doc', 3), person('Doc', 3), person('Doc', 0), person('Doc', 4)]
  ) is false
end

check "notp-1-3-4-5_14":
  is-valid(
    [list: person('Snow White', 4), person('Sleepy', 1), person('Doc', 3), person('Happy', 3), person('Doc', 5)],
    [list: person('Snow White', 4), person('Sleepy', 1), person('Happy', 3), person('Happy', 3), person('Doc', 5)]
  ) is false
end

check "notp-1-3-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5-6_3":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 0), person('Doc', 4), person('Doc', 0)],
    [list: person('Doc', 1), person('Doc', 0), person('Doc', 4)]
  ) is false
end

check "notp-1-3-4-5-6_4":
  is-valid(
    [list: person('Snow White', 5), person('Happy', 2), person('Doc', 0), person('Snow White', 0), person('Doc', 0)],
    [list: person('Happy', 2), person('Doc', 0), person('Snow White', 0)]
  ) is false
end

check "notp-1-3-4-5-6_5":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 4), person('Sleepy', 0), person('Happy', 1), person('Doc', 2)],
    [list: person('Sleepy', 0), person('Snow White', 1), person('Sleepy', 0), person('Doc', 4)]
  ) is false
end

check "notp-1-3-4-5-6_6":
  is-valid(
    [list: person('Sleepy', 3), person('Grumpy', 2), person('Happy', 0), person('Snow White', 3), person('Grumpy', 2)],
    [list: person('Grumpy', 2), person('Snow White', 3), person('Happy', 0)]
  ) is false
end

check "notp-1-3-4-5-6_7":
  is-valid(
    [list: person('Doc', 0), person('Doc', 4), person('Doc', 4), person('Doc', 1), person('Doc', 1)],
    [list: person('Doc', 4), person('Doc', 4), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5-6_8":
  is-valid(
    [list: person('Doc', 4), person('Grumpy', 0), person('Doc', 2), person('Doc', 2), person('Doc', 3)],
    [list: person('Doc', 4), person('Doc', 2)]
  ) is false
end

check "notp-1-3-4-5-6_9":
  is-valid(
    [list: person('Doc', 2), person('Doc', 3), person('Grumpy', 4), person('Doc', 1), person('Doc', 2)],
    [list: person('Doc', 3), person('Doc', 2), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5-6_10":
  is-valid(
    [list: person('Snow White', 3), person('Snow White', 3), person('Doc', 1), person('Snow White', 3), person('Happy', 5)],
    [list: person('Snow White', 3), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5-6_11":
  is-valid(
    [list: person('Doc', 2), person('Snow White', 1), person('Doc', 1), person('Grumpy', 0), person('Doc', 2)],
    [list: person('Doc', 2), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5-6_12":
  is-valid(
    [list: person('Doc', 0), person('Bashful', 5), person('Doc', 1), person('Doc', 1)],
    [list: person('Bashful', 5), person('Doc', 1)]
  ) is false
end

check "notp-1-3-4-5-6_13":
  is-valid(
    [list: person('Bashful', 5), person('Doc', 2), person('Doc', 0), person('Doc', 0), person('Snow White', 5)],
    [list: person('Doc', 2), person('Doc', 0)]
  ) is false
end

check "notp-1-3-4-5-6_14":
  is-valid(
    [list: person('Doc', 5), person('Doc', 3), person('Snow White', 4), person('Doc', 5), person('Bashful', 1)],
    [list: person('Doc', 5), person('Doc', 3)]
  ) is false
end

check "notp-1-2-4-5_0":
  is-valid(
    [list: person('Snow White', 0)],
    [list: person('Snow White', 1)]
  ) is false
end

check "notp-1-2-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Doc', 0)]
  ) is false
end

check "notp-1-2-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)]
  ) is false
end

check "notp-1-2-4-5_3":
  is-valid(
    [list: person('Doc', 3), person('Grumpy', 3), person('Bashful', 2), person('Doc', 3), person('Snow White', 2)],
    [list: person('Bashful', 0), person('Doc', 1), person('Snow White', 2), person('Bashful', 4), person('Snow White', 5)]
  ) is false
end

check "notp-1-2-4-5_4":
  is-valid(
    [list: person('Happy', 3), person('Bashful', 1), person('Grumpy', 0)],
    [list: person('Grumpy', 0), person('Grumpy', 0), person('Snow White', 3)]
  ) is false
end

check "notp-1-2-4-5_5":
  is-valid(
    [list: person('Snow White', 1), person('Grumpy', 5), person('Happy', 5), person('Grumpy', 3), person('Grumpy', 3)],
    [list: person('Bashful', 1), person('Snow White', 1), person('Grumpy', 5), person('Doc', 5), person('Sleepy', 5)]
  ) is false
end

check "notp-1-2-4-5_6":
  is-valid(
    [list: person('Grumpy', 5), person('Bashful', 0), person('Happy', 4)],
    [list: person('Snow White', 3), person('Grumpy', 3), person('Sleepy', 4)]
  ) is false
end

check "notp-1-2-4-5_7":
  is-valid(
    [list: person('Sleepy', 2), person('Bashful', 0), person('Doc', 0)],
    [list: person('Doc', 0), person('Doc', 4), person('Bashful', 4)]
  ) is false
end

check "notp-1-2-4-5_8":
  is-valid(
    [list: person('Bashful', 2), person('Snow White', 3), person('Grumpy', 2), person('Bashful', 3)],
    [list: person('Snow White', 3), person('Grumpy', 5), person('Grumpy', 5), person('Doc', 5)]
  ) is false
end

check "notp-1-2-4-5_9":
  is-valid(
    [list: person('Grumpy', 4), person('Happy', 2), person('Doc', 5)],
    [list: person('Doc', 2), person('Doc', 3), person('Doc', 5)]
  ) is false
end

check "notp-1-2-4-5_10":
  is-valid(
    [list: person('Bashful', 4), person('Doc', 2), person('Happy', 2)],
    [list: person('Snow White', 1), person('Doc', 1), person('Doc', 5)]
  ) is false
end

check "notp-1-2-4-5_11":
  is-valid(
    [list: person('Sleepy', 2), person('Sleepy', 5), person('Doc', 0)],
    [list: person('Doc', 2), person('Bashful', 5), person('Grumpy', 5)]
  ) is false
end

check "notp-1-2-4-5_12":
  is-valid(
    [list: person('Snow White', 2), person('Doc', 4), person('Happy', 1), person('Bashful', 0), person('Bashful', 3)],
    [list: person('Bashful', 0), person('Grumpy', 2), person('Snow White', 3), person('Doc', 3), person('Sleepy', 4)]
  ) is false
end

check "notp-1-2-4-5_13":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 0), person('Doc', 1), person('Doc', 3), person('Doc', 3)],
    [list: person('Doc', 0), person('Doc', 1), person('Snow White', 4), person('Doc', 5), person('Happy', 5)]
  ) is false
end

check "notp-1-2-4-5_14":
  is-valid(
    [list: person('Doc', 2), person('Sleepy', 3), person('Bashful', 1), person('Doc', 0), person('Snow White', 2)],
    [list: person('Sleepy', 1), person('Doc', 2), person('Doc', 2), person('Grumpy', 4), person('Happy', 4)]
  ) is false
end

check "notp-1-2-4-5-6_0":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 1)]
  ) is false
end

check "notp-1-2-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-1-2-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 1), person('Snow White', 1)]
  ) is false
end

check "notp-1-2-4-5-6_3":
  is-valid(
    [list: person('Doc', 5), person('Doc', 5), person('Doc', 5), person('Bashful', 1)],
    [list: person('Snow White', 1), person('Doc', 1), person('Bashful', 1), person('Doc', 1), person('Happy', 1)]
  ) is false
end

check "notp-1-2-4-5-6_4":
  is-valid(
    [list: person('Happy', 1), person('Doc', 1), person('Sleepy', 3), person('Sleepy', 4), person('Grumpy', 2)],
    [list: person('Happy', 0), person('Happy', 0)]
  ) is false
end

check "notp-1-2-4-5-6_5":
  is-valid(
    [list: person('Sleepy', 5), person('Doc', 3), person('Happy', 1), person('Grumpy', 1), person('Grumpy', 1)],
    [list: person('Snow White', 1), person('Bashful', 1), person('Snow White', 1), person('Happy', 1)]
  ) is false
end

check "notp-1-2-4-5-6_6":
  is-valid(
    [list: person('Happy', 0), person('Grumpy', 5), person('Snow White', 0), person('Grumpy', 2)],
    [list: person('Sleepy', 0), person('Doc', 3), person('Snow White', 3), person('Grumpy', 3), person('Happy', 3)]
  ) is false
end

check "notp-1-2-4-5-6_7":
  is-valid(
    [list: person('Snow White', 2), person('Bashful', 5), person('Grumpy', 3), person('Happy', 0), person('Snow White', 2)],
    [list: person('Sleepy', 0), person('Grumpy', 5), person('Grumpy', 5)]
  ) is false
end

check "notp-1-2-4-5-6_8":
  is-valid(
    [list: person('Doc', 3), person('Happy', 1), person('Happy', 5), person('Doc', 2), person('Happy', 4)],
    [list: person('Sleepy', 4), person('Bashful', 5)]
  ) is false
end

check "notp-1-2-4-5-6_9":
  is-valid(
    [list: person('Sleepy', 5), person('Happy', 4), person('Doc', 2), person('Happy', 4), person('Snow White', 3)],
    [list: person('Sleepy', 0), person('Doc', 0)]
  ) is false
end

check "notp-1-2-4-5-6_10":
  is-valid(
    [list: person('Sleepy', 2), person('Bashful', 1), person('Sleepy', 3)],
    [list: person('Grumpy', 5), person('Doc', 5)]
  ) is false
end

check "notp-1-2-4-5-6_11":
  is-valid(
    [list: person('Snow White', 4), person('Bashful', 1), person('Snow White', 1), person('Doc', 1)],
    [list: person('Sleepy', 0), person('Bashful', 1)]
  ) is false
end

check "notp-1-2-4-5-6_12":
  is-valid(
    [list: person('Doc', 3), person('Doc', 4), person('Doc', 2), person('Doc', 4), person('Doc', 5)],
    [list: person('Doc', 1), person('Doc', 4)]
  ) is false
end

check "notp-1-2-4-5-6_13":
  is-valid(
    [list: person('Doc', 1), person('Sleepy', 0), person('Doc', 1), person('Doc', 4)],
    [list: person('Happy', 5), person('Bashful', 5)]
  ) is false
end

check "notp-1-2-4-5-6_14":
  is-valid(
    [list: person('Happy', 3), person('Sleepy', 1), person('Doc', 3), person('Grumpy', 5), person('Bashful', 0)],
    [list: person('Doc', 1), person('Grumpy', 2)]
  ) is false
end

check "notp-1-2-3-4-5_0":
  is-valid(
    [list: person('Snow White', 0), person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0), person('Snow White', 1)],
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 2), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5_3":
  is-valid(
    [list: person('Grumpy', 5), person('Doc', 4), person('Snow White', 1), person('Doc', 3), person('Grumpy', 1)],
    [list: person('Bashful', 5), person('Happy', 3), person('Snow White', 0), person('Snow White', 3), person('Snow White', 5)]
  ) is false
end

check "notp-1-2-3-4-5_4":
  is-valid(
    [list: person('Sleepy', 3), person('Snow White', 0), person('Happy', 4), person('Snow White', 2), person('Doc', 5)],
    [list: person('Happy', 0), person('Grumpy', 4), person('Grumpy', 2), person('Grumpy', 4), person('Sleepy', 4)]
  ) is false
end

check "notp-1-2-3-4-5_5":
  is-valid(
    [list: person('Happy', 2), person('Happy', 5), person('Bashful', 3), person('Doc', 2), person('Happy', 2)],
    [list: person('Doc', 1), person('Snow White', 5), person('Grumpy', 5), person('Happy', 0), person('Happy', 0)]
  ) is false
end

check "notp-1-2-3-4-5_6":
  is-valid(
    [list: person('Bashful', 3), person('Snow White', 5), person('Bashful', 0), person('Bashful', 3), person('Snow White', 5)],
    [list: person('Bashful', 0), person('Grumpy', 5), person('Sleepy', 0), person('Happy', 1), person('Happy', 4)]
  ) is false
end

check "notp-1-2-3-4-5_7":
  is-valid(
    [list: person('Grumpy', 0), person('Bashful', 3), person('Doc', 1), person('Doc', 2), person('Doc', 5)],
    [list: person('Doc', 1), person('Snow White', 4), person('Happy', 0), person('Sleepy', 3), person('Bashful', 1)]
  ) is false
end

check "notp-1-2-3-4-5_8":
  is-valid(
    [list: person('Grumpy', 3), person('Bashful', 1), person('Sleepy', 3), person('Grumpy', 3), person('Happy', 1)],
    [list: person('Grumpy', 4), person('Doc', 0), person('Doc', 3), person('Doc', 2), person('Bashful', 0)]
  ) is false
end

check "notp-1-2-3-4-5_9":
  is-valid(
    [list: person('Sleepy', 1), person('Doc', 0), person('Sleepy', 3), person('Doc', 4), person('Sleepy', 3)],
    [list: person('Sleepy', 3), person('Grumpy', 2), person('Bashful', 4), person('Sleepy', 2), person('Bashful', 1)]
  ) is false
end

check "notp-1-2-3-4-5_10":
  is-valid(
    [list: person('Bashful', 2), person('Snow White', 3), person('Grumpy', 2), person('Doc', 3), person('Grumpy', 5)],
    [list: person('Sleepy', 4), person('Bashful', 2), person('Happy', 0), person('Happy', 0), person('Doc', 4)]
  ) is false
end

check "notp-1-2-3-4-5_11":
  is-valid(
    [list: person('Sleepy', 0), person('Sleepy', 0), person('Happy', 2), person('Sleepy', 4), person('Snow White', 2)],
    [list: person('Doc', 4), person('Happy', 2), person('Snow White', 5), person('Doc', 1), person('Grumpy', 2)]
  ) is false
end

check "notp-1-2-3-4-5_12":
  is-valid(
    [list: person('Happy', 2), person('Happy', 0), person('Grumpy', 4), person('Snow White', 3), person('Grumpy', 0)],
    [list: person('Sleepy', 3), person('Sleepy', 3), person('Doc', 4), person('Happy', 2), person('Doc', 1)]
  ) is false
end

check "notp-1-2-3-4-5_13":
  is-valid(
    [list: person('Doc', 1), person('Sleepy', 4), person('Doc', 5), person('Sleepy', 5), person('Snow White', 3)],
    [list: person('Bashful', 2), person('Grumpy', 5), person('Grumpy', 1), person('Sleepy', 3), person('Happy', 0)]
  ) is false
end

check "notp-1-2-3-4-5_14":
  is-valid(
    [list: person('Bashful', 3), person('Bashful', 3), person('Happy', 5), person('Sleepy', 3), person('Grumpy', 1)],
    [list: person('Doc', 2), person('Grumpy', 0), person('Happy', 2), person('Grumpy', 5), person('Grumpy', 4)]
  ) is false
end

check "notp-1-2-3-4-5-6_0":
  is-valid(
    [list: person('Doc', 0)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_1":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 2)],
    [list: person('Snow White', 1), person('Snow White', 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_2":
  is-valid(
    [list: person('Snow White', 0), person('Snow White', 0), person('Snow White', 0)],
    [list: person('Snow White', 2), person('Snow White', 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_3":
  is-valid(
    [list: person('Grumpy', 4), person('Doc', 1), person('Grumpy', 0)],
    [list: person('Doc', 1), person('Grumpy', 5), person('Doc', 2), person('Bashful', 0), person('Snow White', 4)]
  ) is false
end

check "notp-1-2-3-4-5-6_4":
  is-valid(
    [list: person('Grumpy', 4), person('Sleepy', 0), person('Happy', 3), person('Sleepy', 0), person('Bashful', 4)],
    [list: person('Grumpy', 2), person('Happy', 4), person('Grumpy', 4), person('Snow White', 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_5":
  is-valid(
    [list: person('Snow White', 1), person('Doc', 1), person('Grumpy', 5)],
    [list: person('Bashful', 2), person('Snow White', 4), person('Bashful', 4), person('Happy', 4), person('Bashful', 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_6":
  is-valid(
    [list: person('Sleepy', 1), person('Sleepy', 0), person('Snow White', 0), person('Happy', 3), person('Grumpy', 3)],
    [list: person('Grumpy', 4), person('Sleepy', 0)]
  ) is false
end

check "notp-1-2-3-4-5-6_7":
  is-valid(
    [list: person('Snow White', 1), person('Snow White', 1), person('Doc', 5), person('Grumpy', 3), person('Grumpy', 0)],
    [list: person('Doc', 1), person('Bashful', 5), person('Snow White', 0), person('Snow White', 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_8":
  is-valid(
    [list: person('Sleepy', 2), person('Bashful', 0), person('Grumpy', 0), person('Happy', 5)],
    [list: person('Bashful', 1), person('Grumpy', 1), person('Snow White', 4), person('Bashful', 2), person('Bashful', 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_9":
  is-valid(
    [list: person('Sleepy', 3), person('Sleepy', 2), person('Snow White', 4), person('Happy', 4), person('Happy', 4)],
    [list: person('Snow White', 1), person('Bashful', 5), person('Grumpy', 2)]
  ) is false
end

check "notp-1-2-3-4-5-6_10":
  is-valid(
    [list: person('Grumpy', 5), person('Snow White', 3), person('Bashful', 1), person('Doc', 1), person('Sleepy', 1)],
    [list: person('Bashful', 3), person('Doc', 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_11":
  is-valid(
    [list: person('Bashful', 5), person('Sleepy', 3), person('Doc', 3), person('Snow White', 5)],
    [list: person('Snow White', 2), person('Happy', 0), person('Doc', 5)]
  ) is false
end

check "notp-1-2-3-4-5-6_12":
  is-valid(
    [list: person('Bashful', 4), person('Doc', 0), person('Doc', 1), person('Doc', 3), person('Doc', 4)],
    [list: person('Bashful', 4), person('Grumpy', 3)]
  ) is false
end

check "notp-1-2-3-4-5-6_13":
  is-valid(
    [list: person('Sleepy', 1), person('Snow White', 1), person('Doc', 3)],
    [list: person('Happy', 4), person('Grumpy', 1)]
  ) is false
end

check "notp-1-2-3-4-5-6_14":
  is-valid(
    [list: person('Doc', 3), person('Bashful', 2), person('Bashful', 2), person('Grumpy', 5)],
    [list: person('Doc', 5), person('Sleepy', 0)]
  ) is false
end

