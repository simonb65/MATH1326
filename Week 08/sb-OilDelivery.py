# Import PuLP modeler functions
from pulp import *

NS = 7
CAP = 39000

Sites = range(1, NS+1)
Clients = range(2, NS+1)

# Enter the data from the textbook with little manipulation
dem = [14000, 3000, 6000, 16000, 15000, 5000]
dist = [[  0, 148, 55,  32,  70, 140, 73],
        [148,   0, 93, 180,  99,  12, 72],
        [ 55,  93,  0,  85,  20,  83, 28],
        [ 32, 180, 85,   0, 100, 174, 99],
        [ 70,  99, 20, 100,   0,  85, 49],
        [140,  12, 83, 174,  85,   0, 73],
        [ 73,  72, 28,  99,  49,  73,  0]]

# Data is made into dictionaries
dem = makeDict([Clients], dem, 0)
dist = makeDict([Sites, Sites], dist, 0)

prob = LpProblem("OilDelivery", LpMinimize)

prec = LpVariable.dicts("Prec", (Sites, Sites), 0, cat="Binary")
quant = LpVariable.dicts("Quant", Clients, 0)


prob += lpSum(dist[i][j] * prec[i][j] for i in Sites for j in Sites if i !=j), "JobTime"

for i in Clients:
    prob += lpSum(prec[i][j] for j in Sites if i != j) == 1

for j in Clients:
    prob += lpSum(prec[i][j] for i in Sites if i != j) == 1

for i in Clients:
    prob += dem[i] <= quant[i]
    prob += quant[i] <= CAP

for i in Clients:
    prob += quant[i] <= CAP + (dem[i] - CAP) * prec[1][i]

for i in Clients:
    for j in Clients:
        if i != j:
            prob += quant[j] >= quant[i] + dem[j] - CAP + (CAP * prec[i][j]) + ((CAP - dem[j] - dem[i]) * prec[j][i])

prob.writeLP("sb-OilDelivery.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

print("Objective function is = ", value(prob.objective))
