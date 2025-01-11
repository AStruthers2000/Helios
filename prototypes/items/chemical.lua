local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "rubber",
        subgroup = "intermediate-product",
        order = "b[chemistry]-b[rubber]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        icon = "__helios__/graphics/icons/items/material-rubber-sheet-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/material-rubber-sheet-1.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/material-rubber-sheet-2.png" },
            { size = 64, filename = "__helios__/graphics/icons/items/material-rubber-sheet-3.png" },
        },
        stack_size = 200,
        weight = 2 * kg,
    },
})
