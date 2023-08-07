ESX = exports["es_extended"]:getSharedObject()

function VehicleSpawn(valeur1)
    if IsPedInAnyVehicle(PlayerPedId()) then
        local player = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(player, false)
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteEntity(vehicle)
        local model = GetHashKey(valeur1)
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(1) end 
        local coords = GetEntityCoords(PlayerPedId())
        local angle = GetEntityHeading(PlayerPedId())
        local create = CreateVehicle(model, coords.x, coords.y, coords.z, angle, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), create, -1)
        SetVehRadioStation(create, "OFF")
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de faire spawn un(e) "..string.lower(valeur1), 5000, 'success')
        else 
            ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de faire spawn un(e) ~g~"..string.lower(valeur1), NotifPicture, 1) 
        end 
    else 
        local model = GetHashKey(valeur1)
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(1) end 
        local coords = GetEntityCoords(PlayerPedId())
        local angle = GetEntityHeading(PlayerPedId())
        local create = CreateVehicle(model, coords.x, coords.y, coords.z, angle, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), create, -1)
        SetVehRadioStation(create, "OFF")
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de faire spawn un(e) "..string.lower(valeur1), 5000, 'success')
        else 
            ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de faire spawn un(e) ~g~"..string.lower(valeur1), NotifPicture, 1) 
        end 
    end
end

function TransformPedPlayer(valeur1)
    model = GetHashKey(valeur1)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de rentrez dans laparance du ped : "..string.lower(valeur1), 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de rentrez dans laparance du ped : "..string.lower(valeur1), NotifPicture, 1) 
    end 
end 

function getBaseSkin()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        isMale = skin.sex == 0
        TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                TriggerEvent('skinchanger:loadSkin', skin)
                TriggerEvent('esx:restoreLoadout')
            end)
        end)
    end)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de récuperer votre apparance", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de récuperer votre apparance", NotifPicture, 1) 
    end 
end

function clearvehicle()
    if IsPedInAnyVehicle(PlayerPedId()) then 
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        SetVehicleFixed(vehicle)
    end
end

