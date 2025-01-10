data.raw["recipe"]["automation-science-pack"].ingredients = {
    { type = "item", name = "ceramic-casing", amount = 1},
    { type = "item", name = "biomass", amount = 1},
    { type = "item", name = "gear-wheel-assembly", amount = 1},
    { type = "item", name = "glass-bottle", amount = 1}
}
--data.raw.recipe["automation-science-pack"].results = {{type="item", name="automation-science-pack", amount=5}}
--data.raw.recipe["automation-science-pack"].energy_required = 25

--data.raw.technology["steam-power"].prerequisites = {"gear-wheel-assembly"}

data.raw.recipe["steam-engine"].ingredients = {
    { type = "item", name = "gear-wheel-assembly", amount = 4 },
    { type = "item", name = "pipe",                amount = 5 },
    { type = "item", name = "iron-plate",          amount = 10 }
}

data.raw.recipe["offshore-pump"].ingredients = {
    { type = "item", name = "pipe",                amount = 3 },
    { type = "item", name = "gear-wheel-assembly", amount = 2 },
}

data.raw.recipe["burner-inserter"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 1 },
    { type = "item", name = "gear-wheel-assembly", amount = 1 },
}

data.raw.recipe["burner-mining-drill"].ingredients = {
    { type = "item", name = "gear-wheel-assembly", amount = 2 },
    { type = "item", name = "stone-furnace",       amount = 1 },
    { type = "item", name = "iron-plate",          amount = 3 }
}

data.raw.recipe["lab"].ingredients = {
    { type = "item", name = "glass",               amount = 20 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "ceramic-casing",      amount = 4 }
}

data.raw.recipe["iron-plate"] = nil
data.raw.recipe["copper-plate"] = nil