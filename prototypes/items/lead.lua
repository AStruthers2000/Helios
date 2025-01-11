local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "crushed-lead",
        icon = "__helios__/graphics/icons/items/lead/lead-crushed-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/lead/lead-crushed-1.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/lead/lead-crushed-2.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/lead/lead-crushed-3.png", scale = 0.66 },
        },
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "processed-lead",
        icon = "__helios__/graphics/icons/items/lead/lead-processed.png",
        icon_size = 32,
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "lead-slurry",
        icon = "__helios__/graphics/icons/items/lead/lead-slurry.png",
        icon_size = 32,
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "lead-plate",
        subgroup = "raw-material",
        order = "a[smelting]-a[lead-plate]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        icon = "__helios__/graphics/icons/items/lead/lead-plate.png",
        icon_size = 32,
        stack_size = 100,
        weight = 2 * kg,
    },
})
