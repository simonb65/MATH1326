# Import PuLP modeler functions
from pulp import *

# Creates a list of all the clients
Clients = ["1", "2", "3", "4", "5", "6", "7"]

# Creates a dictionary for the profit from each lot from each client
profit = {"1": 200, "2": 40, "3": 90, "4": 80, "5": 105, "6": 100, "7": 140}

# Creates a dictionary for the size of each lot from each client
size = {"1": 10, "2": 8, "3": 6, "4": 9, "5": 15, "6": 10, "7": 12}

# Creates a dictionary for the available amount from each client
avail = {"1": 12, "2": 31, "3": 20, "4": 25, "5": 50, "6": 40, "7": 60}

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("BargeLoading", LpMaximize)


## Profit calc
price = {"1": 1000, "2": 600, "3": 600, "4": 800, "5": 1200, "6": 800, "7": 1100}
cost =  {"1": 80, "2": 70, "3": 85, "4": 80, "5": 73, "6": 70, "7": 80}
for c in Clients:
    print(c, price[c], cost[c], size[c], price[c]-cost[c]*size[c])


# A dictionary is created to contain the load
#load = LpVariable.dicts("Load", Clients, 0)               # For Q1/Q2
load = LpVariable.dicts("Load", Clients, 0, cat="Integer") # For Q3


# The objective function is added to 'prob' first
prob += (
    lpSum([load[c] * profit[c] for c in Clients]),
    "TotalProfit",
)

# Add constraint - Capacity
prob += (
        lpSum([size[c]*load[c] for c in Clients]) <= 1500, "Capacity",
)

# Add constraint - Availability     # For Q2
for c in Clients:                   
    prob += load[c] <= avail[c]     


# The problem data is written to an .lp file
prob.writeLP("BargeLoading.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Total Profit is = ", value(prob.objective))

# Print the loads from each client
for c in Clients:
    if (load[c].value()>0):
        print("%2.3f" % load[c].value(), " lots from client %s" % c," are loaded.")
