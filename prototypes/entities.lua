--[[local generator = table.deepcopy(data.raw["generator"]["steam-engine"])

local fluid_output = generator.fluid_box
fluid_output.filter = "water"
fluid_output.pipe_connections[1].flow_direction = "input"
--local output_pipe = fluid_output.pipe_connections[2]
--output_pipe.flow_diretion = "output"
fluid_output.pipe_connections[2].flow_direction = "output"

generator.fluid_box = fluid_output
generator.name = "lube-turbine"
generator.subgroup = "improved-science-pack"
generator.minable.result = "lube-turbine"

data:extend({generator})

local generator_item = table.deepcopy(data.raw["item"]["steam-engine"])
generator_item.name = "lube-turbine"
generator_item.place_result = "lube-turbine"

data:extend({generator_item})
]]--