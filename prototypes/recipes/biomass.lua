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
            { type = "item",  name = "wood",  amount = 10 },
            { type = "fluid", name = "steam", amount = 100 }
        },
        results = {
            { type = "item", name = "biomass", amount = 5 },
            { type = "item", name = "sap",     amount = 5 }
        },
        energy_required = 60,
        main_product = "biomass"
    },
    {
        type = "recipe",
        name = "resin",
        category = "chemical-smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "biomass", amount = 2 },
            { type = "item",  name = "stone",   amount = 5 },
            { type = "fluid", name = "water",   amount = 50 }
        },
        results = {
            { type = "item", name = "resin", amount = 2 },
            { type = "item", name = "sap",   amount = 1, percent_spoiled = 0.5 }
        },
        energy_required = 5,
        main_product = "resin"
    },
    {
        type = "recipe",
        name = "rubber-seed-from-biomass",
        category = "organic-or-hand-crafting",
        subgroup = "nauvis-agriculture",
        order = "b[nauvis-agriculture]-a[latex-processing]",
        enabled = false,
        allow_productivity = false,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "biomass", amount = 10 },
        },
        results = {
            { type = "item", name = "rubber-tree-seed", amount = 1, probability = 0.1 }
        },
        energy_required = 0.1,
        main_product = "rubber-tree-seed",
    },
    {
        type = "recipe",
        name = "latex-growing",
        --icon = "__base__/graphics/icons/tree-08.png",
        category = "composting",
        subgroup = "nauvis-agriculture",
        order = "b[nauvis-agriculture]-a[wood-processing]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = { { type = "item", name = "raw-latex", amount = 2 } },
        surface_conditions =
        { -- tree seeds can only be planted on nauvis
            {
                property = "pressure",
                min = 1000,
                max = 1000
            }
        },
        results =
        {
            { type = "item", name = "rubber-tree-seed", amount = 1 },
        },
        main_product = "rubber-tree-seed",
        crafting_machine_tint =
        {
            primary = { r = 0.442, g = 0.205, b = 0.090, a = 1.000 }, -- #703416ff
            secondary = { r = 1.000, g = 0.500, b = 0.000, a = 1.000 }, -- #ff7f00ff
        }
    }
})
