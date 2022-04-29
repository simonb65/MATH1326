# Import PuLP modeler functions
from pulp import *

# Define the number of jobs
NJ = 7

# Creates a list of jobs
Jobs = range(1, NJ+1)

# Enter the data from the textbook with little manipulation
rel = [ 2,  5,  4,  0,  0,  8,  9]
dur = [ 5,  6,  8,  4,  2,  4,  2]
due = [10, 21, 15, 10,  5, 15, 22]

# Data is made into dictionaries
rel = makeDict([Jobs], rel, 0)
dur = makeDict([Jobs], dur, 0)
due = makeDict([Jobs], due, 0)

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("SequencingJobs", LpMinimize)

# A dictionary is created to contain the rank binary variables
rank = LpVariable.dicts("Rank", (Jobs,Jobs), cat="Binary")

# Dictionaries are created to contain the start, comp, late variables
start = LpVariable.dicts("Start", Jobs, 0)
comp = LpVariable.dicts("Comp", Jobs, 0)
late = LpVariable.dicts("Late", Jobs, 0)

# Choose objective (1/2/3)
Obj = 1

if Obj == 1:
    prob += (start[NJ]+ lpSum(dur[j]*rank[j][NJ] for j in Jobs),"Makespan")
elif Obj == 2:
    prob += (lpSum(comp[k] for k in Jobs), "Total completion time")
elif Obj == 3:
    prob += (lpSum(late[k] for k in Jobs), "Total tardiness")

# Add constraints - each position has a job
for k in Jobs:
    prob += lpSum(rank[j][k] for j in Jobs) == 1

# Add constraints - each job has a position
for j in Jobs:
    prob += lpSum(rank[j][k] for k in Jobs) == 1

# Add constraints - jobs can only start after their release
for k in Jobs:
    prob += start[k] >= lpSum (rel[j]*rank[j][k] for j in Jobs)

# Add constraints - jobs can only start after the completion of the previous job
for k in range(1,NJ):
    prob += start[k+1] >= start[k] + lpSum(dur[j]*rank[j][k] for j in Jobs)

# Add constraints - completion time calculation
for k in Jobs:
    prob += comp[k] == start[k] + lpSum(dur[j]*rank[j][k] for j in Jobs)

# Add constraints - tardiness calculation
for k in Jobs:
    prob += late[k] >= comp[k] - lpSum(due[j]*rank[j][k] for j in Jobs)

# The problem data is written to an .lp file
prob.writeLP("SequencingJobs.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Objective function is = ", value(prob.objective))

# Print out the solution
print("   Job    Release      Start Completion        Due  Tardiness")
for k in Jobs:
    for j in Jobs:
        if rank[j][k].value() == 1:
            print("%6s%11d%11d%11d%11d%11d" % (j,rel[j],start[k].value(),comp[k].value(),due[j],late[k].value()))              
