# Import PuLP modeler functions
from pulp import *

# Creates a list of all the time periods
Time = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# Creates a dictionary for the capacity of each depot
required = {0: 15, 1: 15, 2: 15, 3: 35, 4: 40, 5: 40, 6: 40, 7: 30, 8: 31, 9: 35, 10: 30, 11: 20}

# Creates a list for starting period for people working
Work = [0, -1, -3, -4]

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("NurseScheduling2", LpMinimize)

# A dictionary is created to contain the start period integer variables
start = LpVariable.dicts("Start", Time, 0, cat="Integer")

# A dictionary is created to contain the number of nurses doing overtime integer variables
overt = LpVariable.dicts("Overtime", Time, 0, cat="Integer")

# The objective function is added to 'prob' first
prob += (
    lpSum([overt[t] for t in Time]),
    "NursesOverTime",
)

# Add the restriction on number of nurses available
prob += (
    lpSum([start[t] for t in Time]) <= 80, "NumberAvailable",
)

# Add constraint to restrict the overtime by the number starting
for t in Time:
    prob+= overt[t] <= start[t]

# Add requirement satisfaction constraints for each time period
for t in Time:
    prob += (
        overt[(t-5+12)%12] + lpSum([start[(t+i+12)%12] for i in Work]) >= required[t], "TimePeriod%d" % t,
    )

# The problem data is written to an .lp file
prob.writeLP("NurseScheduling2.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Number of Nurses doing Overtime = ", value(prob.objective))

# Print the full schedule
for t in Time:
    print("Time Period %2d" % (t+1), "%2d" % start[t].value(), " nurses starting %3d" % overt[t].value()," nurses doing overtime")
