\* FlightTour *\
Minimize
OBJ: 786 Fly_1_2 + 549 Fly_1_3 + 657 Fly_1_4 + 331 Fly_1_5 + 559 Fly_1_6
 + 250 Fly_1_7 + 786 Fly_2_1 + 668 Fly_2_3 + 979 Fly_2_4 + 593 Fly_2_5
 + 224 Fly_2_6 + 905 Fly_2_7 + 549 Fly_3_1 + 668 Fly_3_2 + 316 Fly_3_4
 + 607 Fly_3_5 + 472 Fly_3_6 + 467 Fly_3_7 + 657 Fly_4_1 + 979 Fly_4_2
 + 316 Fly_4_3 + 890 Fly_4_5 + 769 Fly_4_6 + 400 Fly_4_7 + 331 Fly_5_1
 + 593 Fly_5_2 + 607 Fly_5_3 + 890 Fly_5_4 + 386 Fly_5_6 + 559 Fly_5_7
 + 559 Fly_6_1 + 224 Fly_6_2 + 472 Fly_6_3 + 769 Fly_6_4 + 386 Fly_6_5
 + 681 Fly_6_7 + 250 Fly_7_1 + 905 Fly_7_2 + 467 Fly_7_3 + 400 Fly_7_4
 + 559 Fly_7_5 + 681 Fly_7_6
Subject To
_C1: Fly_1_2 + Fly_1_3 + Fly_1_4 + Fly_1_5 + Fly_1_6 + Fly_1_7 = 1
_C10: Fly_1_3 + Fly_2_3 + Fly_4_3 + Fly_5_3 + Fly_6_3 + Fly_7_3 = 1
_C11: Fly_1_4 + Fly_2_4 + Fly_3_4 + Fly_5_4 + Fly_6_4 + Fly_7_4 = 1
_C12: Fly_1_5 + Fly_2_5 + Fly_3_5 + Fly_4_5 + Fly_6_5 + Fly_7_5 = 1
_C13: Fly_1_6 + Fly_2_6 + Fly_3_6 + Fly_4_6 + Fly_5_6 + Fly_7_6 = 1
_C14: Fly_1_7 + Fly_2_7 + Fly_3_7 + Fly_4_7 + Fly_5_7 + Fly_6_7 = 1
_C15: Fly_1_7 + Fly_5_1 + Fly_7_5 <= 2
_C16: Fly_1_5 + Fly_5_7 + Fly_7_1 <= 2
_C17: Fly_1_5 + Fly_5_1 <= 1
_C18: Fly_1_7 + Fly_7_1 <= 1
_C19: Fly_1_7 + Fly_3_5 + Fly_4_3 + Fly_5_1 + Fly_7_4 <= 4
_C2: Fly_2_1 + Fly_2_3 + Fly_2_4 + Fly_2_5 + Fly_2_6 + Fly_2_7 = 1
_C20: Fly_1_5 + Fly_3_4 + Fly_4_7 + Fly_5_3 + Fly_7_1 <= 4
_C3: Fly_3_1 + Fly_3_2 + Fly_3_4 + Fly_3_5 + Fly_3_6 + Fly_3_7 = 1
_C4: Fly_4_1 + Fly_4_2 + Fly_4_3 + Fly_4_5 + Fly_4_6 + Fly_4_7 = 1
_C5: Fly_5_1 + Fly_5_2 + Fly_5_3 + Fly_5_4 + Fly_5_6 + Fly_5_7 = 1
_C6: Fly_6_1 + Fly_6_2 + Fly_6_3 + Fly_6_4 + Fly_6_5 + Fly_6_7 = 1
_C7: Fly_7_1 + Fly_7_2 + Fly_7_3 + Fly_7_4 + Fly_7_5 + Fly_7_6 = 1
_C8: Fly_2_1 + Fly_3_1 + Fly_4_1 + Fly_5_1 + Fly_6_1 + Fly_7_1 = 1
_C9: Fly_1_2 + Fly_3_2 + Fly_4_2 + Fly_5_2 + Fly_6_2 + Fly_7_2 = 1
Binaries
Fly_1_2
Fly_1_3
Fly_1_4
Fly_1_5
Fly_1_6
Fly_1_7
Fly_2_1
Fly_2_3
Fly_2_4
Fly_2_5
Fly_2_6
Fly_2_7
Fly_3_1
Fly_3_2
Fly_3_4
Fly_3_5
Fly_3_6
Fly_3_7
Fly_4_1
Fly_4_2
Fly_4_3
Fly_4_5
Fly_4_6
Fly_4_7
Fly_5_1
Fly_5_2
Fly_5_3
Fly_5_4
Fly_5_6
Fly_5_7
Fly_6_1
Fly_6_2
Fly_6_3
Fly_6_4
Fly_6_5
Fly_6_7
Fly_7_1
Fly_7_2
Fly_7_3
Fly_7_4
Fly_7_5
Fly_7_6
End
