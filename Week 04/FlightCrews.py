# Import PuLP modeler functions
from pulp import *

Pilots = [p for p in range(1, 9)]

Languages = ['E', 'F', 'D', 'N']

PlaneType = ['R', 'T', 'B', 'F', 'S']

LangSkills = [
    [20, 14, 0, 13, 0, 0, 8, 8],
    [12, 0, 0, 10, 15, 20, 8, 9],
    [0, 20, 12, 0, 8, 11, 14, 12],
    [0, 0, 0, 0, 17, 0, 0, 16]
]
LangSkills = makeDict([Languages, Pilots], LangSkills, 0)

FlyingSkills = [
    [18, 12, 15, 0, 0, 0, 8, 0],
    [10, 0, 9, 14, 15, 8, 12, 13],
    [0, 17, 0, 11, 13, 10, 0, 0],
    [0, 0, 14, 0, 0, 12, 16, 0],
    [0, 0, 0, 0, 12, 18, 0, 18]
]
FlyingSkills = makeDict([PlaneType, Pilots], FlyingSkills, 0)

PilotCompatibility = dict()

for p1 in range(1, 9):
    for p2 in range(p1 + 1, 9):
        lc = False
        for l in Languages:
            if (LangSkills[l][p1] >= 10) and (LangSkills[l][p2] >= 10):
                lc = True
                break
        if not lc: continue

        pcs = 0
        pt = 0
        for p in PlaneType:
            if (FlyingSkills[p][p1] >= 10) and (FlyingSkills[p][p2] >= 10):
                pc = FlyingSkills[p][p1]  + FlyingSkills[p][p2] 
                if (pcs < pc): pcs = pc
        if (pcs > 20): 
            PilotCompatibility[(p1, p2)] = pcs


print(PilotCompatibility)

prob = LpProblem("FlightCrews", LpMaximize)

fly = LpVariable.dicts("Fly", Pilots, cat="Binary")

for key in PilotCompatibility:
    (p1,p2) = key
    prob += (
        fly[p1] + fly[p2] >= 1
    )

prob += (
    lpSum([PilotCompatibility[key] for key in PilotCompatibility]),
    "MaxPilotSkill",
)
prob.solve()
# maximise score such that all pilots flow


# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])

# The optimised objective function value is printed to the screen
print("Best  = ", value(prob.objective))

# Print the locations
for p in Pilots:
    if fly[p].value()==1:
        print("Pilot %2d flys" % p)


