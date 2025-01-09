local item_sounds = require("__base__.prototypes.item_sounds")

local clayBrick = table.deepcopy(data.raw["item"]["stone-brick"])
clayBrick.name = "clay-brick"
clayBrick.subgroup = "intermediate-product"
clayBrick.order = "h[ceramic]-c"
clayBrick.icons = {
    {
        icon = "__helios__/graphics/icons/items/clay-brick.png",
        icon_size = 32,
        --tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 },
    }
}
clayBrick.place_as_tile = nil

data:extend({clayBrick})

data:extend({
    {
        type = "item",
        name = "clay",
        icon = "__helios__/graphics/icons/items/clay.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "h[ceramic]-c",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        --subgroup = "helios-electronics",
        --order = "e[electronic]-i[insulated-cable]",
        stack_size = 200,
        weight = 500,
    },
    --[[{
        type = "item",
        name = "clay-brick",
        icon = "__helios__/graphics/icons/items/clay-brick.png",
        tint = { r = 0.69, g = 0.39, b = 0.23, a = 0.3 },
        icon_size = 32,
        subgroup = "intermediate-product",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 200,
        weight = 500
    },]]--
    {
        type = "item",
        name = "ceramic-casing",
        icon = "__helios__/graphics/icons/items/ceramic.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "h[ceramic]-c",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        weight = 1000
    }
})
