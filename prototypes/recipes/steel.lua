data:extend({
    {
        type = "recipe",
        name = "coke-from-biomass",
        category = "smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "coal",    amount = 2 },
            { type = "item", name = "biomass", amount = 1 }
        },
        results = {
            { type = "item", name = "coke", amount = 1 },
        },
        energy_required = 5,
        main_product = "coke"
    },
    {
        type = "recipe",
        name = "quicklime",
        category = "chemical-smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "limestone", amount = 2 },
        },
        results = {
            { type = "item",  name = "quicklime",      amount = 1 },
            { type = "fluid", name = "carbon-dioxide", amount = 50, fluidbox_index = 1 },
        },
        energy_required = 5,
        main_product = "quicklime"
    },
    {
        type = "recipe",
        name = "limestone-precipitation",
        category = "chemical-smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "stone", amount = 2 },
            { type = "fluid", name = "water", amount = 25, fluidbox_index = 1 },
        },
        results = {
            { type = "item", name = "limestone", amount = 1 },
        },
        energy_required = 4,
        main_product = "limestone"
    },
    {
        type = "recipe",
        name = "limestone-recrystalization",
        category = "chemical-smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "calcium-carbonate", amount = 2 },
            { type = "fluid", name = "water",             amount = 25, fluidbox_index = 1 },
        },
        results = {
            { type = "item", name = "limestone", amount = 1 },
        },
        energy_required = 2,
        main_product = "limestone"
    },
    {
        type = "recipe",
        name = "calcium-carbonate",
        category = "intermediate-component",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "seashell", amount = 1 },
        },
        results = {
            { type = "item", name = "calcium-carbonate", amount = 2 },
        },
        energy_required = 0.5,
        main_product = "calcium-carbonate"
    },
    {
        type = "recipe",
        name = "seashells",
        category = "chemical-smelting", --or filtering if i add a filtering recipe/entity
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "fluid", name = "water", amount = 100, fluidbox_index = 1 }, --first input fluid box
        },
        results = {
            { type = "fluid", name = "water",    amount = 25, fluidbox_index = 1 }, --first output fluid box
            { type = "item",  name = "seashell", amount = 5 },
            { type = "item",  name = "salt",     amount = 10 },
        },
        energy_required = 5,
        main_product = "seashell"
    },
})
