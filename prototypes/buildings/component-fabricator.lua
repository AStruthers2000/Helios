local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "recipe",
        name = "component-fabricator",
        energy_required = 10,
        enabled = false,
        ingredients = {
            { type = "item", name = "wood",       amount = 20 },
            { type = "item", name = "iron-plate", amount = 100 },
            { type = "item", name = "rivet",      amount = 20 },
            { type = "item", name = "glass",      amount = 20 },
            { type = "item", name = "clay-brick", amount = 50 },
        },
        results = { { type = "item", name = "component-fabricator", amount = 1 } },
    },
    {
        type = "item",
        name = "component-fabricator",
        icon = "__helios__/graphics/icons/component-fabricator.png",
        subgroup = "production-machine",
        order = "d-g1[greenhouse]",
        place_result = "component-fabricator",
        stack_size = 50,
    },
    {
        type = "assembling-machine",
        name = "component-fabricator",
        icon = "__helios__/graphics/icons/component-fabricator.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "component-fabricator" },
        max_health = 200,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",

        --[[effect_receiver = {
            base_effect = {
                productivity = 0.5,
            }
        },]]--

        scale_entity_info_icon = true,
        resistances =
        {
            {
                type = "fire",
                percent = 40
            }
        },
        --collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        --selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        --damaged_trigger_effect = hit_effects.entity(),
        --fast_replaceable_group = "assembling-machine",
        alert_icon_shift = util.by_pixel(-3, -12),

        graphics_set =
        {
            always_draw_idle_animation = false,
            --[[animation = {
                layers = {
                    {
                        filename = "__helios__/graphics/entity/component-fabricator-shadow-idle.png",
                        priority = "low",
                        width = 320,
                        height = 128,
                        frame_count = 1,
                        shift = util.by_pixel(39, 13),
                        scale = 0.55,
                    },
                    {
                        filename = "__helios__/graphics/entity/component-fabricator-machine-idle.png",
                        priority = "medium",
                        width = 180,
                        height = 240,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16),
                        scale = 0.55,
                    },
                }
            },
            working_visualisations = {
                {
                    animation = {
                        filename = "__helios__/graphics/entity/component-fabricator-shadow.png",
                        priority = "high",
                        width = 2880 / 9,
                        height = 256 / 2,
                        frame_count = 18,
                        line_length = 9,
                        draw_as_shadow = true,
                        shift = util.by_pixel(39, 13),
                        scale = 0.55,
                    }
                },
                {
                    animation = {
                        filename = "__helios__/graphics/entity/component-fabricator-machine.png",
                        priority = "extra-high",
                        width = 1620 / 9,
                        height = 480 / 2,
                        frame_count = 18,
                        line_length = 9,
                        shift = util.by_pixel(0, -16),
                        scale = 0.55,
                    },
                },
            }]]
            animation =
            {
                layers =
                {
                    {
                        filename = "__helios__/graphics/entity/component-fabricator-machine.png",
                        priority = "extra-high",
                        width = 1620 / 9,
                        height = 480 / 2,
                        frame_count = 18,
                        line_length = 9,
                        shift = util.by_pixel(0, -16),
                        scale = 0.355,
                    },
                    {
                        filename = "__helios__/graphics/entity/component-fabricator-shadow.png",
                        priority = "high",
                        width = 2880 / 9,
                        height = 256 / 2,
                        frame_count = 18,
                        line_length = 9,
                        draw_as_shadow = true,
                        shift = util.by_pixel(26, 4),
                        scale = 0.355,
                    }
                }
            },
        },
        crafting_categories = { "intermediate-component" },
        crafting_speed = 1,
        ingredient_count = 2,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 6 },
        },
        energy_usage = "650kW",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            match_speed_to_activity = true,
            sound =
            {
                {
                    filename = "__helios__/sounds/press.ogg",
                    volume = 0.3,
                    min_speed = 0.1,
                    max_speed = 1.4,
                },
            },
            audible_distance_modifier = 0.5,
        },
        allowed_effects = { "consumption", "speed", "productivity", "pollution" }
    }
})
