data:extend({
    {
        type = "technology",
        name = "bottling",
        icon = "__helios__/graphics/technology/glassworking.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glass-bottle"
            },
        },
        prerequisites = {},
        research_trigger = {
            type = "craft-item",
            item = "glass",
            count = 2
        }
    }
})
