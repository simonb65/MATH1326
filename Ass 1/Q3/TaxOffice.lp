\* TaxOfficeLocation *\
Minimize
OBJ: Build_1 + Build_10 + Build_11 + Build_12 + Build_2 + Build_3 + Build_4
 + Build_5 + Build_6 + Build_7 + Build_8 + Build_9
Subject To
_C1: Depends_10_1 + Depends_11_1 + Depends_12_1 + Depends_1_1 + Depends_2_1
 + Depends_3_1 + Depends_4_1 + Depends_5_1 + Depends_6_1 + Depends_7_1
 + Depends_8_1 + Depends_9_1 <= 3
_C10: Depends_10_10 + Depends_11_10 + Depends_12_10 + Depends_1_10
 + Depends_2_10 + Depends_3_10 + Depends_4_10 + Depends_5_10 + Depends_6_10
 + Depends_7_10 + Depends_8_10 + Depends_9_10 <= 3
_C100: - Build_4 + Depends_6_4 <= 0
_C101: - Build_5 + Depends_6_5 <= 0
_C102: - Build_6 + Depends_6_6 <= 0
_C103: - Build_7 + Depends_6_7 <= 0
_C104: - Build_8 + Depends_6_8 <= 0
_C105: - Build_9 + Depends_6_9 <= 0
_C106: - Build_10 + Depends_6_10 <= 0
_C107: - Build_11 + Depends_6_11 <= 0
_C108: - Build_12 + Depends_6_12 <= 0
_C109: - Build_1 + Depends_7_1 <= 0
_C11: Depends_10_11 + Depends_11_11 + Depends_12_11 + Depends_1_11
 + Depends_2_11 + Depends_3_11 + Depends_4_11 + Depends_5_11 + Depends_6_11
 + Depends_7_11 + Depends_8_11 + Depends_9_11 <= 3
_C110: - Build_2 + Depends_7_2 <= 0
_C111: - Build_3 + Depends_7_3 <= 0
_C112: - Build_4 + Depends_7_4 <= 0
_C113: - Build_5 + Depends_7_5 <= 0
_C114: - Build_6 + Depends_7_6 <= 0
_C115: - Build_7 + Depends_7_7 <= 0
_C116: - Build_8 + Depends_7_8 <= 0
_C117: - Build_9 + Depends_7_9 <= 0
_C118: - Build_10 + Depends_7_10 <= 0
_C119: - Build_11 + Depends_7_11 <= 0
_C12: Depends_10_12 + Depends_11_12 + Depends_12_12 + Depends_1_12
 + Depends_2_12 + Depends_3_12 + Depends_4_12 + Depends_5_12 + Depends_6_12
 + Depends_7_12 + Depends_8_12 + Depends_9_12 <= 3
_C120: - Build_12 + Depends_7_12 <= 0
_C121: - Build_1 + Depends_8_1 <= 0
_C122: - Build_2 + Depends_8_2 <= 0
_C123: - Build_3 + Depends_8_3 <= 0
_C124: - Build_4 + Depends_8_4 <= 0
_C125: - Build_5 + Depends_8_5 <= 0
_C126: - Build_6 + Depends_8_6 <= 0
_C127: - Build_7 + Depends_8_7 <= 0
_C128: - Build_8 + Depends_8_8 <= 0
_C129: - Build_9 + Depends_8_9 <= 0
_C13: Depends_1_1 + Depends_1_2 + Depends_1_7 = 1
_C130: - Build_10 + Depends_8_10 <= 0
_C131: - Build_11 + Depends_8_11 <= 0
_C132: - Build_12 + Depends_8_12 <= 0
_C133: - Build_1 + Depends_9_1 <= 0
_C134: - Build_2 + Depends_9_2 <= 0
_C135: - Build_3 + Depends_9_3 <= 0
_C136: - Build_4 + Depends_9_4 <= 0
_C137: - Build_5 + Depends_9_5 <= 0
_C138: - Build_6 + Depends_9_6 <= 0
_C139: - Build_7 + Depends_9_7 <= 0
_C14: Depends_1_10 + Depends_1_11 + Depends_1_12 + Depends_1_3 + Depends_1_4
 + Depends_1_5 + Depends_1_6 + Depends_1_8 + Depends_1_9 = 0
