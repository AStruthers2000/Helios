data:extend({
    {
        type = "technology",
        name = "electronics-stage-1",
        icon = "__helios__/graphics/icons/tech/computronics.png",
        icon_size = 1024,
        prerequisites = { "chemical-science-pack" },
        unit = {
            time = 15,
            count = 50,
            ingredients = {
                { "automation-science-pack", 1 }
            },
        },
        effects = {
            { type = "unlock-recipe", recipe = "carbon" },
            --{ type = "unlock-recipe", recipe = "mechanical-assembly" }
        },
    },
})