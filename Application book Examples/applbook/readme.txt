File readme.txt                                    15 September, 2006
===============

This directory contains 12 subdirectories with Mosel implementations
of the examples from the book "Applications of optimization with Xpress-MP" (Dash Associates, 2002).

The organization of the examples in the subdirectories follows the
structure of the book.

Intro       Introductory examples (Chapters 1 to 5)
A_BldProc   Chapter 6:  Mining and process industries (blending problems)
B_Sched     Chapter 7:  Scheduling problems
C_ProdPlan  Chapter 8:  Production planning
D_LoadCut   Chapter 9:  Loading and cutting stock problems
E_TransGrd  Chapter 10: Ground transport
F_TransAir  Chapter 11: Air transport
G_Telecomm  Chapter 12: Telecommunication problems
H_EconFin   Chapter 13: Economics and finance problems
I_TimePers  Chapter 14: Timetabling and personnel planning
J_Service   Chapter 15: Local authorities and public services
K_Puzzle    Puzzles and pastimes

When executing the examples, the following differences may be observed
between the solutions printed in the book and the output produced by 
a Mosel run:

* Deviations in the decimals between solutions in the book and the
  results printed by Mosel (e.g. due to different rounding)
* Different, but equivalent results (e.g. due to slacks in start 
  times, symmetric costs, permutations)
  
The complete set of examples will only work with Mosel 1.1.3 or later
and Xpress-Optimizer 13.21 (CD 13D) or later.

* Model versions f4hub and f5tour2 cannot be executed with the Student 
  Edition.
