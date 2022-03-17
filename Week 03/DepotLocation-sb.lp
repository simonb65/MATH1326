\* DepotLocation *\
Minimize
DeliveryandFixedCosts: 3500 Build_1 + 10000 Build_10 + 9000 Build_11
 + 3500 Build_12 + 9000 Build_2 + 10000 Build_3 + 4000 Build_4 + 3000 Build_5
 + 9000 Build_6 + 9000 Build_7 + 3000 Build_8 + 4000 Build_9
 + 160 FracFlow_10_1 + 1000000 FracFlow_10_10 + 1000000 FracFlow_10_11
 + 1000000 FracFlow_10_12 + 125 FracFlow_10_2 + 100 FracFlow_10_3
 + 100 FracFlow_10_4 + 80 FracFlow_10_5 + 150 FracFlow_10_6
 + 190 FracFlow_10_7 + 150 FracFlow_10_8 + 130 FracFlow_10_9
 + 190 FracFlow_11_1 + 1000000 FracFlow_11_10 + 1000000 FracFlow_11_11
 + 1000000 FracFlow_11_12 + 150 FracFlow_11_2 + 130 FracFlow_11_3
 + 1000000 FracFlow_11_4 + 1000000 FracFlow_11_5 + 1000000 FracFlow_11_6
 + 200 FracFlow_11_7 + 180 FracFlow_11_8 + 150 FracFlow_11_9
 + 200 FracFlow_12_1 + 50 FracFlow_12_10 + 60 FracFlow_12_11
 + 100 FracFlow_12_12 + 180 FracFlow_12_2 + 150 FracFlow_12_3
 + 1000000 FracFlow_12_4 + 1000000 FracFlow_12_5 + 1000000 FracFlow_12_6
 + 100 FracFlow_12_7 + 80 FracFlow_12_8 + 50 FracFlow_12_9 + 100 FracFlow_1_1
 + 70 FracFlow_1_10 + 65 FracFlow_1_11 + 110 FracFlow_1_12 + 80 FracFlow_1_2
 + 50 FracFlow_1_3 + 50 FracFlow_1_4 + 60 FracFlow_1_5 + 100 FracFlow_1_6
 + 120 FracFlow_1_7 + 90 FracFlow_1_8 + 60 FracFlow_1_9 + 120 FracFlow_2_1
 + 80 FracFlow_2_10 + 75 FracFlow_2_11 + 130 FracFlow_2_12 + 90 FracFlow_2_2
 + 60 FracFlow_2_3 + 70 FracFlow_2_4 + 65 FracFlow_2_5 + 110 FracFlow_2_6
 + 140 FracFlow_2_7 + 110 FracFlow_2_8 + 80 FracFlow_2_9 + 140 FracFlow_3_1
 + 100 FracFlow_3_10 + 80 FracFlow_3_11 + 150 FracFlow_3_12 + 110 FracFlow_3_2
 + 80 FracFlow_3_3 + 80 FracFlow_3_4 + 75 FracFlow_3_5 + 130 FracFlow_3_6
 + 160 FracFlow_3_7 + 125 FracFlow_3_8 + 100 FracFlow_3_9 + 160 FracFlow_4_1
 + 1000000 FracFlow_4_10 + 1000000 FracFlow_4_11 + 1000000 FracFlow_4_12
 + 125 FracFlow_4_2 + 100 FracFlow_4_3 + 100 FracFlow_4_4 + 80 FracFlow_4_5
 + 150 FracFlow_4_6 + 190 FracFlow_4_7 + 150 FracFlow_4_8 + 130 FracFlow_4_9
 + 190 FracFlow_5_1 + 1000000 FracFlow_5_10 + 1000000 FracFlow_5_11
 + 1000000 FracFlow_5_12 + 150 FracFlow_5_2 + 130 FracFlow_5_3
 + 1000000 FracFlow_5_4 + 1000000 FracFlow_5_5 + 1000000 FracFlow_5_6
 + 200 FracFlow_5_7 + 180 FracFlow_5_8 + 150 FracFlow_5_9 + 200 FracFlow_6_1
 + 50 FracFlow_6_10 + 60 FracFlow_6_11 + 100 FracFlow_6_12 + 180 FracFlow_6_2
 + 150 FracFlow_6_3 + 1000000 FracFlow_6_4 + 1000000 FracFlow_6_5
 + 1000000 FracFlow_6_6 + 100 FracFlow_6_7 + 80 FracFlow_6_8 + 50 FracFlow_6_9
 + 100 FracFlow_7_1 + 70 FracFlow_7_10 + 65 FracFlow_7_11 + 110 FracFlow_7_12
 + 80 FracFlow_7_2 + 50 FracFlow_7_3 + 50 FracFlow_7_4 + 60 FracFlow_7_5
 + 100 FracFlow_7_6 + 120 FracFlow_7_7 + 90 FracFlow_7_8 + 60 FracFlow_7_9
 + 120 FracFlow_8_1 + 80 FracFlow_8_10 + 75 FracFlow_8_11 + 130 FracFlow_8_12
 + 90 FracFlow_8_2 + 60 FracFlow_8_3 + 70 FracFlow_8_4 + 65 FracFlow_8_5
 + 110 FracFlow_8_6 + 140 FracFlow_8_7 + 110 FracFlow_8_8 + 80 FracFlow_8_9
 + 140 FracFlow_9_1 + 100 FracFlow_9_10 + 80 FracFlow_9_11 + 150 FracFlow_9_12
 + 110 FracFlow_9_2 + 80 FracFlow_9_3 + 80 FracFlow_9_4 + 75 FracFlow_9_5
 + 130 FracFlow_9_6 + 160 FracFlow_9_7 + 125 FracFlow_9_8 + 100 FracFlow_9_9
