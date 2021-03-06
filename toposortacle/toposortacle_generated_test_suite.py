
n = {}
instrs = {}
outstrs = {}
propnums = {}

for idx in range(0, 100):
	instrs[idx] = {}
	outstrs[idx] = {}
propnums[0] = 'allprop'
n[0] = 5
# PROPERTY: allprop (0)
instrs[0][0] = "[('8', '9'), ('7', '0'), ('9', '0'), ('8', '0')]"
outstrs[0][0] = "['7', '8', '9', '0']"

# PROPERTY: allprop (1)
instrs[0][1] = "[('8', '9'), ('8', '0'), ('9', '0'), ('7', '0')]"
outstrs[0][1] = "['7', '8', '9', '0']"

# PROPERTY: allprop (2)
instrs[0][2] = "[('8', '9'), ('8', '0'), ('7', '0'), ('9', '0')]"
outstrs[0][2] = "['7', '8', '9', '0']"

# PROPERTY: allprop (3)
instrs[0][3] = "[('8', '9'), ('9', '0'), ('7', '0'), ('8', '0')]"
outstrs[0][3] = "['7', '8', '9', '0']"

# PROPERTY: allprop (4)
instrs[0][4] = "[('9', '0'), ('8', '9'), ('7', '0'), ('8', '0')]"
outstrs[0][4] = "['7', '8', '9', '0']"

propnums[1] = 'notp-1-2'
n[1] = 5
# PROPERTY: notp-1-2 (0)
instrs[1][0] = "[('9', '2'), ('7', '2'), ('9', '7'), ('9', '6')]"
outstrs[1][0] = "['5', '7', '2', '6']"

# PROPERTY: notp-1-2 (1)
instrs[1][1] = "[('9', '2'), ('7', '2'), ('9', '8'), ('9', '7')]"
outstrs[1][1] = "['5', '7', '2', '8']"

# PROPERTY: notp-1-2 (2)
instrs[1][2] = "[('9', '2'), ('7', '8'), ('9', '8'), ('9', '7')]"
outstrs[1][2] = "['5', '7', '2', '8']"

# PROPERTY: notp-1-2 (3)
instrs[1][3] = "[('8', '2'), ('7', '8'), ('9', '8'), ('9', '7')]"
outstrs[1][3] = "['5', '7', '8', '2']"

# PROPERTY: notp-1-2 (4)
instrs[1][4] = "[('9', '2'), ('7', '8'), ('9', '8'), ('9', '7')]"
outstrs[1][4] = "['5', '7', '8', '2']"

propnums[2] = 'notp-1-2-3'
n[2] = 5
# PROPERTY: notp-1-2-3 (0)
instrs[2][0] = "[('8', '9'), ('7', '0'), ('0', '9'), ('8', '0')]"
outstrs[2][0] = "['6', '6', '0', '9']"

# PROPERTY: notp-1-2-3 (1)
instrs[2][1] = "[('8', '9'), ('1', '0'), ('0', '9'), ('8', '0')]"
outstrs[2][1] = "['6', '6', '0', '9']"

# PROPERTY: notp-1-2-3 (2)
instrs[2][2] = "[('8', '9'), ('5', '0'), ('0', '9'), ('8', '0')]"
outstrs[2][2] = "['6', '6', '0', '9']"

# PROPERTY: notp-1-2-3 (3)
instrs[2][3] = "[('8', '9'), ('5', '0'), ('0', '9'), ('8', '0')]"
outstrs[2][3] = "['1', '1', '0', '9']"

# PROPERTY: notp-1-2-3 (4)
instrs[2][4] = "[('8', '9'), ('5', '0'), ('0', '9'), ('8', '0')]"
outstrs[2][4] = "['4', '4', '0', '9']"

propnums[3] = 'notp-1-2-3-4'
n[3] = 5
# PROPERTY: notp-1-2-3-4 (0)
instrs[3][0] = "[('0', '6'), ('8', '9'), ('9', '6'), ('0', '8')]"
outstrs[3][0] = "['2', '2', '7', '6']"

# PROPERTY: notp-1-2-3-4 (1)
instrs[3][1] = "[('0', '6'), ('8', '6'), ('9', '6'), ('0', '8')]"
outstrs[3][1] = "['2', '2', '7', '6']"

# PROPERTY: notp-1-2-3-4 (2)
instrs[3][2] = "[('0', '8'), ('8', '6'), ('9', '6'), ('0', '6')]"
outstrs[3][2] = "['2', '2', '7', '6']"

# PROPERTY: notp-1-2-3-4 (3)
instrs[3][3] = "[('0', '8'), ('8', '6'), ('9', '6'), ('0', '6')]"
outstrs[3][3] = "['2', '7', '7', '6']"

