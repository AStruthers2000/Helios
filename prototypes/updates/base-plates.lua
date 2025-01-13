data:extend({
    {
        type = "recipe",
        name = "iron-from-raw",
        category = "smelting",
        energy_required = 3.2,
        ingredients = { { type = "item", name = "iron-ore", amount = 10 } },
        results = { { type = "item", name = "iron-plate", amount = 1 } },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "copper-from-raw",
        category = "smelting",
        energy_required = 3.2,
        ingredients = { { type = "item", name = "copper-ore", amount = 10 } },
        results = { { type = "item", name = "copper-plate", amount = 1 } },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "steel-from-raw",
        category = "smelting",
        energy_required = 16,
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-ore",  amount = 5 },
            { type = "item", name = "quicklime", amount = 2 },
            { type = "item", name = "coke",      amount = 1 }
        },
        results = { { type = "item", name = "steel-plate", amount = 1 } },
        allow_productivity = true
    }
})
