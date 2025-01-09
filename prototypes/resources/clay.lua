local resource_autoplace = require("__core__.lualib.resource-autoplace")

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["clay-mud"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["clay-mud"] = {}

data:extend({
    {
        type = "autoplace-control",
        name = "clay-mud",
        localized_name = { "", "[entity=clay-mud] ", { "autoplace-control-names.clay-mud" } },
        order = "b-a",
        richness = true,
        category = "resource",
    },
    {
        type = "fluid",
        name = "clay-mud",
        icon = "__helios__/graphics/icons/resources/fluid-droplet-red-mud.png",
        icon_size = 64,
        flags = {},
        subgroup = "fluid",
        order = "aaa",
        base_color = {r = 0.69, g = 0.39, b = 0.23},
        flow_color = {r = 0.69, g = 0.39, b = 0.23},
        default_temperature = 25,
        max_temperature = 100,
        base_flow_rate = 100,
        auto_barrel = true,
    },
    {
        type = "resource",
        name = "clay-mud",
        icon = "__helios__/graphics/entity/resources/hr-mud.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral" },
        order = "a-b-a",
        category = "basic-fluid",
        subgroup = "raw-resource",
        map_color = {r = 0.88, g = 0.26, b = 0.02},
        minable = {
            mining_time = 1,
            mining_particle = "stone-particle",
            results = {
                { type = "fluid", name = "clay-mud", amount_min = 20, amount_max = 20, probability = 1 }
            },
        },
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        infinite = false,
        map_grid = false,
        highlight = true,
        minimum = 20000,
        normal = 75000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        autoplace = resource_autoplace.resource_autoplace_settings({
            name = "clay-mud",
            order = "c",
            base_density = 4,
            base_spots_per_km2 = 0.75,
            has_starting_area_placement = false,
            random_probability = 1 / 50,
            random_spot_size_minimum = 2,
            random_spot_size_maximum = 2,
            --regular_blob_amplitude_multiplier = 1.0,
            --starting_blob_amplitude_multiplier = 2.0,
            regular_rq_factor_multiplier = 1.0,
            --starting_rq_factor_multiplier = 2.0,
            --candidate_spot_count = 20,
            additional_richness = 50000,
        }),
        stage_counts = { 0 },
        stages = {
            sheet = {
                filename = "__helios__/graphics/entity/resources/hr-mud.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 1,
                --scale = 0.5
            }
        }
    },
})
