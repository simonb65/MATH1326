# Import PuLP modeler functions
from pulp import *

# Define the number of jobs
NJ = 5

# Creates a list of jobs
Jobs = range(1, NJ+1)

# Enter the data from the textbook with little manipulation
dur = [40, 35, 45, 32, 50]
clean = [[ 0, 11,  7, 13, 11],
         [ 5,  0, 13, 15, 15],
         [13, 15,  0, 23, 11],
         [ 9, 13,  5,  0,  3],
         [ 3,  7,  7,  7,  0]]

# Data is made into dictionaries
dur = makeDict([Jobs], dur, 0)
clean = makeDict([Jobs, Jobs], clean, 0)

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("PaintProduction", LpMinimize)

# A dictionary is created to contain the successor binary variables
succ = LpVariable.dicts("Succ", (Jobs,Jobs), cat="Binary")

# A dictionary is created to contain the y variables
y = LpVariable.dicts("Y", Jobs, 0)

# The objective function is added to 'prob' first
prob += (
    lpSum((dur[i]+clean[i][j])*succ[i][j] for i in Jobs for j in Jobs if i!=j),
    "TotalDuration",
)

# Add constraints - Each job has a single successor
for i in Jobs:
    prob += lpSum(succ[i][j] for j in Jobs if i!=j) == 1

# Add constraints - Each job has a single predecessor
for j in Jobs:
    prob += lpSum(succ[i][j] for i in Jobs if i!=j) == 1

# Add constraints - Subtour elimination
for i in Jobs:
    for j in range(2,NJ+1):
        if i!=j:
            prob += y[j] >= y[i] + 1  - NJ * (1 - succ[i][j])

# The problem data is written to an .lp file
prob.writeLP("PaintProduction.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total duration is = ", value(prob.objective))

# Print out the solution
i = 1
print(i)
while True:
    for j in Jobs:
        if succ[i][j].value() == 1:        
            break
    print(j)
    i = j
    if j == 1:
        break
