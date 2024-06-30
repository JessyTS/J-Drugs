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

Process = {
    drugs = {
        [1] = { -- <<< Numero d'ordre pour la configuration | Order number for configuration
            active = true, -- <<< Vous permet d'activer ou desactiver cette zone de vente | Allows you to enable or disable this sales area
            labo_name = 'Weed',
            itemname = "weed", -- <<< Le nom de l'item coté serveur | The name of the item on the server side
            itemlabel = "Weed", -- <<< Le nom de l'item coté Client | The name of the item on the client side
            item_process_name = 'coke',
            item_process_label = 'Coke',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !", -- <<< Le text d'interaction | The interaction text
            pos = vector3(90.6172, 3745.0625, 40.7709), -- <<< Les coordonnés du ped en vector4 | The coordinates of the ped in vector4
            couleur = "~b~", -- <<< Le thème de cette zone | The theme of this area

            Distance = 1.0, -- // la distance d'interaction avec le markeur | the interaction distance with the marker
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 252, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 186, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 3, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },

        [2] = {
            active = true, -- <<< Vous permet d'activer ou desactiver cette zone de vente | Allows you to enable or disable this sales area
            labo_name = 'Coke',
            itemname = "bread", -- <<< Le nom de l'item coté serveur | The name of the item on the server side
            itemlabel = "Pain", -- <<< Le nom de l'item coté Client | The name of the item on the client side
            item_process_name = 'bread',
            item_process_label = 'Pain',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !", -- <<< Le text d'interaction | The interaction text
            pos = vector3(101.6529, 3749.3088, 39.7277), -- <<< Les coordonnés du ped en vector4 | The coordinates of the ped in vector4
            couleur = "~b~", -- <<< Le thème de cette zone | The theme of this area

            Distance = 1.0, -- // la distance d'interaction avec le markeur | the interaction distance with the marker
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 252, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 186, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 3, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },

        [3] = {
            active = true, -- <<< Vous permet d'activer ou desactiver cette zone de vente | Allows you to enable or disable this sales area
            labo_name = 'Meth',
            itemname = "weed", -- <<< Le nom de l'item coté serveur | The name of the item on the server side
            itemlabel = "Weed", -- <<< Le nom de l'item coté Client | The name of the item on the client side
            item_process_name = 'bread',
            item_process_label = 'Pain',
            text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !", -- <<< Le text d'interaction | The interaction text
            pos = vector3(-1476.1213, 5013.9888, 62.6422), -- <<< Les coordonnés du ped en vector4 | The coordinates of the ped in vector4
            couleur = "~b~", -- <<< Le thème de cette zone | The theme of this area

            Distance = 1.0, -- // la distance d'interaction avec le markeur | the interaction distance with the marker
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 252, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 186, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 3, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 180, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }
}