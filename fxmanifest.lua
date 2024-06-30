fx_version 'cerulean'
games { 'gta5' };

--[[    Info IMPORTANTE
    Ceci est un script de drogue complet qui contient la recolte, traitement et vente de drogue
    totalement configurable dans les fichiers config 
    il vous suffit juste de bien suivre les instructions pour bien configurer votre script sans erreur
        En cas de soucis avec la configuration n'hesitez à me contacter sur mon Discord jessy_strix.

        POUR LA TRADUCTION ANGLAISE J'AI FAIT DE MON MIEUX MAIS VOUS POUVEZ MODIFIER DANS LES FICHIERS locales.lua

                                                        https://discord.gg/Yk94Eq6j
    
        IMPORTANT Info
    This is a complete drug script that contains harvesting, processing and selling drugs
    fully configurable in config files
    you just need to follow the instructions carefully to configure your script without errors
        If you have any problems with the configuration, do not hesitate to contact me on my Discord jessy_strix.

        FOR THE ENGLISH TRANSLATION I DID MY BEST BUT YOU CAN EDIT IN THELOCALE.LUA FILES
]]

name "Advenced Drugs System(Builder)"
author 'Jessy TS'
version '1.0'
description 'Ceci est un système de drogue avancée'
lua54 'on'
dependency '/assetpacks'

client_scripts {
    -- // Librerie RageUI (A NE PAS MODIFIER SVP)\\
    "Libs/RMenu.lua",
    "Libs/menu/RageUI.lua",
    "Libs/menu/Menu.lua",
    "Libs/menu/MenuController.lua",
    "Libs/components/*.lua",
    "Libs/menu/elements/*.lua",
    "Libs/menu/items/*.lua",
    "Libs/menu/panels/*.lua",
    "Libs/menu/windows/*.lua",

    "Client/*.lua",
    "Client/Recolte/*.lua",
    "Client/Traitement/*.lua",
    "Client/Vente/*.lua",
}

server_scripts {
    "Server/*.lua",
}

shared_script{
    -- ESX
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',

    -- Config
    "Shared/*.lua",
    "Local/*.lua",
}

escrow_ignore{
    "Libs/RMenu.lua",
    "Libs/menu/RageUI.lua",
    "Libs/menu/Menu.lua",
    "Libs/menu/MenuController.lua",
    "Libs/components/*.lua",
    "Libs/menu/elements/*.lua",
    "Libs/menu/items/*.lua",
    "Libs/menu/panels/*.lua",
    "Libs/menu/windows/*.lua",

    "Shared/*.lua",
    "Local/*.lua",
}