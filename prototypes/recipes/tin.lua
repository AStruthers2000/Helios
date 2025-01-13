data:extend({
    {
        type = "recipe",
        name = "crushed-tin",
        category = "metallurgy-or-assembling",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "tin-ore", amount = 1 },
        },
        results = {
            { type = "item", name = "crushed-tin", amount = 2 },
        },
        energy_required = 1,
        main_product = "crushed-tin"
    },
    {
        type = "recipe",
        name = "tin-from-raw",
        category = "smelting",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "tin-ore", amount = 10 },
        },
        results = {
            { type = "item", name = "tin-plate", amount = 1 },
        },
        energy_required = 3.2,
        main_product = "tin-plate"
    },
    {
        type = "recipe",
        name = "tin-from-crushed",
        category = "smelting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "crushed-tin", amount = 5 },
        },
        results = {
            { type = "item", name = "tin-plate", amount = 1 },
        },
        energy_required = 3.2,
        main_product = "tin-plate"
    },
    {
        type = "recipe",
        name = "tin-gear-wheel",
        category = "intermediate-component",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "tin-plate", amount = 2 },
        },
        results = {
            { type = "item", name = "tin-gear-wheel", amount = 1 },
        },
        energy_required = 0.5,
        main_product = "tin-gear-wheel"
    },
    {
        type = "recipe",
        name = "gear-wheel-assembly",
        category = "intermediate-component",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "iron-gear-wheel", amount = 2 },
            { type = "item", name = "tin-gear-wheel",  amount = 2 }
        },
        results = {
            { type = "item", name = "gear-wheel-assembly", amount = 1 },
        },
        energy_required = 1,
        main_product = "gear-wheel-assembly"
    }
})
