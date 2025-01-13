data:extend({
    { --possibly unusued, i forgot the player can already craft things in the crafting category
        type = "recipe",
        name = "scaffolding-from-wood",
        category = "hand-crafting",
        enabled = false,
        allow_productivity = true,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "wood",  amount = 20 },
            { type = "item", name = "rivet", amount = 4 }
        },
        results = {
            { type = "item", name = "scaffolding", amount = 1 },
        },
        energy_required = 2,
        main_product = "scaffolding"
    },
    {
        type = "recipe",
        name = "scaffolding",
        category = "crafting",
        enabled = false,
        allow_productivity = true,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "steel-plate", amount = 4 },
            { type = "item", name = "rivet",       amount = 4 }
        },
        results = {
            { type = "item", name = "scaffolding", amount = 1 },
        },
        energy_required = 2,
        main_product = "scaffolding"
    },
    {
        type = "recipe",
        name = "rivet",
        category = "intermediate-component",
        enabled = true,
        allow_productivity = true,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "copper-plate", amount = 1 },
            { type = "item", name = "iron-stick",   amount = 2 }
        },
        results = {
            { type = "item", name = "rivet", amount = 2 },
        },
        energy_required = 0.5,
        main_product = "rivet"
    },
    {
        type = "recipe",
        name = "ball-bearing",
        category = "intermediate-component",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "steel-plate",    amount = 1 },
            { type = "item", name = "ceramic-casing", amount = 2 }
        },
        results = {
            { type = "item", name = "ball-bearing", amount = 2 },
        },
        energy_required = 2,
        main_product = "ball-bearing"
    },
    {
        type = "recipe",
        name = "rubber-tubing",
        category = "crafting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "rubber",     amount = 2 },
            { type = "item", name = "iron-plate", amount = 1 }
        },
        results = {
            { type = "item", name = "rubber-tubing", amount = 1 },
        },
        energy_required = 2,
        main_product = "rubber-tubing"
    },
    {
        type = "recipe",
        name = "rubber-gasket",
        category = "crafting",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "rubber", amount = 1 },
        },
        results = {
            { type = "item", name = "rubber-gasket", amount = 2 },
        },
        energy_required = 2.5,
        main_product = "rubber-gasket"
    },
    {
        type = "recipe",
        name = "spring",
        category = "intermediate-component",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "iron-stick", amount = 2 },
        },
        results = {
            { type = "item", name = "spring", amount = 1 },
        },
        energy_required = 1,
        main_product = "spring"
    },
    {
        type = "recipe",
        name = "cladding",
        category = "intermediate-component",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "steel-plate", amount = 2 },
            { type = "item", name = "rivet",       amount = 4 },
        },
        results = {
            { type = "item", name = "cladding", amount = 1 },
        },
        energy_required = 5,
        main_product = "cladding"
    },
})
