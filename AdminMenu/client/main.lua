ESX = exports["es_extended"]:getSharedObject()

menu_admin = RageUI.CreateMenu(ConfigMenu["MenuAdmin"].NameMenu, ConfigMenu["MenuAdmin"].DescriptionMenu, 0, 0, 'banneradmin', 'interaction_bgd2', 0, 0, 0, 0)
menu_joueur = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuJoueur"].NameMenu, ConfigMenu["MenuJoueur"].DescriptionMenu)
menu_report = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuReports"].NameMenu, ConfigMenu["MenuReports"].DescriptionMenu)
menu_option = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuOption"].NameMenu, ConfigMenu["MenuOption"].DescriptionMenu)
menu_autreoption = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuAutresOptions"].NameMenu, ConfigMenu["MenuAutresOptions"].DescriptionMenu)
menu_time = RageUI.CreateSubMenu(menu_autreoption, ConfigMenu["MenuTime"].NameMenu, ConfigMenu["MenuTime"].DescriptionMenu)
menu_tp = RageUI.CreateSubMenu(menu_autreoption, ConfigMenu["MenuTp"].NameMenu, ConfigMenu["MenuTp"].DescriptionMenu)
menu_dev = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuDev"].NameMenu, ConfigMenu["MenuDev"].DescriptionMenu)
menu_parametre = RageUI.CreateSubMenu(menu_admin, ConfigMenu["MenuParametre"].NameMenu, ConfigMenu["MenuParametre"].DescriptionMenu)
menu_item = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuItem"].NameMenu, ConfigMenu["MenuItem"].DescriptionMenu)
menu_weapon = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuArmes"].NameMenu, ConfigMenu["MenuArmes"].DescriptionMenu)
menu_balles = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuBalles"].NameMenu, ConfigMenu["MenuBalles"].DescriptionMenu)
menu_money = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuMoney"].NameMenu, ConfigMenu["MenuMoney"].DescriptionMenu)
menu_vehicle = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuVehicle"].NameMenu, ConfigMenu["MenuVehicle"].DescriptionMenu)
vehicle_Compact = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleCompact"].NameMenu, ConfigMenu["MenuVehicleCompact"].DescriptionMenu)
vehicle_Sedans = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleSedans"].NameMenu, ConfigMenu["MenuVehicleSedans"].DescriptionMenu)
vehicle_SUVs = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleSUVs"].NameMenu, ConfigMenu["MenuVehicleSUVs"].DescriptionMenu)
vehicle_Coupes = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleCoupes"].NameMenu, ConfigMenu["MenuVehicleCoupes"].DescriptionMenu)
vehicle_Muscle = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleMuscle"].NameMenu , ConfigMenu["MenuVehicleMuscle"].DescriptionMenu)
vehicle_SportsClassics = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleSportsClassics"].NameMenu, ConfigMenu["MenuVehicleSportsClassics"].DescriptionMenu)
vehicle_Sports = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleSports"].NameMenu, ConfigMenu["MenuVehicleSports"].DescriptionMenu)
vehicle_Super =  RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleSuper"].NameMenu, ConfigMenu["MenuVehicleSuper"].DescriptionMenu)
vehicle_Motorcycles = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleMotorcycles"].NameMenu, ConfigMenu["MenuVehicleMotorcycles"].DescriptionMenu)
vehicle_OffRoad = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleOffRoad"].NameMenu, ConfigMenu["MenuVehicleOffRoad"].DescriptionMenu)
vehicle_Industrial = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleIndustrial"].NameMenu, ConfigMenu["MenuVehicleIndustrial"].DescriptionMenu)
vehicle_Utility = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleUtility"].NameMenu, ConfigMenu["MenuVehicleUtility"].DescriptionMenu)
vehicle_Vans = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleVans"].NameMenu, ConfigMenu["MenuVehicleVans"].DescriptionMenu)
vehicle_Cycles = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleCycles"].NameMenu, ConfigMenu["MenuVehicleCycles"].DescriptionMenu)
vehicle_Boats = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleBoats"].NameMenu, ConfigMenu["MenuVehicleBoats"].DescriptionMenu)
vehicle_Helicopters = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleHelicopters"].NameMenu, ConfigMenu["MenuVehicleHelicopters"].DescriptionMenu)
vehicle_Planes = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehiclePlanes"].NameMenu, ConfigMenu["MenuVehiclePlanes"].DescriptionMenu)
vehicle_Service = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleService"].NameMenu, ConfigMenu["MenuVehicleService"].DescriptionMenu)
vehicle_Emergency = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleEmergency"].NameMenu, ConfigMenu["MenuVehicleEmergency"].DescriptionMenu)
vehicle_Military = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleMilitary"].NameMenu, ConfigMenu["MenuVehicleMilitary"].DescriptionMenu)
vehicle_Commercial = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleCommercial"].NameMenu, ConfigMenu["MenuVehicleCommercial"].DescriptionMenu)
vehicle_Import = RageUI.CreateSubMenu(menu_vehicle, ConfigMenu["MenuVehicleImport"].NameMenu, ConfigMenu["MenuVehicleImport"].DescriptionMenu)
option_vehicle = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuVehicleOption"].NameMenu, ConfigMenu["MenuVehicleOption"].DescriptionMenu)
menu_ped = RageUI.CreateSubMenu(menu_option, ConfigMenu["MenuPed"].NameMenu, ConfigMenu["MenuPed"].DescriptionMenu)