Subject To
Customer_Demand_1: FracFlow_10_1 + FracFlow_11_1 + FracFlow_12_1
 + FracFlow_1_1 + FracFlow_2_1 + FracFlow_3_1 + FracFlow_4_1 + FracFlow_5_1
 + FracFlow_6_1 + FracFlow_7_1 + FracFlow_8_1 + FracFlow_9_1 = 1
Customer_Demand_10: FracFlow_10_10 + FracFlow_11_10 + FracFlow_12_10
 + FracFlow_1_10 + FracFlow_2_10 + FracFlow_3_10 + FracFlow_4_10
 + FracFlow_5_10 + FracFlow_6_10 + FracFlow_7_10 + FracFlow_8_10
 + FracFlow_9_10 = 1
Customer_Demand_11: FracFlow_10_11 + FracFlow_11_11 + FracFlow_12_11
 + FracFlow_1_11 + FracFlow_2_11 + FracFlow_3_11 + FracFlow_4_11
 + FracFlow_5_11 + FracFlow_6_11 + FracFlow_7_11 + FracFlow_8_11
 + FracFlow_9_11 = 1
Customer_Demand_12: FracFlow_10_12 + FracFlow_11_12 + FracFlow_12_12
 + FracFlow_1_12 + FracFlow_2_12 + FracFlow_3_12 + FracFlow_4_12
 + FracFlow_5_12 + FracFlow_6_12 + FracFlow_7_12 + FracFlow_8_12
 + FracFlow_9_12 = 1
Customer_Demand_2: FracFlow_10_2 + FracFlow_11_2 + FracFlow_12_2
 + FracFlow_1_2 + FracFlow_2_2 + FracFlow_3_2 + FracFlow_4_2 + FracFlow_5_2
 + FracFlow_6_2 + FracFlow_7_2 + FracFlow_8_2 + FracFlow_9_2 = 1
