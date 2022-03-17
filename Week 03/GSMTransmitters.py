# Import PuLP modeler functions
from pulp import *

# Creates a list of all the sites
Sites = ["1", "2", "3", "4", "5", "6", "7"]

# Creates a dictionary for the cost of each site
cost = {"1": 1.8, "2": 1.3, "3": 4, "4": 3.5, "5": 3.8, "6": 2.6, "7": 2.1}

# Creates a list of all communities
Communities = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]

# Creates a dictionary for the population of each community
population = {"1": 2, "2": 4, "3": 13, "4": 6, "5": 9, "6": 4, "7": 8, "8": 12, "9": 10, "10": 11, "11": 6, "12": 14, "13": 9, "14": 3, "15": 6}

# Creates a set showing communities covered by each site
cover_set = {
                (1,1), (1,2), (1,4),         # communities covered by site 1
                (2,2), (2,3), (2,5),         # communities covered by site 2
                (3,4), (3,7), (3,8), (3,10),
                (4,5), (4,6), (4,8), (4,9),
                (5,8), (5,9), (5,12),
                (6,7), (6,10), (6,11), (6,12), (6,15),
                (7,12), (7,13), (7,14), (7,15)
             }

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("GSMTransmitters", LpMaximize)

# A dictionary is created to contain the build binary variables
build = LpVariable.dicts("Build", Sites, cat="Binary")

# A dictionary is created to contain the covered binary variables
covered = LpVariable.dicts("Covered", Communities, cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum([covered[c] * population[c] for c in Communities]),
    "CoveredPopulation",
)

# Add constraint - Covered only if build on a site that can cover the community
for c in Communities:
    prob += (
        lpSum([build[s] for s in Sites if (int(s),int(c)) in cover_set]) >= covered[c], "Cover%s" % c,
    )

# Add constraint - Budget for building
prob += (
        lpSum([cost[b]*build[b] for b in Sites]) <= 10, "Budget",
)

# The problem data is written to an .lp file
prob.writeLP("GSMTransmitters.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Covered population is = ", value(prob.objective))

for s in Sites: 
    print("Build ", s, " = ", value(build[s]))

for c in Communities:
    print("Covered ", c, " = ", value(covered[c]))
