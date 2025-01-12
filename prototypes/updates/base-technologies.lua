data.raw.technology["tree-seeding"] = nil
data.raw.technology["automation-science-pack"].prerequisites = {
    "bottling", "compost-bin", "ceramics", "labs"
}

data.raw.technology["electronics"].prerequisites = {"automation-science-pack"}
table.insert(data.raw.technology["logistic-science-pack"].prerequisites, "electronics")
--data.raw.technology["electronics"].successors = {"logistic-science-pack"}
data.raw.technology["electronics"].effects = {
    {
        type = "unlock-recipe",
        recipe = "printed-circuit-substrate-1"
    },
    {
        type = "unlock-recipe",
        recipe = "insulated-copper-cable"
    },
    {
        type = "unlock-recipe",
        recipe = "inductor"
    },
    {
        type = "unlock-recipe",
        recipe = "copper-coil"
    },
    {
        type = "unlock-recipe",
        recipe = "solder"
    },
    {
        type = "unlock-recipe",
        recipe = "electronic-circuit"
    },
    {
        type = "unlock-recipe",
        recipe = "inserter"
    },
}
