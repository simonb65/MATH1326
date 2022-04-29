# Import PuLP modeler functions
from pulp import *

# Creates a list of nodes
Nodes = range(1, 50)

# Creates a set showing all the streets
streets = {
 (1,2), (1,3),
 (2,39), (2,41),
 (3,4), (3,11), (3,12), (3,16),
 (4,5), (4,6), (4,9), (6,7),
 (6,8), 
 (9,10),
(11,21),
(12,13), (12,15), 
(13,14),
(14,15), (14,18),
(15,16), (15,19),
(16,20),
(17,18),
(18,19),
(19,20),
(20,21),
(21,22),
(22,23), (22,25),
(23,32),
(24,25),
(25,26), (25,30),
(26,27), (26,28),
(28,29),
(30,31),
(31,32), (31,33),
(32,38), (32,39),
(33,34), (33,37),
(34,35),
(35,36),
(37,38), (37,43),
(38,40),
(39,40),
(40,41),
(41,42),
(43,44),
(44,49), (44,45),
(45,46), (45,47),
(47,48)
             }

# Creates the 'prob' variable to contain the problem data
prob = LpProblem("CCTVSurveliance", LpMinimize)

# A dictionary is created to contain the place binary variables
place = LpVariable.dicts("Place", Nodes, cat="Binary")

# The objective function is added to 'prob' first
prob += (
    lpSum([place[n] for n in Nodes]),
    "CamerasInstalled",
)

#
for key in streets:
    (n,m) = key
    prob += (
        place[n] + place[m] >= 1
    )

# The problem data is written to an .lp file
prob.writeLP("CCTVSurveilance.lp")

# The problem is solved using PuLP's choice of Solver
prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Number of cameras is = ", value(prob.objective))

# Print the locations
for n in Nodes:
    if place[n].value()==1:
        print("A camera is installed at node %2d" % n)
