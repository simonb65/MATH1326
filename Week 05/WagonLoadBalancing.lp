\* Loading *\
Minimize
OBJ: MaxWeight
Subject To
BoxesLoaded10: load_10_1 + load_10_2 + load_10_3 = 1
BoxesLoaded11: load_11_1 + load_11_2 + load_11_3 = 1
BoxesLoaded12: load_12_1 + load_12_2 + load_12_3 = 1
BoxesLoaded13: load_13_1 + load_13_2 + load_13_3 = 1
BoxesLoaded14: load_14_1 + load_14_2 + load_14_3 = 1
BoxesLoaded15: load_15_1 + load_15_2 + load_15_3 = 1
BoxesLoaded16: load_16_1 + load_16_2 + load_16_3 = 1
BoxesLoaded_1: load_1_1 + load_1_2 + load_1_3 = 1
BoxesLoaded_2: load_2_1 + load_2_2 + load_2_3 = 1
BoxesLoaded_3: load_3_1 + load_3_2 + load_3_3 = 1
BoxesLoaded_4: load_4_1 + load_4_2 + load_4_3 = 1
BoxesLoaded_5: load_5_1 + load_5_2 + load_5_3 = 1
BoxesLoaded_6: load_6_1 + load_6_2 + load_6_3 = 1
BoxesLoaded_7: load_7_1 + load_7_2 + load_7_3 = 1
BoxesLoaded_8: load_8_1 + load_8_2 + load_8_3 = 1
BoxesLoaded_9: load_9_1 + load_9_2 + load_9_3 = 1
WagonTotal01: - MaxWeight + 31 load_10_1 + 14 load_11_1 + 13 load_12_1
 + 33 load_13_1 + 9 load_14_1 + 25 load_15_1 + 25 load_16_1 + 34 load_1_1
 + 6 load_2_1 + 8 load_3_1 + 17 load_4_1 + 16 load_5_1 + 5 load_6_1
 + 13 load_7_1 + 21 load_8_1 + 25 load_9_1 <= 0
WagonTotal02: - MaxWeight + 31 load_10_2 + 14 load_11_2 + 13 load_12_2
 + 33 load_13_2 + 9 load_14_2 + 25 load_15_2 + 25 load_16_2 + 34 load_1_2
 + 6 load_2_2 + 8 load_3_2 + 17 load_4_2 + 16 load_5_2 + 5 load_6_2
 + 13 load_7_2 + 21 load_8_2 + 25 load_9_2 <= 0
WagonTotal03: - MaxWeight + 31 load_10_3 + 14 load_11_3 + 13 load_12_3
 + 33 load_13_3 + 9 load_14_3 + 25 load_15_3 + 25 load_16_3 + 34 load_1_3
 + 6 load_2_3 + 8 load_3_3 + 17 load_4_3 + 16 load_5_3 + 5 load_6_3
 + 13 load_7_3 + 21 load_8_3 + 25 load_9_3 <= 0
Bounds
 0 <= MaxWeight
Generals
MaxWeight
Binaries
load_10_1
load_10_2
load_10_3
load_11_1
load_11_2
load_11_3
load_12_1
load_12_2
load_12_3
load_13_1
load_13_2
load_13_3
load_14_1
load_14_2
load_14_3
load_15_1
load_15_2
load_15_3
load_16_1
load_16_2
load_16_3
load_1_1
load_1_2
load_1_3
load_2_1
load_2_2
load_2_3
load_3_1
load_3_2
load_3_3
load_4_1
load_4_2
load_4_3
load_5_1
load_5_2
load_5_3
load_6_1
load_6_2
load_6_3
load_7_1
load_7_2
load_7_3
load_8_1
load_8_2
load_8_3
load_9_1
load_9_2
load_9_3
End
