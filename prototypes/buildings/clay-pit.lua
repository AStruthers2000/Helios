local sounds = require("__base__.prototypes.entity.sounds")

--[[
data:extend({
    -- Recipe for the Clay Pit
    {
        type = "recipe",
        name = "clay-pit",
        energy_required = 5,
        enabled = false,
        ingredients = {
            { type = "item", name = "burner-mining-drill", amount = 2 },
            { type = "item", name = "pipe",                amount = 10 },
            { type = "item", name = "iron-plate",          amount = 40 },
            { type = "item", name = "steam-engine",        amount = 2 },
            { type = "item", name = "stone-brick",         amount = 20 },
        },
        results = { { type = "item", name = "clay-pit", amount = 1 } },
    },
    -- Item for the Clay Pit
    {
        type = "item",
        name = "clay-pit",
        icon = "__Krastorio2Assets__/icons/entities/flare-stack.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "e-d2[clay-pit]",
        place_result = "clay-pit",
        stack_size = 50,
    },
    -- Entity for the Clay Pit
    {
        type = "assembling-machine",
        name = "clay-pit",
        icon = "__Krastorio2Assets__/icons/entities/flare-stack.png",
        icon_size = 64,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.5, result = "clay-pit" },
        max_health = 300,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        resistances = {
            { type = "physical", percent = 50 },
            { type = "fire",     percent = 95 },
        },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        crafting_categories = { "clay" },
        crafting_speed = 1.0,
        fixed_recipe = "clay",
        module_specification = { module_slots = 2 },
        allowed_effects = { "consumption", "speed", "pollution" },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.06
            },
        },
        energy_usage = "0.1MW",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = {
                filename = "__Krastorio2Assets__/sounds/buildings/flare-stack.ogg",
                volume = 1,
            },
            idle_sound = {
                filename = "__base__/sound/idle1.ogg",
                volume = 1,
            },
            apparent_volume = 1,
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                pipe_picture = require("prototypes.buildings.pipe-picture"),
                volume = 500,
                pipe_connections = {
                    { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
                },
            },
        },
        graphics_set = {
            animation = {
                north = {
                    layers = {
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-n.png",
                            width = 150,
                            height = 300,
                            scale = 0.5,
                            frame_count = 1,
                            shift = { 0, -1 },
                        },
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
                            priority = "high",
                            width = 258,
                            height = 94,
                            shift = { 1.1, 0.25 },
                            frame_count = 1,
                            draw_as_shadow = true,
                            scale = 0.5,
                        },
                    },
                },
                east = {
                    layers = {
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-e.png",
                            width = 150,
                            height = 300,
                            scale = 0.5,
                            frame_count = 1,
                            shift = { 0, -1 },
                        },
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
                            priority = "high",
                            width = 258,
                            height = 94,
                            shift = { 1.1, 0.25 },
                            frame_count = 1,
                            draw_as_shadow = true,
                            scale = 0.5,
                        },
                    },
                },
                south = {
                    layers = {
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-s.png",
                            width = 150,
                            height = 300,
                            scale = 0.5,
                            frame_count = 1,
                            shift = { 0, -1 },
                        },
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
                            priority = "high",
                            width = 258,
                            height = 94,
                            shift = { 1.1, 0.25 },
                            frame_count = 1,
                            draw_as_shadow = true,
                            scale = 0.5,
                        },
                    },
                },
                west = {
                    layers = {
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-w.png",
                            width = 150,
                            height = 300,
                            scale = 0.5,
                            frame_count = 1,
                            shift = { 0, -1 },
                        },
                        {
                            filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-sh.png",
                            priority = "high",
                            width = 258,
                            height = 94,
                            shift = { 1.1, 0.25 },
                            frame_count = 1,
                            draw_as_shadow = true,
                            scale = 0.5,
                        },
                    },
                },
            },
            working_visualisations = {
                {
                    apply_recipe_tint = "quaternary",
                    fadeout = true,
                    animation = {
                        filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-fire.png",
                        line_length = 10,
                        width = 40,
                        height = 81,
                        frame_count = 60,
                        animation_speed = 0.75,
                        scale = 0.50,
                        shift = { 0, -3.25 },
                    },
                },
                {
                    light = {
                        intensity = 0.75,
                        size = 25,
                        shift = { 0, 0 },
                        color = { r = 1, g = 0.95, b = 0.75 },
                    },
                },
            },
            water_reflection = {
                pictures = {
                    filename = "__Krastorio2Assets__/buildings/flare-stack/flare-stack-reflection.png",
                    priority = "extra-high",
                    width = 20,
                    height = 30,
                    shift = util.by_pixel(0, 40),
                    variation_count = 1,
                    scale = 5,
                },
                rotate = false,
                orientation_to_variation = false,
            },
        },
    },
})
]]



