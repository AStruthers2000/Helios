--local foundryTech = table.deepcopy(data.raw["technology"]["foundry"])
--table.insert(foundryTech, { type = "unlock-recipe", recipe = "casting-spring"})
--data.raw["technology"]["foundry"] = foundryTech

--[[
local foundryTech = data.raw.technology["foundry"]
if not foundryTech then
    error("Technology " .. "foundry" .. " does not exist.")
end
for _, effect in pairs(foundryTech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "casting-spring" then
        error("Technology " .. "foundry" .. " already unlocks recipe " .. "casting-spring" .. ".")
    end
end
table.insert(foundryTech.effects, {type = "unlock-recipe", recipe = "casting-spring"})
data:extend({foundryTech})


local improvedAutomation = table.deepcopy(data.raw["recipe"]["automation-science-pack"])
--improvedAutomation.name = "automation-science-pack"
improvedAutomation.enabled = false
improvedAutomation.ingredients = {
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "mechanical-assembly", amount = 1}
}
improvedAutomation.results = {
    {type = "item", name = "automation-science-pack", amount = 2}
}
improvedAutomation.show_amount_in_title = false

data:extend({improvedAutomation})

require("prototypes.electronics.data-updates")
]]--


data.raw.technology["agriculture"].effects = {
    {
        type = "unlock-recipe",
        recipe = "nutrients-from-spoilage"
    }
}
--data.raw.technology["agriculture"].icon = "__space-age__/graphics/icons/nutrients-from-spoilage.png"
--data.raw.technology["agriculture"].icon_size = 64

data.raw.technology["fish-breeding"].prerequisites = {"agricultural-science-pack"}

for _, tree in pairs(data.raw["tree"]) do
    if tree.minable and tree.minable.result == "wood" and tree.minable.count == 4 then
        tree.minable.results = {
            {type = "item", name = tree.minable.result, amount = tree.minable.count},
            {type = "item", name = "sap", probability = 0.5, amount_min = 1, amount_max = 4}
        }
        tree.minable.result = nil
    end
end

local bioprocessingMachines = {"biochamber"}
for _, machine in pairs(bioprocessingMachines) do
    table.insert(data.raw["assembling-machine"][machine].crafting_categories, "composting")
end
--table.insert(data.raw["character"]["character"].crafting_categories, "bioprocessing")

data.raw.character.character.crafting_categories = {"crafting", "pressing", "recycling-or-hand-crafting", "organic-or-hand-crafting", "organic-or-assembling"}

--table.insert(data.raw.plant["tree-plant"].minable.results, {type = "item", name = "sap", probability = 0.5, amount_min = 1, amount_max = 4})


--literally copying the properties from space-age/prototypes/entities/plants, but copying tree-01 instead of tree-08
local util = require('util')

local seconds = 60
local minutes = 60*seconds

local plant_flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"}

local changed_tree = util.table.deepcopy(data.raw.tree["tree-01"])
changed_tree.type = "plant"
changed_tree.name = "tree-plant"
changed_tree.flags = plant_flags
changed_tree.hidden_in_factoriopedia = false
changed_tree.factoriopedia_alternative = nil
changed_tree.map_color = {0.19, 0.39, 0.19, 0.40}
changed_tree.agricultural_tower_tint =
{
    primary = { r = 0.7, g = 1.0, b = 0.2, a = 1 },
    secondary = { r = 0.561, g = 0.613, b = 0.308, a = 1.000 }, -- #8f4f4eff
}
changed_tree.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results = {
        { type = "item", name = "wood", amount = 4 },
        { type = "item", name = "sap",  probability = 0.5, amount_min = 1, amount_max = 4 }
    },
}
changed_tree.variation_weights = { 1, 1, 1, 1, 1, 1, 1, 1, 0.3, 0.3, 0.0, 0.0}
changed_tree.growth_ticks = 10 * minutes
changed_tree.surface_conditions = { {property = "pressure", min = 1000, max = 1000}}  -- only Nauvis (doesn't work yet)
changed_tree.autoplace =
{
    probability_expression = 0,
    -- required to show agricultural tower plots
    tile_restriction =
    {
        "grass-1", "grass-2", "grass-3", "grass-4",
        "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3"
    }
}
data.raw["plant"]["tree-plant"] = changed_tree
data.raw["recipe"]["wood-processing"].category = "composting"