ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent("additem:player")
AddEventHandler("additem:player", function(name, label, item)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if item == nil then 
        TriggerClientEvent("notif:erreur:number:nil", _src)
    else 
        xPlayer.addInventoryItem(label, item)
        TriggerClientEvent("giveitemnotif", _src, name, item)
    end 
end)

RegisterNetEvent("addWeapon:player")
AddEventHandler("addWeapon:player", function(label, name)
    if Config["inventory"].ox_inventory then 
        local _src = source
        local xPlayer = ESX.GetPlayerFromId(_src)        
        xPlayer.addInventoryItem(label, 1)
        TriggerClientEvent("notif:weapon:player", _src, label, name)
    else 
        xPlayer.addWeapon(label, 300)
        TriggerClientEvent("notif:weapon:player", _src, label, name)
    end
end)

RegisterNetEvent("addammo:player")
AddEventHandler("addammo:player", function(label, number)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if number  == nil then 
        TriggerClientEvent("notif:erreur:number:nil", _src)
    else 
        xPlayer.addInventoryItem(label, number)
        TriggerClientEvent("notif:ammo:player", _src, label, number)
    end
end)

RegisterNetEvent("moneyadd:player")
AddEventHandler("moneyadd:player", function(money)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if money == nil then 
        TriggerClientEvent("notif:erreur:number:nil", _src)
    else 
        xPlayer.addMoney(money)
        TriggerClientEvent("notifgivemoneyinventory",_src , money)
    end
end)

RegisterNetEvent("moneyaddbanqueserver")
AddEventHandler("moneyaddbanqueserver", function(moneybanque)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if moneybanque == nil then 
        TriggerClientEvent("notif:erreur:number:nil", _src)
    else 
        xPlayer.addAccountMoney('bank', moneybanque)
        TriggerClientEvent("noticlientbanque", _src, moneybanque)
    end
end)

RegisterNetEvent("money:add:black")
AddEventHandler("money:add:black", function(moneyblack)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    if moneyblack == nil then 
        TriggerClientEvent("notif:erreur:number:nil", _src)
    else 
        xPlayer.addInventoryItem("black_money", moneyblack)
        TriggerClientEvent("notif:blackmoney", _src, moneyblack)
    end
end)

RegisterNetEvent("bddserverressource")
AddEventHandler("bddserverressource", function()
    _src =  source 
    namevehicle = {}
    MySQL.Async.fetchAll("SELECT * FROM `vehicle_import`", {}, function(result)
        for _,v in pairs (result) do 
            table.insert(namevehicle, {label = v.label , name = v.name})
        end
        TriggerClientEvent("bddservtoclient", _src, namevehicle)    
    end)
end)

RegisterNetEvent("tp:bdd:create")
AddEventHandler("tp:bdd:create", function(tpcreate, coordsplayer, headingPlayer)
    MySQL.Async.execute("INSERT INTO `tp_admin` (name, coords, heading) VALUES (@name, @coords, @heading)",{
        ["@name"] = tpcreate,
        ["@coords"] = json.encode(coordsplayer),
        ["@heading"] = headingPlayer
    },function()
    end)
end)

RegisterNetEvent("tp:bdd:serv:client")
AddEventHandler("tp:bdd:serv:client", function()
    _src = source
    tpmarker = {}
    MySQL.Async.fetchAll("SELECT * FROM `tp_admin`",{}, function(result)
        for _,v in pairs (result) do 
            table.insert(tpmarker, {id = v.id, name = v.name, coords = v.coords, heading = v.heading})
        end
        TriggerClientEvent("client:to:tp:adminmenu", _src, tpmarker)
    end)
end)

RegisterNetEvent("delete:tp")
AddEventHandler("delete:tp", function(id)
    MySQL.Async.fetchAll("SELECT * FROM `tp_admin`",{}, function(result)
        MySQL.Async.execute("DELETE FROM `tp_admin` WHERE id = @id", {
            ["@id"] = id
        }, function(rowsChanged)
        end)
    end)
end)

RegisterNetEvent("weebookazooklapute")
AddEventHandler("weebookazooklapute", function()
    sendToDiscordWithSpecialURL("Dev Wave","Azook est un peux teber",7834367)
end)

function sendToDiscordWithSpecialURL(name,message,color)
    local DiscordWebhook = "https://discord.com/api/webhooks/1133419730003316769/GNP2Pqqxmw0rE3lPA_mwtRBNmZKEwq9x1mZHsf5mNoXoS1jRTJjUq1JNOoEEXi9RhWFb"
    local embeds = {
        {
            ["title"]=message,
            ["type"]="rich",
            ["color"] =color,
            ["footer"]=  {
            ["text"]= "azook le pd",
            },
        }
    }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebhook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end