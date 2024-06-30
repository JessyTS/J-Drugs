local jessy = true
local farm = nil
local open, recup_etat, Checked_Box, transform_etat, transform_load, recup_load, transform_lvl, recup_lvl, laboratoire, separateur = false, false, false, true, nil, nil, 0.0, 0.0, true, true
local Process_menu = RageUI.CreateMenu("", "INTERACTION")
Process_menu.Display.Header = true
Process_menu.Closed = function()
    open = false
    jessy = true
    laboratoire = true
    separateur = true
    transform_etat = true
    FreezeEntityPosition(PlayerPedId(), false)
end

function Process__menu(labo_name, nb_item, itemname, itemlabel, item_process_name, item_process_label, couleur)
    if open then
        open = false
        RageUI.Visible(Process_menu, false)
        return
    else
        open = true
        RageUI.Visible(Process_menu, true)
        CreateThread(function()
            while open do
                if nb_item > 0 then
                    farm = true
                elseif nb_item == 0 then
                    farm = false
                end
                RageUI.IsVisible(Process_menu, function()

                    RageUI.Separator(_U('47')..' '..couleur..labo_name..'~s~')

                    if laboratoire then
                        RageUI.Checkbox(_U('34'), _U('35'), Checked_Box, {}, {
                            onChecked = function()
                                JessyTS_Cloth()
                                Checked_Box = true
                                Process_menu.Closable = false
                            end,
                            onUnChecked = function()
                                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                    TriggerEvent('skinchanger:loadSkin', skin)
                                end)
                                Checked_Box = false
                                Process_menu.Closable = true
                            end
                        })
                    end

                    if Checked_Box then
                        if transform_etat then
                            if farm then
                                RageUI.Button(_U('36'), _U('37'), {RightLabel = couleur.."→"}, true, {
                                    onSelected = function()
                                        transform_load = true
                                        transform_etat = false
                                        laboratoire = false
                                        separateur = false
                                        jessy = false
                                        animprocess()
                                        TriggerServerEvent('JessyTS:Process:Remove', itemname, itemlabel, nb_item, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                        JessyTS_notif_client(_U('38'))
                                        Process_menu.Closable = false
                                    end
                                })
                            else
                                RageUI.Button(_U('36'), _U('39'), {RightLabel = couleur.."→"}, false, {
                                    onSelected = function()
                                    end
                                })
                            end
                        else
                            RageUI.Button(_U('36'), nil, {RightLabel = ""}, false, {
                                onSelected = function()
                                end
                            })
                        end

                        if recup_etat then
                            RageUI.Button(_U('40'), _U('41'), {RightLabel = couleur.."→"}, true, {
                                onSelected = function()
                                    recup_etat = false
                                    recup_load = true
                                    laboratoire = false
                                    separateur = false
                                    jessy = false
                                    animprocess_pickup()
                                    JessyTS_notif_client(_U('42'))
                                end
                            })
                        else
                            RageUI.Button(_U('40'), nil, {RightLabel = "~y~→"}, false, {
                                onSelected = function()
                                end
                            })
                        end

                        if separateur then
                            RageUI.Separator(_U('43')..' : '..nb_item..' '..itemlabel)
                        end

                    else
                        RageUI.Button(_U('36'), _U('44'), {RightLabel = ""}, false, {
                            onSelected = function()
                            end
                        })
                        RageUI.Button(_U('40'), _U('44'), {RightLabel = ""}, false, {
                            onSelected = function()
                            end
                        })
                    end

                    if transform_load == true then
                        RageUI.PercentagePanel(transform_lvl or 0.0, _U('38').." ("..couleur..math.floor(transform_lvl * 100)..'~s~'.." %)", "", "",  function(Hovered, Active, Percent)
                            if transform_lvl < 1.0 then
                                transform_lvl = transform_lvl + 0.003
                            else
                                transform_load = false
                                recup_etat = true
                                transform_lvl = 0.0
                                ClearPedTasksImmediately(PlayerPedId())
                                JessyTS_notif_client(_U('45'))
                            end
                        end)
                    end

                    if recup_load == true then
                        RageUI.PercentagePanel(recup_lvl or 0.0, _U('42').." ("..couleur..math.floor(recup_lvl * 100)..'~s~'.." %)", "", "",  function(Hovered, Active, Percent)
                            if recup_lvl < 1.0 then
                                recup_lvl = recup_lvl + 0.01
                            else
                                transform_etat = false
                                recup_load = false
                                recup_lvl = 0.0
                                laboratoire = true
                                TriggerServerEvent('JessyTS:Process:Add', item_process_name, item_process_label, nb_item, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
                                JessyTS_notif_client(_U('46')..' : '..nb_item..' '..item_process_label)
                            end 
                        end)
                    end

                    RageUI.Line()

                end)
            Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    while true do
        for _,v in pairs(Process.drugs) do
            if v.active then
                local playerPed = PlayerPedId()
                local lieu = vector3(v.pos.x, v.pos.y, v.pos.z)
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, lieu)
                if dist3 <= 15 then
                    if jessy then
                        DrawMarker(v.MarkerType, lieu, 0.0, 0.0, 0.0, 0.0,0.0,0.0, v.MarkerSizeLargeur, v.MarkerSizeEpaisseur, v.MarkerSizeHauteur, v.MarkerColorR, v.MarkerColorG, v.MarkerColorB, v.MarkerOpacite, v.MarkerSaute, true, p19, v.MarkerTourne)
                    end
                    if dist3 <= v.Distance then
                        if not IsPedInAnyVehicle(PlayerPedId(), true) then
                            if jessy then
                                ESX.ShowHelpNotification(v.text)
                            end
                            if IsControlJustPressed(1,51) then
                                if jessy then
                                    local int = math.random(1, 1000000)
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    TriggerServerEvent("JessyTS:drugsell:cb", v.itemname, v.itemlabel, int)
                                    ESX.TriggerServerCallback('JessyTS:drugsell:callb'..int, function(nb_item)
                                        local nb_item = nb_item
                                        Process__menu(v.labo_name, nb_item, v.itemname, v.itemlabel, v.item_process_name, v.item_process_label, v.couleur)
                                    end)
                                    jessy = false
                                    Wait(1000)
                                    jessy = true
                                end
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(1)
    end
end)