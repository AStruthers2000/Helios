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
        category = "smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "limestone", amount = 2 },
        },
        results = {
            { type = "item",  name = "quicklime",      amount = 1 },
            { type = "fluid", name = "carbon-dioxide", amount = 50 },
        },
        energy_required = 5,
        main_product = "quicklime"
    },
})
