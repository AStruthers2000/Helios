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
    {
        type = "technology",
        name = "compost-bin",
        icon = "__Krastorio2Assets__/technologies/greenhouse.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "compost-bin"
            },
            {
                type = "unlock-recipe",
                recipe = "biomass"
            }
        },
        prerequisites = {"ceramics"},
        research_trigger = {
            type = "craft-item",
            item = "biomass"
        }
    }
})
