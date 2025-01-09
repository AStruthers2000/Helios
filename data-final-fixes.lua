--data.raw["recipe"]["iron-stick"].enabled = true

data.raw["item"]["clay-brick"].icons[1].tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 }
--data.raw["recipe"]["clay-brick"].icons[1].tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 }
data.raw.technology["tree-seeding"] = nil
data.raw.technology["uranium-mining"].researched = true

data.raw["recipe"]["automation-science-pack"].ingredients = {
    { type = "item", name = "ceramic-casing", amount = 1},
    { type = "item", name = "biomass", amount = 1},
    { type = "item", name = "gear-wheel-assembly", amount = 1},
    { type = "item", name = "glass-bottle", amount = 1}
}