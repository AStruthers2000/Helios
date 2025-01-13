--data.raw["recipe"]["iron-stick"].enabled = true

require("prototypes.updates.base-technologies")
require("prototypes.updates.base-recipes")

data.raw["item"]["clay-brick"].icons[1].tint = { r = 125 / 255, g = 71 / 255, b = 49 / 255, a = 1 }
data.raw.recipe["iron-stick"].enabled = true


--[[I really want to use the flare stack from Flare Stack mod by GotLag, but 
I dont want to allow incineration of items (space-age recycler can handle that), 
so I am removing any and all references to the incinerator or electric incinerator.]]--

--remove the Flare Stack incinerator
data.raw["technology"]["flare-stack-item-venting-tech"] = nil
data.raw["recipe"]["incinerator"] = nil
data.raw["recipe"]["incinerator-recycling"] = nil
data.raw["recipe"]["item-incinerator-incineration"] = nil
data.raw["furnace"]["incinerator"] = nil
data.raw["item"]["incinerator"] = nil

--remove the Flare Stack electric incinerator
data.raw["technology"]["flare-stack-item-venting-electric-tech"] = nil
data.raw["recipe"]["electric-incinerator"] = nil
data.raw["recipe"]["electric-incinerator-recycling"] = nil
data.raw["recipe"]["item-electric-incinerator-incineration"] = nil
data.raw["furnace"]["electric-incinerator"] = nil
data.raw["item"]["electric-incinerator"] = nil
