local util = require('util')
local item_sounds = require("__base__.prototypes.item_sounds")

local seconds = 60
local minutes = 60*seconds

local plant_flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"}

local rubber_tree = util.table.deepcopy(data.raw["tree"]["tree-08-brown"])
rubber_tree.type = "plant"
rubber_tree.name = "rubber-tree"
rubber_tree.localised_name = {"entity-name.rubber-tree"}
rubber_tree.localised_desription = {"entity-name.rubber-tree"}
rubber_tree.flags = plant_flags
rubber_tree.hidden_in_factoriopedia = false
rubber_tree.factoriopedia_alternative = nil
rubber_tree.map_color = {82/255, 84/255, 70/255, 0.40}
rubber_tree.agricultural_tower_tint =
{
    primary = { r = 0.7, g = 1.0, b = 0.2, a = 1 },
    secondary = { r = 0.561, g = 0.613, b = 0.308, a = 1.000 }, -- #8f4f4eff
}
rubber_tree.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results = {
        { type = "item", name = "raw-latex", amount = 4 },
        { type = "item", name = "sap",       probability = 0.5, amount_min = 1, amount_max = 4 } },
}
rubber_tree.variation_weights = { 1, 1, 1, 1, 1, 1, 1, 1, 0.3, 0.3, 0.0, 0.0}
rubber_tree.growth_ticks = 10 * minutes
rubber_tree.surface_conditions = { {property = "pressure", min = 1000, max = 1000}}  -- only Nauvis (doesn't work yet)
rubber_tree.autoplace =
{
    probability_expression = 0,
    -- required to show agricultural tower plots
    tile_restriction =
    {
        "grass-1", "grass-2", "grass-3", "grass-4",
        "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3"
    }
}

data:extend({
    rubber_tree,
    {
        type = "item",
        name = "rubber-tree-seed",
        icon = "__helios__/graphics/icons/resources/organic-seeds-1.png",
        icon_size = 64,
        localised_name = {"item-name.rubber-tree-seed"},
        localised_desription = {"item-name.rubber-tree-seed"},
        pictures =
        {
            { size = 64, filename = "__helios__/graphics/icons/resources/organic-seeds-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/resources/organic-seeds-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__helios__/graphics/icons/resources/organic-seeds-1.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "agriculture-processes",
        order = "a[seeds]-c[rubber-seed]",
        plant_result = "rubber-tree",
        place_result = "rubber-tree",
        inventory_move_sound = item_sounds.wood_inventory_move,
        pick_sound = item_sounds.wood_inventory_pickup,
        drop_sound = item_sounds.wood_inventory_move,
        stack_size = 10,
        weight = 10 * kg,
        fuel_category = "chemical",
        fuel_value = "100kJ"
    }
})