Customer_Demand_3: FracFlow_10_3 + FracFlow_11_3 + FracFlow_12_3
 + FracFlow_1_3 + FracFlow_2_3 + FracFlow_3_3 + FracFlow_4_3 + FracFlow_5_3
 + FracFlow_6_3 + FracFlow_7_3 + FracFlow_8_3 + FracFlow_9_3 = 1
Customer_Demand_4: FracFlow_10_4 + FracFlow_11_4 + FracFlow_12_4
 + FracFlow_1_4 + FracFlow_2_4 + FracFlow_3_4 + FracFlow_4_4 + FracFlow_5_4
 + FracFlow_6_4 + FracFlow_7_4 + FracFlow_8_4 + FracFlow_9_4 = 1
Customer_Demand_5: FracFlow_10_5 + FracFlow_11_5 + FracFlow_12_5
 + FracFlow_1_5 + FracFlow_2_5 + FracFlow_3_5 + FracFlow_4_5 + FracFlow_5_5
 + FracFlow_6_5 + FracFlow_7_5 + FracFlow_8_5 + FracFlow_9_5 = 1
Customer_Demand_6: FracFlow_10_6 + FracFlow_11_6 + FracFlow_12_6
 + FracFlow_1_6 + FracFlow_2_6 + FracFlow_3_6 + FracFlow_4_6 + FracFlow_5_6
 + FracFlow_6_6 + FracFlow_7_6 + FracFlow_8_6 + FracFlow_9_6 = 1
Customer_Demand_7: FracFlow_10_7 + FracFlow_11_7 + FracFlow_12_7
 + FracFlow_1_7 + FracFlow_2_7 + FracFlow_3_7 + FracFlow_4_7 + FracFlow_5_7
 + FracFlow_6_7 + FracFlow_7_7 + FracFlow_8_7 + FracFlow_9_7 = 1
Customer_Demand_8: FracFlow_10_8 + FracFlow_11_8 + FracFlow_12_8
 + FracFlow_1_8 + FracFlow_2_8 + FracFlow_3_8 + FracFlow_4_8 + FracFlow_5_8
 + FracFlow_6_8 + FracFlow_7_8 + FracFlow_8_8 + FracFlow_9_8 = 1
Customer_Demand_9: FracFlow_10_9 + FracFlow_11_9 + FracFlow_12_9
 + FracFlow_1_9 + FracFlow_2_9 + FracFlow_3_9 + FracFlow_4_9 + FracFlow_5_9
 + FracFlow_6_9 + FracFlow_7_9 + FracFlow_8_9 + FracFlow_9_9 = 1
Depot_Capacity_1: - 300 Build_1 + 120 FracFlow_1_1 + 150 FracFlow_1_10
 + 95 FracFlow_1_11 + 120 FracFlow_1_12 + 80 FracFlow_1_2 + 75 FracFlow_1_3
 + 100 FracFlow_1_4 + 110 FracFlow_1_5 + 100 FracFlow_1_6 + 90 FracFlow_1_7
 + 60 FracFlow_1_8 + 30 FracFlow_1_9 <= 0
Depot_Capacity_10: - 250 Build_10 + 120 FracFlow_10_1 + 150 FracFlow_10_10
 + 95 FracFlow_10_11 + 120 FracFlow_10_12 + 80 FracFlow_10_2
 + 75 FracFlow_10_3 + 100 FracFlow_10_4 + 110 FracFlow_10_5
 + 100 FracFlow_10_6 + 90 FracFlow_10_7 + 60 FracFlow_10_8 + 30 FracFlow_10_9
 <= 0
Depot_Capacity_11: - 230 Build_11 + 120 FracFlow_11_1 + 150 FracFlow_11_10
 + 95 FracFlow_11_11 + 120 FracFlow_11_12 + 80 FracFlow_11_2
 + 75 FracFlow_11_3 + 100 FracFlow_11_4 + 110 FracFlow_11_5
 + 100 FracFlow_11_6 + 90 FracFlow_11_7 + 60 FracFlow_11_8 + 30 FracFlow_11_9
 <= 0
