Citizen.CreateThread(function ()
    if Config.ESX == "new" then
        ESX = exports["es_extended"]:getSharedObject()
    elseif Config.ESX == "old" then
        ESX = nil
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(600000)
        debug("[^5DRUGS ADVENCED SYSTEM^7] V1.0 Drugs Script by ^5JessyTS^7 [^3JessyTS^7] \n")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(900000)
        debug("[^5DRUGS ADVENCED SYSTEM^7] N'hésitez à visiter ma boutique Tebex pour plus de scripts [^3JessyTS^7] \n")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(5000)
        JessyTS_Webhook_Init("[DRUGS ADVENCED SYSTEM] V1.0 Drugs Script by JessyTS [JessyTS]")
        debug("[^5DRUGS ADVENCED SYSTEM^7] V1.0 Drugs Script by ^5JessyTS^7 [^3JessyTS^7]")
        return
    end
end)