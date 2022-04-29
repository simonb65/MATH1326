from pulp import *

Cities = [c for c in range(1, 13)]

Distance = [
    [  0, 15, 37, 55, 24, 60, 18, 33, 48, 40, 58, 67 ],
    [ 15,  0, 22, 40, 38, 52, 33, 48, 42, 55, 61, 61 ],
    [ 37, 22,  0, 18, 16, 30, 43, 28, 20, 58, 39, 39 ],
    [ 55, 40, 18,  0, 34, 12, 61, 46, 24, 62, 43, 34 ],
    [ 24, 38, 16, 34,  0, 36, 27, 12, 24, 49, 37, 43 ],
    [ 60, 52, 30, 12, 36,  0, 57, 42, 12, 50, 31, 22 ],
    [ 18, 33, 43, 61, 27, 57,  0, 15, 45, 22, 40, 61 ],
    [ 33, 48, 28, 46, 12, 42, 15,  0, 30, 37, 25, 46 ],
    [ 48, 42, 20, 24, 24, 12, 45, 30,  0, 38, 19, 19 ],
    [ 40, 55, 58, 62, 49, 50, 22, 37, 38,  0, 19, 40 ],
    [ 58, 61, 39, 43, 37, 31, 40, 25, 19, 19,  0, 21 ],
    [ 67, 61, 39, 34, 43, 22, 61, 46, 19, 40, 21,  0 ],
]

Distance = makeDict([Cities, Cities], Distance, 0)  # Convert to keyed dictionary

Populations = { 1: 15, 2: 10, 3: 12, 4:18, 5:5, 6:24, 7:11, 8:16, 9:13, 10:22, 11:19, 12:20 }
prob = LpProblem("TaxOfficeLocation", LpMinimize)

# Build tax office in City
build = LpVariable.dicts("Build", Cities, cat="Binary")

# City depends on tax office in city
depends = LpVariable.dicts("Depends", (Cities, Cities), cat="Binary")

# Add constraint - Number of office locations is 3
prob += (
        lpSum(build[c] for c in Cities) == 3, "Number Locations",
)

# City Depends on 1 office 
for c in Cities:
    prob += (
        lpSum([depends[c][d] for d in Cities]) == 1
    )

# City can only depend on build offices
for c in Cities:
    for d in Cities:
        prob += depends[c][d] <= build[d]

# Objective function is to minimise average distance to office
prob += (
    lpSum(Populations[c] * Distance[c][d] * depends[c][d] for c in Cities for d in Cities)
)

prob.writeLP("TaxOffice-sb.lp")

# The problem is solved using PuLP's choice of Solver
# prob.solve()
# prob.solve(GUROBI())
prob.solve(CPLEX_PY())

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Cost is = ", value(prob.objective))

for c in Cities :
    if (value(build[c]) == 1):
        print("Build => ", c)