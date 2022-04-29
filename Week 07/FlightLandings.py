# Import PuLP modeler functions
from pulp import *

# Creates a list of planes
Planes = range(1, 11)

# Enter the data from the textbook with little manipulation
start = [ 129, 195,  89,  96, 110, 120, 124, 126, 135, 160]
target = [155, 258,  98, 106, 123, 135, 138, 140, 150, 180]
stop =   [559, 744, 510, 521, 555, 576, 577, 573, 591, 657]
cearly = [ 10,  10,  30,  30,  30,  30,  30,  30,  30,  30]
clate =  [ 10,  10,  30,  30,  30,  30,  30,  30,  30,  30]
dist =[[ 0,  3, 15, 15, 15, 15, 15, 15, 15, 15], 
       [ 3,  0, 15, 15, 15, 15, 15, 15, 15, 15], 
       [15, 15,  0,  8,  8,  8,  8,  8,  8,  8], 
       [15, 15,  8,  0,  8,  8,  8,  8,  8,  8], 
       [15, 15,  8,  8,  0,  8,  8,  8,  8,  8], 
       [15, 15,  8,  8,  8,  0,  8,  8,  8,  8], 
       [15, 15,  8,  8,  8,  8,  0,  8,  8,  8], 
       [15, 15,  8,  8,  8,  8,  8,  0,  8,  8], 
       [15, 15,  8,  8,  8,  8,  8,  8,  0,  8], 
       [15, 15,  8,  8,  8,  8,  8,  8,  8,  0]]


# Data is made into dictionaries
start = makeDict([Planes], start, 0)
target = makeDict([Planes], target, 0)
stop = makeDict([Planes], stop, 0)
cearly = makeDict([Planes], cearly, 0)
clate = makeDict([Planes], clate, 0)
dist = makeDict([Planes, Planes], dist, 0)

# Calculate big M values based on the data
M = [[0]*10 for p in Planes]
M = makeDict([Planes, Planes],M, 0)
for p in Planes:
    for q in Planes:
        M[p][q]=stop[p] + dist[p][q] - start[q]

# Create a tuple list for plane combinations to avoid creating extra binary variables
planelist = [(p, q) for p in Planes for q in Planes if p < q]

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("FlightLandings", LpMinimize)

# Dictionaries are created to contain the land, early, and late variables
land = LpVariable.dicts("Land", Planes, 0)
early = LpVariable.dicts("Early", Planes, 0)
late = LpVariable.dicts("Late", Planes, 0)

# A dictionary is created to contain the prec binary variables
prec = LpVariable.dicts("Prec", planelist, cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum(cearly[p]*early[p] + clate[p]*late[p] for p in Planes),
    "TotalPenalty",
)

# Add constraints - landing time within the window
for p in Planes:
    prob += start[p] <= land[p]
    prob += land[p] <= stop[p]

# Add constraints - seperation
for p in Planes:
    for q in Planes:
        if (q < p):
            prob += land[p] + dist[p][q] <= land[q] + M[p][q]*prec[(q,p)]
        if (p < q):
            prob += land[p] + dist[p][q] <= land[q] + M[p][q]*(1-prec[(p,q)])

# Add constraints - early and late calculations
for p in Planes:
    prob += early[p] <= target[p] - start[p]
    prob += late[p] <= stop[p] - target[p]
    prob += land[p] == target[p] - early[p] + late[p]

# The problem data is written to an .lp file
prob.writeLP("FlightLanding.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Penalty is = ", value(prob.objective))

# Print out the solution
print("Plane Scheduled    Target Deviation")   
for p in Planes:
    print("%5s%10d%10d%10d" % (p,land[p].value(),target[p],target[p]-land[p].value()))
    