_C140: - Build_8 + Depends_9_8 <= 0
_C141: - Build_9 + Depends_9_9 <= 0
_C142: - Build_10 + Depends_9_10 <= 0
_C143: - Build_11 + Depends_9_11 <= 0
_C144: - Build_12 + Depends_9_12 <= 0
_C145: - Build_1 + Depends_10_1 <= 0
_C146: - Build_2 + Depends_10_2 <= 0
_C147: - Build_3 + Depends_10_3 <= 0
_C148: - Build_4 + Depends_10_4 <= 0
_C149: - Build_5 + Depends_10_5 <= 0
_C15: Depends_2_1 + Depends_2_2 = 1
_C150: - Build_6 + Depends_10_6 <= 0
_C151: - Build_7 + Depends_10_7 <= 0
_C152: - Build_8 + Depends_10_8 <= 0
_C153: - Build_9 + Depends_10_9 <= 0
_C154: - Build_10 + Depends_10_10 <= 0
_C155: - Build_11 + Depends_10_11 <= 0
_C156: - Build_12 + Depends_10_12 <= 0
_C157: - Build_1 + Depends_11_1 <= 0
_C158: - Build_2 + Depends_11_2 <= 0
_C159: - Build_3 + Depends_11_3 <= 0
_C16: Depends_2_10 + Depends_2_11 + Depends_2_12 + Depends_2_3 + Depends_2_4
 + Depends_2_5 + Depends_2_6 + Depends_2_7 + Depends_2_8 + Depends_2_9 = 0
_C160: - Build_4 + Depends_11_4 <= 0
_C161: - Build_5 + Depends_11_5 <= 0
_C162: - Build_6 + Depends_11_6 <= 0
_C163: - Build_7 + Depends_11_7 <= 0
_C164: - Build_8 + Depends_11_8 <= 0
_C165: - Build_9 + Depends_11_9 <= 0
_C166: - Build_10 + Depends_11_10 <= 0
_C167: - Build_11 + Depends_11_11 <= 0
_C168: - Build_12 + Depends_11_12 <= 0
_C169: - Build_1 + Depends_12_1 <= 0
_C17: Depends_3_3 + Depends_3_4 + Depends_3_5 + Depends_3_9 = 1
_C170: - Build_2 + Depends_12_2 <= 0
_C171: - Build_3 + Depends_12_3 <= 0
_C172: - Build_4 + Depends_12_4 <= 0
_C173: - Build_5 + Depends_12_5 <= 0
_C174: - Build_6 + Depends_12_6 <= 0
_C175: - Build_7 + Depends_12_7 <= 0
_C176: - Build_8 + Depends_12_8 <= 0
_C177: - Build_9 + Depends_12_9 <= 0
_C178: - Build_10 + Depends_12_10 <= 0
_C179: - Build_11 + Depends_12_11 <= 0
_C18: Depends_3_1 + Depends_3_10 + Depends_3_11 + Depends_3_12 + Depends_3_2
 + Depends_3_6 + Depends_3_7 + Depends_3_8 = 0
_C180: - Build_12 + Depends_12_12 <= 0
_C19: Depends_4_3 + Depends_4_4 + Depends_4_6 = 1
_C2: Depends_10_2 + Depends_11_2 + Depends_12_2 + Depends_1_2 + Depends_2_2
 + Depends_3_2 + Depends_4_2 + Depends_5_2 + Depends_6_2 + Depends_7_2
 + Depends_8_2 + Depends_9_2 <= 3
_C20: Depends_4_1 + Depends_4_10 + Depends_4_11 + Depends_4_12 + Depends_4_2
 + Depends_4_5 + Depends_4_7 + Depends_4_8 + Depends_4_9 = 0
_C21: Depends_5_3 + Depends_5_5 + Depends_5_8 = 1
_C22: Depends_5_1 + Depends_5_10 + Depends_5_11 + Depends_5_12 + Depends_5_2
 + Depends_5_4 + Depends_5_6 + Depends_5_7 + Depends_5_9 = 0
_C23: Depends_6_4 + Depends_6_6 + Depends_6_9 = 1
_C24: Depends_6_1 + Depends_6_10 + Depends_6_11 + Depends_6_12 + Depends_6_2
 + Depends_6_3 + Depends_6_5 + Depends_6_7 + Depends_6_8 = 0
_C25: Depends_7_1 + Depends_7_7 + Depends_7_8 = 1
_C26: Depends_7_10 + Depends_7_11 + Depends_7_12 + Depends_7_2 + Depends_7_3
 + Depends_7_4 + Depends_7_5 + Depends_7_6 + Depends_7_9 = 0
_C27: Depends_8_5 + Depends_8_7 + Depends_8_8 = 1
_C28: Depends_8_1 + Depends_8_10 + Depends_8_11 + Depends_8_12 + Depends_8_2
 + Depends_8_3 + Depends_8_4 + Depends_8_6 + Depends_8_9 = 0
_C29: Depends_9_11 + Depends_9_12 + Depends_9_3 + Depends_9_6 + Depends_9_9
 = 1
_C3: Depends_10_3 + Depends_11_3 + Depends_12_3 + Depends_1_3 + Depends_2_3
 + Depends_3_3 + Depends_4_3 + Depends_5_3 + Depends_6_3 + Depends_7_3
 + Depends_8_3 + Depends_9_3 <= 3
