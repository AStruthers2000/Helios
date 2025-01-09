data:extend({
    {
        type = "recipe",
        name = "crushed-quartz",
        category = "metallurgy-or-assembling",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "quartz-ore", amount = 1 },
        },
        results = {
            { type = "item", name = "crushed-quartz", amount = 2 },
        },
        energy_required = 1,
        main_product = "crushed-quartz"
    },
    {
        type = "recipe",
        name = "glass-from-raw",
        category = "smelting",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "quartz-ore", amount = 10 },
        },
        results = {
            { type = "item", name = "glass", amount = 1 },
        },
        energy_required = 3.2,
        main_product = "glass"
    },
    {
        type = "recipe",
        name = "glass-from-crushed",
        category = "smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "crushed-quartz", amount = 5 },
        },
        results = {
            { type = "item", name = "glass", amount = 1 },
        },
        energy_required = 3.2,
        main_product = "glass"
    },
    {
        type = "recipe",
        name = "glass-bottle",
        category = "crafting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "glass", amount = 2 },
        },
        results = {
            { type = "item", name = "glass-bottle", amount = 1 },
        },
        energy_required = 1,
        main_product = "glass-bottle"
    }
})
