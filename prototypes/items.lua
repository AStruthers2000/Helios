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
    subgroup = "intermediate-product",
    order = "a[spring]",
    stack_size = 100
}

data:extend({spring})