menu_admin.Closed = function()
    menu_isopen = false 
end

Keys.Register(ConfigMenu["MenuAdmin"].Touche, ConfigMenu["MenuAdmin"].Touche, "Menu Admin", function()
    OpenMenu()
end)

local isMenuOpen = false
local menuopen = false
local menumoney = false
local menutp = false 
local banquemoney = false
local giveargentsale = false 
local checkbox = false
local checkbox2 = false 
local checkbox_notif = false
local stafMod = false
local checkbox_noclip = false
local spawnvehicule = false 
local timeserver = false
local freezetimegame = false 

_MenuWave = {}
Tpposmark = {}
vehicle = {}

local onlisted = {
    yesorno = 1
}

local onliste = {
    money = 1
}

local lister = {
    yesouno = 1
}

local time = {
    weather = 1
}

local lister1 = {
    bdd = 1
}

local listedcoords = {
    yesornocoords = 1
}

Citizen.CreateThread(function()
    if Config["import"].VehicleImport then 
        TriggerServerEvent("bddserverressource")
    end 
end)

Citizen.CreateThread(function()
    TriggerServerEvent("serv:weather:bdd")
end)

Namevehicle = {}

RegisterNetEvent("bddservtoclient")
AddEventHandler("bddservtoclient", function(namevehicle)
    Namevehicle = namevehicle     
end)


markertpcoords = {}

RegisterNetEvent("client:to:tp:adminmenu")
AddEventHandler("client:to:tp:adminmenu", function(tpmarker)
    markertpcoords = tpmarker
end)

