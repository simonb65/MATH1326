# Import PuLP modeler functions
from pulp import *

NJ = 5

Jobs = range(1, NJ+1)

dur = [40, 35, 45, 32, 50]
clean = [[ 0, 11,  7, 13, 11],
         [ 5,  0, 13, 15, 15],
         [13, 15,  0, 23, 11],
         [ 9, 13,  5,  0,  3],
         [ 3,  7,  7,  7,  0]]


dur = makeDict([Jobs], dur, 0)
clean = makeDict([Jobs, Jobs], clean, 0)

prob = LpProblem("JobSeq", LpMinimize)

succ = LpVariable.dicts("Succ", (Jobs, Jobs), 0, cat="Binary")
y = LpVariable.dicts("y", (Jobs), 0)

prob += lpSum((dur[i] + clean[i][j]) * succ[i][j] for i in Jobs for j in Jobs if i !=j ), "JobTime"

for i in Jobs:
    prob += lpSum(succ[i][j] for j in Jobs if i != j) == 1

for j in Jobs:
    prob += lpSum(succ[i][j] for i in Jobs if i != j) == 1

for i in Jobs:
    for j in range(2, NJ+1):
        if (i != j):
            prob += y[j] >= y[i] + 1 - NJ*(1 - succ[i][j])

prob.writeLP("SB-PaintProd.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

print("Objective function is = ", value(prob.objective))



xx =  prob.process_time()
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
