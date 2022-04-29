# Import PuLP modeler functions
from pulp import *

# Define the number of sites
NS = 7

# Define the tanker capacity
CAP = 39000

# Create a list of clients and sites
Clients = range(2, NS+1)
Sites = range(1, NS+1)

# Enter the data from the textbook with little manipulation
dem = [0, 14000, 3000, 6000, 16000, 15000, 5000]
dist = [[  0, 148, 55,  32,  70, 140, 73],
        [148,   0, 93, 180,  99,  12, 72],
        [ 55,  93,  0,  85,  20,  83, 28],
        [ 32, 180, 85,   0, 100, 174, 99],
        [ 70,  99, 20, 100,   0,  85, 49],
        [140,  12, 83, 174,  85,   0, 73],
        [ 73,  72, 28,  99,  49,  73,  0]]

# Data is made into dictionaries
dem = makeDict([Sites], dem, 0)
dist = makeDict([Sites, Sites], dist, 0)

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("OilDelivery", LpMinimize)

# A dictionary is created to contain the precedes binary variables
prec = LpVariable.dicts("Prec", (Sites,Sites), cat="Binary")

# A dictionary is created to contain the quant variables
quant = LpVariable.dicts("Quant", Clients, 0)

# The objective function is added to 'prob' first
prob += (
    lpSum((dist[i][j])*prec[i][j] for i in Sites for j in Sites if i!=j),
    "TotalDistanceDriven",
)

# Add constraints - Visit each client only once 
for j in Clients:
    prob += lpSum(prec[i][j] for i in Sites if i != j) == 1

# Add constraints - Leave each client only once
for i in Clients:
    prob += lpSum(prec[i][j] for j in Sites if i !=j ) == 1

# Add constraints - Quantity is at least as much as the demand and is below capacity
for i in Clients:
    prob += dem[i] <= quant[i]
    prob += quant[i] <= CAP

# Add constraint - Quantity is equal to demand for the first client on tour
for i in Clients:
    prob += quant[i] <= CAP + (dem[i] - CAP) * prec[1][i]

# Add constraints - Calculate the quantity based on the visited clients
for i in Clients:
    for j in Clients:
        if i != j:
            prob += quant[j] >= quant[i] + dem[j] - CAP + CAP * prec[i][j] + (CAP - dem[j] - dem[i]) * prec[j][i]
            
# The problem data is written to an .lp file
prob.writeLP("OilDelivery.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Distance Driven is = ", value(prob.objective))

# Print out the solution
print("%5s%8s%5s" %("Site","Quant","Dist"))
j = 2
Continue = True
while Continue:
    i = 1
    print("%5d" % i)
    while Continue:
        if i == 1:
            for k in range(j, NS+1):
                if prec[i][k].value() == 1:
                    jnext = k + 1
                    break
        else:
            for k in Sites:
                if prec[i][k].value() == 1:
                    break    
        if prec[i][k].value() == 1:
            if k != 1:
                print("%5d%8d%5d" %(k, quant[k].value(), dist[i][k]))
                i = k
            else:
                print("%5d%13d" % (k,dist[i][k]))
                break
        else:
            Continue = False
            break
    j = jnext
    if j == NS+1:
        break

