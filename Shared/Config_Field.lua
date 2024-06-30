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


Field = {

    -- // Actuellement le nombre de récolte max est limité à 10 vous en aurez plus dans une mise à jour proche | Currently the maximum number of harvests is limited to 10, you will have more in a near update \\
    Field_Zone_1 = true, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_2 = true, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_3 = true, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_4 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_5 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_6 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_7 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_8 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_9 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\
    Field_Zone_10 = false, -- // N'activez que la zone utilisé sinon vous aurez des erreur sur votre console | Only activate the zone used otherwise you will have errors on your console \\

    -- //Config zones de recoltes | config field zones\\
    field_1 = {
        ["JessyTS"] = {
            Active = true, -- // Precisez si cette zone est bien activée | Specify if this zone is activated \\
            Pos = vector3(2198.0305, 5565.4883, 53.8630), -- <<< Les coordonnés du ped en vector4 | The coordinates of the ped in vector4
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !", -- <<< Le text d'interaction | The interaction text
            Itemname = "weed", -- <<< Le nom de l'item coté serveur | The name of the item on the server side
            Itemlabel = "Weed", -- <<< Le nom de l'item coté Client | The name of the item on the client side
            Farm_min = 1, -- // Nombre d'item max recoltable (Math.random) | Maximum number of items collectable (Math.random)
            Farm_max = 5, -- // Nombre d'item minimum recoltable (Math.random) | Minimum number of items collectable (Math.random)
            Zone_min = 1, -- // le diamètre de la zone de recolte (Laissez comme ceci si votre zone est petite) | the diameter of the harvest area (Leave it like this if your area is small) \\
            Zone_max = 10, -- // le diamètre de la zone de recolte (Laissez comme ceci si votre zone est petite) | the diameter of the harvest area (Leave it like this if your area is small) \\
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
    },

    field_2 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 0, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    },

    field_3 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    },

    --[[field_4 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_5 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_6 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_7 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_8 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_9 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]

    --[[field_10 = {
        ["JessyTS"] = {
            Active = true,
            Pos = vector3(-1496.083496, 5007.692383, 62.777344),
            Text = "Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !",
            Itemname = "bread",
            Itemlabel = "Pain",
            Farm_min = 1,
            Farm_max = 5,
            Zone_min = 1,
            Zone_max = 10,
            Distance = 1.0,
            MarkerType = 21, -- Pour voir les différents type de marker: https://docs.fivem.net/docs/game-references/markers/
            MarkerSizeLargeur = 0.7, -- Largeur du marker
            MarkerSizeEpaisseur = 0.7, -- Épaisseur du marker
            MarkerSizeHauteur = 0.7, -- Hauteur du marker
            MarkerDistance = 6.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
            MarkerColorR = 100, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorG = 165, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerColorB = 255, -- Voir pour les couleurs RGB: https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
            MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
            MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
            MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)
        },
    }, ]]
}