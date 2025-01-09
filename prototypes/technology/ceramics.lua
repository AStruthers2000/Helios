data:extend({
    {
        type = "technology",
        name = "ceramics",
        icon = "__helios__/graphics/technology/ceramics.png",
        icon_size = 1024,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "clay-pit"
            },
            {
                type = "unlock-recipe",
                recipe = "clay"
            },
            {
                type = "unlock-recipe",
                recipe = "clay-brick"
            },
            {
                type = "unlock-recipe",
                recipe = "ceramic-casing"
            }
        },
        prerequisites = { "steam-power" },
        research_trigger = {
            type = "craft-item",
            item = "stone-brick",
            count = 20
        }
    },
})