# PROPERTY: notp-1-2-3-4 (4)
instrs[3][4] = "[('0', '8'), ('8', '6'), ('9', '6'), ('0', '6')]"
outstrs[3][4] = "['2', '6', '7', '6']"

propnums[4] = 'notp-1-2-3-4-5'
n[4] = 5
# PROPERTY: notp-1-2-3-4-5 (0)
instrs[4][0] = "[('9', '0'), ('9', '2'), ('7', '0'), ('0', '8')]"
outstrs[4][0] = "['3', '0', '7', '3']"

# PROPERTY: notp-1-2-3-4-5 (1)
instrs[4][1] = "[('9', '0'), ('9', '2'), ('6', '0'), ('0', '8')]"
outstrs[4][1] = "['3', '0', '7', '3']"

# PROPERTY: notp-1-2-3-4-5 (2)
instrs[4][2] = "[('9', '7'), ('9', '2'), ('6', '0'), ('0', '8')]"
outstrs[4][2] = "['3', '0', '7', '3']"

# PROPERTY: notp-1-2-3-4-5 (3)
instrs[4][3] = "[('9', '6'), ('9', '2'), ('6', '0'), ('0', '8')]"
outstrs[4][3] = "['3', '0', '7', '3']"

# PROPERTY: notp-1-2-3-4-5 (4)
instrs[4][4] = "[('9', '3'), ('9', '2'), ('6', '0'), ('0', '8')]"
outstrs[4][4] = "['3', '0', '7', '3']"

propnums[5] = 'notp-1-2-3-5'
n[5] = 5
# PROPERTY: notp-1-2-3-5 (0)
instrs[5][0] = "[('9', '1'), ('0', '9'), ('2', '9'), ('8', '9')]"
outstrs[5][0] = "['3', '3', '9', '1']"

# PROPERTY: notp-1-2-3-5 (1)
instrs[5][1] = "[('9', '1'), ('0', '9'), ('2', '9'), ('8', '1')]"
outstrs[5][1] = "['3', '3', '9', '1']"

# PROPERTY: notp-1-2-3-5 (2)
instrs[5][2] = "[('9', '1'), ('0', '1'), ('2', '9'), ('8', '9')]"
outstrs[5][2] = "['3', '3', '9', '1']"

# PROPERTY: notp-1-2-3-5 (3)
instrs[5][3] = "[('9', '1'), ('0', '1'), ('2', '9'), ('8', '1')]"
outstrs[5][3] = "['3', '3', '9', '1']"

# PROPERTY: notp-1-2-3-5 (4)
instrs[5][4] = "[('9', '1'), ('0', '1'), ('2', '9'), ('8', '1')]"
outstrs[5][4] = "['3', '9', '9', '1']"

propnums[6] = 'notp-1-2-4'
n[6] = 5
# PROPERTY: notp-1-2-4 (0)
instrs[6][0] = "[('8', '0'), ('0', '9'), ('8', '9'), ('7', '0')]"
outstrs[6][0] = "['3', '4', '5', '6']"

# PROPERTY: notp-1-2-4 (1)
instrs[6][1] = "[('8', '0'), ('0', '9'), ('8', '9'), ('7', '0')]"
outstrs[6][1] = "['3', '4', '5', '1']"

# PROPERTY: notp-1-2-4 (2)
instrs[6][2] = "[('0', '8'), ('0', '9'), ('8', '9'), ('7', '0')]"
outstrs[6][2] = "['3', '4', '5', '1']"

# PROPERTY: notp-1-2-4 (3)
instrs[6][3] = "[('0', '8'), ('0', '9'), ('8', '9'), ('7', '0')]"
outstrs[6][3] = "['3', '4', '0', '1']"

# PROPERTY: notp-1-2-4 (4)
instrs[6][4] = "[('8', '0'), ('0', '9'), ('8', '9'), ('7', '0')]"
outstrs[6][4] = "['3', '4', '0', '1']"

propnums[7] = 'notp-1-2-4-5'
n[7] = 5
# PROPERTY: notp-1-2-4-5 (0)
instrs[7][0] = "[('7', '0'), ('8', '0'), ('9', '0'), ('9', '7')]"
outstrs[7][0] = "['0', '2', '5']"

# PROPERTY: notp-1-2-4-5 (1)
instrs[7][1] = "[('7', '0'), ('8', '0'), ('9', '0'), ('9', '7')]"
outstrs[7][1] = "['0', '2', '9']"

# PROPERTY: notp-1-2-4-5 (2)
instrs[7][2] = "[('7', '0'), ('8', '1'), ('9', '0'), ('9', '7')]"
outstrs[7][2] = "['0', '2', '9']"

# PROPERTY: notp-1-2-4-5 (3)
instrs[7][3] = "[('7', '0'), ('8', '3'), ('9', '0'), ('9', '7')]"
outstrs[7][3] = "['0', '2', '9']"

