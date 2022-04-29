# Import PuLP modeler functions
from pulp import *

Boxes = [b for b in range(1, 17)]
Wagon = [w for w in range(1, 4)]


boxWeights = [ 34, 6, 8, 17, 16, 5, 13, 21, 25, 31, 14, 13, 33, 9, 25, 25]
boxWeights = makeDict([Boxes], boxWeights, 0)

prob = LpProblem("Loading", LpMinimize)

load = LpVariable.dicts("load", (Boxes, Wagon), 0, cat="Binary")

maxWeight = LpVariable("MaxWeight",0,None,LpInteger)

prob += ( maxWeight )

# box must be loaded on 1 wagon
for b in Boxes:
    prob += (
        lpSum([load[b][w] for w in Wagon]) == 1, "BoxesLoaded%2d" % b,
    )

for w in Wagon:
    prob += (
        lpSum(load[b][w] * boxWeights[b] for b in Boxes) <= maxWeight, "WagonTotal%02d" % w,
    )

prob.writeLP("WagonLoadBalancing.lp")

prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Min MaxWeight is = ", value(prob.objective))

for w in Wagon:
    wagonWeight = 0
    print("Wagon", w)
    for b in Boxes:
        if load[b][w].value() == 1 :
            print("    Box", b, "weight", boxWeights[b])
            wagonWeight += boxWeights[b]
    print("  Total Weight =", wagonWeight)

print("Done")