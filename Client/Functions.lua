function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(10)
    end
end



function animgive()
    local playerPed = PlayerPedId()
    LoadAnim('mp_common')
    TaskPlayAnim(playerPed, 'mp_common', "givetake1_a", 2.0, 2.0, 2000, true, 0, false, false, false)
end

function animpickup()
    local playerPed = PlayerPedId()
    LoadAnim('pickup_object')
    TaskPlayAnim(playerPed, 'pickup_object', "pickup_low", 2.0, 2.0, 2000, true, 0, false, false, false)
end

function animprocess()
    local playerPed = PlayerPedId()
    LoadAnim('mini@repair')
    TaskPlayAnim(playerPed, 'mini@repair', "fixing_a_ped", 2.0, 2.0, 10000, true, 0, false, false, false)
    
end

function animprocess_pickup()
    local playerPed = PlayerPedId()
    LoadAnim('mp_am_hold_up')
    TaskPlayAnim(playerPed, 'mp_am_hold_up', "purchase_beerbox_shopkeeper", 2.0, 2.0, 4000, true, 0, false, false, false)
end
--{lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},

-----------------------------
----- Recolte sah ! ---------
-----------------------------
function start_field_(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_1 then
            for _,v in pairs(Field.field_1) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_2(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_2 then
            for _,v in pairs(Field.field_2) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field2(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field2(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_2(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_3(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_3 then
            for _,v in pairs(Field.field_3) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field3(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field3(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_3(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_4(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_4 then
            for _,v in pairs(Field.field_4) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field4(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field4(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_4(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_5(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_5 then
            for _,v in pairs(Field.field_5) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field5(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field5(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_5(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_6(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_6 then
            for _,v in pairs(Field.field_6) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field6(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field6(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_6(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_7(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_7 then
            for _,v in pairs(Field.field_7) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field7(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field7(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_7(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_8(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_8 then
            for _,v in pairs(Field.field_8) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field8(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field8(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_8(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_9(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_9 then
            for _,v in pairs(Field.field_9) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field9(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field9(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_9(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
------Recolte sah ! ---------
-----------------------------
function start_field_10(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    while true do
        Citizen.Wait(1)
        if Field.Field_Zone_10 then
            for _,v in pairs(Field.field_10) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, _pos)
                    if dist3 <= 50.0 then
                        DrawMarker(v.MarkerType, _pos, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            ESX.ShowHelpNotification(text)
                            if IsControlJustPressed(1,51) then
                                local playerPed = PlayerPedId()
                                animpickup()
                                Citizen.Wait(1700)
                                TriggerServerEvent("jessy:drugfield", itemname, farm_min, farm_max, itemlabel, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                ClearPedTasksImmediately(playerPed)
                                start_field10(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                            end
                        end
                    end
                end
            end
        end
    end
end
function start_field10(pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
    local range = math.random(zone_min, zone_max)
    local range2 = math.random(zone_min, zone_max)
    local shops = {
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
        {x = pos.x + range, y = pos.y + range2, z = pos.z},
    }
    local result = shops[math.random(#shops)]
    local _pos = vector3(result.x, result.y, result.z)
    start_field_10(_pos, pos, text, itemname, itemlabel, farm_min, farm_max, zone_min, zone_max)
end
-----------------------------
-----------------------------
-----------------------------