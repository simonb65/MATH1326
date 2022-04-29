# Import PuLP modeler functions
from pulp import *

# Creates three lists for patterns
Pat1 = range(1, 7)
Pat2 = range(7, 13)
Patterns = range(1,13)

# Create a list for sizes
Sizes = range(1,4)

# Create a dictionary for demand for each size
dem = {1: 108, 2: 125, 3: 100}

# create the pattern cut matrix
cut = [
    [0, 0, 2],    
    [0, 1, 1],
    [2, 0, 1],
    [0, 2, 0],
    [2, 1, 0],
    [3, 0, 0],
    [0, 1, 2],                 
    [0, 2, 1],
    [1, 0, 2],
    [3, 0, 1],
    [0, 3, 0],
    [5, 0, 0]
    ]

# cut patterns are turned into a dictionary
cut = makeDict([Patterns, Sizes], cut, 0)

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("Cutting", LpMinimize)

# A dictionary is created to contain the use integer variables
use = LpVariable.dicts("Use", Patterns, 0, cat="Integer")

# The objective function is added to 'prob' first
prob += (
    lpSum([150 * use[p] for p in Pat1]) + lpSum([200 * use[p] for p in Pat2]) - 75280,
    "TrimLoss",
)

for s in Sizes:
    prob += (
        lpSum([cut[p][s] * use[p] for p in Patterns]) >= 4 * dem[s], "Size%2d" % s,
)

# The problem data is written to an .lp file
prob.writeLP("Cutting.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Trim Loss is = ", value(prob.objective))

# Write the solution out
for p in Pat1:
    if use[p].value() > 0:
        print("%3d" % use[p].value()," 1.5m bars are used with pattern %2d" % p)
for p in Pat2:
    if use[p].value() > 0:
        print("%3d" % use[p].value()," 2.0m bars are used with pattern %2d" % p) 
