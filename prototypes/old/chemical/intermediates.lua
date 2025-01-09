local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "rubber",
        icon = "__helios__/graphics/icons/mipped/chemical/material-rubber-sheet-1.png",
        icon_size = 64,
        inventory_move_sound = item_sounds.plastic_inventory_move,
        pick_sound = item_sounds.plastic_inventory_pickup,
        drop_sound = item_sounds.plastic_inventory_move,
        subgroup = "intermediate-product",
        order = "c[chemistry]-r[rubber]",
        stack_size = 200,
        weight = 500,
    },
})