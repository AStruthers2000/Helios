﻿local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "crushed-quartz",
        icon = "__helios__/graphics/icons/items/quartz/quartz-crushed-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/quartz-crushed-1.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/quartz-crushed-2.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/quartz-crushed-3.png", scale = 0.66 },
        },
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "processed-quartz",
        icon = "__helios__/graphics/icons/items/quartz/quartz-processed.png",
        icon_size = 32,
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "high-purity-quartz",
        icon = "__helios__/graphics/icons/items/quartz/quartz-high-purity.png",
        icon_size = 32,
        stack_size = 20,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "glass",
        subgroup = "raw-material",
        order = "a[smelting]-b[glass-plate]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        icon = "__helios__/graphics/icons/items/quartz/part-glass-panes-low-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/part-glass-panes-low-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/part-glass-panes-low-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/quartz/part-glass-panes-low-3.png" },
        },
        stack_size = 200,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "glass-bottle",
        subgroup = "science-pack",
        order = "a",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        icon = "__helios__/graphics/icons/items/generic-bottle-1.png",
        icon_size = 1024,
        stack_size = 50,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "tempered-glass",
        subgroup = "intermediate-product",
        order = "e[electronics]-d[a]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        icon = "__helios__/graphics/icons/items/tempered-glass.png",
        icon_size = 64,
        stack_size = 200,
        weight = 2 * kg,
    },
})
