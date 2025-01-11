data:extend({
    {
        type = "recipe",
        name = "solder",
        category = "electronics",
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
    {
        type = "recipe",
        name = "copper-coil",
        category = "electronics",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 2 },
            { type = "item", name = "iron-stick",   amount = 1 }
        },
        results = {
            { type = "item", name = "copper-coil", amount = 1 },
        },
        energy_required = 0.5,
        main_product = "copper-coil"
    },
    {
        type = "recipe",
        name = "inductor",
        category = "electronics",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "iron-plate",  amount = 2 },
            { type = "item", name = "copper-coil", amount = 1 }
        },
        results = {
            { type = "item", name = "inductor", amount = 1 },
        },
        energy_required = 1,
        main_product = "inductor"
    },
    {
        type = "recipe",
        name = "insulated-copper-cable",
        category = "electronics",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 2 },
            { type = "item", name = "rubber",       amount = 1 }
        },
        results = {
            { type = "item", name = "insulated-copper-cable", amount = 1 },
        },
        energy_required = 2,
        main_product = "insulated-copper-cable"
    },
    {
        type = "recipe",
        name = "printed-circuit-substrate-1",
        category = "electronics",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "resin",          amount = 2 },
            { type = "item", name = "tempered-glass", amount = 1 }
        },
        results = {
            { type = "item", name = "printed-circuit-substrate-1", amount = 1 },
        },
        energy_required = 10,
        main_product = "printed-circuit-substrate-1"
    },
})
