for _, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if technologies["compost-bin"].researched then
        recipes["biomass-from-sap"].enabled = false
    else
        recipes["biomass-from-sap"].enabled = true
    end
end