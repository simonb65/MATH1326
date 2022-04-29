# Import PuLP modeler functions
from pulp import *

# Creates a list of all the time periods
Time = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# Creates a dictionary for the requirements in each time period
required = {0: 15, 1: 15, 2: 15, 3: 35, 4: 40, 5: 40, 6: 40, 7: 30, 8: 31, 9: 35, 10: 30, 11: 20}

# Creates a list for starting period for people working
Work = [0, -1, -3, -4]

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("NurseScheduling1", LpMinimize)

# A dictionary is created to contain the start period integer variables
start = LpVariable.dicts("Start", Time, 0, cat="Integer")

# The objective function is added to 'prob' first
prob += (
    lpSum([start[t] for t in Time]),
    "NursesWorking",
)

# Add requirement satisfaction constraints for each time period
for t in Time:
    prob += (
        lpSum([start[(t+i+12)%12] for i in Work]) >= required[t], "TimePeriod%d" % t,
    )

# The problem data is written to an .lp file
prob.writeLP("NurseScheduling1.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Number of Nurses = ", value(prob.objective))

# Print the full schedule
for t in Time:
    print("Time Period %2d" % (t+1), "%2d" % start[t].value(), " nurses starting")
