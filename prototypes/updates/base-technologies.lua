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
        recipe = "electronic-circuit"
    },
    {
        type = "unlock-recipe",
        recipe = "inserter"
    },
}
