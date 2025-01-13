local util = require("util")

-- Deepcopy the chemical plant to use as a base
local chemical_smelter_entity = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])

-- Update entity properties
chemical_smelter_entity.name = "chemical-smelter"
chemical_smelter_entity.icon = "__helios__/graphics/icons/pchamber1.png"
chemical_smelter_entity.icon_size = 64
chemical_smelter_entity.minable.result = "chemical-smelter"
chemical_smelter_entity.crafting_categories = {"chemical-smelting", "chemistry", "clay"}
chemical_smelter_entity.module_slots = 0
chemical_smelter_entity.crafting_speed = 0.25


-- Keep the 3x3 size
chemical_smelter_entity.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
chemical_smelter_entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
chemical_smelter_entity.drawing_box = {{-1.5, -1.5}, {1.5, 1.5}}
chemical_smelter_entity.forced_symmetry = "diagonal-pos"

chemical_smelter_entity.fluid_boxes_off_when_no_fluid_recipe = true
chemical_smelter_entity.fluid_boxes = {
    {
        production_type = "input",
        --base_area = 1,
        pipe_picture = require("prototypes.buildings.furnace-pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.north,
                position = { 0, -1 }
            },
        },

    },
    {
        production_type = "input",
        --base_area = 1,
        pipe_picture = require("prototypes.buildings.furnace-pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.east,
                position = { 1, 0 }
            },
        }
    },
    {
        production_type = "output",
        --base_area = 1,
        pipe_picture = require("prototypes.buildings.furnace-pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "output",
                direction = defines.direction.south,
                position = { 0, 1 }
            },
        },
    },
    {
        production_type = "output",
        --base_area = 1,
        pipe_picture = require("prototypes.buildings.furnace-pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "output",
                direction = defines.direction.west,
                position = { -1, 0 }
            },
        },
    },
}
-- Define custom animation using the sprite sheet
chemical_smelter_entity.graphics_set = {
    animation = {
        layers = {
            {
                filename = "__helios__/graphics/entity/pchamber-idle.png",
                priority = "low",
                width = 384,
                height = 384,
                frame_count = 1,
                shift = util.by_pixel(5, 0),
                scale = 0.275,
            }
        }
    },

    working_visualisations = {
        {
            animation = {
                filename = "__helios__/graphics/entity/pchamber1.png", -- Replace with your mod folder path
                width = 384,                                           -- 3072 / 8 (columns)
                height = 384,                                          -- 3072 / 8 (rows)
                priority = "extra-high",
                frame_count = 64,
                line_length = 8,                                              -- Number of columns
                animation_speed = 1 / chemical_smelter_entity.crafting_speed, -- Adjust speed as needed
                shift = util.by_pixel(5, 0),                                  -- Adjust for proper alignment
                scale = 0.275,
            }                                                                 -- Downscales the large texture to fit the 3x3 size
        }
    }
}


chemical_smelter_entity.graphics_set.working_visualisations.animation = {
    layers = {
        {
            filename = "__helios__/graphics/entity/pchamber1.png",                -- Replace with your mod folder path
            width = 384,                                                          -- 3072 / 8 (columns)
            height = 384,                                                         -- 3072 / 8 (rows)
            frame_count = 64,
            line_length = 8,                                                      -- Number of columns
            animation_speed = 1 / chemical_smelter_entity.crafting_speed,         -- Adjust speed as needed
            shift = util.by_pixel(5, 0),                                          -- Adjust for proper alignment
            scale = 0.275,                                                        -- Downscales the large texture to fit the 3x3 size
        }
    }
}

-- Define the item for the chemical smelter
local chemical_smelter_item = {
    type = "item",
    name = "chemical-smelter",
    icon = "__helios__/graphics/icons/pchamber1.png", -- Replace with your custom icon
    icon_size = 64,
    subgroup = "production-machine",
    order = "b[chemical-smelter]",
    place_result = "chemical-smelter",
    stack_size = 50
}

-- Define the recipe for the chemical smelter
local chemical_smelter_recipe = {
    type = "recipe",
    name = "chemical-smelter",
    energy_required = 5,
    enabled = false,
    ingredients = {
        { type = "item", name = "glass",               amount = 20 },
        { type = "item", name = "stone-brick",         amount = 20 },
        { type = "item", name = "pipe",                amount = 20 },
        { type = "item", name = "gear-wheel-assembly", amount = 10 },
        { type = "item", name = "stone-furnace",       amount = 2 },
        { type = "item", name = "steam-engine",        amount = 2 },
    },
    results = { { type = "item", name = "chemical-smelter", amount = 1 } },
}

-- Add the recipe to a custom technology
table.insert(data.raw.technology["advanced-material-processing-2"].effects, {
    type = "unlock-recipe",
    recipe = "chemical-smelter"
})

-- Extend all definitions into the game
data:extend({chemical_smelter_entity, chemical_smelter_item, chemical_smelter_recipe})