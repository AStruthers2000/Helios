data:extend({
    {
        type = "technology",
        name = "inserters",
        icon = "__base__/graphics/technology/inserter-capacity.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "spring"
            },
            {
                type = "unlock-recipe",
                recipe = "inserter"
            },
            {
                type = "unlock-recipe",
                recipe = "long-handed-inserter"
            },
        },
        prerequisites = {"electronics"},
        unit = {
            count = 20,
            ingredients = { { "automation-science-pack", 1 } },
            time = 10
        }
    },
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
