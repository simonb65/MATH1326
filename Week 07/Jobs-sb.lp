\* JobSeq *\
Minimize
Makespan: 10 Rank_1_7 + 21 Rank_2_7 + 15 Rank_3_7 + 10 Rank_4_7 + 5 Rank_5_7
 + 15 Rank_6_7 + 22 Rank_7_7 + Start_7
Subject To
_C1: Rank_1_1 + Rank_1_2 + Rank_1_3 + Rank_1_4 + Rank_1_5 + Rank_1_6
 + Rank_1_7 = 1
_C10: Rank_1_3 + Rank_2_3 + Rank_3_3 + Rank_4_3 + Rank_5_3 + Rank_6_3
 + Rank_7_3 = 1
_C11: Rank_1_4 + Rank_2_4 + Rank_3_4 + Rank_4_4 + Rank_5_4 + Rank_6_4
 + Rank_7_4 = 1
_C12: Rank_1_5 + Rank_2_5 + Rank_3_5 + Rank_4_5 + Rank_5_5 + Rank_6_5
 + Rank_7_5 = 1
_C13: Rank_1_6 + Rank_2_6 + Rank_3_6 + Rank_4_6 + Rank_5_6 + Rank_6_6
 + Rank_7_6 = 1
_C14: Rank_1_7 + Rank_2_7 + Rank_3_7 + Rank_4_7 + Rank_5_7 + Rank_6_7
 + Rank_7_7 = 1
_C15: - 2 Rank_1_1 - 5 Rank_2_1 - 4 Rank_3_1 - 8 Rank_6_1 - 9 Rank_7_1
 + Start_1 >= 0
_C16: - 2 Rank_1_2 - 5 Rank_2_2 - 4 Rank_3_2 - 8 Rank_6_2 - 9 Rank_7_2
 + Start_2 >= 0
_C17: - 2 Rank_1_3 - 5 Rank_2_3 - 4 Rank_3_3 - 8 Rank_6_3 - 9 Rank_7_3
 + Start_3 >= 0
_C18: - 2 Rank_1_4 - 5 Rank_2_4 - 4 Rank_3_4 - 8 Rank_6_4 - 9 Rank_7_4
 + Start_4 >= 0
_C19: - 2 Rank_1_5 - 5 Rank_2_5 - 4 Rank_3_5 - 8 Rank_6_5 - 9 Rank_7_5
 + Start_5 >= 0
_C2: Rank_2_1 + Rank_2_2 + Rank_2_3 + Rank_2_4 + Rank_2_5 + Rank_2_6
 + Rank_2_7 = 1
_C20: - 2 Rank_1_6 - 5 Rank_2_6 - 4 Rank_3_6 - 8 Rank_6_6 - 9 Rank_7_6
 + Start_6 >= 0
_C21: - 2 Rank_1_7 - 5 Rank_2_7 - 4 Rank_3_7 - 8 Rank_6_7 - 9 Rank_7_7
 + Start_7 >= 0
_C22: - 10 Rank_1_1 - 21 Rank_2_1 - 15 Rank_3_1 - 10 Rank_4_1 - 5 Rank_5_1
 - 15 Rank_6_1 - 22 Rank_7_1 - Start_1 + Start_2 >= 0
_C23: - 10 Rank_1_2 - 21 Rank_2_2 - 15 Rank_3_2 - 10 Rank_4_2 - 5 Rank_5_2
 - 15 Rank_6_2 - 22 Rank_7_2 - Start_2 + Start_3 >= 0
_C24: - 10 Rank_1_3 - 21 Rank_2_3 - 15 Rank_3_3 - 10 Rank_4_3 - 5 Rank_5_3
 - 15 Rank_6_3 - 22 Rank_7_3 - Start_3 + Start_4 >= 0
_C25: - 10 Rank_1_4 - 21 Rank_2_4 - 15 Rank_3_4 - 10 Rank_4_4 - 5 Rank_5_4
 - 15 Rank_6_4 - 22 Rank_7_4 - Start_4 + Start_5 >= 0
_C26: - 10 Rank_1_5 - 21 Rank_2_5 - 15 Rank_3_5 - 10 Rank_4_5 - 5 Rank_5_5
 - 15 Rank_6_5 - 22 Rank_7_5 - Start_5 + Start_6 >= 0
_C27: - 10 Rank_1_6 - 21 Rank_2_6 - 15 Rank_3_6 - 10 Rank_4_6 - 5 Rank_5_6
 - 15 Rank_6_6 - 22 Rank_7_6 - Start_6 + Start_7 >= 0
_C3: Rank_3_1 + Rank_3_2 + Rank_3_3 + Rank_3_4 + Rank_3_5 + Rank_3_6
 + Rank_3_7 = 1
_C4: Rank_4_1 + Rank_4_2 + Rank_4_3 + Rank_4_4 + Rank_4_5 + Rank_4_6
 + Rank_4_7 = 1
_C5: Rank_5_1 + Rank_5_2 + Rank_5_3 + Rank_5_4 + Rank_5_5 + Rank_5_6
 + Rank_5_7 = 1
_C6: Rank_6_1 + Rank_6_2 + Rank_6_3 + Rank_6_4 + Rank_6_5 + Rank_6_6
 + Rank_6_7 = 1
_C7: Rank_7_1 + Rank_7_2 + Rank_7_3 + Rank_7_4 + Rank_7_5 + Rank_7_6
 + Rank_7_7 = 1
_C8: Rank_1_1 + Rank_2_1 + Rank_3_1 + Rank_4_1 + Rank_5_1 + Rank_6_1
 + Rank_7_1 = 1
_C9: Rank_1_2 + Rank_2_2 + Rank_3_2 + Rank_4_2 + Rank_5_2 + Rank_6_2
 + Rank_7_2 = 1
Binaries
Rank_1_1
Rank_1_2
Rank_1_3
Rank_1_4
Rank_1_5
Rank_1_6
Rank_1_7
Rank_2_1
Rank_2_2
Rank_2_3
Rank_2_4
Rank_2_5
Rank_2_6
Rank_2_7
Rank_3_1
Rank_3_2
Rank_3_3
Rank_3_4
Rank_3_5
Rank_3_6
Rank_3_7
Rank_4_1
Rank_4_2
Rank_4_3
Rank_4_4
Rank_4_5
Rank_4_6
Rank_4_7
Rank_5_1
Rank_5_2
Rank_5_3
Rank_5_4
Rank_5_5
Rank_5_6
Rank_5_7
Rank_6_1
Rank_6_2
Rank_6_3
Rank_6_4
Rank_6_5
Rank_6_6
Rank_6_7
Rank_7_1
Rank_7_2
Rank_7_3
Rank_7_4
Rank_7_5
Rank_7_6
Rank_7_7
End
