data:extend({
    {
        type = "technology",
        name = "rubber-working",
        icon = "__helios__/graphics/technology/rubber.png",
        icon_size = 1024,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "rubber"
            },
            {
                type = "unlock-recipe",
                recipe = "rubber-tubing"
            },
            {
                type = "unlock-recipe",
                recipe = "rubber-gasket"
            },
        },
        prerequisites = { "automation-science-pack" },
        research_trigger = {
            type = "craft-item",
            item = "raw-latex",
            count = 10
        }
    },
})
