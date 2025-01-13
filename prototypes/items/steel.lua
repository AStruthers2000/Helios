local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
    {
        type = "item",
        name = "coke",
        icon = "__helios__/graphics/icons/items/material-fuel-coke-1.png",
        pictures =
        {
            { size = 64, filename = "__helios__/graphics/icons/items/material-fuel-coke-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-fuel-coke-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-fuel-coke-3.png", scale = 0.5, mipmap_count = 4 },
        },
        fuel_category = "chemical",
        fuel_value = "6MJ",
        subgroup = "raw-resource",
        order = "b[coke]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg,
        random_tint_color = item_tints.yellowing_coal
    },
    {
        type = "item",
        name = "quicklime",
        icon = "__helios__/graphics/icons/items/material-quicklime-1.png",
        pictures =
        {
            { size = 64, filename = "__helios__/graphics/icons/items/material-quicklime-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-quicklime-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-quicklime-3.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "raw-resource",
        order = "d[quicklime]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
    },
    {
        type = "item",
        name = "limestone",
        icon = "__helios__/graphics/icons/items/limestone.png",
        icon_size = 32,
        subgroup = "raw-resource",
        order = "d[limestone]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 100,
        weight = 2 * kg
    },
    {
        type = "fluid",
        name = "carbon-dioxide",
        icon = "__helios__/graphics/icons/fluids/molecule-carbon-dioxide.png",
        icon_size = 64,
        subgroup = "fluid",
        order = "a[fluid]-b[carbon-dioxide]",
        default_temperature = 15,
        heat_capacity = "1kJ",
        base_color = { r = 0.807, g = 0.949, b = 0.941 },
        flow_color = { r = 1, g = 1, b = 1 },
        max_temperature = 100,
        gas_temperature = 15
    },
})