_C30: Depends_9_1 + Depends_9_10 + Depends_9_2 + Depends_9_4 + Depends_9_5
 + Depends_9_7 + Depends_9_8 = 0
_C31: Depends_10_10 + Depends_10_11 = 1
_C32: Depends_10_1 + Depends_10_12 + Depends_10_2 + Depends_10_3
 + Depends_10_4 + Depends_10_5 + Depends_10_6 + Depends_10_7 + Depends_10_8
 + Depends_10_9 = 0
_C33: Depends_11_10 + Depends_11_11 + Depends_11_9 = 1
_C34: Depends_11_1 + Depends_11_12 + Depends_11_2 + Depends_11_3
 + Depends_11_4 + Depends_11_5 + Depends_11_6 + Depends_11_7 + Depends_11_8
 = 0
_C35: Depends_12_12 + Depends_12_9 = 1
_C36: Depends_12_1 + Depends_12_10 + Depends_12_11 + Depends_12_2
 + Depends_12_3 + Depends_12_4 + Depends_12_5 + Depends_12_6 + Depends_12_7
 + Depends_12_8 = 0
_C37: - Build_1 + Depends_1_1 <= 0
_C38: - Build_2 + Depends_1_2 <= 0
_C39: - Build_3 + Depends_1_3 <= 0
_C4: Depends_10_4 + Depends_11_4 + Depends_12_4 + Depends_1_4 + Depends_2_4
 + Depends_3_4 + Depends_4_4 + Depends_5_4 + Depends_6_4 + Depends_7_4
 + Depends_8_4 + Depends_9_4 <= 3
_C40: - Build_4 + Depends_1_4 <= 0
_C41: - Build_5 + Depends_1_5 <= 0
_C42: - Build_6 + Depends_1_6 <= 0
_C43: - Build_7 + Depends_1_7 <= 0
_C44: - Build_8 + Depends_1_8 <= 0
_C45: - Build_9 + Depends_1_9 <= 0
_C46: - Build_10 + Depends_1_10 <= 0
_C47: - Build_11 + Depends_1_11 <= 0
_C48: - Build_12 + Depends_1_12 <= 0
_C49: - Build_1 + Depends_2_1 <= 0
_C5: Depends_10_5 + Depends_11_5 + Depends_12_5 + Depends_1_5 + Depends_2_5
 + Depends_3_5 + Depends_4_5 + Depends_5_5 + Depends_6_5 + Depends_7_5
 + Depends_8_5 + Depends_9_5 <= 3
_C50: - Build_2 + Depends_2_2 <= 0
_C51: - Build_3 + Depends_2_3 <= 0
_C52: - Build_4 + Depends_2_4 <= 0
_C53: - Build_5 + Depends_2_5 <= 0
_C54: - Build_6 + Depends_2_6 <= 0
_C55: - Build_7 + Depends_2_7 <= 0
_C56: - Build_8 + Depends_2_8 <= 0
_C57: - Build_9 + Depends_2_9 <= 0
_C58: - Build_10 + Depends_2_10 <= 0
_C59: - Build_11 + Depends_2_11 <= 0
_C6: Depends_10_6 + Depends_11_6 + Depends_12_6 + Depends_1_6 + Depends_2_6
 + Depends_3_6 + Depends_4_6 + Depends_5_6 + Depends_6_6 + Depends_7_6
 + Depends_8_6 + Depends_9_6 <= 3
_C60: - Build_12 + Depends_2_12 <= 0
_C61: - Build_1 + Depends_3_1 <= 0
_C62: - Build_2 + Depends_3_2 <= 0
_C63: - Build_3 + Depends_3_3 <= 0
_C64: - Build_4 + Depends_3_4 <= 0
_C65: - Build_5 + Depends_3_5 <= 0
_C66: - Build_6 + Depends_3_6 <= 0
_C67: - Build_7 + Depends_3_7 <= 0
_C68: - Build_8 + Depends_3_8 <= 0
_C69: - Build_9 + Depends_3_9 <= 0
_C7: Depends_10_7 + Depends_11_7 + Depends_12_7 + Depends_1_7 + Depends_2_7
 + Depends_3_7 + Depends_4_7 + Depends_5_7 + Depends_6_7 + Depends_7_7
 + Depends_8_7 + Depends_9_7 <= 3
_C70: - Build_10 + Depends_3_10 <= 0
_C71: - Build_11 + Depends_3_11 <= 0
_C72: - Build_12 + Depends_3_12 <= 0
_C73: - Build_1 + Depends_4_1 <= 0
_C74: - Build_2 + Depends_4_2 <= 0
_C75: - Build_3 + Depends_4_3 <= 0
_C76: - Build_4 + Depends_4_4 <= 0
_C77: - Build_5 + Depends_4_5 <= 0
_C78: - Build_6 + Depends_4_6 <= 0
_C79: - Build_7 + Depends_4_7 <= 0
_C8: Depends_10_8 + Depends_11_8 + Depends_12_8 + Depends_1_8 + Depends_2_8
 + Depends_3_8 + Depends_4_8 + Depends_5_8 + Depends_6_8 + Depends_7_8
 + Depends_8_8 + Depends_9_8 <= 3