function OpenMenu() 
    if menu_isopen then 
        return 
    else 
        menu_isopen = true 
        RageUI.Visible(menu_admin, true)

        Citizen.CreateThread(function()
            while menu_isopen do 
                Wait(0)
                RageUI.IsVisible(menu_admin, function()
                    if checkbox then 
                        RageUI.Separator("Mode Staff : ~g~Activé")
                    else 
                        RageUI.Separator("Mode Staff : ~r~Désactivé")
                    end
                    RageUI.line()
                    RageUI.Checkbox("Mode Staff", nil, checkbox, {}, { 
                        onChecked = function()
                            checkbox = true 
                            if Config["notif"].okoknotify then 
                                TriggerEvent('okokNotify:Alert', "Mode Staff", "Vous Venez d'activé le mode Staff", 5000, 'success')
                            else 
                                ESX.ShowAdvancedNotification("Notification","~g~Mode Staff", "Vous Venez d'activé le mode Staff", NotifPicture, 1)
                            end
                        end,
                        onUnChecked = function() 
                            checkbox = false
                            if Config["notif"].okoknotify then 
                                TriggerEvent('okokNotify:Alert', "Mode Staff", "Vous Venez de désactivé le mode Staff", 5000, 'warning')
                            else 
                                ESX.ShowAdvancedNotification("Notification","~r~Mode Staff", "Vous Venez de désactivé le mode Staff", NotifPicture, 1)
                            end
                        end,
                        onSelected = function(index) 
                            checkbox = index 
                        end
                    })
                    if checkbox then 
                        RageUI.Button("Option joueur", "Acceder au option des joueurs", {RightLabel = "→→"}, true,{},menu_joueur)
                        RageUI.Button("Option reports", "Acceder au option des reports", {RightLabel = "→→"}, true,{},menu_report)
                        RageUI.Button("Vos option", "Acceder au option perso", {RightLabel = "→→"}, true,{},menu_option)
                        RageUI.Button("Autres option", "Acceder au option suplémentaires", {RightLabel = "→→"}, true,{},menu_autreoption)
                        RageUI.Button("Option dev", "Acceder au option de dev", {RightLabel = "→→"}, true,{},menu_dev)
                        RageUI.Button("Paramétres", "Acceder au option de dev", {RightLabel = "→→"}, true,{},menu_parametre)
                    end
                end)
                RageUI.IsVisible(menu_joueur,function()
                end)
                RageUI.IsVisible(menu_report, function()
                end)
                RageUI.IsVisible(menu_option, function()
                    RageUI.Separator("Vos ~r~Option~s~ :")
                    RageUI.line()
                    RageUI.Checkbox("Noclip", nil, checkbox_noclip, {}, {
                        onChecked = function()
                            _MenuWave:OnNoclip()
                            checkbox_noclip = true
                        end,
                        onUnChecked = function()
                            _MenuWave:OnNoclip()
                            checkbox_noclip = false
                        end,
                        onSelected = function(index)
                            checkbox_noclip = index
                        end
                    })
                    RageUI.Button("Menu item", "Acceder au item", {RightLabel = "→→"}, true, {},menu_item)
                    RageUI.Button("Menu armes", "Acceder au item", {RightLabel = "→→"}, true, {},menu_weapon)
                    if Config["inventory"].ox_inventory then 
                        RageUI.Button("Menu balles", "Acceder au balles", {RightLabel = "→→"}, true, {},menu_balles)
                    end
                    RageUI.Button("Menu money", "Acceder au option de moeny", {RightLabel = "→→"}, true, {},menu_money)
                    RageUI.Button("Spawn véhicules", "Spawn véhicules", {RightLabel = "→→"}, true, {},menu_vehicle)
                    RageUI.Button("Options véhicules", "Spawn véhicules", {RightLabel = "→→"}, true, {}, option_vehicle)
                    RageUI.Button("Menu ped", "Acceder au ped", {RightLabel = "→→"}, true, {}, menu_ped)
                    RageUI.Button("Récuperer mon apparance", nil, {RightLabel = "→→"}, true, {
                        onSelected  = function()
                            getBaseSkin()
                        end
                    })
                end)
                RageUI.IsVisible(menu_autreoption, function()
                    RageUI.Button("Option temps", "Acceder au option du temps", {RightLabel = "→→"}, true, {},menu_time)
                    RageUI.Button("Menu Tp", "Acceder au menu tp", {RightLabel = "→→"}, true, {
                        onSelected = function()
                            TriggerServerEvent("tp:bdd:serv:client")
                        end
                    },menu_tp)
                end)
                RageUI.IsVisible(menu_time, function()
                    RageUI.Separator(GetClockHours().."~r~ h ~s~"..GetClockMinutes().."~r~ m ~s~"..GetClockSeconds().."~r~ s ~s~")
                    RageUI.line()
                    RageUI.Button("Changer l'heure", "Changer le temps", {RightLabel = "→→"}, true, {
                        onSelected = function()
                            if freezetimegame then 
                                return 
                                TriggerEvent("notif:erreur:meteo")
                            else 
                                if not timeserver then
                                    timeserver = true
                                    Citizen.CreateThread(function()
                                        while timeserver do
                                            local keyboard, time, minutes = exports["nh-keyboard"]:Keyboard({
                                                header = "Changer l'heure", 
                                                rows = {"Heure","Minutes"}
                                            })
                                            if keyboard then
                                                if time and minutes then
                                                    TriggerEvent('checktime', tonumber(time), tonumber(minutes))
                                                end
                                            else
                                                timeserver = false
                                            end
                                            Citizen.Wait(0)
                                        end
                                    end)
                                end
                            end
                        end
                    })
                    RageUI.List("Météo", {"Extra-sunny", "Clear", "Clouds", "Smog", "Foggy", "Overcast", "Rain", "Thunder", "Clearing", "Neutral", "Blizzard", "Snowlight", "Christmas", "Snow"}, onlisted.yesorno, nil, {}, true, {
                        onListChange = function(list) onlisted.yesorno = list end,
                        onSelected = function(list)
                            if list == 1 then 
                                TriggerServerEvent("Extra-sunny:serv")                            
                            end
                            if list == 2 then 
                                TriggerServerEvent("Clear:Serv")
                            end
                            if list == 3 then 
                                TriggerServerEvent("Clouds:Serv")
                            end 
                            if list == 4 then 
                                TriggerServerEvent("Smog:Serv")
                            end 
                            if list == 5 then 
                                TriggerServerEvent("Foggy:Serv")
                            end 
                            if list == 6 then 
                                TriggerServerEvent("Overcast:Serv")
                            end 
                            if list == 7 then 
                                TriggerServerEvent("Raining:Serv")
                            end 
                            if list == 8 then 
                                TriggerServerEvent("Thunderstorm:Serv")
                            end 
                            if list == 9 then 
                                TriggerServerEvent("Clearing:Serv")
                            end 
                            if list == 10 then 
                                TriggerServerEvent("Neutral:Serv")
                            end 
                            if list == 11 then 
                                TriggerServerEvent("Blizzard:Serv")
                            end 
                            if list == 12 then 
                                TriggerServerEvent("Snowlight:Serv")
                            end 
                            if list == 13 then 
                                TriggerServerEvent("Christmas:Serv")
                            end 
                            if list == 14 then 
                                TriggerServerEvent("Snowing:Serv")
                            end                             
                        end
                    })
                    RageUI.List("Etat du temps", {"Normal", "Freeze"}, lister.yesouno, nil, {}, true, {
                        onListChange = function(list) lister.yesouno = list end,
                        onSelected = function(list)
                            if list == 1 then 
                                if not freezetimegame then 
                                    TriggerEvent("notif:erreur:normal:time")
                                else 
                                    TriggerServerEvent("normaltime:serv")
                                    TriggerEvent("notif:succes:normal:time")
                                end
                            end
                            if list == 2 then 
                                if freezetimegame then 
                                    TriggerEvent("notif:erreur:freeze:time")
                                else 
                                    local heure = GetClockHours()
                                    local minute = GetClockMinutes()
                                    local seconde = GetClockSeconds()
                                    TriggerServerEvent("freezetime:server", heure, minute, seconde)
                                    TriggerEvent("notif:succes:freeze:time")
                                end
                            end
                        end
                    })           
                    RageUI.List("Enregistrée bdd", {"Enregistrée", "Rénitialiser"}, time.weather, nil, {}, true, {
                        onListChange = function(list) time.weather = list end,
                        onSelected = function(list)
                            if list == 1 then 
                                local weather = GetNextWeatherTypeHashName()
                                TriggerServerEvent("enregistrewetherbdd",weather)
                            end
                            if list == 2 then 
                                TriggerServerEvent("Renitialise:values:weather")
                            end
                        end
                    })
                end)
                RageUI.IsVisible(menu_tp, function()
                    
                    if #markertpcoords <= 0 then 
                        RageUI.Separator("Aucun point de tp enregistré")
                        RageUI.line()
                    else 
                        RageUI.Separator("~r~↓~s~ Liste tp ~r~↓~s~")
                        RageUI.line()
                    end 
                    for k,v in pairs(markertpcoords) do 
                        RageUI.List(v.name, {"Tp", "Suprimée"}, lister1.bdd, nil, {}, true, {
                            onListChange = function(list) lister1.bdd = list end,
                            onSelected = function(list)
                                
                                if list == 1 then 
                                    if IsPedInAnyVehicle(PlayerPedId(), false) then
                                        DoScreenFadeOut(200)
                                        Citizen.Wait(200)
                                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                                        local coordsplayer = json.decode(v.coords)
                                        SetEntityCoords(vehicle, coordsplayer.x, coordsplayer.y, coordsplayer.z, false, false, false, true)
                                        --SetEntityCoordsNoOffset(vehicle, coordsplayer.x, coordsplayer.y, coordsplayer.z)
                                        SetEntityHeading(vehicle, v.heading)
                                        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                                        Citizen.Wait(200)
                                        DoScreenFadeIn(200)
                                    else 
                                        DoScreenFadeOut(200)
                                        Citizen.Wait(200)
                                        local coordsplayer = json.decode(v.coords)
                                        SetEntityCoordsNoOffset(PlayerPedId(), coordsplayer.x, coordsplayer.y, coordsplayer.z)
                                        SetEntityHeading(PlayerPedId(), v.heading)
                                        TriggerEvent("tp:point:notif", v.name)
                                        Citizen.Wait(200)
                                        DoScreenFadeIn(200)
                                    end                               
                                end
                                if list == 2 then 
                                    TriggerServerEvent("delete:tp", v.id)
                                    TriggerEvent("actualise:delete:tp", v.name)
                                end
                            end
                        })
                    end
                    RageUI.Button("→→ Enregistrer un point de tp", nil, {}, true, {
                        onSelected = function()
                            local coordsplayer = GetEntityCoords(PlayerPedId())
                            local headingPlayer = GetEntityHeading(PlayerPedId())
                            if not menutp then
                                menutp = true
                                Citizen.CreateThread(function()
                                    while menutp do
                                        local keyboard, tpcreate = exports["nh-keyboard"]:Keyboard({
                                            header = "Crée un point de tp", 
                                            rows = {"Nom de votre point de tp"}
                                        })
                                        if keyboard then
                                            if tpcreate then
                                                TriggerEvent('tpmenu:event', tpcreate, coordsplayer, headingPlayer)
                                            end
                                        else
                                            menutp = false
                                        end
                                        Citizen.Wait(0)
                                    end
                                end)
                            end
                        end
                    })
                end)
                RageUI.IsVisible(menu_dev,function()
                    RageUI.List("Copier Ma Position", {"Vector 3", "Vector 4"}, listedcoords.yesornocoords, nil, {}, true, {
                        onListChange = function(list) listedcoords.yesornocoords = list end,
                        onSelected = function(list)

                            if list == 1 then 
                                local coords = GetEntityCoords(PlayerPedId())
                                SendNUIMessage({
                                    type = 'clipboard',
                                    data = '' .. vec(coords.x, coords.y, coords.z)
                                })
                                TriggerEvent("Coords:Copier:Joueur:Admin")
                            end
                            if list == 2 then 
                                local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
                                SendNUIMessage({
                                    type = 'clipboard',
                                    data = '' .. vec(coords.x, coords.y, coords.z, heading)
                                })
                                TriggerEvent("Coords:Copier:Joueur:Admin")
                            end
                        end
                    })
                    RageUI.Button("Copier La Cam", nil, {RightLabel = "→→"}, true, {
                        onSelected = function()
                            local coords, heading = GetFinalRenderedCamCoord(), GetFinalRenderedCamRot(0)
                            SendNUIMessage({
                                type = 'clipboard',
                                data = '{' .. vec(coords.x, coords.y, coords.z) .. ', ' .. vec(heading.x, heading.y, heading.z) .. ' }'
                            })
                            TriggerEvent("Coords:Copier:Joueur:Admin")
                        end
                    })
                end)
                RageUI.IsVisible(menu_parametre,function()
                end)
                RageUI.IsVisible(menu_item,function()
                    for k,v in pairs (list_item) do 
                        RageUI.Button(v.name, "Prendre un/(e) "..v.name, {RightLabel = "→→"}, true, {
                            onSelected = function()
                                if not isMenuOpen then
                                    isMenuOpen = true
                                    Citizen.CreateThread(function()
                                        while isMenuOpen do
                                            local keyboard, item = exports["nh-keyboard"]:Keyboard({
                                                header = "Item : "..v.name, 
                                                rows = {"Nombre de "..v.name}
                                            })
                                            if keyboard then
                                                if item then
                                                    TriggerEvent('additem', v.name, v.label, tonumber(item))
                                                end
                                            else
                                                isMenuOpen = false
                                            end
                                            Citizen.Wait(0)
                                        end
                                    end)
                                end
                            end
                        })
                    end
                end)
                RageUI.IsVisible(menu_weapon,function()
                    for k,v in pairs (weapon) do 
                        RageUI.Button(v.name, "prendre un(e) "..v.name, {RightBadge = RageUI.BadgeStyle.Gun}, true, {
                            onSelected = function()
                                TriggerEvent('addWeapon', v.label, v.name)
                            end   
                        })
                    end
                end)
                RageUI.IsVisible(menu_balles, function()
                    if Config["inventory"].ox_inventory then 
                        for k,v in pairs (ammo) do 
                            RageUI.Button(v.name, nil, {RightBadge = RageUI.BadgeStyle.Ammo}, true, {
                                onSelected = function()
                                    if not menuopen then
                                        menuopen = true
                                        Citizen.CreateThread(function()
                                            while menuopen do
                                                local keyboard, number = exports["nh-keyboard"]:Keyboard({
                                                    header = "Item : "..v.name, 
                                                    rows = {"Nombre de "..v.name}
                                                })
                                                if keyboard then
                                                    if number then
                                                        TriggerEvent('addammo', v.label, tonumber(number))
                                                    end
                                                else
                                                    menuopen = false
                                                end
                                                Citizen.Wait(0)
                                            end
                                        end)
                                    end
                                end
                            })
                        end
                    end
                end)
                RageUI.IsVisible(menu_money,function()
                    RageUI.List("Give argent", {"Banque", "Money"}, onliste.money, nil, {}, true, {
                        onListChange = function(list) onliste.money = list end,
                        onSelected = function(list)
                            if list == 1 then 
                                if not banquemoney then 
                                    banquemoney = true
                                    Citizen.CreateThread(function()
                                        while banquemoney do
                                            local keyboard, moneybanque = exports["nh-keyboard"]:Keyboard({
                                                header = "Give Money", 
                                                rows = {"Combien Voulez Vous ?"}
                                            })
                                            if keyboard then
                                                if moneybanque then
                                                    TriggerEvent('moneyaddbanque', tonumber(moneybanque))
                                                end
                                            else
                                                banquemoney = false
                                            end
                                            Citizen.Wait(0)
                                        end
                                    end)
                                end 
                            end
                            if list == 2 then
                                if not menumoney then 
                                    menumoney = true
                                    Citizen.CreateThread(function()
                                        while menumoney do
                                            local keyboard, money = exports["nh-keyboard"]:Keyboard({
                                                header = "Give Money", 
                                                rows = {"Combien Voulez Vous ?"}
                                            })
                                            if keyboard then
                                                if money then
                                                    TriggerEvent('moneyadd', tonumber(money))
                                                end
                                            else
                                                menumoney = false
                                            end
                                            Citizen.Wait(0)
                                        end
                                    end)
                                end 
                            end
                        end
                    })
                    RageUI.Button("Give argent sale", "Give money", {RightLabel =  "→→"}, true,{
                        onSelected = function()
                            if not giveargentsale then 
                                giveargentsale = true
                                Citizen.CreateThread(function()
                                    while giveargentsale do
                                        local keyboard, moneyblack = exports["nh-keyboard"]:Keyboard({
                                            header = "Give argent sale", 
                                            rows = {"Combien Voulez Vous ?"}
                                        })
                                        if keyboard then
                                            if moneyblack then
                                                TriggerEvent('blackmoney', tonumber(moneyblack))
                                            end
                                        else
                                            giveargentsale = false
                                        end
                                        Citizen.Wait(0)
                                    end
                                end)
                            end
                        end
                    })
                end)
                RageUI.IsVisible(menu_vehicle, function()
                    RageUI.Button("Spawn Véhicule", "Faire spawn un véhicule", {RightLabel = "→→"}, true, {
                        onSelected = function()
                            if not spawnvehicule then 
                                spawnvehicule = true
                                Citizen.CreateThread(function()
                                    while spawnvehicule do
                                        local keyboard, namevehicle = exports["nh-keyboard"]:Keyboard({
                                            header = "Spawn Vehicule", 
                                            rows = {"Nom de votre véhicule :"}
                                        })
                                        if keyboard then
                                            if namevehicle then
                                                TriggerEvent("spawnvehiclename", namevehicle)
                                            end
                                        else
                                            spawnvehicule = false
                                        end
                                        Citizen.Wait(2)
                                    end
                                end)
                            end
                        end
                    })
                    RageUI.Button("Compacts", "Véhicules compacts", {RightLabel = "→→"}, true, {},vehicle_Compact)
                    RageUI.Button("Sedans", "Véhicules sedans", {RightLabel = "→→"}, true, {},vehicle_Sedans)
                    RageUI.Button("Suv", "Véhicules suv", {RightLabel = "→→"}, true, {},vehicle_SUVs)
                    RageUI.Button("Coupes", "Véhicules suv", {RightLabel = "→→"}, true, {},vehicle_Coupes)
                    RageUI.Button("Muscle", "Véhicules muscle", {RightLabel = "→→"}, true, {},vehicle_Muscle)
                    RageUI.Button("Sports Classics", "Véhicules sports classics", {RightLabel = "→→"}, true, {},vehicle_SportsClassics)
                    RageUI.Button("Sports", "Véhicules sports", {RightLabel = "→→"}, true, {},vehicle_Sports)
                    RageUI.Button("Super", "Véhicules super", {RightLabel = "→→"}, true, {},vehicle_Super)                  
                    RageUI.Button("Motorcycles", "Véhicules motorcycles", {RightLabel = "→→"}, true, {},vehicle_Motorcycles)  
                    RageUI.Button("Off road", "Véhicules off road", {RightLabel = "→→"}, true, {},vehicle_OffRoad)  
                    RageUI.Button("Industrial", "Véhicules industrial", {RightLabel = "→→"}, true, {},vehicle_Industrial)  
                    RageUI.Button("Utility", "Véhicules utility", {RightLabel = "→→"}, true, {},vehicle_Utility)  
                    RageUI.Button("Vans", "Véhicules vans", {RightLabel = "→→"}, true, {},vehicle_Vans)  
                    RageUI.Button("Cycles", "Véhicules cycles", {RightLabel = "→→"}, true, {},vehicle_Cycles)  
                    RageUI.Button("Boats", "Véhicules boats", {RightLabel = "→→"}, true, {},vehicle_Boats)
                    RageUI.Button("Helicopters", "Véhicules helicopters", {RightLabel = "→→"}, true, {},vehicle_Helicopters)
                    RageUI.Button("Planes", "Véhicules planes", {RightLabel = "→→"}, true, {},vehicle_Planes)  
                    RageUI.Button("Service", "Véhicules service", {RightLabel = "→→"}, true, {},vehicle_Service)  
                    RageUI.Button("Emergency", "Véhicules emergency", {RightLabel = "→→"}, true, {},vehicle_Emergency)  
                    RageUI.Button("Military", "Véhicules military", {RightLabel = "→→"}, true, {},vehicle_Military)  
                    RageUI.Button("Commercial", "Véhicules commercial", {RightLabel = "→→"}, true, {},vehicle_Commercial)  
                    if Config["import"].VehicleImport then 
                        RageUI.Button("Import", "Véhicules import", {RightLabel = "→→"}, true, {},vehicle_Import)
                    end 
                end)
                RageUI.IsVisible(vehicle_Compact, function()
                    for k,v in pairs (Compacts) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Sedans, function()
                    for k,v in pairs (Sedans) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_SUVs,function()
                    for k,v in pairs (SUVs) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Coupes, function()
                    for k,v in pairs (Coupes) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Muscle, function()
                    for k,v in pairs (Muscle) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_SportsClassics, function()
                    for k,v in pairs (SportsClassics) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Sports, function()
                    for k,v in pairs (Sports) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Super, function()
                    for k,v in pairs (Super) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Motorcycles, function()
                    for k,v in pairs (Motorcycles) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_OffRoad, function()
                    for k,v in pairs (OffRoad) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)   
                RageUI.IsVisible(vehicle_Industrial, function()
                    for k,v in pairs (Industrial) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)  
                RageUI.IsVisible(vehicle_Utility, function()
                    for k,v in pairs (Utility) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)
                            end
                        })
                    end
                end)  
                RageUI.IsVisible(vehicle_Vans, function()
                    for k,v in pairs (Vans) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Cycles, function()
                    for k,v in pairs (Cycles) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)  
                RageUI.IsVisible(vehicle_Boats, function()
                    for k,v in pairs (Boats) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end) 
                RageUI.IsVisible(vehicle_Helicopters, function()
                    for k,v in pairs (Helicopters) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)
                RageUI.IsVisible(vehicle_Planes, function()
                    for k,v in pairs (Planes) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)  
                RageUI.IsVisible(vehicle_Service, function()
                    for k,v in pairs (Service) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)  
                RageUI.IsVisible(vehicle_Emergency, function()
                    for k,v in pairs (Emergency) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)      
                RageUI.IsVisible(vehicle_Military, function()
                    for k,v in pairs (Military) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end)   
                RageUI.IsVisible(vehicle_Commercial, function()
                    for k,v in pairs (Commercial) do   
                        RageUI.Button(v, "Spawn la "..string.lower(v), {RightBadge = RageUI.BadgeStyle.Car}, true, {
                            onSelected = function()
                                VehicleSpawn(v)                                
                            end
                        })
                    end
                end) 
                RageUI.IsVisible(vehicle_Import,function()
                    for k,v in pairs (Namevehicle) do 
                        RageUI.Button(v.name, "Spawn la "..string.lower(v.name), {RightBadge = RageUI.BadgeStyle.Car}, true,{
                            onSelected = function()
                                VehicleSpawn(v.label)
                            end
                        })
                    end
                end)
                RageUI.IsVisible(option_vehicle,function()
                    RageUI.Button("Réparer le vehicule", "Reparer votre vehicule",   {RightLabel = "→→"}, true, {
                        onSelected = function()
                            clearvehicle()
                        end
                    })
                end)
                RageUI.IsVisible(menu_ped, function()
                    for k,v in pairs (listPed) do 
                        RageUI.Button(string.lower(v), "Prendre l'apparancde du ped "..string.lower(v), {}, true, {
                            onSelected = function()
                                TransformPedPlayer(v)
                            end
                        })
                    end
                end)
            end
        end)
    end
