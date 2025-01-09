local resource_autoplace = require("__core__.lualib.resource-autoplace")

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["quartz-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["quartz-ore"] = {}

data:extend({
    {
        type = "autoplace-control",
        name = "quartz-ore",
        localized_name = { "", "[entity=quartz-ore] ", { "autoplace-control-names.quartz-ore" } },
        order = "b-a",
        richness = true,
        category = "resource",
    },
    {
        type = "item",
        name = "quartz-ore",
        icon = "__helios__/graphics/icons/resources/ore-quartz.png",
        icon_size = 64,
        pictures = {
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz.png",   scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-1.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-2.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-3.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-4.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-5.png", scale = 0.66 },
            { size = 64, filename = "__helios__/graphics/icons/resources/ore-quartz-6.png", scale = 0.66 }
        },
        flags = {},
        subgroup = "raw-resource",
        order = "aaa",
        stack_size = 50
    },
    {
        type = "resource",
        name = "quartz-ore",
        icon = "__helios__/graphics/icons/ores/ore-quartz.png",
        icon_size = 32,
        flags = { "placeable-neutral" },
        order = "a-b-a",
        subgroup = "raw-resource",
        map_color = { r = 0.670, g = 0.792, b = 0.913 },
        minable = {
            -- mining_particle = "quartz-ore-particle",
            mining_time = 2,
            mining_particle = "stone-particle",
            results = {
                { type = "item", name = "quartz-ore", amount = 1 }
            }
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        autoplace = resource_autoplace.resource_autoplace_settings({
            name = "quartz-ore",
            order = "b",
            base_density = 4.0,
            base_spots_per_km2 = 2.0,
            has_starting_area_placement = true,
            random_spot_size_minimum = 1.0,
            random_spot_size_maximum = 3.5,
            regular_blob_amplitude_multiplier = 1.0,
            starting_blob_amplitude_multiplier = 2.0,
            regular_rq_factor_multiplier = 1.0,
            starting_rq_factor_multiplier = 2.0,
            candidate_spot_count = 22,
        }),
        stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
        stages = {
            sheet = {
                filename = "__helios__/graphics/entity/resources/hr-quartz.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    },
})
