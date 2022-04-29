\* PaintProduction *\
Minimize
TotalDuration: 51 Succ_1_2 + 47 Succ_1_3 + 53 Succ_1_4 + 51 Succ_1_5
 + 40 Succ_2_1 + 48 Succ_2_3 + 50 Succ_2_4 + 50 Succ_2_5 + 58 Succ_3_1
 + 60 Succ_3_2 + 68 Succ_3_4 + 56 Succ_3_5 + 41 Succ_4_1 + 45 Succ_4_2
 + 37 Succ_4_3 + 35 Succ_4_5 + 53 Succ_5_1 + 57 Succ_5_2 + 57 Succ_5_3
 + 57 Succ_5_4
Subject To
_C1: Succ_1_2 + Succ_1_3 + Succ_1_4 + Succ_1_5 = 1
_C10: Succ_1_5 + Succ_2_5 + Succ_3_5 + Succ_4_5 = 1
_C11: - 5 Succ_1_2 - Y_1 + Y_2 >= -4
_C12: - 5 Succ_1_3 - Y_1 + Y_3 >= -4
_C13: - 5 Succ_1_4 - Y_1 + Y_4 >= -4
_C14: - 5 Succ_1_5 - Y_1 + Y_5 >= -4
_C15: - 5 Succ_2_3 - Y_2 + Y_3 >= -4
_C16: - 5 Succ_2_4 - Y_2 + Y_4 >= -4
_C17: - 5 Succ_2_5 - Y_2 + Y_5 >= -4
_C18: - 5 Succ_3_2 + Y_2 - Y_3 >= -4
_C19: - 5 Succ_3_4 - Y_3 + Y_4 >= -4
_C2: Succ_2_1 + Succ_2_3 + Succ_2_4 + Succ_2_5 = 1
_C20: - 5 Succ_3_5 - Y_3 + Y_5 >= -4
_C21: - 5 Succ_4_2 + Y_2 - Y_4 >= -4
_C22: - 5 Succ_4_3 + Y_3 - Y_4 >= -4
_C23: - 5 Succ_4_5 - Y_4 + Y_5 >= -4
_C24: - 5 Succ_5_2 + Y_2 - Y_5 >= -4
_C25: - 5 Succ_5_3 + Y_3 - Y_5 >= -4
_C26: - 5 Succ_5_4 + Y_4 - Y_5 >= -4
_C3: Succ_3_1 + Succ_3_2 + Succ_3_4 + Succ_3_5 = 1
_C4: Succ_4_1 + Succ_4_2 + Succ_4_3 + Succ_4_5 = 1
_C5: Succ_5_1 + Succ_5_2 + Succ_5_3 + Succ_5_4 = 1
_C6: Succ_2_1 + Succ_3_1 + Succ_4_1 + Succ_5_1 = 1
_C7: Succ_1_2 + Succ_3_2 + Succ_4_2 + Succ_5_2 = 1
_C8: Succ_1_3 + Succ_2_3 + Succ_4_3 + Succ_5_3 = 1
_C9: Succ_1_4 + Succ_2_4 + Succ_3_4 + Succ_5_4 = 1
Binaries
Succ_1_2
Succ_1_3
Succ_1_4
Succ_1_5
Succ_2_1
Succ_2_3
Succ_2_4
Succ_2_5
Succ_3_1
Succ_3_2
Succ_3_4
Succ_3_5
Succ_4_1
Succ_4_2
Succ_4_3
Succ_4_5
Succ_5_1
Succ_5_2
Succ_5_3
Succ_5_4
End
