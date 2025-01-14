﻿local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "insulated-copper-cable",
        subgroup = "intermediate-product",
        order = "e[electronic]-b[cable]",
        inventory_move_sound = item_sounds.wire_inventory_move,
        pick_sound = item_sounds.wire_inventory_pickup,
        drop_sound = item_sounds.wire_inventory_move,
        icon = "__helios__/graphics/icons/items/part-insulated-cable-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/part-insulated-cable-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-insulated-cable-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-insulated-cable-3.png" },
        },
        stack_size = 200,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "copper-coil",
        subgroup = "intermediate-product",
        order = "e[electronic]-c[coil]",
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        icon = "__helios__/graphics/icons/items/part-electronic-coil-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-coil-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-coil-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-coil-3.png" },
        },
        stack_size = 100,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "inductor",
        subgroup = "intermediate-product",
        order = "e[electronic]-c[inductor]",
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        icon = "__helios__/graphics/icons/items/part-electronic-inductor-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-inductor-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-inductor-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-electronic-inductor-3.png" },
        },
        stack_size = 100,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "solder",
        subgroup = "intermediate-product",
        order = "e[electronic]-b[solder]",
        inventory_move_sound = item_sounds.wire_inventory_move,
        pick_sound = item_sounds.wire_inventory_pickup,
        drop_sound = item_sounds.wire_inventory_move,
        icon = "__helios__/graphics/icons/items/part-cable-solder-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/part-cable-solder-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-cable-solder-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/part-cable-solder-3.png" },
        },
        stack_size = 200,
        weight = 2 * kg,
    },
    {
        type = "item",
        name = "printed-circuit-substrate-1",
        subgroup = "intermediate-product",
        order = "e[electronic]-d[substrate-a]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        icon = "__helios__/graphics/icons/items/part-electronic-circuit-substrate-3.png",
        icon_size = 64,
        stack_size = 100,
        weight = 2 * kg,
    },
})
