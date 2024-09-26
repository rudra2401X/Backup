local functionsToHook = {
    rconsoleprint,
    print,
    setclipboard,
    rconsoleerr,
    rconsolewarn,
    warn,
    error
}

for _, func in pairs(functionsToHook) do
    local originalFunction = hookfunction(func, newcclosure(function(...)
        local args = {...}
        for i, value in pairs(args) do
            if tostring(i):find("https") or tostring(value):find("https") then
                game.Players.LocalPlayer:Kick("[Alert] HTTP requests are not allowed.")
            end
        end
        return originalFunction(...)
    end))
end

if _G.ID then
    warn("ID is already set. This script will not proceed.")
    while true do end  -- คำสั่งนี้จะทำให้สคริปต์หยุดทำงานไปเรื่อยๆ
end

setmetatable(_G, {
    __newindex = function(t, key, value)
        if tostring(key) == "ID" then
            game.Players.LocalPlayer:Kick("[Alert] Attempt to modify ID detected.")
        end
    end
})

local localPlayer = game:GetService("Players").LocalPlayer

local oldRequest = hookfunction(request, newcclosure(function(newreq)
    if newreq.Url:find("discord") or newreq.Url:find("webhook") then
        print(newreq.Url)
        rconsoleprint("\n")
        rconsoleprint(newreq.Url)
        setclipboard(newreq.Url)
        warn("Blocked webhook request!")
        return nil
    end
    return oldRequest(newreq)
end))

local oldHttpGet = hookfunction(game.HttpGet, newcclosure(function(olgame, url)
    if url:find("pastebin") then
        url = url:gsub("pastebin", "pastebinp")
    elseif url:find("process") then
        rconsolewarn(url)
    end
    print(url)
    setclipboard(url)
    rconsoleprint(url)
    rconsoleprint("\n")
    return oldHttpGet(olgame, url)
end))

setreadonly(getrawmetatable(game), false)

local mt = getrawmetatable(game) or getmetatable(game)
local originalNamecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local namecallMethod = getnamecallmethod()

    if self == localPlayer and string.lower(namecallMethod) == "kick" then
        warn("Attempt to kick you detected. Ignoring...")
        return nil
    end
    return originalNamecall(self, unpack(args))
end)
setreadonly(getrawmetatable(game), true)
