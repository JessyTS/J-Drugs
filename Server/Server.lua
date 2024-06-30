RegisterServerEvent('jessy:drugsell')
AddEventHandler('jessy:drugsell', function(item, itemlabel, prix, dealer, player_id, job_player)
    local prix = prix
    local xPlayer = ESX.GetPlayerFromId(source)
    local sac = xPlayer.getInventoryItem(item).count
    local zgeg = xPlayer.getIdentifier(source)
    local A_ = prix * sac

    if sac > 0 then
        if Config.Debug then
            debug("Vente de "..sac.." "..item.." par l'id : "..zgeg)
        end
        xPlayer.removeInventoryItem(item, sac)
        if Config.Black then
            xPlayer.addAccountMoney('black_money', prix * sac)
            JessyTS_notif_server(_U('17').." "..sac.." "..itemlabel.." ".._U('10').." "..dealer)
            if Config.Webhook_Discord then
                JessyTS_Webhook_Sell(_U('25')..'\n'.._U('22'), 'Client ID : '..player_id..'\nServer ID : '..zgeg..'\n'.._U('28')..' : '..job_player..'\n\n'.._U('26')..' : '..itemlabel..'\n'.._U('29')..' : '..prix..' $'..'\n'.._U('24')..' : '..sac..'\n'.._U('27')..' : '..A_..' $')
            end
        else
            xPlayer.addMoney(prix * sac)
            JessyTS_notif_server(_U('17').." "..sac.." "..itemlabel.." ".._U('10').." "..dealer)
            if Config.Webhook_Discord then
                JessyTS_Webhook_Sell(_U('25')..'\n'.._U('22'), 'Client ID : '..player_id..'\nServer ID : '..zgeg..'\n'.._U('28')..' : '..job_player..'\n\n'.._U('26')..' : '..itemlabel..'\n'.._U('29')..' : '..prix..' $'..'\n'.._U('24')..' : '..sac..'\n'.._U('27')..' : '..A_..' $')
            end
        end
    else
        if Config.Debug then
            debug("Vente de "..sac.." "..item.." par l'id : "..zgeg.." | mais n'a plus de drogue a vendre")
        end
        JessyTS_notif_server(_U('16'))
    end
end)

RegisterServerEvent('jessy:drugfield')
AddEventHandler('jessy:drugfield', function(item, min, max, itemlabel, player_id, job_player)
    local chance = math.random(min, max)
    local xPlayer = ESX.GetPlayerFromId(source)
    local zgeg = xPlayer.getIdentifier(source)

    if xPlayer.canCarryItem(item, chance) then
        if Config.Debug then
            debug("Recolte de "..chance.." "..itemlabel.." par l'id : "..zgeg)
        end
        xPlayer.addInventoryItem(item, chance)
        JessyTS_notif_server(_U("15").." "..chance.." "..itemlabel)
        if Config.Webhook_Discord then
            JessyTS_Webhook_Field(_U('21')..'\n'.._U('22'), 'Client ID : '..player_id..'\nServer ID : '..zgeg..'\n'.._U('28')..' : '..job_player..'\n\n'.._U('23')..' : '..itemlabel..'\n'.._U('24')..' : '..chance)
        end
    else
        if Config.Debug then
            debug("Recolte de "..chance.." "..itemlabel.." par l'id : "..zgeg.." | mais n'a plus de place dans son inventaire !")
        end
        JessyTS_notif_server(_U("14"))
    end
end)

RegisterServerEvent('JessyTS:drugsell:cb')
AddEventHandler('JessyTS:drugsell:cb', function(itemname, itemlabel, int)
    local itemname = itemname
    local xPlayer = ESX.GetPlayerFromId(source)
    local sac = xPlayer.getInventoryItem(itemname).count

    JessyTS_cb(sac, itemlabel, int)
end)

RegisterServerEvent('JessyTS:Process:Remove')
AddEventHandler('JessyTS:Process:Remove', function(item, itemlabel, nombre, player_id, job_player)
    local xPlayer = ESX.GetPlayerFromId(source)
    local zgeg = xPlayer.getIdentifier(source)

    if Config.Debug then
        debug("Dépot de drogue dans un laboratoire par "..zgeg.." | "..nombre.." "..itemlabel)
    end

    if Config.Webhook_Discord then
        JessyTS_Webhook_Process(_U('30')..'\n'.._U('22'), 'Client ID : '..player_id..'\nServer ID : '..zgeg..'\n'.._U('28')..' : '..job_player..'\n\n'.._U('31')..' : '..itemlabel..'\n'.._U('24')..' : '..nombre)
    end

    xPlayer.removeInventoryItem(item, nombre)
end)

RegisterServerEvent('JessyTS:Process:Add')
AddEventHandler('JessyTS:Process:Add', function(item, itemlabel, nombre, player_id, job_player)
    local xPlayer = ESX.GetPlayerFromId(source)
    local zgeg = xPlayer.getIdentifier(source)

    if Config.Debug then
        debug("Retrait de drogue dans un laboratoire par "..zgeg.." | "..nombre.." "..itemlabel)
    end
    
    if Config.Webhook_Discord then
        JessyTS_Webhook_Process(_U('32')..'\n'.._U('22'), 'Client ID : '..player_id..'\nServer ID : '..zgeg..'\n'.._U('28')..' : '..job_player..'\n\n'.._U('33')..' : '..itemlabel..'\n'.._U('24')..' : '..nombre)
    end

    xPlayer.addInventoryItem(item, nombre)
end)

ESX.RegisterServerCallback('JessyTS:drugsell', function(source, cb)
    for _,v in pairs(Process.drugs) do
        local xPlayer = ESX.GetPlayerFromId(source)
        local sac = xPlayer.getInventoryItem(v.itemname).count
        cb(sac)
    end
end)