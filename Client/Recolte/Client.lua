Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_1 then
            for _,v in pairs(Field.field_1) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_2 then
            for _,v in pairs(Field.field_2) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field2(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_3 then
            for _,v in pairs(Field.field_3) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field3(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_4 then
            for _,v in pairs(Field.field_4) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field4(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_5 then
            for _,v in pairs(Field.field_5) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field5(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_6 then
            for _,v in pairs(Field.field_6) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field6(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_7 then
            for _,v in pairs(Field.field_7) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field7(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_8 then
            for _,v in pairs(Field.field_8) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field8(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_9 then
            for _,v in pairs(Field.field_9) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field9(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if Field.Field_Zone_10 then
            for _,v in pairs(Field.field_10) do
                if v.Active then
                    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)        
                    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.Pos)
                    if dist3 <= 50.0 then
                        start_field10(v.Pos, v.Text, v.Itemname, v.Itemlabel, v.Farm_min, v.Farm_max, v.Zone_min, v.Zone_max)
                    end
                end
            end
        end
        Citizen.Wait(100)
    end
end)

----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------