data:extend({
    {
        type = "recipe",
        name = "rubber",
        category = "chemical-smelting",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "raw-latex", amount = 10 },
            { type = "item",  name = "stone",     amount = 5 },
            { type = "fluid", name = "steam",     amount = 50 }
        },
        results = {
            { type = "item", name = "rubber", amount = 1 },
        },
        energy_required = 10,
        main_product = "rubber"
    },
})