end 

-------------- Event --------------

RegisterNetEvent("additem")
AddEventHandler("additem", function(name, label, item)
    TriggerServerEvent("additem:player",name, label, item)
    isMenuOpen = false
end)

RegisterNetEvent("addWeapon")
AddEventHandler("addWeapon", function(label, name)
    TriggerServerEvent("addWeapon:player",label, name)
end)

RegisterNetEvent("notif:weapon:player")
AddEventHandler("notif:weapon:player", function(label, name)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous avez reçu un(e) "..name.." dans votre inventaire !", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous avez reçu un(e) "..name.." dans votre inventaire !", NotifPicture, 1) 
    end
end)

RegisterNetEvent("addammo")
AddEventHandler("addammo", function(label, number)
    TriggerServerEvent("addammo:player",label, number)
    menuopen = false 
end)

RegisterNetEvent("notif:ammo:player")
AddEventHandler("notif:ammo:player", function(label, number)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de prendre "..number.." balles "..label.." dans votre inventaire !", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de prendre ~g~"..number.." balles "..label.."~s~ dans votre inventaire !", NotifPicture, 1) 
    end
end)

RegisterNetEvent("giveitemnotif")
AddEventHandler("giveitemnotif", function(name, item)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous avez reçu "..item.." "..name.." dans votre inventaire !", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous avez reçu "..item.." "..name.." dans votre inventaire !", NotifPicture, 1) 
    end
