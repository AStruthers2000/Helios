local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "sap",
        icon = "__helios__/graphics/icons/items/sap.png",
        icon_size = 64,
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 100,
        weight = 2 * kg,
        fuel_category = "chemical",
        fuel_value = "1MJ",
        subgroup = "raw-resource",
        default_import_loation = "nauvis",
        spoil_ticks = 10 * minute,
        spoil_result = "biomass",
    },
    {
        type = "item",
        name = "biomass",
        icon = "__helios__/graphics/icons/items/material-cube-biomass-1.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/items/material-cube-biomass-1.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-cube-biomass-2.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/items/material-cube-biomass-3.png", scale = 0.66 },
        },
        stack_size = 100,
        weight = 2 * kg,
        fuel_category = "chemical",
        fuel_value = "5MJ",
        subgroup = "raw-resource",
        default_import_loation = "nauvis",
        spoil_ticks = 2 * hour,
        spoil_result = "spoilage",
    }
})
