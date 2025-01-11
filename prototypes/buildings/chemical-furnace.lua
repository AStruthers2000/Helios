local util = require("util")

-- Deepcopy the steel furnace to use as a base
local chemical_furnace_entity = util.table.deepcopy(data.raw.furnace["steel-furnace"])
chemical_furnace_entity.type = "assembling-machine"

local furnacepipepictures = {
  north = {
      filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-N.png",
      priority = "extra-high",
      width = 71,
      height = 38,
      shift = util.by_pixel(2.25, 13.5),
      scale = 0.5
  },
  east = {
      filename = "__helios__/graphics/entity/hr-assembling-machine-1-pipe-E.png",
      priority = "extra-high",
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
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5
  }
}

-- Deepcopy the chemical plant to use as a base
local chemical_smelter_entity = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])

-- Update entity properties
chemical_smelter_entity.name = "chemical-smelter"
chemical_smelter_entity.icon = "__helios__/graphics/icons/pchamber1.png" -- Replace with your custom icon
chemical_smelter_entity.icon_size = 64
chemical_smelter_entity.minable.result = "chemical-smelter"
chemical_smelter_entity.crafting_categories = {"chemical-smelting"}


-- Keep the 3x3 size
chemical_smelter_entity.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
chemical_smelter_entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
chemical_smelter_entity.drawing_box = {{-1.5, -1.5}, {1.5, 1.5}}
chemical_smelter_entity.forced_symmetry = "diagonal-pos"

chemical_smelter_entity.fluid_boxes_off_when_no_fluid_recipe = true
chemical_smelter_entity.fluid_boxes = {
    {
        production_type = "output",
        base_area = 1,
        pipe_picture = furnacepipepictures,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "output",
                direction = defines.direction.south,
                position = { 0, 0.9 }
            },
        },
    },
    {
        production_type = "output",
        base_area = 1,
        pipe_picture = furnacepipepictures,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "output",
                direction = defines.direction.north,
                position = { 0, -0.9 }
            },
        },
    },
    {
        production_type = "input",
        base_area = 1,
        pipe_picture = furnacepipepictures,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.west,
                position = { -0.9, 0 }
            },
        },

    },
    {
        production_type = "input",
        base_area = 1,
        pipe_picture = furnacepipepictures,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.east,
                position = { 0.9, 0 }
            },
        }
    }
}
-- Define custom animation using the sprite sheet
chemical_smelter_entity.graphics_set = {
    animation = {
        layers = {
            {
                filename = "__helios__/graphics/entity/pchamber1.png", -- Replace with your mod folder path
                width = 384,                                           -- 3072 / 8 (columns)
                height = 384,                                          -- 3072 / 8 (rows)
                frame_count = 64,
                line_length = 8,                                       -- Number of columns
                animation_speed = 1,                                   -- Adjust speed as needed
                shift = util.by_pixel(5, 0),                           -- Adjust for proper alignment
                scale = 0.25,                                           -- Downscales the large texture to fit the 3x3 size
            }
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
    ingredients = {
        { type = "item", name = "chemical-plant",   amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 10 },
        { type = "item", name = "steel-plate",      amount = 15 }
    },
    results = {
        { type = "item", name = "chemical-smelter", amount = 1 }
    },
    enabled = false
}

-- Add the recipe to a custom technology
table.insert(data.raw.technology["advanced-material-processing-2"].effects, {
    type = "unlock-recipe",
    recipe = "chemical-smelter"
})

-- Extend all definitions into the game
data:extend({chemical_smelter_entity, chemical_smelter_item, chemical_smelter_recipe})