\* FlightLandings *\
Minimize
TotalPenalty: 10 Early_1 + 30 Early_10 + 10 Early_2 + 30 Early_3 + 30 Early_4
 + 30 Early_5 + 30 Early_6 + 30 Early_7 + 30 Early_8 + 30 Early_9 + 10 Late_1
 + 30 Late_10 + 10 Late_2 + 30 Late_3 + 30 Late_4 + 30 Late_5 + 30 Late_6
 + 30 Late_7 + 30 Late_8 + 30 Late_9
Subject To
_C1: Land_1 >= 129
_C10: Land_5 <= 555
_C100: - Land_8 + Land_9 - 473 Prec_(8,_9) <= -8
_C101: - Land_10 + Land_9 + 439 Prec_(9,_10) <= 431
_C102: - Land_1 + Land_10 - 543 Prec_(1,_10) <= -15
_C103: Land_10 - Land_2 - 477 Prec_(2,_10) <= -15
_C104: Land_10 - Land_3 - 576 Prec_(3,_10) <= -8
_C105: Land_10 - Land_4 - 569 Prec_(4,_10) <= -8
_C106: Land_10 - Land_5 - 555 Prec_(5,_10) <= -8
_C107: Land_10 - Land_6 - 545 Prec_(6,_10) <= -8
_C108: Land_10 - Land_7 - 541 Prec_(7,_10) <= -8
_C109: Land_10 - Land_8 - 539 Prec_(8,_10) <= -8
_C11: Land_6 >= 120
_C110: Land_10 - Land_9 - 530 Prec_(9,_10) <= -8
_C111: Early_1 <= 26
_C112: Late_1 <= 404
_C113: Early_1 + Land_1 - Late_1 = 155
_C114: Early_2 <= 63
_C115: Late_2 <= 486
_C116: Early_2 + Land_2 - Late_2 = 258
_C117: Early_3 <= 9
_C118: Late_3 <= 412
_C119: Early_3 + Land_3 - Late_3 = 98
_C12: Land_6 <= 576
_C120: Early_4 <= 10
_C121: Late_4 <= 415
_C122: Early_4 + Land_4 - Late_4 = 106
_C123: Early_5 <= 13
_C124: Late_5 <= 432
_C125: Early_5 + Land_5 - Late_5 = 123
_C126: Early_6 <= 15
_C127: Late_6 <= 441
_C128: Early_6 + Land_6 - Late_6 = 135
_C129: Early_7 <= 14
_C13: Land_7 >= 124
_C130: Late_7 <= 439
_C131: Early_7 + Land_7 - Late_7 = 138
_C132: Early_8 <= 14
_C133: Late_8 <= 433
_C134: Early_8 + Land_8 - Late_8 = 140
_C135: Early_9 <= 15
_C136: Late_9 <= 441
_C137: Early_9 + Land_9 - Late_9 = 150
_C138: Early_10 <= 20
_C139: Late_10 <= 477
_C14: Land_7 <= 577
_C140: Early_10 + Land_10 - Late_10 = 180
_C15: Land_8 >= 126
_C16: Land_8 <= 573
_C17: Land_9 >= 135
_C18: Land_9 <= 591
_C19: Land_10 >= 160
_C2: Land_1 <= 559
_C20: Land_10 <= 657
_C21: Land_1 - Land_2 + 367 Prec_(1,_2) <= 364
_C22: Land_1 - Land_3 + 485 Prec_(1,_3) <= 470
_C23: Land_1 - Land_4 + 478 Prec_(1,_4) <= 463
_C24: Land_1 - Land_5 + 464 Prec_(1,_5) <= 449
_C25: Land_1 - Land_6 + 454 Prec_(1,_6) <= 439
_C26: Land_1 - Land_7 + 450 Prec_(1,_7) <= 435
_C27: Land_1 - Land_8 + 448 Prec_(1,_8) <= 433
_C28: Land_1 - Land_9 + 439 Prec_(1,_9) <= 424
_C29: Land_1 - Land_10 + 414 Prec_(1,_10) <= 399
_C3: Land_2 >= 195
_C30: - Land_1 + Land_2 - 618 Prec_(1,_2) <= -3
_C31: Land_2 - Land_3 + 670 Prec_(2,_3) <= 655
_C32: Land_2 - Land_4 + 663 Prec_(2,_4) <= 648
_C33: Land_2 - Land_5 + 649 Prec_(2,_5) <= 634
_C34: Land_2 - Land_6 + 639 Prec_(2,_6) <= 624
_C35: Land_2 - Land_7 + 635 Prec_(2,_7) <= 620
_C36: Land_2 - Land_8 + 633 Prec_(2,_8) <= 618
_C37: Land_2 - Land_9 + 624 Prec_(2,_9) <= 609
_C38: - Land_10 + Land_2 + 599 Prec_(2,_10) <= 584
_C39: - Land_1 + Land_3 - 396 Prec_(1,_3) <= -15
_C4: Land_2 <= 744
_C40: - Land_2 + Land_3 - 330 Prec_(2,_3) <= -15
_C41: Land_3 - Land_4 + 422 Prec_(3,_4) <= 414
_C42: Land_3 - Land_5 + 408 Prec_(3,_5) <= 400
_C43: Land_3 - Land_6 + 398 Prec_(3,_6) <= 390
_C44: Land_3 - Land_7 + 394 Prec_(3,_7) <= 386
_C45: Land_3 - Land_8 + 392 Prec_(3,_8) <= 384
_C46: Land_3 - Land_9 + 383 Prec_(3,_9) <= 375
_C47: - Land_10 + Land_3 + 358 Prec_(3,_10) <= 350
_C48: - Land_1 + Land_4 - 407 Prec_(1,_4) <= -15
_C49: - Land_2 + Land_4 - 341 Prec_(2,_4) <= -15
_C5: Land_3 >= 89
_C50: - Land_3 + Land_4 - 440 Prec_(3,_4) <= -8
_C51: Land_4 - Land_5 + 419 Prec_(4,_5) <= 411
_C52: Land_4 - Land_6 + 409 Prec_(4,_6) <= 401
_C53: Land_4 - Land_7 + 405 Prec_(4,_7) <= 397
_C54: Land_4 - Land_8 + 403 Prec_(4,_8) <= 395
_C55: Land_4 - Land_9 + 394 Prec_(4,_9) <= 386
_C56: - Land_10 + Land_4 + 369 Prec_(4,_10) <= 361
_C57: - Land_1 + Land_5 - 441 Prec_(1,_5) <= -15
_C58: - Land_2 + Land_5 - 375 Prec_(2,_5) <= -15
_C59: - Land_3 + Land_5 - 474 Prec_(3,_5) <= -8
_C6: Land_3 <= 510
_C60: - Land_4 + Land_5 - 467 Prec_(4,_5) <= -8
_C61: Land_5 - Land_6 + 443 Prec_(5,_6) <= 435
_C62: Land_5 - Land_7 + 439 Prec_(5,_7) <= 431
_C63: Land_5 - Land_8 + 437 Prec_(5,_8) <= 429
_C64: Land_5 - Land_9 + 428 Prec_(5,_9) <= 420
_C65: - Land_10 + Land_5 + 403 Prec_(5,_10) <= 395
_C66: - Land_1 + Land_6 - 462 Prec_(1,_6) <= -15
_C67: - Land_2 + Land_6 - 396 Prec_(2,_6) <= -15
_C68: - Land_3 + Land_6 - 495 Prec_(3,_6) <= -8
_C69: - Land_4 + Land_6 - 488 Prec_(4,_6) <= -8
_C7: Land_4 >= 96
_C70: - Land_5 + Land_6 - 474 Prec_(5,_6) <= -8
_C71: Land_6 - Land_7 + 460 Prec_(6,_7) <= 452
_C72: Land_6 - Land_8 + 458 Prec_(6,_8) <= 450
_C73: Land_6 - Land_9 + 449 Prec_(6,_9) <= 441
_C74: - Land_10 + Land_6 + 424 Prec_(6,_10) <= 416
_C75: - Land_1 + Land_7 - 463 Prec_(1,_7) <= -15
_C76: - Land_2 + Land_7 - 397 Prec_(2,_7) <= -15
_C77: - Land_3 + Land_7 - 496 Prec_(3,_7) <= -8
_C78: - Land_4 + Land_7 - 489 Prec_(4,_7) <= -8
_C79: - Land_5 + Land_7 - 475 Prec_(5,_7) <= -8
_C8: Land_4 <= 521
_C80: - Land_6 + Land_7 - 465 Prec_(6,_7) <= -8
_C81: Land_7 - Land_8 + 459 Prec_(7,_8) <= 451
_C82: Land_7 - Land_9 + 450 Prec_(7,_9) <= 442
_C83: - Land_10 + Land_7 + 425 Prec_(7,_10) <= 417
_C84: - Land_1 + Land_8 - 459 Prec_(1,_8) <= -15
_C85: - Land_2 + Land_8 - 393 Prec_(2,_8) <= -15
_C86: - Land_3 + Land_8 - 492 Prec_(3,_8) <= -8
_C87: - Land_4 + Land_8 - 485 Prec_(4,_8) <= -8
_C88: - Land_5 + Land_8 - 471 Prec_(5,_8) <= -8
_C89: - Land_6 + Land_8 - 461 Prec_(6,_8) <= -8
_C9: Land_5 >= 110
_C90: - Land_7 + Land_8 - 457 Prec_(7,_8) <= -8
_C91: Land_8 - Land_9 + 446 Prec_(8,_9) <= 438
_C92: - Land_10 + Land_8 + 421 Prec_(8,_10) <= 413
_C93: - Land_1 + Land_9 - 477 Prec_(1,_9) <= -15
_C94: - Land_2 + Land_9 - 411 Prec_(2,_9) <= -15
_C95: - Land_3 + Land_9 - 510 Prec_(3,_9) <= -8
_C96: - Land_4 + Land_9 - 503 Prec_(4,_9) <= -8
_C97: - Land_5 + Land_9 - 489 Prec_(5,_9) <= -8
_C98: - Land_6 + Land_9 - 479 Prec_(6,_9) <= -8
_C99: - Land_7 + Land_9 - 475 Prec_(7,_9) <= -8
Binaries
Prec_(1,_10)
Prec_(1,_2)
Prec_(1,_3)
Prec_(1,_4)
Prec_(1,_5)
Prec_(1,_6)
Prec_(1,_7)
Prec_(1,_8)
Prec_(1,_9)
Prec_(2,_10)
Prec_(2,_3)
Prec_(2,_4)
Prec_(2,_5)
Prec_(2,_6)
Prec_(2,_7)
Prec_(2,_8)
Prec_(2,_9)
Prec_(3,_10)
Prec_(3,_4)
Prec_(3,_5)
Prec_(3,_6)
Prec_(3,_7)
Prec_(3,_8)
Prec_(3,_9)
Prec_(4,_10)
Prec_(4,_5)
Prec_(4,_6)
Prec_(4,_7)
Prec_(4,_8)
Prec_(4,_9)
Prec_(5,_10)
Prec_(5,_6)
Prec_(5,_7)
Prec_(5,_8)
Prec_(5,_9)
Prec_(6,_10)
Prec_(6,_7)
Prec_(6,_8)
Prec_(6,_9)
Prec_(7,_10)
Prec_(7,_8)
Prec_(7,_9)
Prec_(8,_10)
Prec_(8,_9)
Prec_(9,_10)
End
