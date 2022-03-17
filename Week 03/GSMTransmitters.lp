\* GSMTransmitters *\
Maximize
CoveredPopulation: 2 Covered_1 + 11 Covered_10 + 6 Covered_11 + 14 Covered_12
 + 9 Covered_13 + 3 Covered_14 + 6 Covered_15 + 4 Covered_2 + 13 Covered_3
 + 6 Covered_4 + 9 Covered_5 + 4 Covered_6 + 8 Covered_7 + 12 Covered_8
 + 10 Covered_9
Subject To
Budget: 1.8 Build_1 + 1.3 Build_2 + 4 Build_3 + 3.5 Build_4 + 3.8 Build_5
 + 2.6 Build_6 + 2.1 Build_7 <= 10
Cover1: Build_1 - Covered_1 >= 0
Cover10: Build_3 + Build_6 - Covered_10 >= 0
Cover11: Build_6 - Covered_11 >= 0
Cover12: Build_5 + Build_6 + Build_7 - Covered_12 >= 0
Cover13: Build_7 - Covered_13 >= 0
Cover14: Build_7 - Covered_14 >= 0
Cover15: Build_6 + Build_7 - Covered_15 >= 0
Cover2: Build_1 + Build_2 - Covered_2 >= 0
Cover3: Build_2 - Covered_3 >= 0
Cover4: Build_1 + Build_3 - Covered_4 >= 0
Cover5: Build_2 + Build_4 - Covered_5 >= 0
Cover6: Build_4 - Covered_6 >= 0
Cover7: Build_3 + Build_6 - Covered_7 >= 0
Cover8: Build_3 + Build_4 + Build_5 - Covered_8 >= 0
Cover9: Build_4 + Build_5 - Covered_9 >= 0
Binaries
Build_1
Build_2
Build_3
Build_4
Build_5
Build_6
Build_7
Covered_1
Covered_10
Covered_11
Covered_12
Covered_13
Covered_14
Covered_15
Covered_2
Covered_3
Covered_4
Covered_5
Covered_6
Covered_7
Covered_8
Covered_9
End
