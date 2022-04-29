# Import PuLP modeler functions
from pulp import *

# Creates a list of cities
Cities = ["Atlanta", "Boston", "Chicago", "Marseille", "Nice", "Paris"]

# Create a double list for distances
dist = [[0, 945, 605, 4667, 4749, 4394],
        [945, 0, 866, 3726, 3806, 3448],
        [605, 866, 0, 4471, 4541, 4152],
        [4667, 3726, 4471, 0, 109, 415],
        [4749, 3806, 4541, 109, 0,  431],
        [4394, 3448, 4152, 415, 431, 0]] 

# The dist data is made into a dictionary
dist = makeDict([Cities, Cities], dist, 0)

# Create a double list for quantities
quant = [[ 0,  500, 1000, 300, 400, 1500],
        [1500,   0,  250, 630, 360, 1140],
        [400,  510,    0, 460, 320,  490],
        [300,  600,  810,   0, 820,  310],
        [400,  100,  420, 730,   0,  970],
        [350, 1020,  260, 580, 380,    0]]

# The quantity data is made into a dictionary
quant = makeDict([Cities, Cities], quant, 0)

# Create a list with four indices for cost values
cost = [[[[[] for l in Cities] for k in Cities] for j in Cities] for i in Cities]

# The cost list is made into a dictionary
cost = makeDict([Cities, Cities, Cities, Cities], cost, 0)

# Calculate the costs
for i in Cities:
    for j in Cities:
        for k in Cities:
            for l in Cities:
                cost[i][j][k][l] = dist[i][k]+0.8*dist[k][l]+dist[l][j]

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("HubLocation", LpMinimize)

# A dictionary is created to contain the flow variables
flow = LpVariable.dicts("Flow", (Cities, Cities, Cities, Cities), cat="Binary")

# A dictionary is created to contain the hub location binary variables
hub = LpVariable.dicts("HubLocation", Cities, cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum([flow[i][j][k][l] * quant[i][j] * cost[i][j][k][l] for i in Cities for j in Cities for k in Cities for l in Cities]),
    "TransportCosts",
)

# Add constraint - Number of hubs
prob += (
        lpSum([hub[i] for i in Cities]) <= 2, "NumberofHubs",
)

# Add constraint - Freight is transported from each i to j through the hubs
for i in Cities:
    for j in Cities:
            prob += (
                lpSum([flow[i][j][k][l] for k in Cities for l in Cities]) == 1, "From %s To %s" % (i, j),
            )
            
# Add constraint - Flow cannot happen if the hubs are not located in k and l
for i in Cities:
    for j in Cities:
        for k in Cities:
            for l in Cities:
                prob += flow[i][j][k][l] <= hub[k]
                prob += flow[i][j][k][l] <= hub[l]
                
        
# The problem data is written to an .lp file
prob.writeLP("HubLocation.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Cost is = ", value(prob.objective))

# Print out the solution
for i in Cities:
    if hub[i].value() == 1:
        print("%s is used as a hub" % i)

for i in Cities:
    for j in Cities:
        for k in Cities:
            for l in Cities:
                if flow[i][j][k][l].value() > 0 and i!=j:
                    if k!=l:
                        print("Freight from %s to %s flow through hubs located in %s and %s" %(i,j,k,l))
                    else:
                        print("Freight from %s to %s flow through hub located in %s" %(i,j,k))