Depot_Capacity_12: - 180 Build_12 + 120 FracFlow_12_1 + 150 FracFlow_12_10
 + 95 FracFlow_12_11 + 120 FracFlow_12_12 + 80 FracFlow_12_2
 + 75 FracFlow_12_3 + 100 FracFlow_12_4 + 110 FracFlow_12_5
 + 100 FracFlow_12_6 + 90 FracFlow_12_7 + 60 FracFlow_12_8 + 30 FracFlow_12_9
 <= 0
Depot_Capacity_2: - 250 Build_2 + 120 FracFlow_2_1 + 150 FracFlow_2_10
 + 95 FracFlow_2_11 + 120 FracFlow_2_12 + 80 FracFlow_2_2 + 75 FracFlow_2_3
 + 100 FracFlow_2_4 + 110 FracFlow_2_5 + 100 FracFlow_2_6 + 90 FracFlow_2_7
 + 60 FracFlow_2_8 + 30 FracFlow_2_9 <= 0
Depot_Capacity_3: - 100 Build_3 + 120 FracFlow_3_1 + 150 FracFlow_3_10
 + 95 FracFlow_3_11 + 120 FracFlow_3_12 + 80 FracFlow_3_2 + 75 FracFlow_3_3
 + 100 FracFlow_3_4 + 110 FracFlow_3_5 + 100 FracFlow_3_6 + 90 FracFlow_3_7
 + 60 FracFlow_3_8 + 30 FracFlow_3_9 <= 0
Depot_Capacity_4: - 180 Build_4 + 120 FracFlow_4_1 + 150 FracFlow_4_10
 + 95 FracFlow_4_11 + 120 FracFlow_4_12 + 80 FracFlow_4_2 + 75 FracFlow_4_3
 + 100 FracFlow_4_4 + 110 FracFlow_4_5 + 100 FracFlow_4_6 + 90 FracFlow_4_7
 + 60 FracFlow_4_8 + 30 FracFlow_4_9 <= 0
Depot_Capacity_5: - 275 Build_5 + 120 FracFlow_5_1 + 150 FracFlow_5_10
 + 95 FracFlow_5_11 + 120 FracFlow_5_12 + 80 FracFlow_5_2 + 75 FracFlow_5_3
 + 100 FracFlow_5_4 + 110 FracFlow_5_5 + 100 FracFlow_5_6 + 90 FracFlow_5_7
 + 60 FracFlow_5_8 + 30 FracFlow_5_9 <= 0
Depot_Capacity_6: - 300 Build_6 + 120 FracFlow_6_1 + 150 FracFlow_6_10
 + 95 FracFlow_6_11 + 120 FracFlow_6_12 + 80 FracFlow_6_2 + 75 FracFlow_6_3
 + 100 FracFlow_6_4 + 110 FracFlow_6_5 + 100 FracFlow_6_6 + 90 FracFlow_6_7
 + 60 FracFlow_6_8 + 30 FracFlow_6_9 <= 0
Depot_Capacity_7: - 200 Build_7 + 120 FracFlow_7_1 + 150 FracFlow_7_10
 + 95 FracFlow_7_11 + 120 FracFlow_7_12 + 80 FracFlow_7_2 + 75 FracFlow_7_3
 + 100 FracFlow_7_4 + 110 FracFlow_7_5 + 100 FracFlow_7_6 + 90 FracFlow_7_7
 + 60 FracFlow_7_8 + 30 FracFlow_7_9 <= 0
Depot_Capacity_8: - 220 Build_8 + 120 FracFlow_8_1 + 150 FracFlow_8_10
 + 95 FracFlow_8_11 + 120 FracFlow_8_12 + 80 FracFlow_8_2 + 75 FracFlow_8_3
 + 100 FracFlow_8_4 + 110 FracFlow_8_5 + 100 FracFlow_8_6 + 90 FracFlow_8_7
 + 60 FracFlow_8_8 + 30 FracFlow_8_9 <= 0
