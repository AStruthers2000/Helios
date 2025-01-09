data:extend({
    {
        type = "technology",
        name = "forestry",
        icon = "__space-age__/graphics/technology/tree-seeding.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "agricultural-tower"
            },
            {
                type = "unlock-recipe",
                recipe = "wood-processing"
            }
        },
        prerequisites = { "logistic-science-pack" },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 60
        }
    },
})
