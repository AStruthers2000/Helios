local util = require("util")

-- Deepcopy the steel furnace to use as a base
local chemical_furnace_entity = util.table.deepcopy(data.raw.furnace["steel-furnace"])

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

-- Update entity properties
chemical_furnace_entity.name = "chemical-furnace"
chemical_furnace_entity.icon = "__base__/graphics/icons/steel-furnace.png" -- Replace with your icon
chemical_furnace_entity.icon_size = 64
chemical_furnace_entity.minable.result = "chemical-furnace"
chemical_furnace_entity.crafting_categories = {"smelting", "chemistry"}
chemical_furnace_entity.fluid_boxes = {
    {
        production_type = "input",
        --base_area = 1,
        pipe_picture = furnacepipepictures, -- Replace with your pipe visuals
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
            {
                flow_direction = "input",
                direction = defines.direction.south,
                position = { 0.5, 0.5 }
            }
        },
        secondary_draw_orders = {
            north = -16,
            east = -1,
            west = -1,
            south = 1,
        },
    }
}



-- Define the item for the chemical furnace
local chemical_furnace_item = {
    type = "item",
    name = "chemical-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png", -- Replace with your icon
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "b[chemical-furnace]",
    place_result = "chemical-furnace",
    stack_size = 50
}

-- Define the recipe for the chemical furnace
local chemical_furnace_recipe = {
    type = "recipe",
    name = "chemical-furnace",
    ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe",          amount = 4 }
    },
    results = { { type = "item", name = "chemical-furnace", amount = 1 } },
    enabled = false
}

-- Add to technology
table.insert(data.raw.technology["fluid-handling"].effects, {
    type = "unlock-recipe",
    recipe = "chemical-furnace"
})

-- Extend all definitions into the game
data:extend({chemical_furnace_entity, chemical_furnace_item, chemical_furnace_recipe})