end)

RegisterNetEvent("moneyadd")
AddEventHandler("moneyadd", function(money)
    TriggerServerEvent("moneyadd:player", money)
    menumoney = false
end)

RegisterNetEvent("notifgivemoneyinventory")
AddEventHandler("notifgivemoneyinventory", function(money)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de recevoir "..money.." $ dans votre inventaire", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de recevoir ~g~"..money.." $~s~ dans votre inventaire", NotifPicture, 1) 
    end
end)

RegisterNetEvent("blackmoney")
AddEventHandler("blackmoney", function(moneyblack)
    TriggerServerEvent("money:add:black", moneyblack)
    giveargentsale = false
end)

RegisterNetEvent("notif:blackmoney")
AddEventHandler("notif:blackmoney", function(moneyblack)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous venez de recevoir "..moneyblack.." $ d'argent sale", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous venez de recevoir ~g~"..moneyblack.." $~s~  d'argent sale", NotifPicture, 1) 
    end 
end)

RegisterNetEvent("moneyaddbanque")
AddEventHandler("moneyaddbanque", function(moneybanque)
    TriggerServerEvent("moneyaddbanqueserver", moneybanque)
    banquemoney = false
end)

RegisterNetEvent("noticlientbanque")
AddEventHandler("noticlientbanque", function(moneybanque)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "Vous avez reçu "..moneybanque.." $ en banque", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "Vous avez reçu ~g~"..moneybanque.." $ ~s~en banque", "CHAR_BANK_MAZE", 1)
    end
