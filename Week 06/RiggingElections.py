# Import PuLP modeler functions
from pulp import *

# Create a list for quarters
Quarters = range(1, 15)

# Create a dictionary of neigbours for each quarter
neighb = {1:  [2, 5], 2: [3, 5], 3: [4, 5], 4: [5, 10], 5: [6, 10], 6: [7, 8], 7: [8, 9], 8: [9, 10, 11], 9: [11, 12], 10: [11, 13], 11: [12, 13], 12: [14], 13: [14], 14: []} 

# Create a dictionary for population
pop = {1: 30, 2: 50, 3: 20, 4: 70, 5: 20, 6: 40, 7: 30, 8: 30, 9: 40, 10: 60, 11: 10, 12: 50, 13: 40, 14: 40}

# Create a dictionary for support votes
votes = {1: 17.5, 2: 15, 3: 14.2, 4: 42, 5: 18, 6: 9, 7: 12, 8: 10, 9: 26, 10: 34, 11: 2.5, 12: 27, 13: 29, 14: 15}

minpop = 30
maxpop = 100
minsingle = 50

# Create a list of districts
distr = []

# Create a dictionary for majorities
maj = {}

# Add a neighboring quarter to the current set of quarters
def add_neighb(toadd, sQ, udistr):
    nQ = sQ + [toadd]
    popsum = 0
    for i in nQ:
        popsum += pop[i]
    if popsum >= minpop: # Large enough to form a distr
        udistr.append(nQ)
    for p in neighb[toadd]: # Try adding every neighbor
        if popsum + pop[p] <= maxpop:
            udistr = add_neighb(p, nQ, udistr)
    return udistr

# Calculate the list of possible districts
for q in Quarters:
    if pop[q] >= minsingle and q != 10: # Single quarter districts
        distr.append([q])
    for p in neighb[q]: # Try adding every neighbor
        if pop[q] + pop[p] <= maxpop:
            distr = add_neighb(p, [q], distr)

# Calculate majorities
for d in range(0, len(distr)):
    sumvotes=0
    sumpop=0
    for i in distr[d]:
        sumvotes += votes[i]
        sumpop += pop[i]
    if sumvotes / sumpop >= 0.5:
        maj[d]=1
    else:
        maj[d]=0

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("RiggingElections", LpMaximize)

# A dictionary is created to contain the hub location binary variables
choose = LpVariable.dicts("Choose", range(len(distr)), cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum([maj[d] * choose[d] for d in range(len(distr))]),
    "NumberofSeats",
)

# Add constraint - Number to districts
prob += (
        lpSum([choose[d] for d in range(len(distr))]) <= 6, "NumberofDistricts",
)

# Add constraint - Each quarter is assigned a district
for q in Quarters:
    prob += (
    lpSum([choose[d] for d in range(len(distr)) if q in distr[d]]) == 1,
    "Quarter %d assigned" %q,
)
    
# The problem data is written to an .lp file
prob.writeLP("RiggingElections.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Number of seats  = ", value(prob.objective))

# Print out the solution
for d in range(len(distr)):
    if choose[d].value() == 1:
        if maj[d] == 1:
            print("Quarters %s" % distr[d], "form a district and is favorable")
        else: 
            print("Quarters %s" % distr[d], "form a district and is against")