Depot_Capacity_9: - 270 Build_9 + 120 FracFlow_9_1 + 150 FracFlow_9_10
 + 95 FracFlow_9_11 + 120 FracFlow_9_12 + 80 FracFlow_9_2 + 75 FracFlow_9_3
 + 100 FracFlow_9_4 + 110 FracFlow_9_5 + 100 FracFlow_9_6 + 90 FracFlow_9_7
 + 60 FracFlow_9_8 + 30 FracFlow_9_9 <= 0
_C1: FracFlow_1_1 <= 1
_C10: FracFlow_1_10 <= 1
_C100: FracFlow_9_4 <= 1
_C101: FracFlow_9_5 <= 1
_C102: FracFlow_9_6 <= 1
_C103: FracFlow_9_7 <= 1
_C104: FracFlow_9_8 <= 1
_C105: FracFlow_9_9 <= 1
_C106: FracFlow_9_10 <= 1
_C107: FracFlow_9_11 <= 1
_C108: FracFlow_9_12 <= 1
_C109: FracFlow_10_1 <= 1
_C11: FracFlow_1_11 <= 1
_C110: FracFlow_10_2 <= 1
_C111: FracFlow_10_3 <= 1
_C112: FracFlow_10_4 <= 1
_C113: FracFlow_10_5 <= 1
_C114: FracFlow_10_6 <= 1
_C115: FracFlow_10_7 <= 1
_C116: FracFlow_10_8 <= 1
_C117: FracFlow_10_9 <= 1
_C118: FracFlow_10_10 <= 1
_C119: FracFlow_10_11 <= 1
_C12: FracFlow_1_12 <= 1
_C120: FracFlow_10_12 <= 1
_C121: FracFlow_11_1 <= 1
_C122: FracFlow_11_2 <= 1
_C123: FracFlow_11_3 <= 1
_C124: FracFlow_11_4 <= 1
_C125: FracFlow_11_5 <= 1
_C126: FracFlow_11_6 <= 1
_C127: FracFlow_11_7 <= 1
_C128: FracFlow_11_8 <= 1
_C129: FracFlow_11_9 <= 1
_C13: FracFlow_2_1 <= 1
_C130: FracFlow_11_10 <= 1
_C131: FracFlow_11_11 <= 1
_C132: FracFlow_11_12 <= 1
_C133: FracFlow_12_1 <= 1
_C134: FracFlow_12_2 <= 1
_C135: FracFlow_12_3 <= 1
_C136: FracFlow_12_4 <= 1
_C137: FracFlow_12_5 <= 1
_C138: FracFlow_12_6 <= 1
_C139: FracFlow_12_7 <= 1
_C14: FracFlow_2_2 <= 1
_C140: FracFlow_12_8 <= 1
_C141: FracFlow_12_9 <= 1
_C142: FracFlow_12_10 <= 1
_C143: FracFlow_12_11 <= 1
_C144: FracFlow_12_12 <= 1
_C15: FracFlow_2_3 <= 1
_C16: FracFlow_2_4 <= 1
_C17: FracFlow_2_5 <= 1
_C18: FracFlow_2_6 <= 1
_C19: FracFlow_2_7 <= 1
_C2: FracFlow_1_2 <= 1
_C20: FracFlow_2_8 <= 1
_C21: FracFlow_2_9 <= 1
_C22: FracFlow_2_10 <= 1
_C23: FracFlow_2_11 <= 1
_C24: FracFlow_2_12 <= 1
_C25: FracFlow_3_1 <= 1
_C26: FracFlow_3_2 <= 1
_C27: FracFlow_3_3 <= 1
_C28: FracFlow_3_4 <= 1
_C29: FracFlow_3_5 <= 1
_C3: FracFlow_1_3 <= 1
_C30: FracFlow_3_6 <= 1
_C31: FracFlow_3_7 <= 1
_C32: FracFlow_3_8 <= 1
_C33: FracFlow_3_9 <= 1
_C34: FracFlow_3_10 <= 1
_C35: FracFlow_3_11 <= 1
_C36: FracFlow_3_12 <= 1
_C37: FracFlow_4_1 <= 1
_C38: FracFlow_4_2 <= 1
_C39: FracFlow_4_3 <= 1
_C4: FracFlow_1_4 <= 1
_C40: FracFlow_4_4 <= 1
_C41: FracFlow_4_5 <= 1
_C42: FracFlow_4_6 <= 1
_C43: FracFlow_4_7 <= 1
_C44: FracFlow_4_8 <= 1
_C45: FracFlow_4_9 <= 1
_C46: FracFlow_4_10 <= 1
_C47: FracFlow_4_11 <= 1
_C48: FracFlow_4_12 <= 1
_C49: FracFlow_5_1 <= 1
_C5: FracFlow_1_5 <= 1
_C50: FracFlow_5_2 <= 1
_C51: FracFlow_5_3 <= 1
_C52: FracFlow_5_4 <= 1
_C53: FracFlow_5_5 <= 1
_C54: FracFlow_5_6 <= 1
_C55: FracFlow_5_7 <= 1
_C56: FracFlow_5_8 <= 1
_C57: FracFlow_5_9 <= 1
_C58: FracFlow_5_10 <= 1
_C59: FracFlow_5_11 <= 1
_C6: FracFlow_1_6 <= 1
_C60: FracFlow_5_12 <= 1
_C61: FracFlow_6_1 <= 1
_C62: FracFlow_6_2 <= 1
_C63: FracFlow_6_3 <= 1
_C64: FracFlow_6_4 <= 1
_C65: FracFlow_6_5 <= 1
_C66: FracFlow_6_6 <= 1
_C67: FracFlow_6_7 <= 1
_C68: FracFlow_6_8 <= 1
_C69: FracFlow_6_9 <= 1
_C7: FracFlow_1_7 <= 1
_C70: FracFlow_6_10 <= 1
_C71: FracFlow_6_11 <= 1
_C72: FracFlow_6_12 <= 1
_C73: FracFlow_7_1 <= 1
_C74: FracFlow_7_2 <= 1
_C75: FracFlow_7_3 <= 1
_C76: FracFlow_7_4 <= 1
_C77: FracFlow_7_5 <= 1
_C78: FracFlow_7_6 <= 1
_C79: FracFlow_7_7 <= 1
_C8: FracFlow_1_8 <= 1
_C80: FracFlow_7_8 <= 1
_C81: FracFlow_7_9 <= 1
_C82: FracFlow_7_10 <= 1
_C83: FracFlow_7_11 <= 1
_C84: FracFlow_7_12 <= 1
_C85: FracFlow_8_1 <= 1
_C86: FracFlow_8_2 <= 1
_C87: FracFlow_8_3 <= 1
_C88: FracFlow_8_4 <= 1
_C89: FracFlow_8_5 <= 1
_C9: FracFlow_1_9 <= 1
_C90: FracFlow_8_6 <= 1
_C91: FracFlow_8_7 <= 1
_C92: FracFlow_8_8 <= 1
_C93: FracFlow_8_9 <= 1
_C94: FracFlow_8_10 <= 1
_C95: FracFlow_8_11 <= 1
_C96: FracFlow_8_12 <= 1
_C97: FracFlow_9_1 <= 1
_C98: FracFlow_9_2 <= 1
_C99: FracFlow_9_3 <= 1
Binaries
Build_1
Build_10
Build_11
Build_12
Build_2
Build_3
Build_4
Build_5
Build_6
Build_7
Build_8
Build_9
End