end)

RegisterNetEvent("spawnvehiclename")
AddEventHandler("spawnvehiclename", function(namevehicle)
    spawnvehicule = false
    if IsModelValid(namevehicle) then
        VehicleSpawn(namevehicle)
    else 
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "Erreur", "Model Invalide !", 5000, 'error')
        else 
            ESX.ShowAdvancedNotification("Notification","~r~Erreur", "Model Invalide !", NotifPicture, 1)
        end
    end
end)

RegisterNetEvent("notif:erreur:number:nil")
AddEventHandler("notif:erreur:number:nil", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "Erreur", "Veuillez rentrez un numéro valide ! ", 5000, 'error')
    else 
        ESX.ShowAdvancedNotification("Notification","~r~Erreur", "Veuillez rentrez un numéro valide ! ", NotifPicture, 1)
    end
end)

RegisterNetEvent("checktime")
AddEventHandler("checktime", function(time,minutes)
    timeserver = false
    if time == nil then
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "Erreur","Veuillez entrer un nombre valide" , 5000, 'error')
            return
        else 
            ESX.ShowNotification("Veuillez entrer un nombre valide")
            return
        end
    end
    if minutes == nil then 
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "Erreur","Veuillez entrer un nombre valide" , 5000, 'error')
            return
        else 
            ESX.ShowNotification("Veuillez entrer un nombre valide")
            return
        end
    end
    Wait(500)
    if time > 23 then 
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "Erreur","Vous ne pouvez pas changer le temps a : "..time.." heure !" , 5000, 'error')
        else 
            ESX.ShowNotification("Vous ne pouvez pas changer le temps a : "..time.." heure !")
        end
    else 
        if minutes > 59 then
            if Config["notif"].okoknotify then 
                TriggerEvent('okokNotify:Alert', "Erreur","Vous ne pouvez pas changer les minutes a : "..minutes.." minutes !" , 5000, 'error')
            else 
                ESX.ShowNotification("Vous ne pouvez pas changer les minutes a : "..minutes.." minutes !")
            end
        else 
            TriggerServerEvent("time:serv",time, minutes)
        end
    end
