\* OilDelivery *\
Minimize
JobTime: 148 Prec_1_2 + 55 Prec_1_3 + 32 Prec_1_4 + 70 Prec_1_5 + 140 Prec_1_6
 + 73 Prec_1_7 + 148 Prec_2_1 + 93 Prec_2_3 + 180 Prec_2_4 + 99 Prec_2_5
 + 12 Prec_2_6 + 72 Prec_2_7 + 55 Prec_3_1 + 93 Prec_3_2 + 85 Prec_3_4
 + 20 Prec_3_5 + 83 Prec_3_6 + 28 Prec_3_7 + 32 Prec_4_1 + 180 Prec_4_2
 + 85 Prec_4_3 + 100 Prec_4_5 + 174 Prec_4_6 + 99 Prec_4_7 + 70 Prec_5_1
 + 99 Prec_5_2 + 20 Prec_5_3 + 100 Prec_5_4 + 85 Prec_5_6 + 49 Prec_5_7
 + 140 Prec_6_1 + 12 Prec_6_2 + 83 Prec_6_3 + 174 Prec_6_4 + 85 Prec_6_5
 + 73 Prec_6_7 + 73 Prec_7_1 + 72 Prec_7_2 + 28 Prec_7_3 + 99 Prec_7_4
 + 49 Prec_7_5 + 73 Prec_7_6
