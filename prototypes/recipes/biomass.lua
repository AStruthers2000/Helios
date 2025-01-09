--[[
data:extend({
    {
        type = "recipe",
        name = "biomass-from-sap",
        category = "bioprocessing",
        --subgroup = "vulcanus-processes",
        --order = "b[casting]-s[spring]",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "sap", amount = 1 },
        },
        results = {
            { type = "item", name = "biomass", amount = 1 }
        },
        energy_required = 60,
        main_product = "biomass",
    }
})
]]--

data:extend({
    {
        type = "recipe",
        name = "biomass-from-sap",
        category = "organic-or-hand-crafting",
        enabled = true,
        allow_productivity = false,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "sap", amount = 1 },
        },
        results = {
            { type = "item", name = "biomass", amount = 1 }
        },
        energy_required = 60,
        main_product = "biomass",
    },
    {
        type = "recipe",
        name = "biomass",
        category = "composting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            {type = "item", name = "wood", amount = 10},
            {type = "fluid", name = "steam", amount = 100}
        },
        results = {
            {type = "item", name = "biomass", amount = 5},
            {type = "item", name = "sap", amount = 5}
        },
        energy_required = 60,
        main_product = "biomass"
    }
})