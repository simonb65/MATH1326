\* NurseScheduling1 *\
Minimize
NursesWorking: Start_0 + Start_1 + Start_10 + Start_11 + Start_2 + Start_3
 + Start_4 + Start_5 + Start_6 + Start_7 + Start_8 + Start_9
Subject To
TimePeriod0: Start_0 + Start_11 + Start_8 + Start_9 >= 15
TimePeriod1: Start_0 + Start_1 + Start_10 + Start_9 >= 15
TimePeriod10: Start_10 + Start_6 + Start_7 + Start_9 >= 30
TimePeriod11: Start_10 + Start_11 + Start_7 + Start_8 >= 20
TimePeriod2: Start_1 + Start_10 + Start_11 + Start_2 >= 15
TimePeriod3: Start_0 + Start_11 + Start_2 + Start_3 >= 35
TimePeriod4: Start_0 + Start_1 + Start_3 + Start_4 >= 40
TimePeriod5: Start_1 + Start_2 + Start_4 + Start_5 >= 40
TimePeriod6: Start_2 + Start_3 + Start_5 + Start_6 >= 40
TimePeriod7: Start_3 + Start_4 + Start_6 + Start_7 >= 30
TimePeriod8: Start_4 + Start_5 + Start_7 + Start_8 >= 31
TimePeriod9: Start_5 + Start_6 + Start_8 + Start_9 >= 35
Bounds
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
