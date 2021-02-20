--[[───────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─████████████████───██████████████─██████─────────██████─────────██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░██─────────██░░██─────────██░░░░░░░░░░██─
─██░░██████████─██░░████████░░██───██░░██████████─██░░██─────────██░░██─────────██░░██████████─
─██░░██─────────██░░██────██░░██───██░░██─────────██░░██─────────██░░██─────────██░░██─────────
─██░░██─────────██░░████████░░██───██░░██████████─██░░██─────────██░░██─────────██░░██████████─
─██░░██─────────██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░██─────────██░░██─────────██░░░░░░░░░░██─
─██░░██─────────██░░██████░░████───██░░██████████─██░░██─────────██░░██─────────██░░██████████─
─██░░██─────────██░░██──██░░██─────██░░██─────────██░░██─────────██░░██─────────██░░██─────────
─██░░██████████─██░░██──██░░██████─██░░██████████─██░░██████████─██░░██████████─██░░██████████─
─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
─██████████████─██████──██████████─██████████████─██████████████─██████████████─██████████████─
───────────────────────────────────────────────────────────────────────────────────────────────]]--

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","crelle_attachments")

RegisterNetEvent("c:pistolsilencer")
AddEventHandler("c:pistolsilencer", function()
    local Player = GetPlayerPed(-1)
    if GetSelectedPedWeapon(Player) == GetHashKey("weapon_pistol") then
        TriggerServerEvent('3dme:shareDisplay', "tager genstand")
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))
        TriggerEvent("pNotify:SendNotification",{text = "Du satte et attachment på dit våben.",type = "success",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        TriggerEvent("pNotify:SendNotification",{text = "Du skal holde dit våben i hånden!",type = "error",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterNetEvent("c:pistolsilenceraf")
AddEventHandler("c:pistolsilenceraf", function()
    local Player = GetPlayerPed(-1)
    if GetSelectedPedWeapon(Player) == GetHashKey("weapon_pistol") then
        TriggerServerEvent('3dme:shareDisplay', "gemmer genstand")
        RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))
        TriggerEvent("pNotify:SendNotification",{text = "Du tog din silencer af.",type = "success",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        TriggerEvent("pNotify:SendNotification",{text = "Du skal holde dit våben i hånden!",type = "error",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterNetEvent("c:guldvåben")
AddEventHandler("c:guldvåben", function()
    local Player = GetPlayerPed(-1)
    if GetSelectedPedWeapon(Player) == GetHashKey("weapon_pistol") then
        TriggerServerEvent('3dme:shareDisplay', "tager genstand")
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
        TriggerEvent("pNotify:SendNotification",{text = "Du tog guld skinnet på.",type = "success",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        TriggerEvent("pNotify:SendNotification",{text = "Du skal holde dit våben i hånden!",type = "error",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterNetEvent("c:guldaf")
AddEventHandler("c:guldaf", function()
    local Player = GetPlayerPed(-1)
    if GetSelectedPedWeapon(Player) == GetHashKey("weapon_pistol") then
        TriggerServerEvent('3dme:shareDisplay', "gemmer genstand")
        RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
        TriggerEvent("pNotify:SendNotification",{text = "Du tog guld skinnet af.",type = "success",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        TriggerEvent("pNotify:SendNotification",{text = "Du skal holde dit våben i hånden!",type = "error",timeout = (1500),layout = "centerRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)