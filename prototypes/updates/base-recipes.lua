data.raw["recipe"]["automation-science-pack"].ingredients = {
    { type = "item", name = "ceramic-casing", amount = 1},
    { type = "item", name = "biomass", amount = 1},
    { type = "item", name = "gear-wheel-assembly", amount = 1},
    { type = "item", name = "glass-bottle", amount = 1}
}

data.raw.recipe["logistic-science-pack"].ingredients = {
    { type = "item", name = "inserter",       amount = 1 },
    { type = "item", name = "transport-belt", amount = 1 },
    { type = "item", name = "scaffolding",    amount = 1 },
    { type = "item", name = "glass-bottle",   amount = 1 }
}
--data.raw.recipe["automation-science-pack"].results = {{type="item", name="automation-science-pack", amount=5}}
--data.raw.recipe["automation-science-pack"].energy_required = 25

--data.raw.technology["steam-power"].prerequisites = {"gear-wheel-assembly"}











data.raw.recipe["iron-plate"] = nil
data.raw.recipe["copper-plate"] = nil

data.raw.recipe["electronic-circuit"].ingredients = {
    { type = "item", name = "printed-circuit-substrate-1", amount = 1 },
    { type = "item", name = "insulated-copper-cable",      amount = 3 },
    { type = "item", name = "inductor",                    amount = 2 },
    { type = "item", name = "copper-coil",                 amount = 1 },
    { type = "item", name = "solder",                      amount = 2 }
}