end)

RegisterNetEvent("notif:erreur:normal:time")
AddEventHandler("notif:erreur:normal:time", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "Erreur", "Le temps est deja en mode normal", 5000, 'error')
    else 
        ESX.ShowAdvancedNotification("Notification","~r~Erreur", "Le temps est deja en mode normal", NotifPicture, 1)
    end
end)

RegisterNetEvent("notif:erreur:freeze:time")
AddEventHandler("notif:erreur:freeze:time", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "Erreur", "Le temps est deja freeze", 5000, 'error')
    else 
        ESX.ShowAdvancedNotification("Notification","~r~Erreur", "Le temps est deja freeze", NotifPicture, 1)
    end
end)

RegisterNetEvent("notif:succes:normal:time")
AddEventHandler("notif:succes:normal:time", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de remettre le temps en mode normal sur le serveur", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de remettre le temps en mode normal sur le serveur", "CHAR_BANK_MAZE", 1)
    end
end)

RegisterNetEvent("notif:erreur:meteo")
AddEventHandler("notif:erreur:meteo", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "Erreur", "Vous ne pouvez pas changer l'heure quand le temps est freeze", 5000, 'error')
    else 
        ESX.ShowAdvancedNotification("Notification","~r~Erreur", "Vous ne pouvez pas changer l'heure quand le temps est freeze", NotifPicture, 1)
    end
