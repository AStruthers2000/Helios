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
    {
        type = "recipe",
        name = "resistor",
        category = "electronics",
        icon = "__helios__/graphics/icons/mipped/electronic/part-electronic-resistor-1.png",
        icon_size = 64,
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 2},
            { type = "item", name = "carbon", amount = 1},
            { type = "item", name = "iron-stick", amount = 1}
        },
        results = {
            {type = "item", name = "resistor", amount = 1}
        },
        energy_required = 1
    }
})
