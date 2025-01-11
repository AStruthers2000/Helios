data:extend({
    {
        type = "recipe",
        name = "rubber",
        category = "chemistry",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "lead-plate", amount = 1 },
            { type = "item", name = "tin-plate",  amount = 1 }
        },
        results = {
            { type = "item", name = "solder", amount = 1 },
        },
        energy_required = 1.5,
        main_product = "solder"
    },
})
