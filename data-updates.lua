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


