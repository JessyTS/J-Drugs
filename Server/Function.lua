function JessyTS_Webhook_Field(debut, message)
    local avatar = Config.Webhook_Avatar
    local DiscordWebHook = Config.Webhook_Field
    local color = Config.Webhook_color
    local name = 'J-Drugs | '.._U('18')..' Logs | '..Config.Webhook_Server_Name
    local embeds = {
        {
            ["title"] = name,
            ["description"] = debut..'\n```'..message..'```',
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] =  {
                ["text"] = 'J-Drugs | JessyTS',
            },
        }
    }

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_Webhook_Process(debut, message)
    local avatar = Config.Webhook_Avatar
    local DiscordWebHook = Config.Webhook_Process
    local color = Config.Webhook_color
    local name = 'J-Drugs | '.._U('19')..' Logs | '..Config.Webhook_Server_Name
    local embeds = {
        {
            ["title"] = name,
            ["description"] = debut..'\n```'..message..'```',
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] =  {
                ["text"] = 'J-Drugs | JessyTS',
            },
        }
    }

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_Webhook_Sell(debut, message)
    local avatar = Config.Webhook_Avatar
    local DiscordWebHook = Config.Webhook_Sell
    local color = Config.Webhook_color
    local name = 'J-Drugs | '.._U('20')..' Logs | '..Config.Webhook_Server_Name
    local embeds = {
        {
            ["title"] = name,
            ["description"] = debut..'\n```'..message..'```',
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] =  {
                ["text"] = 'J-Drugs | JessyTS',
            },
        }
    }

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_Webhook_Init(message)
    local avatar = 'https://cdn.discordapp.com/attachments/1224004046373781567/1224007986171744327/standard1.gif?ex=661bed44&is=66097844&hm=cd2266a2313700fa874a6b1f4dbc26dc8cc678d9923919e5b40ed434748fe826&'
    local DiscordWebHook = Config.Webhook_Init
    local name = 'J-Drugs | '..Config.Webhook_Server_Name
    local embeds = message

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, content = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_cb(nombre, stock, int)
    while true do
        ESX.RegisterServerCallback('JessyTS:drugsell:callb'..int, function(source, cb)
            cb(nombre)
        end)
        Citizen.Wait(10000)
    end
end