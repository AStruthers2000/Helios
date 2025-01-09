data:extend({
    {
        type = "recipe",
        name = "biomass-from-sap",
        category = "bioprocessing",
        --subgroup = "vulcanus-processes",
        --order = "b[casting]-s[spring]",
        enabled = true,
        allow_productivity = true,
        auto_recycle = false,
        allow_decomposition = false,
        ingredients = {
            { type = "item", name = "sap", amount = 1 },
        },
        results = {
            { type = "item", name = "biomass", amount = 1 }
        },
        energy_required = 60,
        main_product = "biomass",
    }
})
