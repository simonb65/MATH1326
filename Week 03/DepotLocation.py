# Import PuLP modeler functions
from pulp import *

# Creates a list of all the depots
Depots = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]

# Creates a dictionary for the capacity of each depot
capacity = {"1": 300, "2": 250, "3": 100, "4": 180, "5": 275, "6": 300, "7": 200, "8": 220, "9": 270, "10": 250, "11": 230, "12": 180}

# Creates a dictionary for the fixed cost of running each depot
fixedcost = {"1": 3500, "2": 9000, "3": 10000, "4": 4000, "5": 3000, "6": 9000, "7": 9000, "8": 3000, "9": 4000, "10": 10000, "11": 9000, "12": 3500}

# Creates a list of all customers
Customers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]

# Creates a dictionary for the demand of each custoemr
demand = {"1": 120, "2": 80, "3": 75, "4": 100, "5": 110, "6": 100, "7": 90, "8": 60, "9": 30, "10": 150, "11": 95, "12": 120}

# Creates a list of delivery costs for satisfying entire demand of customers
deliverycosts = [  # Customers
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

# The cost data is made into a dictionary
deliverycosts = makeDict([Depots, Customers], deliverycosts, 0)

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("DepotLocation", LpMinimize)

# A dictionary is created to contain the fractional flow variables
fflows = LpVariable.dicts("FracFlow", (Depots, Customers), 0)

# A dictionary is created to contain the build binary variables
build = LpVariable.dicts("Build", Depots, cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum([fflows[d][c] * deliverycosts[d][c] for d in Depots for c in Customers]) + lpSum([build[d] * fixedcost[d] for d in Depots]),
    "DeliveryandFixedCosts",
)

# Add Constraint - All fractional flows are smaller than or equal to 1
for d in Depots:
    for c in Customers:
        prob += fflows[d][c] <= 1

# Add constraint - Customers demands are met
for c in Customers:
    prob += (
        lpSum(fflows[d][c] for d in Depots) == 1, "CustomerDemandMet%s" % c,
    )

# Add constraint - Depot Capacity available only if built
for d in Depots:
    prob += (
        lpSum([demand[c]*fflows[d][c] for c in Customers]) <= capacity[d]*build[d], "CapacityIfBuilt%s" % d,
    )

# The problem data is written to an .lp file
prob.writeLP("DepotLocation.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Cost is = ", value(prob.objective))