--[[

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
require ("__base__.prototypes.entity.pipecovers")

local function electric_mining_grinder_status_colors()
    return
    {
        -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is used, always_draw of corresponding layer must be set to true to draw it in those states.

        no_power = { 0, 0, 0, 0 },         -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}

        idle = { 1, 0, 0, 1 },             -- If idle is not specified or is nil, it defaults to white.
        no_minable_resources = { 1, 0, 0, 1 }, -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or are nil, they default to idle color.
        insufficient_input = { 1, 1, 0, 1 },
        full_output = { 1, 1, 0, 1 },
        disabled = { 1, 1, 0, 1 },

        working = { 0, 1, 0, 1 }, -- If working is not specified or is nil, it defaults to white.
        low_power = { 1, 1, 0, 1 }, -- If low_power is not specified or is nil, it defaults to working color.
    }
end

local function electric_mining_drill_status_leds_working_visualisation()
    local led_blend_mode = nil -- "additive"
    local led_tint = {1,1,1,1}
    return
    {
        apply_tint = "status",
        always_draw = true,
        draw_as_light = true,
        north_animation =
        {
            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-n-led.png",
            width = 40,
            height = 30,
            scale = 0.4,
            blend_mode = led_blend_mode,
            draw_as_light = true,
            tint = led_tint,
            shift = util.by_pixel(-50, -62),
        },
        east_animation =
        {
            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-e-led.png",
            width = 30,
            height = 40,
            blend_mode = led_blend_mode,
            draw_as_light = true,
            scale = 0.4,
            tint = led_tint,
            shift = util.by_pixel(61, -52),
        },
        south_animation =
        {
            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-s-led.png",
            width = 40,
            height = 30,
            blend_mode = led_blend_mode,
            draw_as_light = true,
            scale = 0.4,
            tint = led_tint,
            shift = util.by_pixel(51.5, 46),
        },
        west_animation =
        {
            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-w-led.png",
            width = 30,
            height = 40,
            blend_mode = led_blend_mode,
            draw_as_light = true,
            scale = 0.4,
            tint = led_tint,
            shift = util.by_pixel(-62, 36),
        },
    }
end


data:extend({
    -- Recipe for the Clay Pit
    {
        type = "recipe",
        name = "clay-pit",
        energy_required = 5,
        enabled = false,
        ingredients = {
            { type = "item", name = "burner-mining-drill", amount = 2 },
            { type = "item", name = "pipe",                amount = 10 },
            { type = "item", name = "iron-plate",          amount = 40 },
            { type = "item", name = "steam-engine",        amount = 2 },
            { type = "item", name = "stone-brick",         amount = 20 },
        },
        results = { { type = "item", name = "clay-pit", amount = 1 } },
    },
    -- Item for the Clay Pit
    {
        type = "item",
        name = "clay-pit",
        icon = "__helios__/graphics/icons/electric-grinder.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "e-d2[clay-pit]",
        place_result = "clay-pit",
        stack_size = 50,
    },
    -- Entity for the Clay Pit
    {
        type = "assembling-machine",
        name = "clay-pit",
        icon = "__helios__/graphics/icons/electric-grinder.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "placeable-player", "player-creation", "not-rotatable" },
        minable = { mining_time = 0.5, result = "clay-pit" },
        max_health = 300,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        drawing_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        crafting_categories = { "clay" },
        crafting_speed = 1.0,
        fixed_recipe = "clay",
        module_specification = { module_slots = 2 },
        allowed_effects = { "consumption", "speed", "pollution" },
        damaged_trigger_effect = hit_effects.entity(),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.06
            },
        },
        energy_usage = "0.1MW",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound = sound_variations("__base__/sound/burner-mining-drill", 2, 0.5,
                volume_multiplier("tips-and-tricks", 0.8)),
            fade_in_ticks = 4,
            fade_out_ticks = 20,
            idle_sound = {
                filename = "__base__/sound/idle1.ogg",
                volume = 1,
            },
            apparent_volume = 1,
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                pipe_picture = {
                    north = {
                        filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-N.png",
                        priority = "low",
                        width = 71,
                        height = 38,
                        shift = util.by_pixel(2.25, 13.5),
                        scale = 0.5
                    },
                    east = {
                        filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-E.png",
                        priority = "low",
                        width = 42,
                        height = 76,
                        shift = util.by_pixel(-24.5, 1),
                        scale = 0.5
                    },
                    south = {
                        filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-S.png",
                        priority = "extra-high",
                        width = 88,
                        height = 61,
                        shift = util.by_pixel(0, -31.25),
                        scale = 0.5
                    },
                    west = {
                        filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-W.png",
                        priority = "low",
                        width = 39,
                        height = 73,
                        shift = util.by_pixel(25.75, 1.25),
                        scale = 0.5
                    },
                },
                volume = 500,
                pipe_connections = {
                    { position = { 0.0, 0.95 }, direction = defines.direction.south }
                },

                secondary_draw_orders = { { north = -16, east = -16, south = -16, west = -16 } }
            },
        },
        graphics_set =
        {
            animation =
            {
                north =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-n.png",
                            line_length = 4,
                            width = 3480 / 4,
                            height = 1440 / 2,
                            --scale = 0.23,
                            scale = 0.135,
                            frame_count = 8,
                            animation_speed = 1 / 3,
                            direction_count = 1,
                            shift = util.by_pixel(0, 0),
                        },
                        {
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-shadow.png",
                            priority = "high",
                            width = 870,
                            height = 720,
                            repeat_count = 8,
                            draw_as_shadow = true,
                            shift = util.by_pixel(2, 2),
                            --scale = 0.225
                            scale = 0.145
                        }
                    }
                },
                east =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-e.png",
                            line_length = 4,
                            width = 3480 / 4,
                            height = 1440 / 2,
                            scale = 0.135,
                            frame_count = 8,
                            animation_speed = 1 / 3,
                            direction_count = 1,
                            shift = util.by_pixel(0, 0),
                        },
                        {
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-shadow.png",
                            priority = "high",
                            width = 870,
                            height = 720,
                            repeat_count = 8,
                            draw_as_shadow = true,
                            shift = util.by_pixel(2, 2),
                            scale = 0.145
                        }
                    }
                },
                south =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-s.png",
                            line_length = 4,
                            width = 3480 / 4,
                            height = 1440 / 2,
                            scale = 0.135,
                            frame_count = 8,
                            animation_speed = 1 / 3,
                            direction_count = 1,
                            shift = util.by_pixel(0, 0),
                        },
                        {
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-shadow.png",
                            priority = "high",
                            width = 870,
                            height = 720,
                            repeat_count = 8,
                            draw_as_shadow = true,
                            shift = util.by_pixel(2, 2),
                            scale = 0.145
                        }
                    }
                },
                west =
                {
                    layers =
                    {
                        {
                            priority = "high",
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-w.png",
                            line_length = 4,
                            width = 3480 / 4,
                            height = 1440 / 2,
                            scale = 0.135,
                            frame_count = 8,
                            animation_speed = 1 / 3,
                            direction_count = 1,
                            shift = util.by_pixel(0, 0),
                        },
                        {
                            filename = "__helios__/graphics/entity/clay-pit/electric-grinder-shadow.png",
                            priority = "high",
                            width = 870,
                            height = 720,
                            repeat_count = 8,
                            draw_as_shadow = true,
                            shift = util.by_pixel(2, 2),
                            scale = 0.145
                        }
                    }
                },
            },
            working_visualisations =
            {
                electric_mining_drill_status_leds_working_visualisation(),
            },
            status_colors = electric_mining_grinder_status_colors(),
            circuit_connector_layer = "object",
            circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },
        },
        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    },
})
]]
