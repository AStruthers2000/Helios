for _, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
    recipes["assembly-component"].enabled = technologies["mechanical-assembly-tech"].researched
    recipes["automation-science-pack"].enabled = technologies["automation-science-pack"].researched
end