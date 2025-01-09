data:extend({
    {
        type = "technology",
        name = "energy-distribution",
        icon = "__helios__/graphics/technology/electric-energy-distribution.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "copper-cable"
            },
            {
                type = "unlock-recipe",
                recipe = "small-electric-pole"
            },
        },
        prerequisites = {},
        research_trigger =
        {
            type = "craft-item",
            item = "copper-plate",
            count = 10
        }
    },
    {
        type = "technology",
        name = "labs",
        icon = "__base__/graphics/technology/electricity-consumers.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "lab"
          },
        },
        prerequisites = {"ceramics"},
        research_trigger =
        {
          type = "craft-item",
          item = "clay-brick",
          count = 50
        }
      },
})
