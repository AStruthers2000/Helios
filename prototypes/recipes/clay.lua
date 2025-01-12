data:extend({
    {
        type = "recipe",
        name = "clay",
        category = "clay",
        --subgroup = "vulcanus-processes",
        --order = "b[casting]-s[spring]",
        icon = "__helios__/graphics/icons/items/clay.png",
        icon_size = 32,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item",  name = "stone", amount = 1 },
            { type = "fluid", name = "steam", amount = 50, fluidbox_index = 1 }
        },
        results = {
            { type = "item", name = "clay", amount = 1 }
        },
        energy_required = 0.5,
        main_product = "clay",
    },
    {
        type = "recipe",
        name = "clay-brick",
        category = "smelting",
        --icon = "__helios__/graphics/icons/items/clay-brick.png",
        --icon_size = 32,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "clay", amount = 2 },
        },
        results = {
            { type = "item", name = "clay-brick", amount = 1 }
        },
        energy_required = 1,
        main_product = "clay-brick",
    },
    {
        type = "recipe",
        name = "ceramic-casing",
        category = "crafting",
        icon = "__helios__/graphics/icons/items/ceramic.png",
        icon_size = 64,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = true,
        ingredients = {
            { type = "item", name = "clay-brick", amount = 5 },
        },
        results = {
            { type = "item", name = "ceramic-casing", amount = 1 }
        },
        energy_required = 1,
        main_product = "ceramic-casing",
    },
})
