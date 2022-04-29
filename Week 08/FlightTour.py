# Import PuLP modeler functions
from pulp import *

NCities = 7

Cities = range(1, NCities + 1)

Dist = [
    [0, 786, 549, 657, 331, 559, 250],
    [0,   0, 668, 979, 593, 224, 905],
    [0,   0,   0, 316, 607, 472, 467],
    [0,   0,   0,   0, 890, 769, 400],
    [0,   0,   0,   0,   0, 386, 559],
    [0,   0,   0,   0,   0,   0, 681],
    [0,   0,   0,   0,   0,   0,   0],
]

for i in range(0, 7):
    for j in range(i+1, 7):
        Dist[j][i] = Dist[i][j]

Dist = makeDict((Cities, Cities), Dist, 0)

prob = LpProblem("FlightTour", LpMinimize)

fly = LpVariable.dicts("Fly", (Cities, Cities), 0, cat="Binary")

prob += lpSum(Dist[i][j] * fly[i][j] for i in Cities for j in Cities if i !=j), "TotalDist"

for i in Cities:
    prob += lpSum(fly[i][j] for j in Cities if i != j) == 1

for j in Cities:
    prob += lpSum(fly[i][j] for i in Cities if i != j) == 1

while True:
    prob.writeLP("FlightTour.lp")

    # The problem is solved using PuLP's choice of Solver
    prob.solve()

    print("Objective function is = ", value(prob.objective))

    # Check for sub loops
    tour = {}
    for i in Cities:
        for j in Cities:
            if fly[i][j].value() == 1:
                 tour[i] = j

    # Count loops from start
    cur = 1
    count = 1
    next = set()
    while True:
        n = tour[cur]
        print(cur, '->', n)
        next.add((cur, n))
        if n == 1:
            break
        cur = n
        count = count + 1

    # if less than all, add constraints
    if count < NCities:
        print('Add constraints ...')
        prob += lpSum(fly[i][n] for (i,n) in next) <= len(next) - 1
    else:
        break # Solver loop

print('----------------------------------------------------------------------------------')

total = 0
for (i,n) in next:
    print(i, n, Dist[i][n])
    total = total + Dist[i][n]
print(total)
# check if smallest l