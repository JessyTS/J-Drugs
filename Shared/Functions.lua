--  // Fonction notif \\ Vous pouvez la remplacer par votre système de notif | You can replace it with your notification system
function JessyTS_notif_server(message)
    TriggerClientEvent('esx:showNotification', source, message)
    --TriggerEvent('bulletin:send', source, message)
    --print(message)
end

function JessyTS_notif_client(message)
    ESX.ShowNotification(message)
    --TriggerEvent('bulletin:send', message)
    --print(message)
end

-- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
function debug(message) -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
    print('[^5INFO^7]'..' '..message..' '..'[^3J-Drugs^7]') -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
end -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
-- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- https://discord.gg/Yk94Eq6j

function JessyTS_Cloth()
    local model = GetEntityModel(GetPlayerPed(-1))
    TriggerEvent('skinchanger:getSkin', function(skin)
        if model == GetHashKey("mp_m_freemode_01") then
            clothesSkin = {
				['tshirt_1'] = 57, ['tshirt_2'] = 0,
				['torso_1'] = 109, ['torso_2'] = 0,
				['arms'] = 87,
				--['pants_1'] = 38, ['pants_2'] = 2,
				--['shoes_1'] = 12, ['shoes_2'] = 6,
				['mask_1'] = 36, ['mask_2'] = 0,
				['bproof_1'] = 0,
				['chain_1'] = 0,
				--['helmet_1'] = -1, ['helmet_2'] = 0,

            }
        else
            clothesSkin = {
				['tshirt_1'] = 146,['tshirt_2'] = 0,
				['torso_1'] = 141, ['torso_2'] = 0,
				['arms'] = 96, ['arms_2'] = 0,
				--['pants_1'] = 38, ['pants_2'] = 2,
				--['shoes_1'] = 12, ['shoes_2'] = 6,
				['mask_1'] = 36, ['mask_2'] = 0,
				['bproof_1'] = 0,
				['chain_1'] = 0,
				--['helmet_1'] = -1, ['helmet_2'] = 0,

            }
        end
        TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    end)
end