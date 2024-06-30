local jessy_ = true

function Jessydrugs2(itemname, itemlabel, prix, Dealer_name, couleur)
    local int = math.random(1, 1000000)
    FreezeEntityPosition(PlayerPedId(), true)
    Visual.Subtitle(couleur..""..GetPlayerName(PlayerId()).."~s~ | Yoh Hermano", 3000)
    Citizen.Wait(5000)
    Visual.Subtitle(couleur..""..Dealer_name.."~s~ | ".._U('1').." Hermano", 3000)
    Citizen.Wait(5000)
    Visual.Subtitle(couleur..""..GetPlayerName(PlayerId()).."~s~ | ".._U('1'), 3000)
    Citizen.Wait(5000)
    Visual.Subtitle(couleur..""..Dealer_name.."~s~ | ".._U('2'), 3000)
    Citizen.Wait(5000)
    Visual.Subtitle(couleur..""..GetPlayerName(PlayerId()).."~s~ | ".._U('3'), 3000)
    Citizen.Wait(5000)
    Visual.Subtitle(couleur..""..Dealer_name.."~s~ | Okey", 3000)
    Citizen.Wait(2500)
    Visual.Subtitle(couleur..""..Dealer_name.."~s~ | ".._U('4'), 3000)
    Citizen.Wait(5000)
    TriggerServerEvent("JessyTS:drugsell:cb", itemname, itemlabel, int)
    FreezeEntityPosition(PlayerPedId(), true)
    ESX.TriggerServerCallback('JessyTS:drugsell:callb'..int, function(nb_item)
        FreezeEntityPosition(PlayerPedId(), true)
        if nb_item == 0 then
            if Config.Debug == true then
                debug("Vous avez vendu "..nb_item.." "..itemlabel.." pour "..prix.." $")
            end
            Visual.Subtitle(couleur..""..Dealer_name.."~s~ | ".._U('5'), 5000)
            FreezeEntityPosition(PlayerPedId(), false)
            jessy_ = true
        else
            Visual.Subtitle(couleur..""..GetPlayerName(PlayerId()).."~s~ | ".._U('6'), 3000)
            Citizen.Wait(1500)
            animgive()
            Visual.Subtitle(couleur..""..GetPlayerName(PlayerId()).."~s~ | ".._U('7').." "..nb_item.." "..itemlabel, 3000)
            TriggerServerEvent("jessy:drugsell", itemname, itemlabel, prix, Dealer_name, GetPlayerServerId(PlayerId()), ESX.PlayerData.job.name)
            if Config.Debug then
                debug("Vous avez vendu "..nb_item.." "..itemlabel.." pour "..prix.." $")
            end
            FreezeEntityPosition(PlayerPedId(), false)
            jessy_ = true
        end
    end)
    FreezeEntityPosition(PlayerPedId(), false)
end

-- Spawn ped
Citizen.CreateThread(function()
    for _,v in pairs(Sell.drugs) do
        if v.active then
            local pedpos = vector4(v.pos.x, v.pos.y, v.pos.z - 1, v.pos.w)
            local hash = GetHashKey(v.pedhash)
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(100)
            end
            ped = CreatePed("JessyTS", v.pedhash, pedpos, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end
    end
end)

-- Commencer le dialogue
Citizen.CreateThread(function()
    while true do
        for _,v in pairs(Sell.drugs) do
            if v.active then
                local playerPed = PlayerPedId()
                local lieu = vector3(v.pos.x, v.pos.y, v.pos.z)
                local lieu_ = vector3(v.pos.x, v.pos.y, v.pos.z + 1)
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, lieu)
                if dist3 <= 15 then
                    if jessy_ then
                        ESX.Game.Utils.DrawText3D(lieu_, v.Dealer_name..'  '..v.Emojie, 1.0, 4)
                    end
                    if dist3 <= 1.5 then
                        if not IsPedInAnyVehicle(playerPed, true) then
                            if jessy_ then
                                ESX.ShowHelpNotification(v.text)
                                if IsControlJustPressed(1,51) then
                                    Jessydrugs2(v.itemname, v.itemlabel, v.prix, v.Dealer_name, v.couleur)
                                    jessy_ = false
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