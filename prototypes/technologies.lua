data:extend({
    {
        type = "technology",
        name = "mechanical-assembly-tech",
        icon = "__helios__/graphics/icons/part-mechanical-assembly.png",
        icon_size = 1024,
        prerequisites = { "automation" },
        unit = {
            time = 15,
            count = 50,
            ingredients = {
                { "automation-science-pack", 1 }
            },
        },
        effects = {
            { type = "unlock-recipe", recipe = "assembly-component" },
            { type = "unlock-recipe", recipe = "mechanical-assembly" }
        },
        order = "a-m"
    },
    {
        type = "technology",
        name = "improved-automation-science-tech",
        icon = "__base__/graphics/achievement/research-with-automation.png",
        icon_size = 128,
        prerequisites = { "logistic-science-pack" },
        unit = {
            time = 60,
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            }
        },
        effects = {
            { type = "unlock-recipe", recipe = "improved-automation-science" },
        },
    }
})
