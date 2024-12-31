local spring_recipe = {
    type = "recipe",
    name = "craft-spring",
    category = "crafting",
    enabled = true,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 2}
    },
    results = {
        {type = "item", name = "spring", amount = 1}
    },
    energy_required = 1,
}

data:extend({spring_recipe})