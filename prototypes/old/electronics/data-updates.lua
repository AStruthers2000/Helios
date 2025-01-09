local technology = data.raw.technology["tungsten-carbide"]
if not technology then
    error("Technology " .. "tungsten-carbine" .. " does not exist.")
end
for i, effect in pairs(technology.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "carbon" then
        table.remove(technology.effects, i)
        break
    end
end