Subject To
_C1: Prec_2_1 + Prec_2_3 + Prec_2_4 + Prec_2_5 + Prec_2_6 + Prec_2_7 = 1
_C10: Prec_1_5 + Prec_2_5 + Prec_3_5 + Prec_4_5 + Prec_6_5 + Prec_7_5 = 1
_C11: Prec_1_6 + Prec_2_6 + Prec_3_6 + Prec_4_6 + Prec_5_6 + Prec_7_6 = 1
_C12: Prec_1_7 + Prec_2_7 + Prec_3_7 + Prec_4_7 + Prec_5_7 + Prec_6_7 = 1
_C13: Quant_2 >= 14000
_C14: Quant_2 <= 39000
_C15: Quant_3 >= 3000
_C16: Quant_3 <= 39000
_C17: Quant_4 >= 6000
_C18: Quant_4 <= 39000
_C19: Quant_5 >= 16000
_C2: Prec_3_1 + Prec_3_2 + Prec_3_4 + Prec_3_5 + Prec_3_6 + Prec_3_7 = 1
_C20: Quant_5 <= 39000
_C21: Quant_6 >= 15000
_C22: Quant_6 <= 39000
_C23: Quant_7 >= 5000
_C24: Quant_7 <= 39000
_C25: 25000 Prec_1_2 + Quant_2 <= 39000
_C26: 36000 Prec_1_3 + Quant_3 <= 39000
_C27: 33000 Prec_1_4 + Quant_4 <= 39000
_C28: 23000 Prec_1_5 + Quant_5 <= 39000
_C29: 24000 Prec_1_6 + Quant_6 <= 39000
_C3: Prec_4_1 + Prec_4_2 + Prec_4_3 + Prec_4_5 + Prec_4_6 + Prec_4_7 = 1
_C30: 34000 Prec_1_7 + Quant_7 <= 39000
_C31: - 39000 Prec_2_3 - 22000 Prec_3_2 - Quant_2 + Quant_3 >= -36000
_C32: - 39000 Prec_2_4 - 19000 Prec_4_2 - Quant_2 + Quant_4 >= -33000
_C33: - 39000 Prec_2_5 - 9000 Prec_5_2 - Quant_2 + Quant_5 >= -23000
_C34: - 39000 Prec_2_6 - 10000 Prec_6_2 - Quant_2 + Quant_6 >= -24000
_C35: - 39000 Prec_2_7 - 20000 Prec_7_2 - Quant_2 + Quant_7 >= -34000
_C36: - 22000 Prec_2_3 - 39000 Prec_3_2 + Quant_2 - Quant_3 >= -25000
_C37: - 39000 Prec_3_4 - 30000 Prec_4_3 - Quant_3 + Quant_4 >= -33000
_C38: - 39000 Prec_3_5 - 20000 Prec_5_3 - Quant_3 + Quant_5 >= -23000
_C39: - 39000 Prec_3_6 - 21000 Prec_6_3 - Quant_3 + Quant_6 >= -24000
_C4: Prec_5_1 + Prec_5_2 + Prec_5_3 + Prec_5_4 + Prec_5_6 + Prec_5_7 = 1
_C40: - 39000 Prec_3_7 - 31000 Prec_7_3 - Quant_3 + Quant_7 >= -34000
_C41: - 19000 Prec_2_4 - 39000 Prec_4_2 + Quant_2 - Quant_4 >= -25000
_C42: - 30000 Prec_3_4 - 39000 Prec_4_3 + Quant_3 - Quant_4 >= -36000
_C43: - 39000 Prec_4_5 - 17000 Prec_5_4 - Quant_4 + Quant_5 >= -23000
_C44: - 39000 Prec_4_6 - 18000 Prec_6_4 - Quant_4 + Quant_6 >= -24000
_C45: - 39000 Prec_4_7 - 28000 Prec_7_4 - Quant_4 + Quant_7 >= -34000
_C46: - 9000 Prec_2_5 - 39000 Prec_5_2 + Quant_2 - Quant_5 >= -25000
_C47: - 20000 Prec_3_5 - 39000 Prec_5_3 + Quant_3 - Quant_5 >= -36000
_C48: - 17000 Prec_4_5 - 39000 Prec_5_4 + Quant_4 - Quant_5 >= -33000
_C49: - 39000 Prec_5_6 - 8000 Prec_6_5 - Quant_5 + Quant_6 >= -24000
_C5: Prec_6_1 + Prec_6_2 + Prec_6_3 + Prec_6_4 + Prec_6_5 + Prec_6_7 = 1
_C50: - 39000 Prec_5_7 - 18000 Prec_7_5 - Quant_5 + Quant_7 >= -34000
_C51: - 10000 Prec_2_6 - 39000 Prec_6_2 + Quant_2 - Quant_6 >= -25000
_C52: - 21000 Prec_3_6 - 39000 Prec_6_3 + Quant_3 - Quant_6 >= -36000
_C53: - 18000 Prec_4_6 - 39000 Prec_6_4 + Quant_4 - Quant_6 >= -33000
_C54: - 8000 Prec_5_6 - 39000 Prec_6_5 + Quant_5 - Quant_6 >= -23000
_C55: - 39000 Prec_6_7 - 19000 Prec_7_6 - Quant_6 + Quant_7 >= -34000
_C56: - 20000 Prec_2_7 - 39000 Prec_7_2 + Quant_2 - Quant_7 >= -25000
_C57: - 31000 Prec_3_7 - 39000 Prec_7_3 + Quant_3 - Quant_7 >= -36000
_C58: - 28000 Prec_4_7 - 39000 Prec_7_4 + Quant_4 - Quant_7 >= -33000
_C59: - 18000 Prec_5_7 - 39000 Prec_7_5 + Quant_5 - Quant_7 >= -23000
_C6: Prec_7_1 + Prec_7_2 + Prec_7_3 + Prec_7_4 + Prec_7_5 + Prec_7_6 = 1
_C60: - 19000 Prec_6_7 - 39000 Prec_7_6 + Quant_6 - Quant_7 >= -24000
_C7: Prec_1_2 + Prec_3_2 + Prec_4_2 + Prec_5_2 + Prec_6_2 + Prec_7_2 = 1
_C8: Prec_1_3 + Prec_2_3 + Prec_4_3 + Prec_5_3 + Prec_6_3 + Prec_7_3 = 1
_C9: Prec_1_4 + Prec_2_4 + Prec_3_4 + Prec_5_4 + Prec_6_4 + Prec_7_4 = 1
Binaries
Prec_1_2
Prec_1_3
Prec_1_4
Prec_1_5
Prec_1_6
Prec_1_7
Prec_2_1
Prec_2_3
Prec_2_4
Prec_2_5
Prec_2_6
Prec_2_7
Prec_3_1
Prec_3_2
Prec_3_4
Prec_3_5
Prec_3_6
Prec_3_7
Prec_4_1
Prec_4_2
Prec_4_3
Prec_4_5
Prec_4_6
Prec_4_7
Prec_5_1
Prec_5_2
Prec_5_3
Prec_5_4
Prec_5_6
Prec_5_7
Prec_6_1
Prec_6_2
Prec_6_3
Prec_6_4
Prec_6_5
Prec_6_7
Prec_7_1
Prec_7_2
Prec_7_3
Prec_7_4
Prec_7_5
Prec_7_6
End
