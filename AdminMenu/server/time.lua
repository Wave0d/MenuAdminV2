RegisterNetEvent("time:serv")
AddEventHandler("time:serv", function(time,minutes)
    TriggerClientEvent("time:client", -1, time, minutes)
end)

RegisterNetEvent("Extra-sunny:serv")
AddEventHandler("Extra-sunny:serv", function()
    TriggerClientEvent("Extra-sunny:client", -1)
end)

RegisterNetEvent("Clear:Serv")
AddEventHandler("Clear:Serv", function()
    TriggerClientEvent("Clear:client", -1)
end)

RegisterNetEvent("Clouds:Serv")
AddEventHandler("Clouds:Serv", function()
    TriggerClientEvent("Clouds:client", -1)
end)

RegisterNetEvent("Smog:Serv")
AddEventHandler("Smog:Serv", function()
    TriggerClientEvent("Smog:client", -1)
end)

RegisterNetEvent("Foggy:Serv")
AddEventHandler("Foggy:Serv", function()
    TriggerClientEvent("Foggy:client", -1)
end)

RegisterNetEvent("Overcast:Serv")
AddEventHandler("Overcast:Serv", function()
    TriggerClientEvent("Overcast:client", -1)
end)

RegisterNetEvent("Raining:Serv")
AddEventHandler("Raining:Serv", function()
    TriggerClientEvent("Raining:client", -1)
end)

RegisterNetEvent("Thunderstorm:Serv")
AddEventHandler("Thunderstorm:Serv", function()
    TriggerClientEvent("Thunderstorm:client", -1)
end)

RegisterNetEvent("Clearing:Serv")
AddEventHandler("Clearing:Serv", function()
    TriggerClientEvent("Clearing:client", -1)
end)

RegisterNetEvent("Neutral:Serv")
AddEventHandler("Neutral:Serv", function()
    TriggerClientEvent("Neutral:client", -1)
end)

RegisterNetEvent("Blizzard:Serv")
AddEventHandler("Blizzard:Serv", function()
    TriggerClientEvent("Blizzard:client", -1)
end)

RegisterNetEvent("Snowlight:Serv")
AddEventHandler("Snowlight:Serv", function()
    TriggerClientEvent("Snowlight:client", -1)
end)

RegisterNetEvent("Christmas:Serv")
AddEventHandler("Christmas:Serv", function()
    TriggerClientEvent("Christmas:client", -1)
end)

RegisterNetEvent("Snowing:Serv")
AddEventHandler("Snowing:Serv", function()
    TriggerClientEvent("Snowing:client", -1)
end)

RegisterNetEvent("Halloween:Serv")
AddEventHandler("Halloween:Serv", function()
    TriggerClientEvent("Halloween:client", -1)
end)

RegisterNetEvent("freezetime:server")
AddEventHandler("freezetime:server", function(heure, minute, seconde)
    TriggerClientEvent("freezetimetoplayer", -1, heure, minute, seconde)
end)

RegisterNetEvent("normaltime:serv")
AddEventHandler("normaltime:serv", function()
    TriggerClientEvent("normaltime:client", -1)
end)

RegisterNetEvent("enregistrewetherbdd")
AddEventHandler("enregistrewetherbdd", function(weather)
    _src = source
    MySQL.Async.fetchAll("SELECT * FROM weather_admin", {}, function(result)
        if result == nil then 
            MySQL.Async.execute("INSERT INTO weather_admin (weather) VALUES (@weather)",{
                ["@weather"] = weather
            },function()
                TriggerClientEvent("notif:succes:weather:enregistre", _src)
            end)
        else 
            MySQL.Async.execute('DELETE FROM weather_admin', {})
            MySQL.Async.execute("INSERT INTO weather_admin (weather) VALUES (@weather)",{
                ["@weather"] = weather
            },function()
                TriggerClientEvent("notif:succes:weather:enregistre", _src)
            end)
        end 
    end)
end)

RegisterNetEvent("serv:weather:bdd")
AddEventHandler("serv:weather:bdd", function()
    MySQL.Async.fetchAll("SELECT * FROM weather_admin", {}, function(result)
        for _,v in pairs (result) do 
            if result then 
                TriggerClientEvent("weatherclient", -1, v.weather)
            else 
                return 
            end 
        end
    end)
end)

RegisterNetEvent("Renitialise:values:weather")
AddEventHandler("Renitialise:values:weather", function()
    _src = source
    MySQL.Async.fetchAll("SELECT * FROM weather_admin", {}, function(result)
        if next(result) == nil then 
            TriggerClientEvent("erreur:renitialise:weather", _src)
        else 
            MySQL.Async.execute('DELETE FROM weather_admin', {})
            TriggerClientEvent("sucess:renitialise:weather", _src)
            TriggerClientEvent("Extra-sunny:client", -1)
        end
    end)    
end)