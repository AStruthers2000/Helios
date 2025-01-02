--local foundryTech = table.deepcopy(data.raw["technology"]["foundry"])
--table.insert(foundryTech, { type = "unlock-recipe", recipe = "casting-spring"})
--data.raw["technology"]["foundry"] = foundryTech

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