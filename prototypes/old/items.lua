local spring = {
    type = "item",
    name = "spring",
    icon = "__helios__/graphics/icons/mipped/part-metal-spring-1.png",
    --[[pictures = {
        {
            size = 64,
            filename = "__helios__/graphics/icons/mipped/part-metal-spring-1.png",
            scale = 0.25,
            mipmap_count = 4
        }
    },]]--
    icon_size = 64,
    pick_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    drop_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    inventory_move_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    subgroup = "intermediate-product",
    order = "a[spring]",
    stack_size = 100,
    weight = 500,
}

local assembly_component = {
    type = "item",
    name = "assembly-component",
    icon = "__helios__/graphics/icons/mipped/part-assembly-component.png",
    icon_size = 64,
    pick_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    drop_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    inventory_move_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    subgroup = "intermediate-product",
    order = "b[assembly-component]",
    stack_size = 100,
    weight = 1000
}

local mechanical_assembly = {
    type = "item",
    name = "mechanical-assembly",
    icon = "__helios__/graphics/icons/mipped/part-mechanical-assembly.png",
    icon_size = 64,
    pick_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    drop_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    inventory_move_sound = "__base__/sound/item/metal-small-inventory-pickup.ogg",
    subgroup = "intermediate-product",
    order = "c[mechanical-assembly]",
    stack_size = 50,
    weight = 4000
}

data:extend({spring, assembly_component, mechanical_assembly})