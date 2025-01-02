data:extend({
    {
        type = "recipe",
        name = "insulated-copper-cable",
        category = "electronics-or-assembling",
        --subgroup = "vulcanus-processes",
        --order = "b[casting]-s[spring]",
        icon = "__helios__/graphics/icons/mipped/electronic/part-insulated-cable-1.png",
        icon_size = 64,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 5 },
            { type = "item", name = "rubber", amount = 2}
        },
        results = {
            { type = "item", name = "insulated-copper-cable", amount = 4 }
        },
        energy_required = 0.5
    },
})
