data.raw.technology["tree-seeding"] = nil

---------------------------------------- Research Costs ----------------------------------------
data.raw.technology["electronics"].research_trigger = nil
data.raw.technology["electronics"].unit =
{
    count = 100,
    ingredients = { { "automation-science-pack", 1 } },
    time = 30
}

data.raw.technology["automation"].unit = nil
data.raw.technology["automation"].research_trigger = {
    type = "craft-item",
    item = "electronic-circuit",
    count = 5
}

data.raw.technology["electric-mining-drill"].unit = nil
data.raw.technology["electric-mining-drill"].research_trigger = {
    type = "craft-item",
    item = "scaffolding",
    count = 2
}

---------------------------------------- Prerequisites Reordering ----------------------------------------
data.raw.technology["automation-science-pack"].prerequisites = {"bottling", "compost-bin", "ceramics", "labs"}
data.raw.technology["electronics"].prerequisites = {"automation-science-pack"}
table.insert(data.raw.technology["electronics"].prerequisites, "rubber-working")
table.insert(data.raw.technology["logistic-science-pack"].prerequisites, "electronics")
table.insert(data.raw.technology["automation"].prerequisites, "electronics")
table.insert(data.raw.technology["automation"].prerequisites, "steel-processing")
table.insert(data.raw.technology["lamp"].prerequisites, "electronics")
table.insert(data.raw.technology["logistics"].prerequisites, "electronics")
table.insert(data.raw.technology["radar"].prerequisites, "electronics")
table.insert(data.raw.technology["radar"].prerequisites, "automation")
table.insert(data.raw.technology["electric-mining-drill"].prerequisites, "electronics")
table.insert(data.raw.technology["electric-mining-drill"].prerequisites, "automation")
table.insert(data.raw.technology["logistic-science-pack"].prerequisites, "automation")
table.insert(data.raw.technology["logistic-science-pack"].prerequisites, "inserters")
table.insert(data.raw.technology["fast-inserter"].prerequisites, "electronics")
table.insert(data.raw.technology["fast-inserter"].prerequisites, "inserters")
table.insert(data.raw.technology["stone-wall"].prerequisites, "steel-processing")
table.insert(data.raw.technology["gun-turret"].prerequisites, "steel-processing")


---------------------------------------- Research Effects ----------------------------------------
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
}

data.raw.technology["automation"].effects =
{
    {
        type = "unlock-recipe",
        recipe = "scaffolding"
    },
    {
        type = "unlock-recipe",
        recipe = "assembling-machine-1"
    },
    {
        type = "unlock-recipe",
        recipe = "component-fabricator"
    },
    --{ type = "unlock-recipe", recipe = "scaffolding-from-wood" }, --see note in recipes/mechanical-components
}



data.raw.technology["steel-processing"].effects =
{
    {
        type = "unlock-recipe",
        recipe = "quicklime"
    },
    {
        type = "unlock-recipe",
        recipe = "coke-from-biomass"
    },
    {
        type = "unlock-recipe",
        recipe = "steel-from-raw"
    },
    {
        type = "unlock-recipe",
        recipe = "cladding"
    },
    {
        type = "unlock-recipe",
        recipe = "steel-chest"
    },
}

data.raw.technology["steel-plate-productivity"].effects =
{
    {
        type = "change-recipe-productivity",
        recipe = "steel-from-raw",
        change = 0.1
    },
    {
        type = "change-recipe-productivity",
        recipe = "casting-steel",
        change = 0.1
    }
}
