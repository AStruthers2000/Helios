-- Function to update the recipe state based on technology
local function update_biomass_recipe(force)
    local technologies = force.technologies
    local recipes = force.recipes

    -- Enable or disable the recipe based on the research state
    if technologies["compost-bin"].researched then
        recipes["biomass-from-sap"].enabled = false
    else
        recipes["biomass-from-sap"].enabled = true
    end
end

-- Register the event for when a research is finished
script.on_event(defines.events.on_research_finished, function(event)
    local research = event.research
    local force = research.force

    -- Output a message to the player
    --force.print("Research completed: " .. research.name)

    -- Perform custom logic
    if research.name == "compost-bin" then
        --force.print("Biomass crafted!")
        if force.recipes["biomass-from-sap"] then
            force.recipes["biomass-from-sap"].enabled = false
            --force.recipes["biomass-from-sap"].hidden = true
        end
    end
end)

-- Ensure the recipe state is updated during initialization
script.on_init(function()
    for _, force in pairs(game.forces) do
        update_biomass_recipe(force)
    end
end)

-- Ensure the recipe state is updated on configuration changes
script.on_configuration_changed(function(event)
    for _, force in pairs(game.forces) do
        update_biomass_recipe(force)
    end
end)

-- Event handler for when a new player is created
script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    local character = player.cutscene_character or player.character;
    local inventory = character.get_main_inventory();

    inventory.clear()
    inventory.insert{name = "burner-mining-drill", count = 20}
    inventory.insert{name = "stone-furnace", count = 20}
    inventory.insert{name = "gun-turret", count = 10}
    inventory.insert{name = "firearm-magazine", count = 200}
    inventory.insert{name = "wood", count = 1}
    
end)