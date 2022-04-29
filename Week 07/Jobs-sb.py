from pulp import *

NJ = 7

Jobs = range(1, NJ+1)

Rel = [2, 5, 4, 0, 0, 8, 9]
Rel  = makeDict([Jobs], Rel, 0)

Dur = [5, 6, 8, 4, 2, 4, 2]
Dur = makeDict([Jobs], Dur, 0)

Due = [10, 21, 15, 10, 5, 15, 22]
Dur = makeDict([Jobs], Due, 0)

prob = LpProblem("JobSeq", LpMinimize)

rank = LpVariable.dicts("Rank", (Jobs, Jobs), 0, cat="Binary")
start = LpVariable.dicts("Start", Jobs, 0)
comp = LpVariable.dicts("Comp", Jobs, 0)
late = LpVariable.dicts("Late", Jobs, 0)

prob += (start[NJ] + lpSum(Dur[j] * rank[j][NJ] for j in Jobs), "Makespan")

for k in Jobs:
    prob += lpSum(rank[k][j] for j in Jobs) == 1

for j in Jobs:
    prob += lpSum(rank[k][j] for k in Jobs) == 1

for k in Jobs:
    prob += start[k] >= lpSum (Rel[j]*rank[j][k] for j in Jobs)

for k in range(1,NJ):
    prob += start[k+1] >= start[k] + sum(Dur[j]*rank[j][k] for j in Jobs)

prob.writeLP("Jobs-sb.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

print("Objective function is = ", value(prob.objective))

for j in Jobs:
    for k in Jobs:
        if (rank[k][k].value() == 1):
             # print("%6s%11d%11d%11d%11d%11d" % (j,Rel[j],start[k].value(),comp[k].value(),Due[j],late[k].value()))        
             print("%6s%11d%11d" % (j,Rel[j],start[k].value()))        