end)

RegisterNetEvent("notif:succes:freeze:time")
AddEventHandler("notif:succes:freeze:time", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de freeze le temps du serveur", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de freeze le temps du serveur", "CHAR_BANK_MAZE", 1)
    end
end)

RegisterNetEvent("freezetimetoplayer")
AddEventHandler("freezetimetoplayer", function(heure, minute, seconde)
    freezetimegame = true 
    FreezeTime(heure, minute, seconde) 
end)

RegisterNetEvent("normaltime:client")
AddEventHandler("normaltime:client", function()
    freezetimegame = false 
end)


function FreezeTime(HEURE, MINUTE, SECONDE)
    Citizen.CreateThread(function()
        while freezetimegame do 
            Citizen.Wait(0)
            NetworkOverrideClockTime(HEURE, MINUTE, SECONDE)
        end
    end)
end

RegisterNetEvent("tpmenu:event")
AddEventHandler("tpmenu:event", function(tpcreate, coordsplayer, headingPlayer)
    menutp = false 
    if tpcreate == nil then 
        return 
    else 
        TriggerServerEvent("tp:bdd:create", tpcreate, coordsplayer, headingPlayer)
        Wait(100)
        TriggerServerEvent("tp:bdd:serv:client")
        if Config["notif"].okoknotify then 
            TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de crée un nouveaux point de tp : "..tpcreate, 5000, 'success')
        else 
            ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de crée un nouveaux point de tp : "..tpcreate, "CHAR_BANK_MAZE", 1)
        end
    end
end)

RegisterNetEvent("actualise:delete:tp")
AddEventHandler("actualise:delete:tp", function(name)
    Wait(100)
    TriggerServerEvent("tp:bdd:serv:client")
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de suprimmer le point de tp : "..name, 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de suprimmer le point de tp : "..name, "CHAR_BANK_MAZE", 1)
    end
end)

RegisterNetEvent("tp:point:notif")
AddEventHandler("tp:point:notif", function(name)
    Wait(200)
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de vous tp au point : "..name, 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de vous tp au point : "..name, "CHAR_BANK_MAZE", 1)
    end
end)

RegisterCommand("Weebook", function()
    TriggerServerEvent("weebookazooklapute")
end)


RegisterNetEvent("Coords:Copier:Joueur:Admin")
AddEventHandler("Coords:Copier:Joueur:Admin", function()
    if Config["notif"].okoknotify then 
        TriggerEvent('okokNotify:Alert', "SUCCESS", "vous venez de copier votre possition", 5000, 'success')
    else 
        ESX.ShowAdvancedNotification("Notification","~g~Succes", "vous venez de copier votre possition", "CHAR_BANK_MAZE", 1)
    end
end)