# PROPERTY: notp-1-2-4-5 (4)
instrs[7][4] = "[('7', '0'), ('8', '4'), ('9', '0'), ('9', '7')]"
outstrs[7][4] = "['0', '2', '9']"

propnums[8] = 'notp-1-2-5'
n[8] = 5
# PROPERTY: notp-1-2-5 (0)
instrs[8][0] = "[('7', '0'), ('9', '0'), ('8', '0'), ('9', '5')]"
outstrs[8][0] = "['1', '5', '7', '0']"

# PROPERTY: notp-1-2-5 (1)
instrs[8][1] = "[('9', '5'), ('9', '0'), ('8', '0'), ('7', '0')]"
outstrs[8][1] = "['1', '5', '7', '0']"

# PROPERTY: notp-1-2-5 (2)
instrs[8][2] = "[('9', '5'), ('9', '0'), ('8', '0'), ('7', '0')]"
outstrs[8][2] = "['1', '5', '8', '0']"

# PROPERTY: notp-1-2-5 (3)
instrs[8][3] = "[('9', '5'), ('9', '0'), ('8', '0'), ('7', '0')]"
outstrs[8][3] = "['1', '6', '5', '0']"

# PROPERTY: notp-1-2-5 (4)
instrs[8][4] = "[('9', '5'), ('9', '0'), ('8', '0'), ('7', '0')]"
outstrs[8][4] = "['1', '8', '5', '0']"

propnums[9] = 'notp-2-3'
n[9] = 5
# PROPERTY: notp-2-3 (0)
instrs[9][0] = "[('5', '7'), ('2', '7'), ('9', '2'), ('9', '7')]"
outstrs[9][0] = "['9', '2', '9', '7']"

# PROPERTY: notp-2-3 (1)
instrs[9][1] = "[('5', '7'), ('2', '7'), ('9', '2'), ('9', '7')]"
outstrs[9][1] = "['9', '2', '2', '7']"

# PROPERTY: notp-2-3 (2)
instrs[9][2] = "[('5', '7'), ('2', '7'), ('9', '2'), ('9', '7')]"
outstrs[9][2] = "['5', '2', '5', '7']"

# PROPERTY: notp-2-3 (3)
instrs[9][3] = "[('5', '7'), ('2', '7'), ('9', '2'), ('9', '7')]"
outstrs[9][3] = "['5', '2', '2', '7']"

# PROPERTY: notp-2-3 (4)
instrs[9][4] = "[('6', '7'), ('2', '7'), ('5', '7'), ('6', '2')]"
outstrs[9][4] = "['6', '2', '7', '6']"

propnums[10] = 'notp-2-3-4'
n[10] = 5
# PROPERTY: notp-2-3-4 (0)
instrs[10][0] = "[('6', '8'), ('6', '7'), ('8', '7'), ('6', '4')]"
outstrs[10][0] = "['7', '7', '4', '8']"

# PROPERTY: notp-2-3-4 (1)
instrs[10][1] = "[('8', '7'), ('6', '7'), ('6', '8'), ('6', '4')]"
outstrs[10][1] = "['7', '7', '4', '8']"

# PROPERTY: notp-2-3-4 (2)
instrs[10][2] = "[('8', '7'), ('6', '7'), ('6', '8'), ('6', '4')]"
outstrs[10][2] = "['7', '8', '4', '8']"

# PROPERTY: notp-2-3-4 (3)
instrs[10][3] = "[('8', '7'), ('6', '7'), ('6', '8'), ('4', '7')]"
outstrs[10][3] = "['7', '8', '4', '8']"

# PROPERTY: notp-2-3-4 (4)
instrs[10][4] = "[('8', '7'), ('6', '7'), ('6', '8'), ('4', '7')]"
outstrs[10][4] = "['7', '7', '4', '8']"

propnums[11] = 'notp-2-4-5'
n[11] = 5
# PROPERTY: notp-2-4-5 (0)
instrs[11][0] = "[('0', '8'), ('7', '0'), ('8', '9'), ('0', '9')]"
outstrs[11][0] = "['0', '8', '9']"

# PROPERTY: notp-2-4-5 (1)
instrs[11][1] = "[('0', '8'), ('7', '0'), ('9', '8'), ('0', '9')]"
outstrs[11][1] = "['0', '8', '9']"

# PROPERTY: notp-2-4-5 (2)
instrs[11][2] = "[('7', '0'), ('0', '8'), ('9', '8'), ('0', '9')]"
outstrs[11][2] = "['0', '8', '9']"

# PROPERTY: notp-2-4-5 (3)
instrs[11][3] = "[('7', '0'), ('0', '8'), ('9', '8'), ('0', '9')]"
outstrs[11][3] = "['7', '8', '9']"

# PROPERTY: notp-2-4-5 (4)
instrs[11][4] = "[('0', '8'), ('7', '0'), ('9', '8'), ('0', '9')]"
outstrs[11][4] = "['7', '8', '9']"

