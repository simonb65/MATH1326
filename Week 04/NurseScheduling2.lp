\* NurseScheduling2 *\
Minimize
NursesOverTime: Overtime_0 + Overtime_1 + Overtime_10 + Overtime_11
 + Overtime_2 + Overtime_3 + Overtime_4 + Overtime_5 + Overtime_6 + Overtime_7
 + Overtime_8 + Overtime_9
Subject To
NumberAvailable: Start_0 + Start_1 + Start_10 + Start_11 + Start_2 + Start_3
 + Start_4 + Start_5 + Start_6 + Start_7 + Start_8 + Start_9 <= 80
TimePeriod0: Overtime_7 + Start_0 + Start_11 + Start_8 + Start_9 >= 15
TimePeriod1: Overtime_8 + Start_0 + Start_1 + Start_10 + Start_9 >= 15
TimePeriod10: Overtime_5 + Start_10 + Start_6 + Start_7 + Start_9 >= 30
TimePeriod11: Overtime_6 + Start_10 + Start_11 + Start_7 + Start_8 >= 20
TimePeriod2: Overtime_9 + Start_1 + Start_10 + Start_11 + Start_2 >= 15
TimePeriod3: Overtime_10 + Start_0 + Start_11 + Start_2 + Start_3 >= 35
TimePeriod4: Overtime_11 + Start_0 + Start_1 + Start_3 + Start_4 >= 40
TimePeriod5: Overtime_0 + Start_1 + Start_2 + Start_4 + Start_5 >= 40
TimePeriod6: Overtime_1 + Start_2 + Start_3 + Start_5 + Start_6 >= 40
TimePeriod7: Overtime_2 + Start_3 + Start_4 + Start_6 + Start_7 >= 30
TimePeriod8: Overtime_3 + Start_4 + Start_5 + Start_7 + Start_8 >= 31
TimePeriod9: Overtime_4 + Start_5 + Start_6 + Start_8 + Start_9 >= 35
_C1: Overtime_0 - Start_0 <= 0
_C10: Overtime_9 - Start_9 <= 0
_C11: Overtime_10 - Start_10 <= 0
_C12: Overtime_11 - Start_11 <= 0
_C2: Overtime_1 - Start_1 <= 0
_C3: Overtime_2 - Start_2 <= 0
_C4: Overtime_3 - Start_3 <= 0
_C5: Overtime_4 - Start_4 <= 0
_C6: Overtime_5 - Start_5 <= 0
_C7: Overtime_6 - Start_6 <= 0
_C8: Overtime_7 - Start_7 <= 0
_C9: Overtime_8 - Start_8 <= 0
Bounds
 0 <= Overtime_0
 0 <= Overtime_1
 0 <= Overtime_10
 0 <= Overtime_11
 0 <= Overtime_2
 0 <= Overtime_3
 0 <= Overtime_4
 0 <= Overtime_5
 0 <= Overtime_6
 0 <= Overtime_7
 0 <= Overtime_8
 0 <= Overtime_9
 0 <= Start_0
 0 <= Start_1
 0 <= Start_10
 0 <= Start_11
 0 <= Start_2
 0 <= Start_3
 0 <= Start_4
 0 <= Start_5
 0 <= Start_6
 0 <= Start_7
 0 <= Start_8
 0 <= Start_9
Generals
Overtime_0
Overtime_1
Overtime_10
Overtime_11
Overtime_2
Overtime_3
Overtime_4
Overtime_5
Overtime_6
Overtime_7
Overtime_8
Overtime_9
Start_0
Start_1
Start_10
Start_11
Start_2
Start_3
Start_4
Start_5
Start_6
Start_7
Start_8
Start_9
End
