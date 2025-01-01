local spring_recipe = {
    type = "recipe",
    name = "spring",
    category = "crafting",
    enabled = true,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 2}
    },
    results = {
        {type = "item", name = "spring", amount = 1}
    },
    energy_required = 1,
}


data:extend({spring_recipe})

data:extend({
    {
        type = "recipe",
        name = "assembly-component",
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-plate",  amount = 1 },
            { type = "item", name = "stone-brick", amount = 1 }
        },
        results = {
            { type = "item", name = "assembly-component", amount = 1 }
        },
        energy_required = 2,
    },
    {
        type = "recipe",
        name = "mechanical-assembly",
        enabled = false,
        ingredients = {
            { type = "item", name = "spring",             amount = 2 },
            { type = "item", name = "assembly-component", amount = 1 }
        },
        results = {
            { type = "item", name = "mechanical-assembly", amount = 1 }
        },
        energy_required = 5
    },
    {
        type = "recipe",
        name = "improved-automation-science",
        subgroup = "science-pack",
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-gear-wheel",     amount = 1 },
            { type = "item", name = "copper-plate",        amount = 1 },
            { type = "item", name = "mechanical-assembly", amount = 1 }
        },
        results = {
            { type = "item", name = "automation-science-pack", amount = 2 }
        },
        energy_required = 5,
        show_amount_in_title = false,
    }
})

--[[
local improvedAutomation = table.deepcopy(data.raw["recipe"]["automation-science-pack"])
improvedAutomation.name = "improved-automation-science"
improvedAutomation.enabled = false
improvedAutomation.ingredients = {
    {type = "item", name = "iron-gear-wheel", amount = 1},
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "mechanical-assembly", amount = 1}
}
improvedAutomation.results = {
    {type = "item", name = "automation-science-pack", amount = 2}
}

data:extend({improvedAutomation})]]--