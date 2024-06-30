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


Sell = {
    drugs = {-- //Config zones de vente | Config sales zones\\
        [1] = { -- <<< Numero d'ordre pour la configuration | Order number for configuration
            active = true, -- <<< Vous permet d'activer ou desactiver cette zone de vente | Allows you to enable or disable this sales area
            itemname = "weed", -- <<< Le nom de l'item coté serveur | The name of the item on the server side
            itemlabel = "Weed", -- <<< Le nom de l'item coté Client | The name of the item on the client side
            prix = 1200, -- <<< Le prix unitaire de l'item vendu | The unit price of the item sold
            pedhash = 'g_m_y_armgoon_02', -- <<< Le modèle de ped qui sera spawn pour l'interaction | The ped model that will spawn for the interaction
            Dealer_name = "Pablo", -- <<< Le nom de l'acheteur, il sera affiché sur sa tête | Buyer's name it will be displayed on his head
            Emojie = '👤', -- <<< L'emojie à coté du nom de l'acheteur si vous ne l'utilisez pas laissez comme ceci > '' | The emoji next to the buyer's name if you don't use it leave it like this > ''
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !", -- <<< Le text d'interaction | The interaction text
            pos = vector4(2175.6643, 5565.2021, 53.8714, 268.7023), -- <<< Les coordonnés du ped en vector4 | The coordinates of the ped in vector4
            couleur = "~b~", -- <<< Le thème de cette zone | The theme of this area
        },

        [2] = {
            active = true,
            itemname = "medikit",
            itemlabel = "Medikit",
            prix = 1200,
            pedhash = 'g_m_y_ballaorig_01',
            Dealer_name = "JessyTS",
            Emojie = '👤',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            pos = vector4(-1495.531860, 5004.002441, 62.811035, 300.472443),
            couleur = "~r~",
        },

        [3] = {
            active = true,
            itemname = "medikit",
            itemlabel = "Medikit",
            prix = 4500,
            pedhash = 's_m_y_dealer_01',
            Dealer_name = "Gloire",
            Emojie = '👤',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            pos = vector4(-1496.083496, 5007.692383, 62.777344, 300.472443),
            couleur = "~y~",
        },

        --[[ [3] = {
            active = true,
            itemname = "medikit",
            itemlabel = "Medikit",
            prix = 4500,
            pedhash = 's_m_y_dealer_01',
            Dealer_name = "Gloire",
            Emojie = '👤',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            pos = vector4(-1496.083496, 5007.692383, 62.777344, 300.472443),
            couleur = "~y~",
        },  ]]

    },
}