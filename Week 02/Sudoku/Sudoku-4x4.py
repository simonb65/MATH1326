"""
4x4 Sudoku for Week2 - exercise
"""

# Import PuLP modeler functions
from pulp import *

# A list of strings from "1" to "9" is created
Sequence = ["1", "2", "3", "4"]

# The Vals, Rows and Cols sequences all follow this form
Vals = Sequence
Rows = Sequence
Cols = Sequence

Boxes =[]
for i in range(2):
    for j in range(2):
        Boxes += [[(Rows[2*i+k],Cols[2*j+l]) for k in range(2) for l in range(2)]]

# The prob variable is created to contain the problem data
prob = LpProblem("Sudoku 4x4")

# The decision variables are created
choices = LpVariable.dicts("Choice", (Vals, Rows, Cols), cat="Binary")

prob += 0, "Arbitrary Objective Function"

for r in Rows:
    for c in Cols:
        prob += lpSum([choices[v][r][c] for v in Vals]) == 1, ""

# The row, column and box constraints are added for each value
for v in Vals:
    for r in Rows:
        prob += lpSum([choices[v][r][c] for c in Cols]) == 1,""
        
    for c in Cols:
        prob += lpSum([choices[v][r][c] for r in Rows]) == 1,""

    for b in Boxes:
        prob += lpSum([choices[v][r][c] for (r,c) in b]) == 1,""

prob += choices["4"]["2"]["1"] == 1,""
prob += choices["3"]["1"]["2"] == 1,""
prob += choices["2"]["2"]["2"] == 1,""
prob += choices["4"]["3"]["4"] == 1,""
prob += choices["1"]["4"]["3"] == 1,""

prob.writeLP("Sudoku-4x4.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print ("Status:", LpStatus[prob.status])

sudokuout = open('sudokuout-4x4.txt','w')

for r in Rows:
    if r == "1" or r == "3":
        sudokuout.write("+-----+-----+\n")
    for c in Cols:
        for v in Vals:
            if value(choices[v][r][c])==1:
                              
                if c == "1" or c == "3":
                    sudokuout.write("| ")
                    
                sudokuout.write(v + " ")
                
                if c == "4":
                    sudokuout.write("|\n")
sudokuout.write("+-----+-----+")


print("Done")