from pulp import *

Depots = [str(d) for d in range(1, 13)]

Capacity = { '1' : 300, '2': 250, '3': 100, '4': 180, '5': 275, '6': 300, '7':200, '8':220, '9':270, '10': 250, '11': 230, '12':180 }
print(sum(Capacity.values()))

FixCosts = { '1' : 3500, '2': 9000, '3': 10000, '4': 4000, '5': 3000, '6': 9000, '7':9000, '8':3000, '9':4000, '10': 10000, '11': 9000, '12':3500 }
print(sum(FixCosts.values()))

Customers = [str(c) for c in range(1, 13)]
Demand = { '1' : 120, '2': 80, '3': 75, '4': 100, '5': 110, '6': 100, '7':90, '8':60, '9':30, '10': 150, '11': 95, '12':120 }


DeliveryCosts = [  # Customers
    # 1 2 3 4 5 6 7 8 9 10 11 12
    [100, 80, 50, 50, 60, 100, 120, 90, 60, 70, 65, 110], #1 Customers
    [120, 90, 60, 70, 65, 110, 140, 110, 80, 80, 75, 130], #2
    [140, 110, 80, 80, 75, 130, 160, 125, 100, 100, 80, 150], #3
    [160, 125, 100, 100, 80, 150, 190, 150, 130, 1000000, 1000000, 1000000], #4
    [190, 150, 130, 1000000, 1000000, 1000000, 200, 180, 150, 1000000, 1000000, 1000000], #5
    [200, 180, 150, 1000000, 1000000, 1000000, 100, 80, 50, 50, 60, 100], #6
    [100, 80, 50, 50, 60, 100, 120, 90, 60, 70, 65, 110], #7
    [120, 90, 60, 70, 65, 110, 140, 110, 80, 80, 75, 130], #8
    [140, 110, 80, 80, 75, 130, 160, 125, 100, 100, 80, 150], #9
    [160, 125, 100, 100, 80, 150, 190, 150, 130, 1000000, 1000000, 1000000], #10
    [190, 150, 130, 1000000, 1000000, 1000000, 200, 180, 150, 1000000, 1000000, 1000000], #11
    [200, 180, 150, 1000000, 1000000, 1000000, 100, 80, 50, 50, 60, 100], #12
]

DeliveryCosts = makeDict([Depots, Customers], DeliveryCosts, 0)
#print(DeliveryCosts)

prob = LpProblem("DepotLocation", LpMinimize)

fflows = LpVariable.dicts("FracFlow", (Depots, Customers), 0)

build = LpVariable.dicts("Build", Depots, cat="Binary")

prob += (
    lpSum([fflows[d][c] * DeliveryCosts[d][c] for d in Depots for c in Customers]) + lpSum([build[d] * FixCosts[d] for d in Depots]),
    "DeliveryandFixedCosts",
)

# Add Constraint - All fractional flows are smaller than or equal to 1
for d in Depots:
    for c in Customers:
        prob += fflows[d][c] <= 1

# Add constraint - Customers demands are met
for c in Customers:
    prob += (
        lpSum(fflows[d][c] for d in Depots) == 1, "Customer Demand %s" % c,
    )

for d in Depots:
    prob += (
       lpSum(Demand[c] * fflows[d][c] for c in Customers) <= Capacity[d] * build[d], "Depot Capacity %s" % d,
    )


prob.writeLP("DepotLocation-sb.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Cost is = ", value(prob.objective))
