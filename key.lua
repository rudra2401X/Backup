function Spectrum()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x2CPUz/Backup/main/riot.html"))()
end

local Type = "Key"
local UI = "MaggixV2"
local KeySys =
    loadstring(
    game:HttpGet(
        "https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V5/UIS/" .. Type .. "/" .. UI .. ".lua"
    )
)()

local Validated = function() warn("SUCESS!!!") 
Callback = function 
      Spectrum()
end

local Internal = {
    Service = "spectrum",          -- Your service name
    DisplayName = "Project Spectrum", -- Display name
    API_Key = "UF108RTaLAE3i3YS",         -- Your API key
    IsDebug = true,                   -- Enable debug mode to see detailed logs (optional)
    Allow_BlacklistUsers = false,     -- Disable blacklisted users (optional)
    Save_Key = false,                 -- Do not save keys to user data (optional)
    DiagnosticLogs = true             -- Enable diagnostic logs (optional)
}
local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaSVALLib.lua'))()
-- Initialize the PandaAuth library
PandaAuth:Initialize(Internal)

local Validate = function(key)
    return PandaAuth:ValidateKey(key)
end

if isfile("Pelinda Data/"..Internal.DisplayName.."/Key.txt") and Validate(readfile("Pelinda Data/"..Internal.DisplayName.."/Key.txt")) then
    Validated()
else
    local Window =
        KeySys:CreateGui(
        {
            Data = {
                HubName = Internal.DisplayName
            },
            Discord = "https://discord.gg/C3MpUNwsDU",
            Blur = false
        }
    )

    Window:SetGetKey(
        function()
            setclipboard(PandaAuth:GetKey())
        end
    )

    Window:SetCheckKey(
        function(key)
            if Validate(key) then
                Validated()
                writefile("Pelinda Data/"..Internal.DisplayName.."/Key.txt", key)
                Window:DestroyGui()
            end
        end
    )
end