propnums[12] = 'notp-2-5'
n[12] = 5
# PROPERTY: notp-2-5 (0)
instrs[12][0] = "[('1', '7'), ('9', '6'), ('8', '9'), ('0', '6')]"
outstrs[12][0] = "['8', '7', '9', '6']"

# PROPERTY: notp-2-5 (1)
instrs[12][1] = "[('7', '9'), ('9', '6'), ('8', '9'), ('0', '6')]"
outstrs[12][1] = "['8', '7', '9', '6']"

# PROPERTY: notp-2-5 (2)
instrs[12][2] = "[('7', '9'), ('9', '6'), ('8', '6'), ('0', '6')]"
outstrs[12][2] = "['8', '7', '9', '6']"

# PROPERTY: notp-2-5 (3)
instrs[12][3] = "[('7', '9'), ('9', '6'), ('8', '7'), ('0', '6')]"
outstrs[12][3] = "['8', '7', '9', '6']"

# PROPERTY: notp-2-5 (4)
instrs[12][4] = "[('7', '9'), ('9', '6'), ('8', '7'), ('0', '6')]"
outstrs[12][4] = "['0', '7', '9', '6']"

propnums[13] = 'notp-2-3-4-5'
n[13] = 5
# PROPERTY: notp-2-3-4-5 (0)
instrs[13][0] = "[('8', '0'), ('2', '0'), ('9', '2'), ('0', '1')]"
outstrs[13][0] = "['8', '0', '8', '1']"

# PROPERTY: notp-2-3-4-5 (1)
instrs[13][1] = "[('8', '0'), ('2', '0'), ('9', '4'), ('0', '1')]"
outstrs[13][1] = "['8', '0', '8', '1']"

# PROPERTY: notp-2-3-4-5 (2)
instrs[13][2] = "[('8', '0'), ('2', '0'), ('9', '5'), ('0', '1')]"
outstrs[13][2] = "['8', '0', '8', '1']"

# PROPERTY: notp-2-3-4-5 (3)
instrs[13][3] = "[('8', '0'), ('4', '0'), ('9', '5'), ('0', '1')]"
outstrs[13][3] = "['8', '0', '8', '1']"

# PROPERTY: notp-2-3-4-5 (4)
instrs[13][4] = "[('8', '0'), ('6', '0'), ('9', '5'), ('0', '1')]"
outstrs[13][4] = "['8', '0', '8', '1']"

propnums[14] = 'notp-2-3-5'
n[14] = 5
# PROPERTY: notp-2-3-5 (0)
instrs[14][0] = "[('6', '7'), ('0', '7'), ('0', '8'), ('9', '7')]"
outstrs[14][0] = "['9', '7', '9', '8']"

# PROPERTY: notp-2-3-5 (1)
instrs[14][1] = "[('0', '7'), ('6', '7'), ('0', '8'), ('9', '7')]"
outstrs[14][1] = "['9', '7', '9', '8']"

# PROPERTY: notp-2-3-5 (2)
instrs[14][2] = "[('0', '8'), ('0', '7'), ('6', '7'), ('9', '7')]"
outstrs[14][2] = "['9', '7', '9', '8']"

# PROPERTY: notp-2-3-5 (3)
instrs[14][3] = "[('0', '8'), ('6', '7'), ('0', '7'), ('9', '7')]"
outstrs[14][3] = "['9', '7', '9', '8']"

# PROPERTY: notp-2-3-5 (4)
instrs[14][4] = "[('0', '8'), ('6', '7'), ('0', '7'), ('9', '7')]"
outstrs[14][4] = "['9', '7', '8', '8']"

propnums[15] = 'notp-4'
n[15] = 5
# PROPERTY: notp-4 (0)
instrs[15][0] = "[('9', '7'), ('9', '0'), ('7', '8'), ('7', '0')]"
outstrs[15][0] = "['9', '8', '7', '0']"

# PROPERTY: notp-4 (1)
instrs[15][1] = "[('9', '8'), ('9', '0'), ('7', '8'), ('7', '0')]"
outstrs[15][1] = "['9', '8', '7', '0']"

# PROPERTY: notp-4 (2)
instrs[15][2] = "[('9', '8'), ('9', '0'), ('7', '9'), ('7', '0')]"
outstrs[15][2] = "['9', '8', '7', '0']"

# PROPERTY: notp-4 (3)
instrs[15][3] = "[('9', '8'), ('9', '0'), ('7', '9'), ('7', '0')]"
outstrs[15][3] = "['0', '8', '7', '9']"

# PROPERTY: notp-4 (4)
instrs[15][4] = "[('9', '8'), ('9', '0'), ('7', '9'), ('7', '0')]"
outstrs[15][4] = "['0', '8', '9', '7']"

