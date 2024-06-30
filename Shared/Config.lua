Config = {}
Sell = {}
Field = {}
Process = {}

--[[    Info IMPORTANTE
    Ceci est un script de drogue complet qui contient la recolte, traitement et vente de drogue
    totalement configurable dans les fichiers config 
    il vous suffit juste de bien suivre les instructions pour bien configurer votre script sans erreur
        En cas de soucis avec la configuration n'hesitez à me contacter sur mon Discord jessy_strix.

        POUR LA TRADUCTION ANGLAISE J'AI FAIT DE MON MIEUX MAIS VOUS POUVEZ MODIFIER DANS LES FICHIERS locales.lua

    
    
        IMPORTANT Info
    This is a complete drug script that contains harvesting, processing and selling drugs
    fully configurable in config files
    you just need to follow the instructions carefully to configure your script without errors
        If you have any problems with the configuration, do not hesitate to contact me on my Discord jessy_strix.
                        https://discord.gg/Yk94Eq6j
        FOR THE ENGLISH TRANSLATION I DID MY BEST BUT YOU CAN EDIT IN THELOCALE.LUA FILES
]]

Config = {
        -- LANGUAGE --
    Locale = 'fr', -- en | fr
    -- // Pour selectionner la langue global du script \\
    -- // To select the global language of the script \\

    Debug = true, -- true or false 
    -- // Si vous voulez renvoyer chaque action vers la console \\
    -- // If you want to return every action to the console \\

    Black = true, -- true of false
    -- // Si vous voulez que le joueur recoive de l'argent sale ou de l'argent propre pendant la vente de drogue \\
    -- // If you want the player to receive dirty money or clean money while selling drugs \\

    ESX = "new",
    -- new | for ESX = exports["es_extended"]:getSharedObject() | New versions
    -- old | for TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) | Old Versions

    Webhook_Discord = true,

    Webhook_Server_Name = '',
    Webhook_color = 2061822,
    Webhook_Avatar = '',
    Webhook_Init = '',
    Webhook_Field = '',
    Webhook_Sell = '',
    Webhook_Process = '',
}