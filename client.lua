local onNight = false
local onThermal = false

RegisterNetEvent("policegoggles:toggleNight")
AddEventHandler("policegoggles:toggleNight", function()
    if onNight then
        onNight = false
        onThermal = false
        SetSeethrough(false)
        SetNightvision(false)
    elseif not onNight then
        onNight = true
        onThermal = false
        SetSeethrough(false)
        SetNightvision(true)
    end
end)

RegisterNetEvent("policegoggles:toggleThermal")
AddEventHandler("policegoggles:toggleThermal", function()
    if onThermal then
        onThermal = false
        onNight = false
        SetNightvision(false)
        SetSeethrough(false)
    elseif not onThermal then
        onThermal = true
        onNight = false
        SetNightvision(false)
        SetSeethrough(true)
    end
end)