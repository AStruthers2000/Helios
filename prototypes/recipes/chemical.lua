data:extend({
    {
        type = "recipe",
        name = "rubber",
        category = "chemical-smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "raw-latex", amount = 2 },
            { type = "item",  name = "coal",     amount = 5 },
            { type = "fluid", name = "steam",     amount = 50, fluidbox_index = 1 }
        },
        results = {
            { type = "item", name = "rubber", amount = 1 },
        },
        energy_required = 5,
        main_product = "rubber"
    },
})
