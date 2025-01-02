local spring_recipe = {
    type = "recipe",
    name = "spring",
    category = "crafting",
    enabled = true,
    allow_productivity = true,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 2}
    },
    results = {
        {type = "item", name = "spring", amount = 1}
    },
    energy_required = 1,
}


data:extend({spring_recipe})

data:extend({
    {
        type = "recipe",
        name = "casting-spring",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        order = "b[casting]-s[spring]",
        icon = "__helios__/graphics/icons/casting-spring.png",
        icon_size = 64,
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            {type = "fluid", name = "molten-iron", amount = 10}
        },
        results = {
            {type = "item", name = "spring", amount = 10}
        },
        energy_required = 0.5
    },
    {
        type = "recipe",
        name = "assembly-component",
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { type = "item", name = "iron-plate",  amount = 1 },
            { type = "item", name = "stone-brick", amount = 1 }
        },
        results = {
            { type = "item", name = "assembly-component", amount = 1 }
        },
        energy_required = 2,
    },
    {
        type = "recipe",
        name = "mechanical-assembly",
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { type = "item", name = "spring",             amount = 1 },
            { type = "item", name = "copper-cable",       amount = 2 },
            { type = "item", name = "assembly-component", amount = 1 }
        },
        results = {
            { type = "item", name = "mechanical-assembly", amount = 1 }
        },
        energy_required = 5
    },
    --[[{
        type = "recipe",
        name = "improved-automation-science",
        subgroup = "improved-science-pack",
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-gear-wheel",     amount = 1 },
            { type = "item", name = "copper-plate",        amount = 1 },
            { type = "item", name = "mechanical-assembly", amount = 1 }
        },
        results = {
            { type = "item", name = "automation-science-pack", amount = 2 }
        },
        energy_required = 5,
        show_amount_in_title = false,
    }]]--
})