_C80: - Build_8 + Depends_4_8 <= 0
_C81: - Build_9 + Depends_4_9 <= 0
_C82: - Build_10 + Depends_4_10 <= 0
_C83: - Build_11 + Depends_4_11 <= 0
_C84: - Build_12 + Depends_4_12 <= 0
_C85: - Build_1 + Depends_5_1 <= 0
_C86: - Build_2 + Depends_5_2 <= 0
_C87: - Build_3 + Depends_5_3 <= 0
_C88: - Build_4 + Depends_5_4 <= 0
_C89: - Build_5 + Depends_5_5 <= 0
_C9: Depends_10_9 + Depends_11_9 + Depends_12_9 + Depends_1_9 + Depends_2_9
 + Depends_3_9 + Depends_4_9 + Depends_5_9 + Depends_6_9 + Depends_7_9
 + Depends_8_9 + Depends_9_9 <= 3
_C90: - Build_6 + Depends_5_6 <= 0
_C91: - Build_7 + Depends_5_7 <= 0
_C92: - Build_8 + Depends_5_8 <= 0
_C93: - Build_9 + Depends_5_9 <= 0
_C94: - Build_10 + Depends_5_10 <= 0
_C95: - Build_11 + Depends_5_11 <= 0
_C96: - Build_12 + Depends_5_12 <= 0
_C97: - Build_1 + Depends_6_1 <= 0
_C98: - Build_2 + Depends_6_2 <= 0
_C99: - Build_3 + Depends_6_3 <= 0
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
Depends_10_1
Depends_10_10
Depends_10_11
Depends_10_12
Depends_10_2
Depends_10_3
Depends_10_4
Depends_10_5
Depends_10_6
Depends_10_7
Depends_10_8
Depends_10_9
Depends_11_1
Depends_11_10
Depends_11_11
Depends_11_12
Depends_11_2
Depends_11_3
Depends_11_4
Depends_11_5
Depends_11_6
Depends_11_7
Depends_11_8
Depends_11_9
Depends_12_1
Depends_12_10
Depends_12_11
Depends_12_12
Depends_12_2
Depends_12_3
Depends_12_4
Depends_12_5
Depends_12_6
Depends_12_7
Depends_12_8
Depends_12_9
Depends_1_1
Depends_1_10
Depends_1_11
Depends_1_12
Depends_1_2
Depends_1_3
Depends_1_4
Depends_1_5
Depends_1_6
Depends_1_7
Depends_1_8
Depends_1_9
Depends_2_1
Depends_2_10
Depends_2_11
Depends_2_12
Depends_2_2
Depends_2_3
Depends_2_4
Depends_2_5
Depends_2_6
Depends_2_7
Depends_2_8
Depends_2_9
Depends_3_1
Depends_3_10
Depends_3_11
Depends_3_12
Depends_3_2
Depends_3_3
Depends_3_4
Depends_3_5
Depends_3_6
Depends_3_7
Depends_3_8
Depends_3_9
Depends_4_1
Depends_4_10
Depends_4_11
Depends_4_12
Depends_4_2
Depends_4_3
Depends_4_4
Depends_4_5
Depends_4_6
Depends_4_7
Depends_4_8
Depends_4_9
Depends_5_1
Depends_5_10
Depends_5_11
Depends_5_12
Depends_5_2
Depends_5_3
Depends_5_4
Depends_5_5
Depends_5_6
Depends_5_7
Depends_5_8
Depends_5_9
Depends_6_1
Depends_6_10
Depends_6_11
Depends_6_12
Depends_6_2
Depends_6_3
Depends_6_4
Depends_6_5
Depends_6_6
Depends_6_7
Depends_6_8
Depends_6_9
Depends_7_1
Depends_7_10
Depends_7_11
Depends_7_12
Depends_7_2
Depends_7_3
Depends_7_4
Depends_7_5
Depends_7_6
Depends_7_7
Depends_7_8
Depends_7_9
Depends_8_1
Depends_8_10
Depends_8_11
Depends_8_12
Depends_8_2
Depends_8_3
Depends_8_4
Depends_8_5
Depends_8_6
Depends_8_7
Depends_8_8
Depends_8_9
Depends_9_1
Depends_9_10
Depends_9_11
Depends_9_12
Depends_9_2
Depends_9_3
Depends_9_4
Depends_9_5
Depends_9_6
Depends_9_7
Depends_9_8
Depends_9_9
End
