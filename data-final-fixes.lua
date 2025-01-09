--data.raw["recipe"]["iron-stick"].enabled = true

require("prototypes.updates.base-technologies")

data.raw["item"]["clay-brick"].icons[1].tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 }
--data.raw["recipe"]["clay-brick"].icons[1].tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 }


data.raw["recipe"]["automation-science-pack"].ingredients = {
    { type = "item", name = "ceramic-casing", amount = 1},
    { type = "item", name = "biomass", amount = 1},
    { type = "item", name = "gear-wheel-assembly", amount = 1},
    { type = "item", name = "glass-bottle", amount = 1}
}


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

data.raw.recipe["iron-plate"] = nil
data.raw.recipe["copper-plate"] = nil

--data.raw.technology["uranium-processing"].prerequisites = {"chemical-science-pack"}
--data.raw.technology["uranium-mining"].prerequisites = {}
--data.raw.technology["uranium-mining"].researched = true
--data.raw.technology["uranium-mining"].enabled = false
--data.raw.technology["uranium-mining"].hidden = true