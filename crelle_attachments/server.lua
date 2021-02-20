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

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "crelle_attachments")

vRP.defInventoryItem({"pistolsilencer","Silencer","Silencer til normal pistol.", function(args) 
    local choices = {}
    
    choices["> Brug"] = {function(player,choice,mod)
        local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent("c:pistolsilencer", player)
	        PerformHttpRequest('ditwebhook', function(err, text, headers) end, 'POST', json.encode({username = "Personen " ..player.. " tog silencer på sin pistol"}), { ['Content-Type'] = 'application/json' })
            vRP.closeMenu({player})
        	else
        end
    end}
  
    choices["> Tag af"] = {function(player,choice,mod)
      local user_id = vRP.getUserId({player})
      if user_id ~= nil then
          TriggerClientEvent("c:pistolsilenceraf", player)
	      PerformHttpRequest('ditwebhook', function(err, text, headers) end, 'POST', json.encode({username = "Personen " ..player.. " fjernet silencer fra sin pistol"}), { ['Content-Type'] = 'application/json' })
          vRP.closeMenu({player})
      	else
      end
  	end}
  
    return choices
end, 0.50})

vRP.defInventoryItem({"guldpistol","Guld Skin","Guld skin til normal pistol.", function(args) 
  local choices = {}
  
  choices["> Brug"] = {function(player,choice,mod)
      local user_id = vRP.getUserId({player})
      if user_id ~= nil then
          TriggerClientEvent("c:guldvåben", player)
	      PerformHttpRequest('ditwebhook', function(err, text, headers) end, 'POST', json.encode({username = "Personen " ..player.. " guldbelage lige sin pistol"}), { ['Content-Type'] = 'application/json' })
          vRP.closeMenu({player})
        else
      end
  end}

  choices["> Tag af"] = {function(player,choice,mod)
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
        TriggerClientEvent("c:guldaf", player)
	      PerformHttpRequest('ditwebhook', function(err, text, headers) end, 'POST', json.encode({username = "Personen " ..player.. " fjernet guldet fra sin pistol"}), { ['Content-Type'] = 'application/json' })
        vRP.closeMenu({player})
      else
    end
  end}

  return choices
end, 0.50})
