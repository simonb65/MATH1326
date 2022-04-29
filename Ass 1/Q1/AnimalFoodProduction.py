from traceback import format_exc
from pulp import *

Materials = ["Oats", "Maize", "Molasses"]
Food = ["Granuales","Powder" ]

Proteins = { "Oats": 13.6, "Maize": 4.1, "Molasses": 5 }
Lipids  = { "Oats": 7.1, "Maize": 2.4, "Molasses": 0.3 }
Fibre  = { "Oats": 7, "Maize": 3.7, "Molasses": 25 }

Cost = { "Oats": 0.13, "Maize": 0.17, "Molasses": 0.12 }
Available = { "Oats": 11900, "Maize": 23500, "Molasses": 750 }


MinProtein = 9.5
MinLipids = 2
MaxFibre = 6

ProdCosts = { "Grinding" : 0.25, "Blending": 0.05, "Granulating": 0.42,  "Sieving" : 0.17 }

DemandGranules = 9000
DemandPowder = 12000
   

prob = LpProblem("AnimalFoodProd", LpMinimize)

# 

use = LpVariable.dicts("Use", (Materials, Food))        # Used
prod = LpVariable.dicts("Prod", Food)                   # Produced

# The objective function is to minimise cost
prob += (
    lpSum(Cost[m] * use[m][f] for m in Materials for f in Food) +   # Purchase
    lpSum(0.25 * use[m][f] for m in Materials if m != "Molasses" for f in Food) + # Grinding
    lpSum(0.42 * use[m]["Granuales"] for m in Materials) +   # Granulating
    lpSum(0.17 * use[m]["Powder"] for m in Materials),    # Sieving
    "Cost",
)

# 6.2.2 - Sum or Raw Materials
for f in Food:
    prob += (
        lpSum(use[m][f] for m in Materials) == prod[f], "MatUse" + f
    )

# 6.2.3 -
for f in Food:
    prob += (
        lpSum(use[m][f] * Proteins[m] for m in Materials) >= MinProtein, "MinProtein" + f
    )

for f in Food:
    prob += (
        lpSum(use[m][f] * Lipids[m] for m in Materials) >= MinLipids, "MinLipids" + f
    )

for f in Food:
    prob += (
        lpSum(use[m][f] * MaxFibre[m] for m in Materials) <= MaxFibre, "MaxFibre" + f
    )


# Avail
for m in Materials:
    prob += (
        lpSum(use[m][f] for f in Food) <= Available[m], "Available" + m
    )

# Demand
prod += (
    prod["Granuales"] >=  DemandGranules,
)
prod += (
    prod["Powder"] >=  DemandPowder,
)

prob.writeLP("AnimalFoodProd.lp")



prob.solve()

# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])


# The optimised objective function value is printed to the screen
print("Min Cost is = ", value(prob.objective))