---------------------------------------- Buildings ----------------------------------------
data.raw.recipe["offshore-pump"].ingredients = {
    { type = "item", name = "pipe",                amount = 3 },
    { type = "item", name = "gear-wheel-assembly", amount = 2 },
}
data.raw.recipe["iron-chest"].ingredients = {
    { type = "item", name = "iron-plate", amount = 8 },
    { type = "item", name = "rivet",      amount = 4 },
}
data.raw.recipe["transport-belt"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 1 },
    { type = "item", name = "gear-wheel-assembly", amount = 1 },
    { type = "item", name = "rivet",               amount = 1 },
}
data.raw.recipe["underground-belt"].ingredients = {
    { type = "item", name = "iron-plate",     amount = 10 },
    { type = "item", name = "transport-belt", amount = 5 },
    { type = "item", name = "rivet",          amount = 10 },
}
data.raw.recipe["splitter"].ingredients = {
    { type = "item", name = "iron-plate",         amount = 5 },
    { type = "item", name = "electronic-circuit", amount = 5 },
    { type = "item", name = "transport-belt",     amount = 4 },
    { type = "item", name = "rivet",              amount = 5 },
    { type = "item", name = "ball-bearing",       amount = 1 },
    { type = "item", name = "spring",             amount = 2 },
}
data.raw.recipe["burner-mining-drill"].ingredients = {
    { type = "item", name = "gear-wheel-assembly", amount = 2 },
    { type = "item", name = "stone-furnace",       amount = 1 },
    { type = "item", name = "iron-plate",          amount = 3 },
    { type = "item", name = "rivet",               amount = 3 }
}
data.raw.recipe["electric-mining-drill"].ingredients = {
    { type = "item", name = "iron-plate",         amount = 10 },
    { type = "item", name = "gear-wheel-assembly",    amount = 5 },
    { type = "item", name = "electronic-circuit", amount = 3 },
    { type = "item", name = "rivet",              amount = 10 },
    { type = "item", name = "ball-bearing",       amount = 5 },
    { type = "item", name = "rubber-tubing",      amount = 2 },
    { type = "item", name = "scaffolding",        amount = 2 },
}
data.raw.recipe["steam-engine"].ingredients = {
    { type = "item", name = "gear-wheel-assembly", amount = 4 },
    { type = "item", name = "pipe",                amount = 5 },
    { type = "item", name = "iron-plate",          amount = 10 },
    { type = "item", name = "rivet",               amount = 10 }
}
data.raw.recipe["burner-inserter"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 1 },
    { type = "item", name = "gear-wheel-assembly", amount = 1 },
    { type = "item", name = "rivet",               amount = 1 },
}
data.raw.recipe["inserter"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 1 },
    { type = "item", name = "gear-wheel-assembly", amount = 1 },
    { type = "item", name = "electronic-circuit",  amount = 1 },
    { type = "item", name = "rivet",               amount = 1 },
    { type = "item", name = "ball-bearing",        amount = 1 },
    { type = "item", name = "rubber-tubing",       amount = 1 },
    { type = "item", name = "spring",              amount = 1 },
}
data.raw.recipe["long-handed-inserter"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 1 },
    { type = "item", name = "gear-wheel-assembly", amount = 1 },
    { type = "item", name = "inserter",            amount = 1 },
    { type = "item", name = "rivet",               amount = 1 },
    { type = "item", name = "ball-bearing",        amount = 1 },
    { type = "item", name = "rubber-tubing",       amount = 1 },
    { type = "item", name = "spring",              amount = 1 },
}
data.raw.recipe["fast-inserter"].ingredients = {
    { type = "item", name = "iron-plate",         amount = 2 },
    { type = "item", name = "electronic-circuit", amount = 2 },
    { type = "item", name = "inserter",           amount = 1 },
    { type = "item", name = "rivet",              amount = 2 },
    { type = "item", name = "ball-bearing",       amount = 2 },
    { type = "item", name = "rubber-tubing",      amount = 1 },
    { type = "item", name = "spring",             amount = 1 },
}
data.raw.recipe["bulk-inserter"].ingredients = {
    { type = "item", name = "gear-wheel-assembly", amount = 15 },
    { type = "item", name = "electronic-circuit",  amount = 15 },
    { type = "item", name = "advanced-circuit",    amount = 1 },
    { type = "item", name = "fast-inserter",       amount = 1 },
    { type = "item", name = "ball-bearing",        amount = 10 },
    { type = "item", name = "rubber-tubing",       amount = 2 },
    { type = "item", name = "spring",              amount = 2 },
}
data.raw.recipe["pipe"].ingredients = {
    { type = "item", name = "iron-plate", amount = 1 },
    { type = "item", name = "rivet",      amount = 1 },
}
data.raw.recipe["pipe-to-ground"].ingredients = {
    { type = "item", name = "iron-plate", amount = 5 },
    { type = "item", name = "rivet",      amount = 5 },
    { type = "item", name = "pipe",       amount = 10 },
}
data.raw.recipe["lab"].ingredients = {
    { type = "item", name = "glass",               amount = 20 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "ceramic-casing",      amount = 4 }
}
data.raw.recipe["radar"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 10 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "electronic-circuit",  amount = 5 },
    { type = "item", name = "rivet",               amount = 10 },
    { type = "item", name = "ball-bearing",        amount = 2 },
    { type = "item", name = "scaffolding",         amount = 4 }
}
data.raw.recipe["assembling-machine-1"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 9 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "electronic-circuit",  amount = 3 },
    { type = "item", name = "rivet",               amount = 9 },
    { type = "item", name = "ball-bearing",        amount = 4 },
    { type = "item", name = "scaffolding",         amount = 2 },
}
data.raw.recipe["gun-turret"].ingredients = {
    { type = "item", name = "iron-plate",          amount = 20 },
    { type = "item", name = "copper-plate",        amount = 10 },
    { type = "item", name = "gear-wheel-assembly", amount = 10 },
    { type = "item", name = "rivet",               amount = 30 },
    { type = "item", name = "cladding",            amount = 10 },
}
data.raw.recipe["stone-wall"].ingredients = {
    { type = "item", name = "stone-brick", amount = 5 },
    { type = "item", name = "cladding",    amount = 1 },
}
data.raw.recipe["small-lamp"].ingredients = {
    { type = "item", name = "iron-plate",             amount = 1 },
    { type = "item", name = "insulated-copper-cable", amount = 3 },
    { type = "item", name = "electronic-circuit",     amount = 1 },
    { type = "item", name = "rivet",                  amount = 1 },
}
data.raw.recipe["pump"].ingredients = {
    { type = "item", name = "steel-plate",   amount = 1 },
    { type = "item", name = "engine-unit",   amount = 1 },
    { type = "item", name = "pipe",          amount = 1 },
    { type = "item", name = "rivet",         amount = 1 },
    { type = "item", name = "rubber-tubing", amount = 2 },
    { type = "item", name = "rubber-gasket", amount = 2 },
}
data.raw.recipe["flare-stack"].ingredients = {
    { type = "item", name = "steel-plate",         amount = 5 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "electronic-circuit",  amount = 2 },
    { type = "item", name = "pipe",                amount = 5 },
    { type = "item", name = "rivet",               amount = 5 },
    { type = "item", name = "rubber-gasket",       amount = 1 },
}
data.raw.recipe["storage-tank"].ingredients = {
    { type = "item", name = "iron-plate",    amount = 20 },
    { type = "item", name = "steel-plate",   amount = 5 },
    { type = "item", name = "rivet",         amount = 25 },
    { type = "item", name = "rubber-gasket", amount = 4 },
}
data.raw.recipe["steel-furnace"].ingredients = {
    { type = "item", name = "steel-plate", amount = 6 },
    { type = "item", name = "stone-brick", amount = 10 },
    { type = "item", name = "rivet",       amount = 6 },
    { type = "item", name = "scaffolding", amount = 5 },
    { type = "item", name = "cladding",    amount = 3 },
}
data.raw.recipe["pumpjack"].ingredients = {
    { type = "item", name = "steel-plate",         amount = 5 },
    { type = "item", name = "gear-wheel-assembly", amount = 10 },
    { type = "item", name = "electronic-circuit",  amount = 5 },
    { type = "item", name = "pipe",                amount = 10 },
    { type = "item", name = "rivet",               amount = 5 },
    { type = "item", name = "ball-bearing",        amount = 2 },
    { type = "item", name = "rubber-tubing",       amount = 4 },
    { type = "item", name = "scaffolding",         amount = 2 },
    { type = "item", name = "rubber-gasket",       amount = 1 },
}
data.raw.recipe["oil-refinery"].ingredients = {
    { type = "item", name = "steel-plate",         amount = 15 },
    { type = "item", name = "gear-wheel-assembly", amount = 10 },
    { type = "item", name = "electronic-circuit",  amount = 10 },
    { type = "item", name = "pipe",                amount = 10 },
    { type = "item", name = "stone-brick",         amount = 10 },
    { type = "item", name = "rivet",               amount = 20 },
    { type = "item", name = "rubber-tubing",       amount = 10 },
    { type = "item", name = "scaffolding",         amount = 5 },
    { type = "item", name = "rubber-gasket",       amount = 5 },
}
data.raw.recipe["chemical-plant"].ingredients = {
    { type = "item", name = "steel-plate",         amount = 5 },
    { type = "item", name = "gear-wheel-assembly", amount = 5 },
    { type = "item", name = "electronic-circuit",  amount = 5 },
    { type = "item", name = "pipe",                amount = 5 },
    { type = "item", name = "glass",               amount = 4 },
    { type = "item", name = "rivet",               amount = 10 },
    { type = "item", name = "rubber-tubing",       amount = 8 },
    { type = "item", name = "scaffolding",         amount = 2 },
    { type = "item", name = "rubber-gasket",       amount = 4 },
}
data.raw.recipe["agricultural-tower"].ingredients = {
    { type = "item", name = "steel-plate",        amount = 10 },
    { type = "item", name = "electronic-circuit", amount = 3 },
    { type = "item", name = "spoilage",           amount = 20 },
    { type = "item", name = "landfill",           amount = 1 },
    { type = "item", name = "glass",              amount = 4 },
    { type = "item", name = "rivet",              amount = 10 },
    { type = "item", name = "ball-bearing",       amount = 4 },
    { type = "item", name = "rubber-tubing",      amount = 4 },
    { type = "item", name = "spring",             amount = 2 },
    { type = "item", name = "scaffolding",        amount = 5 },
}
