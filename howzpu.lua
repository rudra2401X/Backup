hookfunction(hookfunction,function(...)
    return game.Players.LocalPlayer:Kick("WHAT UP STUPID DON'T TRY TO CRACK MY SCRIPT 🤡")
end)

warn("Anti AFK = Enabled")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local code = LocalizationService:GetCountryRegionForPlayerAsync(player)
local data = {
    embeds = {
        {
            title = "Profile Player",
            url = "https://www.roblox.com/users/" .. player.UserId,
            description = "```" .. player.DisplayName .. " (" .. player.Name .. ") ```",
            color = tonumber(3695),
            fields = {
                {
                    name = "Country :",
                    value = "```" .. code .. "```",
                    inline = true
                },
                {
                    name = "Account Age :",
                    value = "```" .. player.AccountAge .. " Days```",
                    inline = true
                },
                {
                    name = "Executor :",
                    value = "```" .. identifyexecutor() .. "```",
                    inline = true
                },
                {
                    name = "Job ID :",
                    value = "```" .. tostring(game.JobId) .. "```",
                    inline = true
                },
                {
                    name = "Map :",
                    value = "``` Anime Vanguards```",
                    inline = true
                },
                {
                    name = "User Status :",
                    value = "``` Using Project Spectrum 8.0 [Special Edition] Now!!```",
                    inline = true
                }
            }
        }
    }
}

local jsonData = HttpService:JSONEncode(data)
local webhookUrl = "https://discord.com/api/webhooks/1288545230617972798/KLmNyZZAXc1ML9vOW4wMrXh_Dr_CBRCpJcfmalT65q8now9ytml4lp4vOGTkdvG7rEDI"
local headers = {["Content-Type"] = "application/json"}
request = http_request or request or HttpPost or fluxus.request or syn.request or Krnl.request or delta.request;
local request = http_request or request or HttpPost or syn.request
local final = {Url = webhookUrl, Body = jsonData, Method = "POST", Headers = headers}

local success, response = pcall(request, final)
if success then
    print("Hello")
else
    print("Go Die Nigga" .. response)
end

_G.HoHoLoaded = true
notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Notification.lua"))()
notify.New("Project Spectrum 8.0", 15)
notify.New("by xZPUHigh & Special Edition", 15)

wait(2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/SetUP.lua"))()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = VG.GetProtecter()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0260557048, 0, 0.650375962, 0)
Frame.Size = UDim2.new(0, 395, 0, 136)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(1, -(303 / 2), 0.5, -(263 / 2))
ImageButton.Size = UDim2.new(0, 506, 0, 156)
ImageButton.Image = "rbxassetid://17510231765"

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.LayoutOrder = 2
TextButton.Position = UDim2.new(2.23, -(303 / 2), 0.5, -(263 / 2))
TextButton.Size = UDim2.new(0, 25, 0, 23)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.LineHeight = 0.900
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeTransparency = 1.040
TextButton.TextWrapped = true
VG.SendNotification = function(Title, Text, Icon, Duration)
    return StarterGui:SetCore("SendNotification", {Title = Title, Text = Text, Icon = Icon, Duration = Duration})
end

ImageButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/hackerclub")
    VG.SendNotification("Copied to ClipBoard", 'Thank you', nil, 5)
end)

TextButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

wait(3)

repeat task.wait() until game:IsLoaded() and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyLoadingScreen") == nil
if game:GetService("CoreGui"):FindFirstChild("Project Spectrum") then return end
local Loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/geninteface.lua"))()
local Saveed = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/fluentsaveconfig.lua"))()
local Setting = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/mainsettings.lua"))()
local SetFile = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/filehelper.lua"))()
local Configs = Loader.Options
local Windows = Loader:CreateWindow(
    {
        Title = "Anime Vanguards",
        SubTitle = "Project Spectrum 8.0 | Made by xZPUHigh",
        TabWidth = 130,
        Size = UDim2.fromOffset(500, 400),
        Theme = "Black",
        Acrylic = true,
        UpdateDate = "[Special Edition]",
        UpdateLog = "Release Now!!\n \nJoin With US // discord.gg/C3MpUNwsDU",
        IconVisual = nil,
        BlackScreen = false,
        MinimizeKey = Enum.KeyCode.RightControl
    }
)

local Tabs_Main =
{
    [1] = Windows:AddTab({Title = "Join", Name = nil, Icon = "map-pin"}),
    [2] = Windows:AddTab({Title = "Game", Name = nil, Icon = "focus"}),
    [3] = Windows:AddTab({Title = "Macro", Name = nil, Icon = "gamepad"}),
    [4] = Windows:AddTab({Title = "Settings", Name = nil, Icon = "settings"})
}

local Tabs_Secs =
{
    [1] = {Tabs_Main[1]:AddSection("Settings"), Tabs_Main[1]:AddSection("Story"), Tabs_Main[1]:AddSection("Legend Stage"), Tabs_Main[1]:AddSection("Challenge")},
    [2] = {Tabs_Main[2]:AddSection("Game"), Tabs_Main[2]:AddSection("Webhook"), Tabs_Main[2]:AddSection("Debuff"), Tabs_Main[2]:AddSection("Misc")},
    [3] = {Tabs_Main[3]:AddSection("Setting"), Tabs_Main[3]:AddSection("Import"), Tabs_Main[3]:AddSection("Macro"), Tabs_Main[3]:AddSection("Story"), Tabs_Main[3]:AddSection("Legend Stage"), Tabs_Main[3]:AddSection("Challenge"), Tabs_Main[3]:AddSection("Paragon")}
}

local Game =
{
    Time = tick(),

    Challenge_Changed = false,
    Cannot_Challenge = false,
    Banner_Changed = false,
    Send_Webhook = false,
    Cannot_Retry = false,
    Cannot_Next = false,

    Story_Mode = {},
    Story_Acts = {},
    Difficulty = {},

    Legend_Stage_Mode = {},
    Legend_Stage_Acts = {},

    Challenge_Debuff = {"Revitalize", "Shielded", "Exploding", "Strong", "Thrice", "Regen", "Fast"},
    Challenge_Rewards = {},

    Webhook = {},
    Buttons = {},
    Signals = {},
    Others = {},
    Units = {}
}

local Macro =
{
    Status = "None",
    Indexs = 0,
    Value = {Data = {}},
    Len = {
        __len = function(num)
            local count = 0
            for idx, data in next, num do
                if idx ~= "Data" then
                    count += 1
                end
            end
            return count
        end
    }
}

task.spawn(
    function()
        for _, Game_Story in next, game:GetService("ReplicatedStorage").Modules.Data.StagesData.Story:GetChildren() do
            local Data_Require = require(Game_Story[Game_Story.Name])
            table.insert(Game.Story_Mode, Data_Require.Name)

            if #Game.Story_Acts == 0 then
                for I = 1, #Game_Story.Acts:GetChildren() do
                    table.insert(Game.Story_Acts, Game_Story.Acts:GetChildren()[I].Name)
                end
            end
        end

        for _, Game_Legend_Stage in next, game:GetService("ReplicatedStorage").Modules.Data.StagesData.LegendStage:GetChildren() do
            local Data_Require = require(Game_Legend_Stage[Game_Legend_Stage.Name])
            table.insert(Game.Legend_Stage_Mode, Data_Require.Name)

            if #Game.Legend_Stage_Acts == 0 then
                for I = 1, #Game_Legend_Stage.Acts:GetChildren() do
                    table.insert(Game.Legend_Stage_Acts, Game_Legend_Stage.Acts:GetChildren()[I].Name)
                end
            end
        end

        for _, Game_Difficulty in next, game:GetService("ReplicatedStorage").Assets.Interfaces.DifficultyGradients:GetChildren() do
            table.insert(Game.Difficulty, Game_Difficulty.Name)
        end

        for Game_Challenge_Rewards, _ in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do
            table.insert(Game.Challenge_Rewards, Game_Challenge_Rewards)
        end

        for Game_Challenge_Rewards, _ in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.MiscItems) do
            table.insert(Game.Challenge_Rewards, Game_Challenge_Rewards)
        end

        if game.PlaceId == 16146832113 then
            for I = 1, 6 do
                if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)]:FindFirstChild("Locked") or game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)]:FindFirstChild("UnitTemplate") == nil then continue end
                table.insert(Game.Units, game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)].UnitTemplate.Holder.Main.UnitName.Text)
            end
        else
            for I = 1, 6 do
                if game:GetService("Players").LocalPlayer.PlayerGui.Hotbar.Main.Units[tostring(I)]:FindFirstChild("Locked") or game:GetService("Players").LocalPlayer.PlayerGui.Hotbar.Main.Units[tostring(I)]:FindFirstChild("UnitTemplate") == nil then continue end
                table.insert(Game.Units, game:GetService("Players").LocalPlayer.PlayerGui.Hotbar.Main.Units[tostring(I)].UnitTemplate.Holder.Main.UnitName.Text)
            end
        end

        do
            SetFile:CheckFolder("Project Spectrum")
            SetFile:CheckFolder("Project Spectrum/Anime Vanguards")
            SetFile:CheckFolder("Project Spectrum/Anime Vanguards/Macro")

            SetFile:CheckFile("Project Spectrum/Anime Vanguards/Macro/Starter.json", {Data = {}})
        end
    end
)

Tabs_Secs[1][1]:AddToggle(
    "Auto Start",
    {
        Title = "Auto Start",
        Description = "Start the game after creating the room",
        Default = true
    }
)

Tabs_Secs[1][1]:AddToggle(
    "Friends Only",
    {
        Title = "Friends Only",
        Description = "use friends only when create room",
        Default = false
    }
)


Tabs_Secs[1][1]:AddSlider(
    "Start Delay",
    {
        Title = "Start In X Seconds",
        Description = "Set a delay to enter the room",
        Default = 1,
        Min = 0,
        Max = 30,
        Rounding = 0
    }
)

Game.Buttons.Lobby =
Tabs_Secs[1][1]:AddButton(
    {
        Title = "Return to Lobby",
        Description = "Instant Lobby Teleport",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Notify",
                    Content = "Do you want to teleport to the lobby?",
                    Buttons = {
                        {Title = "Yes", Callback = Return_Lobby},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)

Tabs_Secs[1][2]:AddDropdown(
    "Story Stage",
    {
        Title = "Selecte Story",
        Values = Game.Story_Mode,
        Multi = false,
        Default = 1
    }
)

Tabs_Secs[1][2]:AddDropdown(
    "Story Act",
    {
        Title = "Selecte Act",
        Values = Game.Story_Acts,
        Multi = false,
        Default = 1
    }
)

Tabs_Secs[1][2]:AddDropdown(
    "Story Difficulty",
    {
        Title = "Selecte Difficulty",
        Values = Game.Difficulty,
        Multi = false,
        Default = 1
    }
)

Tabs_Secs[1][2]:AddToggle(
    "Auto Join Hights",
    {
        Title = "Auto Join Story (Highnest)",
        Description = "Join the highnest story automatically",
        Default = false,
        Callback = function(Value)
            if Value then
                task.spawn(
                    function()
                        repeat task.wait() until Configs["Auto Join Normal"] Configs["Auto Join Normal"]:Lock()
                    end
                )
            else
                task.spawn(
                    function()
                        repeat task.wait() until Configs["Auto Join Normal"] Configs["Auto Join Normal"]:UnLock()
                    end
                )
            end
        end
    }
)

Tabs_Secs[1][2]:AddToggle(
    "Auto Join Normal",
    {
        Title = "Auto Join Story (Normal)",
        Description = "Join select story automatically",
        Default = false,
        Callback = function(Value)
            if Value then
                Configs["Auto Join Hights"]:Lock()
            else
                Configs["Auto Join Hights"]:UnLock()
            end
        end
    }
)

Tabs_Secs[1][3]:AddDropdown(
    "Legend Stage Stage",
    {
        Title = "Selecte Legend Stage",
        Values = Game.Legend_Stage_Mode,
        Multi = false,
        Default = 1
    }
)

Tabs_Secs[1][3]:AddDropdown(
    "Legend Stage Act",
    {
        Title = "Selecte Act",
        Values = Game.Legend_Stage_Acts,
        Multi = false,
        Default = 1
    }
)

Tabs_Secs[1][3]:AddToggle(
    "Auto Join Legend Stage",
    {
        Title = "Auto Join Legend Stage",
        Description = "Join select legend stage automatically",
        Default = false
    }
)

Tabs_Secs[1][4]:AddDropdown(
    "Ignore Challenge World",
    {
        Title = "Ignore Challenge World",
        Values = Game.Story_Mode,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[1][4]:AddDropdown(
    "Ignore Challenge Debuff",
    {
        Title = "Ignore Challenge Debuff",
        Values = Game.Challenge_Debuff,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[1][4]:AddDropdown(
    "Ignore Challenge Rewards",
    {
        Title = "Ignore Challenge  Rewards",
        Values = Game.Challenge_Rewards,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[1][4]:AddToggle(
    "Auto Join Challenge",
    {
        Title = "Auto Join Challenges",
        Description = "Join select challenges automatically",
        Default = false
    }
)

Tabs_Secs[1][4]:AddToggle(
    "Not Ignore if Reroll",
    {
        Title = "Not Ignore if Reroll",
        Description = "Allow you to join the challenge even ignore challenge rewards, Enable with Auto Join Challenges",
        Default = false
    }
)

Tabs_Secs[1][4]:AddToggle(
    "Auto Lobby Challenge",
    {
        Title = "Auto Lobby",
        Description = "Return to the lobby if challenge changed automatically",
        Default = false
    }
)

Tabs_Secs[2][1]:AddToggle(
    "Auto Skip",
    {
        Title = "Auto Skip Wave / Start Game",
        Description = "Automatically skip wave and start game",
        Default = false
    }
)

Tabs_Secs[2][1]:AddToggle(
    "Auto Leave",
    {
        Title = "Auto Leave",
        Description = "Automatically teleport to the looby if game complete",
        Default = false
    }
)

Tabs_Secs[2][1]:AddToggle(
    "Auto Next",
    {
        Title = "Auto Next",
        Description = "Automatically play next if game complete",
        Default = false
    }
)

Tabs_Secs[2][1]:AddToggle(
    "Auto Retry",
    {
        Title = "Auto Retry",
        Description = "Automatically retry the game if game complete",
        Default = false
    }
)

Tabs_Secs[2][2]:AddInput(
    "Url",
    {
        Title = "Webhook Url",
        Placeholder = "URL",
        Numeric = false,
        Finished = false,
        Default = nil,
        Callback = function(Value)
            if Value == "" and Configs["Send Webhook"] and not Configs["Send Webhook"].IsLocked then
            Configs["Send Webhook"]:Lock()
            elseif Value ~= "" and Configs["Send Webhook"] and Configs["Send Webhook"].IsLocked then
            Configs["Send Webhook"]:UnLock()
            end
        end
    }
)

Tabs_Secs[2][2]:AddToggle(
    "Send Webhook",
    {
        Title = "Send Webhook",
        Description = "Send a notifaction to your Discord when the game ends, displaying information about the match and what rewards you've received",
        Default = false
    }
)

Tabs_Secs[2][3]:AddDropdown(
    "Debuff Priority 1",
    {
        Title = "Select Priority 1",
        Values = Game.Challenge_Debuff,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[2][3]:AddDropdown(
    "Debuff Priority 2",
    {
        Title = "Select Priority 2",
        Values = Game.Challenge_Debuff,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[2][3]:AddDropdown(
    "Debuff Priority 3",
    {
        Title = "Select Priority 3",
        Values = Game.Challenge_Debuff,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[2][3]:AddToggle(
    "Auto Vote Debuff",
    {
        Title = "Auto Vote Debuff",
        Description = "Vote the select debuff by priority automatically",
        Default = false
    }
)


Tabs_Secs[2][4]:AddDropdown(
    "Select Units",
    {
        Title = "Select Units",
        Values = Game.Units,
        Multi = true,
        Default = {}
    }
)

Tabs_Secs[2][4]:AddSlider(
    "Select Wave",
    {
        Title = "Select Wave",
        Default = 1,
        Min = 1,
        Max = 250,
        Rounding = 0
    }
)

Tabs_Secs[2][4]:AddToggle(
    "Auto Leave Select Wave",
    {
        Title = "Auto Leave",
        Description = "Return to the lobby on select wave automatically",
        Default = false
    }
)

Tabs_Secs[2][4]:AddToggle(
    "Auto Sell Select Units",
    {
        Title = "Auto Sell",
        Description = "Sell the select units on select wave automatically,\nIf you enabled auto sell with macro record the macro will not record sell select units",
        Default = false
    }
)

Game.Others.Status1 =
Tabs_Secs[3][1]:AddParagraph(
    {
        Title = "Status : None",
        Content = "\nGame Time : 0.00"
    }
)

Tabs_Secs[3][1]:AddToggle(
    "Macro Status",
    {
        Title = "Macro Status",
        Description = "Toggle for Show Macro Status",
        Default = true,
        Callback = function(Value)
            Game.Others.Status1.Frame.Visible = Value
        end
    }
)

Tabs_Secs[3][1]:AddDropdown(
    "Macro File",
    {
        Title = "Select Files",
        Values = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"),
        Default = "Starter"
    }
)

Game.Buttons.Equip =
Tabs_Secs[3][1]:AddButton(
    {
        Title = "Equip Units",
        Description = "Equip all the units in selected macro",
        Callback = function()
            Equip_Macro()
        end
    }
)

Tabs_Secs[3][1]:AddInput(
    "File Name",
    {
        Title = "File Name",
        Placeholder = "File name here...",
        Default = ""
    }
)

Game.Buttons.Create =
Tabs_Secs[3][1]:AddButton(
    {
        Title = "Create Macro File",
        Description = "Create a macro with the specified name",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Notify",
                    Content = string.format("You're sure to create the ".."%s.json", Configs["File Name"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Create_Macro},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)

Game.Buttons.Delete =
Tabs_Secs[3][1]:AddButton(
    {
        Title = "Delete Select Macro",
        Description = "Delete the Selected Macro",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Notify",
                    Content = string.format("You're sure to delete the ".."%s.json", Configs["Macro File"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Delete_Macro},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)

Game.Buttons.Export =
Tabs_Secs[3][1]:AddButton(
    {
        Title = "Export Select Macro",
        Description = "Export the Selected Macro",
        Callback = function()
            Export_Macro()
        end
    }
)

Tabs_Secs[3][2]:AddInput(
    "Import Link",
    {
        Title = "Import Link",
        Placeholder = "Github or Discord Link...",
        Default = ""
    }
)

Tabs_Secs[3][2]:AddInput(
    "Import Name",
    {
        Title = "Import Name",
        Placeholder = "Import name here...",
        Default = ""
    }
)

Game.Buttons.Import =
Tabs_Secs[3][2]:AddButton(
    {
        Title = "Import Macro File",
        Callback = function()
            Import_File()
        end
    }
)

Tabs_Secs[3][3]:AddDropdown(
    "Record Type",
    {
        Title = "Record Type",
        Values = {"Hybrid","Money","Time"},
        Default = "Hybrid"
    }
)

Tabs_Secs[3][3]:AddToggle(
    "Macro Record",
    {
        Title = "Record Macro",
        Description =  "Experiencing issues with the recorded macro? Try not to press upgrade to early, place units to close to each other",
        Default = false,
        Callback = function(Value)
            if Value then Macro.Value = {Data = {}} end
        end
    }
)

Tabs_Secs[3][3]:AddSlider(
    "Macro Delay",
    {
        Title = "Macro Delay",
        Default = 0.25,
        Min = 0,
        Max = 10,
        Rounding = 2
    }
)

Tabs_Secs[3][3]:AddToggle(
    "Macro Play",
    {
        Title = "Play Back Macro",
        Default = false
    }
)

for i = 1, #Game.Story_Mode do
    Tabs_Secs[3][4]:AddDropdown(
        "Story"..Game.Story_Mode[i],
        {
            Title = Game.Story_Mode[i],
            Values = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"),
            AllowNull = true,
            Default = nil
        }
    )

    Tabs_Secs[3][6]:AddDropdown(
        "Challenge"..Game.Story_Mode[i],
        {
            Title = Game.Story_Mode[i],
            Values = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"),
            AllowNull = true,
            Default = nil
        }
    )

    Tabs_Secs[3][7]:AddDropdown(
        "Paragon"..Game.Story_Mode[i],
        {
            Title = Game.Story_Mode[i],
            Values = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"),
            AllowNull = true,
            Default = nil
        }
    )
end

for i = 1, #Game.Legend_Stage_Mode do
    Tabs_Secs[3][5]:AddDropdown(
        "LegendStage"..Game.Legend_Stage_Mode[i],
        {
            Title = Game.Legend_Stage_Mode[i],
            Values = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"),
            AllowNull = true,
            Default = nil
        }
    )
end

do
    Setting:SetLibrary(Loader)
    Setting:SetFolder("Project Spectrum/Anime Vanguards/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
    Setting:BuildInterfaceSection(Tabs_Main[#Tabs_Main])

    Saveed:SetLibrary(Loader)
    Saveed:SetFolder("Project Spectrum/Anime Vanguards/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
    Saveed:SetIgnoreIndexes({"File Name","Macro Record", "Import Name", "Import Link"})
    Saveed:IgnoreThemeSettings()
    Saveed:BuildConfigSection(Tabs_Main[#Tabs_Main])

    Windows:SelectTab(1)
    Windows:Minimize("Loaded")

    if Configs["Url"].Value == "" and not Configs["Send Webhook"].IsLocked then
       Configs["Send Webhook"]:Lock()
    end
end


if game.PlaceId == 16146832113 then
    Game.Buttons.Lobby:Lock()

    local function Name_to_Stage(txt)
        for _, Name_Idx in next, game:GetService("ReplicatedStorage").Modules.Data.StagesData.Story:GetChildren() do
            local Data_Require = require(Name_Idx[Name_Idx.Name])
            if Data_Require.Name == txt then
                return Name_Idx.Name
            end
        end
    end

    local function True_Lobby()
        for _, V in next, workspace.MainLobby:GetChildren() do
            if V.Name == "Lobby" and V.ClassName == "Folder" then
                return V
            end
        end
    end

    local function Challenge_Normal_Lobby()
        for _, V in next, True_Lobby().Challenges:GetChildren() do
            if V:IsA("Model") and V.LobbyBanner.Banner.Main.ChallengeInterface.Background.StageName.Text ~= "Daily" and V.LobbyBanner.Banner.Main.ChallengeInterface.Background.MaxPlayers.Amount.Text == "0/4" then
                return V
            end
        end
    end

    local function Challenge_Ignore()
        if #Configs["Ignore Challenge Rewards"].Tables > 0 then
            if Configs["Not Ignore if Reroll"] and Challenge_Normal_Lobby().LobbyBanner.Banner.Main.ChallengeInterface.Background.Rewards:FindFirstChild("TraitRerolls") then
            else
                for I = 1, #Configs["Ignore Challenge Rewards"].Tables do
                    if Challenge_Normal_Lobby().LobbyBanner.Banner.Main.ChallengeInterface.Background.Rewards:FindFirstChild(Configs["Ignore Challenge Rewards"].Tables[I]) then
                        return true
                    end
                end
            end
        end
        if #Configs["Ignore Challenge Debuff"].Tables > 0 then
            local Debuff_Online = Challenge_Normal_Lobby().LobbyBanner.Banner.Main.ChallengeInterface.Background.Difficulty.Label.Text
            if Debuff_Online:find(" ") then
                local Debuff_Tables = {}
                Debuff_Online = Debuff_Online:split(" ")

                for I = 1, #Debuff_Online do
                    table.insert(Debuff_Tables, Debuff_Online[I]:lower())
                end

                for I = 1, #Configs["Ignore Challenge Debuff"].Tables do
                    if table.find(Debuff_Tables, Configs["Ignore Challenge Debuff"].Tables[I]:lower()) then
                        return true
                    end
                end
            else
                for I = 1, #Configs["Ignore Challenge Debuff"].Tables do
                    if Debuff_Online:lower() == Configs["Ignore Challenge Debuff"].Tables[I]:lower() then
                        return true
                    end
                end
            end
        end
        if #Configs["Ignore Challenge World"].Tables > 0 then
            for I, V in next, Configs["Ignore Challenge World"].Tables do
                local Data_Require = require(game:GetService("ReplicatedStorage").Modules.Data.StagesData)
                for IX, VX in next, Data_Require.Challenge do
                    if IX == Name_to_Stage(V) then
                        for D = 1, 6 do
                            if VX.Acts["Act"..tostring(D)].ActName == Challenge_Normal_Lobby().LobbyBanner.Banner.Main.ChallengeInterface.Background.ActName.Text then
                                return true
                            end
                        end
                    end
                end
            end
        end
    end

    local function Story_Lobby()
        for _, V in next, True_Lobby():GetChildren() do
            if V.Name == "Lobby" and V:IsA("Model") and V.LobbyBanner.Banner.Main:FindFirstChild("ChosenStage") == nil and V.LobbyBanner.Banner.Main.ChoosingStage.Main.ActName.Text == "Choosing..." then
                return V
            end
        end
    end

    local function Units_On_Slots()
        local Grabs = {}
        for I = 1, 6 do
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)]:FindFirstChild("Locked") or game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)]:FindFirstChild("UnitTemplate") == nil then continue end
            table.insert(Grabs, game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)].UnitTemplate.Holder.Main.UnitName.Text)
        end
        return Grabs
    end

    task.spawn(
        function()
            for I = 1, 6 do
                if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)]:FindFirstChild("Locked") then continue end
                if not Game.Signals[tostring(I).."Added"] then
                    Game.Signals[tostring(I).."Added"] = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)].ChildAdded:Connect(
                        function(V)
                            if V.Name == "UnitTemplate" and not Loader.Unloaded then
                                Configs["Select Units"]:SetValues(Units_On_Slots())
                                Configs["Select Units"]:SetValue({})
                            end
                        end
                    )
                end
                if not Game.Signals[tostring(I).."Remove"] then
                    Game.Signals[tostring(I).."Remove"] = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(I)].ChildRemoved:Connect(
                        function(V)
                            if V.Name == "UnitTemplate" and not Loader.Unloaded then
                                Configs["Select Units"]:SetValues(Units_On_Slots())
                                Configs["Select Units"]:SetValue({})
                            end
                        end
                    )
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                elseif not Configs["Auto Start"].Value then
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then
                        NavigationGUISelect(game:GetService("Players").LocalPlayer.PlayerGui.MiniLobbyInterface.Holder.Buttons.Start.Button)
                        break
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait(0.25) do
                if Loader.Unloaded then break
                elseif Configs["Auto Join Challenge"].Value or Configs["Auto Join Legend Stage"].Value or Configs["Auto Join Normal"].Value or Configs["Auto Join Hights"].Value then
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then
                    if Configs["Auto Join Legend Stage"].Value and (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) then
                        game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                    {
                        "LegendStage",
                        Name_to_Stage(Configs["Legend Stage Stage"].Value),
                        Configs["Legend Stage Act"].Value,
                        "Normal",
                        4,
                        0,
                        Configs["Friends Only"].Value
                    })
                    else
                        if (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) and Configs["Auto Join Normal"].Value then
                            game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("LobbyEvent"):FireServer("Confirm",{
                                "Story",
                                Name_to_Stage(Configs["Story Stage"].Value),
                                Configs["Story Act"].Value,
                                Configs["Story Difficulty"].Value,
                                4,
                                0,
                                Configs["Friends Only"].Value
                            })
                        elseif (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) and Configs["Auto Join Hights"].Value then
                            for I = 1, #Game.Story_Mode do
                                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then
                                    break
                                else
                                    local Stags_Options = game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Background.Main.Stages

                                    if Stags_Options["Stage"..tostring(#Game.Story_Mode)].Info.LevelsCleared.Amount.Text == "6/6" then
                                        game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("LobbyEvent"):FireServer("Confirm",{
                                            "Story",
                                            "Stage"..tostring(#Game.Story_Mode),
                                            "Act6",
                                            Configs["Story Difficulty"].Value,
                                            4,
                                            0,
                                            Configs["Friends Only"].Value
                                        })
                                    else
                                        if Stags_Options["Stage"..tostring(I)].Info.LevelsCleared.Amount.Text ~= "6/6" then
                                            game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("LobbyEvent"):FireServer("Confirm",{
                                                "Story",
                                                "Stage"..tostring(I),
                                                "Act"..tostring(tonumber(Stags_Options["Stage"..tostring(I)].Info.LevelsCleared.Amount.Text:split("/")[1] + 1)),
                                                Configs["Story Difficulty"].Value,
                                                4,
                                                0,
                                                Configs["Friends Only"].Value
                                            })
                                        end
                                    end
                                end
                            end
                        end
                    end
                    else
                        pcall(
                            function()
                            if not Game.Cannot_Challenge and Configs["Auto Join Challenge"].Value and not Challenge_Ignore() then wait(Configs["Start Delay"].Value)
                            if (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then return end
                                game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", Challenge_Normal_Lobby())
                            elseif Story_Lobby() and (Configs["Auto Join Legend Stage"].Value or Configs["Auto Join Normal"].Value or Configs["Auto Join Hights"].Value) then wait(Configs["Start Delay"].Value)
                            if (game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Enabled and game:GetService("Players").LocalPlayer.PlayerGui.Windows.Lobby.Holder.Visible) or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then return end
                                game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", Story_Lobby())
                            end
                        end
                        )
                    end
                end
            end
        end
    )
else
    if Configs["Macro Status"].Value then
        Game.Others.Notify1 = Loader:Notify({Title = "Status : None", SubContent = "\n", Disable = true})
    end
    local OwnGui = game:GetService("Players").LocalPlayer.PlayerGui
    Game.Buttons.Equip:Lock()

    function Return_Lobby()
        NavigationGUISelect(OwnGui.Windows.Settings.Main.Settings.Misc.Settings.TeleportToLobby.Teleport.Button)

        OwnGui:WaitForChild("PopupScreen"):WaitForChild("Background").Visible = false
        OwnGui.PopupScreen.BaseConfirmationFrame.Size = UDim2.fromOffset(0.1, 0.1)
        OwnGui.PopupScreen.BaseConfirmationFrame:WaitForChild("Main"):WaitForChild("Description").Visible = false

        NavigationGUISelect(OwnGui.PopupScreen.BaseConfirmationFrame.Main.Buttons:WaitForChild("Yes"):WaitForChild("Button"))
    end

    local function Yen()
        return getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.PlayerYenHandler).GetYen)[1]
    end

    local function Stage_Name()
        local a = require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler)
        local b = a.GameData.Stage

        local c = require(game:GetService("ReplicatedStorage").Modules.Data.StagesData.Story[b][b])

        return c.Name
    end

    local function Stage_Type()
        if game:GetService("Players").LocalPlayer.PlayerGui.Guides.List.StageInfo.StageName.Text:match("Paragon") then
            return "Paragon"
        else
            return tostring(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.StageInfoHandler)._Init)[9].GameData.StageType)
        end
    end

    local function End_Stage()
        if OwnGui.EndScreen.Container.EndScreen.Main.FailedLabel.Visible then
            return OwnGui.EndScreen.Container.EndScreen.Main.FailedLabel.Text
        elseif OwnGui.EndScreen.Container.EndScreen.Main.VictoryLabel.Visible then
            return OwnGui.EndScreen.Container.EndScreen.Main.VictoryLabel.Text
        end
    end

    local function Macro_Data_Write()
        if not Macro.Value.Data.World then
            Macro.Value.Data.World = tostring(Stage_Name())
        end
        if not Macro.Value.Data.Units then
            Macro.Value.Data.Units = Game.Units
        end
    end

    local function Macro_Len()
        setmetatable(Macro.Value, Macro.Len)
        return #Macro.Value
    end

    local function Macro_Insert(dtb)
        if not Macro.Value[tostring(Macro_Len() + 1)] then
               Macro.Value[tostring(Macro_Len() + 1)] = dtb
        end
    end

    local function Macro_Write()
        writefile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Macro File"].Value), game:GetService("HttpService"):JSONEncode(Macro.Value))
    end

    local function Macro_Target()
        if Configs[Stage_Type()..Stage_Name()] and Configs[Stage_Type()..Stage_Name()].Value ~= nil then
            return Configs[Stage_Type()..Stage_Name()].Value
        else
            return Configs["Macro File"].Value
        end
    end

    local function Unit_Data(TexT)
        for _, Data in next, game:GetService("ReplicatedStorage").Modules.Data.Entities.UnitsData:GetDescendants() do
            if Data.ClassName == "ModuleScript" and (Data.Name == TexT or Data.Name:match(TexT)) then
                local require_data = require(Data)
                local unt_data =
                {
                    upgradeprice = require_data.Upgrades,

                    shinnymodel = tostring(require_data.ShinyModel),
                    model = tostring(require_data.Model),
                    price = tostring(require_data.Price),
                    name = tostring(require_data.Name),
                    id = require_data.ID
                }
                if unt_data.name == TexT or unt_data.model == TexT or unt_data.shinnymodel == TexT then
                    return unt_data
                end
            end
        end
    end

    local function Units_Active(idx)
        for i,v in next, getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.UnitManager.UnitManagerHandler).ShowUnitManager)[3].GetAllPlacedUnits)[1]._ActiveUnits do
            if i == idx and v.Player == game:GetService("Players").LocalPlayer then
                local data_of_unit = {
                    name = tostring(v.Data.Name),
                    position = tostring(v.Position),
                    rotation = tostring(v.Rotation),
                    priority = v.Data.Priority,
                    current_upgrade = v.Data.CurrentUpgrade
                }
                return data_of_unit
            end
        end
    end

    local function Upgrade_Price(TexT)
        if OwnGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeButton.Inner.Label.Text == "Max" then
            return Unit_Data(TexT).upgradeprice[#Unit_Data(TexT).upgradeprice].Price
        else
            local num = OwnGui.UpgradeInterfaces:GetChildren()[1].Stats.UpgradeLabel.Label.Text:split(" ")[2]:gsub("%[",""):gsub("%]","")
            return Unit_Data(TexT).upgradeprice[tonumber(num) + 1].Price
        end
    end

    local function Unit_CFrame(name)
        for _, Unit in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
            if Unit.Name == name then
                return Unit.Position
            end
        end
    end

    local function Unit_Position(unt)
        if type(unt) == "string" then
            repeat task.wait() until stringtopos
            unt = stringtopos(unt)
        end
        for _, Unit in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
            if Unit.Position == unt or (Unit.Position - unt).Magnitude <= 0.75 then
                return Unit.Name
            end
        end
    end

    local function Unit_Priority(x)
        if x == "First" then
            return 1
        elseif x == "Closest" then
            return 2
        elseif x == "Last" then
            return 3
        elseif x == "Strongest" then
            return 4
        elseif x == "Weakest" then
            return 5
        else
            return 0
        end
    end

    local function Check_Units(name)
        for I, V in next, OwnGui.Hotbar.Main.Units:GetChildren() do
            if V:IsA("Frame") then
                if V:FindFirstChild("Locked") or V:FindFirstChild("UnitTemplate") == nil then continue end
                if V.UnitTemplate.Holder.Main.UnitName.Text == name then
                    return true
                end
            end
        end
    end

    local function Check_Places(pos)
        if type(pos) == "string" then
            repeat task.wait() until stringtopos
            pos = stringtopos(pos)
        end
        for i,v in next, workspace.UnitVisuals.UnitCircles:GetChildren() do
            if v.Position == pos or (v.Position - pos).Magnitude <= 1.25 then
                return true
            end
        end
    end

    local function Money_Write(idx, type)
        if Configs["Record Type"].Value == "Money" or Configs["Record Type"].Value == "Hybrid" then
            if type == "Upgrade" then
                return Upgrade_Price(idx)
            elseif type == "Place" then
                return Unit_Data(idx).price
            end
        else
            return 0
        end
    end

    local function Game_Time()
        if OwnGui.HUD.Map.WavesAmount.Text == "0" then
            Game.Time = tick()

            local Tick = tick() - Game.Time
            local Secs = math.floor(Tick) % ((9e9 * 9e9) + (9e9 * 9e9))
            local Mills = string.format(".%.03d", (Tick % 1) * 1000)

            return Secs..Mills
        else

            local Tick = tick() - Game.Time
            local Secs = math.floor(Tick) % ((9e9 * 9e9) + (9e9 * 9e9))
            local Mills = string.format(".%.03d", (Tick % 1) * 1000)

            return Secs..Mills
        end
    end

    local function Time_Write()
        if Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid" then
            if OwnGui.HUD.Map.WavesAmount.Text == "0" then
                Game.Time = tick()

                local Tick = tick() - Game.Time
                local Secs = math.floor(Tick) % ((9e9 * 9e9) + (9e9 * 9e9))
                local Mills = string.format(".%.03d", (Tick % 1) * 1000)

                return Secs..Mills
            else
                local Tick = tick() - Game.Time
                local Secs = math.floor(Tick) % ((9e9 * 9e9) + (9e9 * 9e9))
                local Mills = string.format(".%.03d", (Tick % 1) * 1000)

                return Secs..Mills
            end
        else
            return "0.000"
        end
    end

    local function Check_Macro_Time_Money(x)
        repeat task.wait() until (tonumber(Yen()) >= tonumber(x["money"]) and tonumber(Game_Time()) >= tonumber(x["time"])) or not Configs["Macro Play"].Value or Loader.Unloaded

        task.wait(Configs["Macro Delay"].Value)
    end

    local function UpgradeInterfacesX()
        if #OwnGui.UpgradeInterfaces:GetChildren() > 0 then
            return OwnGui.UpgradeInterfaces:GetChildren()[1]
        end
    end

    local function Update_Status()
        if Configs["Macro Record"].Value and Macro.Value[tostring(Macro_Len())] then
            if Macro.Value[tostring(Macro_Len())]["rotation"] then
                return "\nIndex : "..tostring(Macro_Len().."/"..Macro_Len()).."\nAction : "..Macro.Value[tostring(Macro_Len())]["type"].."\nUnit : "..Macro.Value[tostring(Macro_Len())]["unit"].."\nRotation : "..Macro.Value[tostring(Macro_Len())]["rotation"].."\nMoney : "..Macro.Value[tostring(Macro_Len())]["money"].."\nTime : "..Macro.Value[tostring(Macro_Len())]["time"]
            elseif Macro.Value[tostring(Macro_Len())]["value"] then
                return "\nIndex : "..tostring(Macro_Len().."/"..Macro_Len()).."\nAction : "..Macro.Value[tostring(Macro_Len())]["type"].."\nUnit : "..Macro.Value[tostring(Macro_Len())]["unit"].."\nValue : "..Macro.Value[tostring(Macro_Len())]["value"].."\nMoney : "..Macro.Value[tostring(Macro_Len())]["money"].."\nTime : "..Macro.Value[tostring(Macro_Len())]["time"]
            else
                return "\nIndex : "..tostring(Macro_Len().."/"..Macro_Len()).."\nAction : "..Macro.Value[tostring(Macro_Len())]["type"].."\nUnit : "..Macro.Value[tostring(Macro_Len())]["unit"].."\nMoney : "..Macro.Value[tostring(Macro_Len())]["money"].."\nTime : "..Macro.Value[tostring(Macro_Len())]["time"]
            end
        elseif Configs["Macro Play"].Value and Macro.Playing and Stage_Name() == Macro.Playing.Data.World then
            local Data = Macro.Playing[tostring(Macro.Indexs)]
            if Macro.Ended then
                return "\nIndex : "..tostring(Macro.Indexs.."/"..#Macro.Playing)
            else
                if Data["rotation"] then
                    return "\nIndex : "..tostring(Macro.Indexs.."/"..#Macro.Playing.."\nAction : "..Data["type"].."\nUnit : "..Data["unit"].."\nRotation : "..Data["rotation"].."\nWaiting Money : "..Data["money"].."\nWaiting Time : "..Data["time"])
                elseif Data["value"] then
                    return "\nIndex : "..tostring(Macro.Indexs.."/"..#Macro.Playing.."\nAction : "..Data["type"].."\nUnit : "..Data["unit"].."\nValue : "..Data["value"].."\nWaiting Money : "..Data["money"].."\nWaiting Time : "..Data["time"])
                else
                    return "\nIndex : "..tostring(Macro.Indexs.."/"..#Macro.Playing.."\nAction : "..Data["type"].."\nUnit : "..Data["unit"].."\nWaiting Money : "..Data["money"].."\nWaiting Time : "..Data["time"])
                end
            end
        else
            return "\nIndex : 0/0"
        end
    end

    task.spawn(
        function()
            Game.Signals.Place = workspace.UnitVisuals.UnitCircles.ChildAdded:Connect(function (v)
                if Loader.Unloaded or not Configs["Macro Record"].Value then
                    return
                else
                    if Units_Active(v.Name) then
                        Macro_Data_Write()
                        local unit = Units_Active(v.Name)

                        Macro_Insert(
                            {
                                ["type"] = "Place",
                                ["unit"] = unit.name,
                                ["money"] = tostring(Money_Write(unit.name, "Place")),
                                ["time"] = tostring(Time_Write()),
                                ["cframe"] = unit.position,
                                ["rotation"] = unit.rotation
                            }
                        )
                        Macro_Write()
                    end
                end
            end)
        end
    )

    task.spawn(
        function()
            Game.Signals.Upgrade = OwnGui.UpgradeInterfaces.ChildAdded:Connect(
                function(v)
                    local Upgrade_Button, Sell_Button, Priority = v:WaitForChild("Stats"):WaitForChild("UpgradeButton"):WaitForChild("Inner"):WaitForChild("Label"), v:WaitForChild("Unit"):WaitForChild("Sell"):WaitForChild("Button"), v:WaitForChild("Unit"):WaitForChild("Priority"):WaitForChild("Inner"):WaitForChild("Label")
                    Game.Signals[v.Name.."Upgrade"] = Upgrade_Button:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if Configs["Macro Record"].Value and not Loader.Unloaded and Units_Active(v.Name) then
                                local unit = Units_Active(v.Name)

                                Macro_Data_Write()
                                Macro_Insert(
                                    {
                                        ["type"] = "Upgrade",
                                        ["unit"] = unit.name,
                                        ["value"] = tostring(unit.current_upgrade - 1),
                                        ["money"] = tostring(Money_Write(unit.name, "Upgrade")),
                                        ["time"] = tostring(Time_Write()),
                                        ["cframe"] = tostring(Unit_CFrame(v.Name))
                                    }
                                )
                                Macro_Write()
                            end
                        end
                    )
                    Game.Signals[v.Name.."Priority"] = Priority:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if Configs["Macro Record"].Value and not Loader.Unloaded and Units_Active(v.Name) then
                                local unit = Units_Active(v.Name)

                                Macro_Data_Write()
                                Macro_Insert(
                                    {
                                        ["type"] = "ChangePriority",
                                        ["unit"] = unit.name,
                                        ["value"] = v.Unit.Priority.Inner.Label.Text,
                                        ["money"] = "0",
                                        ["time"] = tostring(Time_Write()),
                                        ["cframe"] = tostring(Unit_CFrame(v.Name))
                                    }
                                )
                                Macro_Write()
                            end
                        end
                    )
                    Game.Signals[v.Name.."Sell"] = Sell_Button.InputBegan:Connect(
                        function(input)
                            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and Units_Active(v.Name) and Configs["Macro Record"].Value and not Loader.Unloaded then
                                local unit = Units_Active(v.Name)

                                Macro_Data_Write()
                                Macro_Insert(
                                    {
                                        ["type"] = "Sell",
                                        ["unit"] = unit.name,
                                        ["money"] = "0",
                                        ["time"] = tostring(Time_Write()),
                                        ["cframe"] = tostring(Unit_CFrame(v.Name))
                                    }
                                )
                                Macro_Write()
                            end
                        end
                    )
                    task.spawn(
                        function()
                            repeat task.wait() until not v.Parent or Loader.Unloaded
                            if Game.Signals[v.Name.."Upgrade"] then
                               Game.Signals[v.Name.."Upgrade"]:Disconnect()
                               Game.Signals[v.Name.."Upgrade"] = nil
                            end
                            if Game.Signals[v.Name.."Sell"] then
                               Game.Signals[v.Name.."Sell"]:Disconnect()
                               Game.Signals[v.Name.."Sell"] = nil
                            end
                            if Game.Signals[v.Name.."Priority"] then
                               Game.Signals[v.Name.."Priority"]:Disconnect()
                               Game.Signals[v.Name.."Priority"] = nil
                            end
                        end
                    )
                end
            )
        end
    )

    task.spawn(
        function()
            Configs["Macro Play"]:OnChanged(
                function(Value)
                    if Value == true and not Loader.Unloaded then
                        if Macro_Target() == nil then
                            return Loader:Notify({Title = "Error", SubContent = "Select Macro File First", Disable = true, Duration = 5})
                        elseif not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Macro_Target())) then
                            return Loader:Notify({Title = "Error", SubContent = tostring(Macro_Target())..".json is empty", Disable = true, Duration = 5})
                        elseif Loader.Unloaded then
                            return
                        else
                            Macro.Playing = game:GetService("HttpService"):JSONDecode(readfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Macro_Target())))
                            setmetatable(Macro.Playing, Macro.Len)

                            if #Macro.Playing == 0 then
                                return Loader:Notify({Title = "Error", SubContent = "Record Action First", Disable = true, Duration = 5})
                            elseif Stage_Name() ~= Macro.Playing.Data.World then
                                return Loader:Notify({Title = "Error", SubContent = "Game stage doesn't match the data", Disable = true, Duration = 5})
                            else
                                for i = 1, #Macro.Playing do
                                    local Data = Macro.Playing[tostring(i)]
                                    Macro.Indexs = i

                                    if not Configs["Macro Play"].Value or Loader.Unloaded then
                                        break
                                    else
                                        if Data["type"] == "Place" then
                                            if not Configs["Macro Play"].Value or Loader.Unloaded then
                                                break
                                            elseif not Check_Units(Data["unit"]) then
                                                Loader:Notify({Title = "Error", SubContent = "Invaild Unit On Slot", Disable = true, Duration = 2.5})
                                            elseif Check_Places(Data["cframe"]) then
                                                Loader:Notify({Title = "Error", SubContent = "Unit On This Placed", Disable = true, Duration = 2.5})
                                            else
                                                Check_Macro_Time_Money(Data)
                                                require(game:GetService("StarterPlayer").Modules.Gameplay.ClientUnitHandler).IsPlacingUnit = true
                                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer(
                                                    "Render",
                                                    {
                                                        Data["unit"],
                                                        Unit_Data(Data["unit"]).id,
                                                        stringtopos(Data["cframe"]),
                                                        tonumber(Data["rotation"] or 0)
                                                    }
                                                )
                                                require(game:GetService("StarterPlayer").Modules.Gameplay.ClientUnitHandler).IsPlacingUnit = false
                                            end
                                        elseif Data["type"] == "Upgrade" then
                                            if not Configs["Macro Play"].Value or Loader.Unloaded then
                                                break
                                            elseif not Unit_Position(Data["cframe"]) or (Unit_Position(Data["cframe"]) and Units_Active(Unit_Position(Data["cframe"])).name ~= Data["unit"]) then
                                                Loader:Notify({Title = "Error", SubContent = "Invaild Unit to Upgrade", Disable = true, Duration = 2.5})
                                            elseif Data["value"] and Units_Active(Unit_Position(Data["cframe"])).current_upgrade >= tonumber(Data["value"]) + 1 then
                                                Loader:Notify({Title = "Error", SubContent = "The Unit has been Upgraded", Disable = true, Duration = 2.5})
                                            else
                                                Check_Macro_Time_Money(Data)
                                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Upgrade", Unit_Position(Data["cframe"]))
                                            end
                                        elseif Data["type"] == "Sell" then
                                            if not Configs["Macro Play"].Value or Loader.Unloaded then
                                                break
                                            elseif not Unit_Position(Data["cframe"]) or (Unit_Position(Data["cframe"]) and Units_Active(Unit_Position(Data["cframe"])).name ~= Data["unit"]) then
                                                Loader:Notify({Title = "Error", SubContent = "Invaild Unit to Sell", Disable = true, Duration = 2.5})
                                            else
                                                Check_Macro_Time_Money(Data)
                                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", Unit_Position(Data["cframe"]))
                                            end
                                        elseif Data["type"] == "ChangePriority" then
                                            if not Configs["Macro Play"].Value or Loader.Unloaded then
                                                break
                                            elseif not Unit_Position(Data["cframe"]) or (Unit_Position(Data["cframe"]) and Units_Active(Unit_Position(Data["cframe"])).name ~= Data["unit"]) then
                                                Loader:Notify({Title = "Error", SubContent = "Invaild Unit to ChangePriority", Disable = true, Duration = 2.5})
                                            elseif Data["value"] and Units_Active(Unit_Position(Data["cframe"])).priority == Unit_Priority(Data["value"]) then
                                                Loader:Notify({Title = "Error", SubContent = "This Unit has Changed Priority", Disable = true, Duration = 2.5})
                                            else
                                                Check_Macro_Time_Money(Data)
                                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("ChangePriority", Unit_Position(Data["cframe"]))
                                            end
                                        end
                                        task.wait(0.475)
                                    end
                                    if not Configs["Macro Play"].Value or Loader.Unloaded then
                                        break
                                    end
                                    if i == #Macro.Playing then
                                        Macro.Ended = true
                                    end
                                end
                            end
                        end
                    else
                        Macro.Playing = nil
                        Macro.Ended = nil
                        Macro.Indexs = 0
                    end
                end
            )
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if Configs["Macro Record"].Value and UpgradeInterfacesX() and not Game.Signals[UpgradeInterfacesX().Name.."Upgrade"] then
                        local UpgradeInterface = UpgradeInterfacesX()
                        Game.Signals[UpgradeInterface.Name.."Upgrade"] = UpgradeInterface:WaitForChild("Stats"):WaitForChild("UpgradeButton"):WaitForChild("Inner"):WaitForChild("Label"):GetPropertyChangedSignal("Text"):Connect(
                            function()
                                if Configs["Macro Record"].Value and not Loader.Unloaded and Units_Active(UpgradeInterface.Name) then
                                    local unit = Units_Active(UpgradeInterface.Name)

                                    Macro_Data_Write()
                                    Macro_Insert(
                                        {
                                            ["type"] = "Upgrade",
                                            ["unit"] = unit.name,
                                            ["value"] = tostring(unit.current_upgrade - 1),
                                            ["money"] = tostring(Money_Write(unit.name, "Upgrade")),
                                            ["time"] = tostring(Time_Write()),
                                            ["cframe"] = tostring(Unit_CFrame(UpgradeInterface.Name))
                                        }
                                    )
                                    Macro_Write()
                                end
                            end
                        )
                        task.spawn(
                            function()
                                repeat task.wait() until not UpgradeInterface.Parent or Loader.Unloaded
                                if Game.Signals[UpgradeInterface.Name.."Upgrade"] then
                                   Game.Signals[UpgradeInterface.Name.."Upgrade"]:Disconnect()
                                   Game.Signals[UpgradeInterface.Name.."Upgrade"] = nil
                                end
                            end
                        )
                    elseif Configs["Macro Record"].Value and UpgradeInterfacesX() and not Game.Signals[UpgradeInterfacesX().Name.."Priority"] then
                        local UpgradeInterface = UpgradeInterfacesX()
                        Game.Signals[UpgradeInterface.Name.."Priority"] = UpgradeInterface:WaitForChild("Unit"):WaitForChild("Priority"):WaitForChild("Inner"):WaitForChild("Label"):GetPropertyChangedSignal("Text"):Connect(
                            function()
                                if Configs["Macro Record"].Value and not Loader.Unloaded and Units_Active(UpgradeInterface.Name) then
                                    local unit = Units_Active(UpgradeInterface.Name)

                                    Macro_Data_Write()
                                    Macro_Insert(
                                        {
                                            ["type"] = "ChangePriority",
                                            ["unit"] = unit.name,
                                            ["value"] = UpgradeInterface.Unit.Priority.Inner.Label.Text,
                                            ["money"] = "0",
                                            ["time"] = tostring(Time_Write()),
                                            ["cframe"] = tostring(Unit_CFrame(UpgradeInterface.Name))
                                        }
                                    )
                                    Macro_Write()
                                end
                            end
                        )
                        task.spawn(
                            function()
                                repeat task.wait() until not UpgradeInterface.Parent or Loader.Unloaded
                                if Game.Signals[UpgradeInterface.Name.."Priority"] then
                                   Game.Signals[UpgradeInterface.Name.."Priority"]:Disconnect()
                                   Game.Signals[UpgradeInterface.Name.."Priority"] = nil
                                end
                            end
                        )
                    elseif Configs["Macro Record"].Value and UpgradeInterfacesX() and not Game.Signals[UpgradeInterfacesX().Name.."Sell"] then
                        local UpgradeInterface = UpgradeInterfacesX()
                        Game.Signals[UpgradeInterface.Name.."Sell"] = UpgradeInterface:WaitForChild("Unit"):WaitForChild("Sell"):WaitForChild("Button").InputBegan:Connect(
                            function(input)
                                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and Units_Active(UpgradeInterface.Name) and Configs["Macro Record"].Value and not Loader.Unloaded then
                                    local unit = Units_Active(UpgradeInterface.Name)

                                    Macro_Data_Write()
                                    Macro_Insert(
                                        {
                                            ["type"] = "Sell",
                                            ["unit"] = unit.name,
                                            ["money"] = "0",
                                            ["time"] = tostring(Time_Write()),
                                            ["cframe"] = tostring(Unit_CFrame(UpgradeInterface.Name))
                                        }
                                    )
                                    Macro_Write()
                                end
                            end
                        )
                        task.spawn(
                            function()
                                repeat task.wait() until not UpgradeInterface.Parent or Loader.Unloaded
                                if Game.Signals[UpgradeInterface.Name.."Sell"] then
                                   Game.Signals[UpgradeInterface.Name.."Sell"]:Disconnect()
                                   Game.Signals[UpgradeInterface.Name.."Sell"] = nil
                                end
                            end
                        )
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    pcall(
                        function()
                            if Configs["Macro Status"].Value then
                                if Game.Others.Notify1 then
                                    Game.Others.Notify1.Title.Text = "Status : "..Macro.Status
                                    Game.Others.Notify1.SubContentLabel.Text = "Game Time : "..tostring(Game_Time())..Update_Status()

                                    local d, n = string.gsub(Game.Others.Notify1.SubContentLabel.Text, "\n", "")
                                    Game.Others.Notify1.Holder.Size = UDim2.new(1,0,0,(80 + (10.5 * n)))
                                else
                                    Game.Others.Status1:SetTitle("Status : "..Macro.Status)
                                    Game.Others.Status1:SetDesc("\nGame Time : "..tostring(Game_Time())..Update_Status())
                                end
                            end
                        end
                    )
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    pcall(
                        function()
                            local Visual = OwnGui.EndScreen
                            if (Configs["Auto Leave"].Value and Visual.Enabled and Visual.ShowEndScreen.Visible and Visual.Container.EndScreen:FindFirstChild("Leave") and Visual.Container.EndScreen:FindFirstChild("Leave").Visible) or (Stage_Type() == "Challenge" and End_Stage() == "VICTORY!") then
                                if Configs["Send Webhook"].Value and not Game.Send_Webhook then
                                    wait(2)
                                end
                                NavigationGUISelect(Visual.Container.EndScreen.Leave.Button)
                                wait(1)
                            elseif not Game.Cannot_Next and End_Stage() ~= "FAILED" and Configs["Auto Next"].Value and Visual.Enabled and Visual.ShowEndScreen.Visible and Visual.Container.EndScreen:FindFirstChild("Next") and Visual.Container.EndScreen:FindFirstChild("Next").Visible then
                                if Configs["Send Webhook"].Value and not Game.Send_Webhook then
                                    wait(2)
                                end
                                NavigationGUISelect(Visual.Container.EndScreen.Next.Button)
                                wait(1)
                            elseif not Game.Cannot_Retry and Configs["Auto Retry"].Value and Visual.Enabled and Visual.ShowEndScreen.Visible and Visual.Container.EndScreen:FindFirstChild("Retry") and Visual.Container.EndScreen:FindFirstChild("Retry").Visible then
                                if Configs["Send Webhook"].Value and not Game.Send_Webhook then
                                    wait(2)
                                end
                                NavigationGUISelect(Visual.Container.EndScreen.Retry.Button)
                                wait(1)
                            end
                        end
                    )
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if #workspace.Camera:GetChildren() > 0 then
                        for _, ItemInfo in next, workspace.Camera:GetChildren() do
                            if ItemInfo:IsA("Model") and #workspace.Camera:GetChildren() > 1 then
                                game:GetService("VirtualInputManager"):SendMouseButtonEvent(5, 5, 0, not game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 0) Game.Reward_Claim = true
                            elseif not ItemInfo:IsA("Model") and #workspace.Camera:GetChildren() > 0 then
                                game:GetService("VirtualInputManager"):SendMouseButtonEvent(5, 5, 0, not game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 0) Game.Reward_Claim = true
                            end
                        end
                    end
                end
            end
        end
    )

    local function Debuff_Priority_1()
        if #Configs["Debuff Priority 1"].Tables > 0 then
            for I, V in next, OwnGui.Frames.Modifiers.Main:GetChildren() do
                if table.find(Configs["Debuff Priority 1"].Tables, V.Name) then
                    if V:FindFirstChild("Main") and V.Main:FindFirstChild("Button") then
                        NavigationGUISelect(V.Main.Button)
                        repeat task.wait() until not V.Parent or Loader.Unloaded
                    end
                end
            end
        end
    end

    local function Debuff_Priority_2()
        if #Configs["Debuff Priority 2"].Tables > 0 then
            Debuff_Priority_1()
            for I, V in next, OwnGui.Frames.Modifiers.Main:GetChildren() do
                if table.find(Configs["Debuff Priority 2"].Tables, V.Name) then
                    if V:FindFirstChild("Main") and V.Main:FindFirstChild("Button") then
                        Debuff_Priority_1()
                        NavigationGUISelect(V.Main.Button)
                        repeat task.wait() until not V.Parent or Loader.Unloaded
                    end
                end
            end
        end
    end

    local function Debuff_Priority_3()
        if #Configs["Debuff Priority 3"].Tables > 0 then
            Debuff_Priority_1()
            Debuff_Priority_2()
            for I, V in next, OwnGui.Frames.Modifiers.Main:GetChildren() do
                if table.find(Configs["Debuff Priority 3"].Tables, V.Name) then
                    if V:FindFirstChild("Main") and V.Main:FindFirstChild("Button") then
                        Debuff_Priority_1()
                        Debuff_Priority_2()
                        NavigationGUISelect(V.Main.Button)
                        repeat task.wait() until not V.Parent or Loader.Unloaded
                    end
                end
            end
        end
    end

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    pcall(
                        function()
                            if Configs["Auto Vote Debuff"].Value and #OwnGui.Frames.Modifiers.Main:GetChildren() >= 3 then
                                repeat
                                    Debuff_Priority_1()
                                    Debuff_Priority_2()
                                    Debuff_Priority_3()
                                task.wait(0.475)
                                until not Configs["Auto Vote Debuff"].Value or #OwnGui.Frames.Modifiers.Main:GetChildren() < 3 or Loader.Unloaded
                                game:GetService("GuiService").GuiNavigationEnabled = false
                                game:GetService("GuiService").SelectedObject = nil
                            end
                        end
                    )
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if tonumber(OwnGui.HUD.Map.WavesAmount.Text) >= tonumber(Configs["Select Wave"].Value) and Configs["Auto Sell Select Units"].Value and #Configs["Select Units"].Tables > 0 then
                        for i,v in next, getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.UnitManager.UnitManagerHandler).ShowUnitManager)[3].GetAllPlacedUnits)[1]._ActiveUnits do
                            if i and v and v.Player == game:GetService("Players").LocalPlayer and table.find(Configs["Select Units"].Tables, v.Data.Name) then
                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", i)
                            end
                        end
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if Configs["Auto Skip"].Value and OwnGui:FindFirstChild("SkipWave") and #OwnGui.Frames.Modifiers.Main:GetChildren() < 3 then
                        game:GetService("ReplicatedStorage").Networking.SkipWaveEvent:FireServer("Skip")
                        wait(5)
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            Game.Signals.Window_Changed = Windows.Root:GetPropertyChangedSignal("Visible"):Connect(
                function()
                    if Loader.Unloaded then return end
                    if Windows.Root.Visible == false and Configs["Macro Status"].Value and not Game.Others.Notify1 then
                        Game.Others.Notify1 = Loader:Notify({Title = "Status : None", SubContent = "\n", Disable = true})
                    elseif Windows.Root.Visible == true and Game.Others.Notify1 then
                        Game.Others.Notify1:Close()
                        Game.Others.Notify1 = nil
                    end
                end
            )
        end
    )

    task.spawn(
        function()
            Game.Signals.Replay = OwnGui.HUD.Map.WavesAmount:GetPropertyChangedSignal("Text"):Connect(
                function()
                    if OwnGui.HUD.Map.WavesAmount.Text == "0" then
                        Game.Time = tick()
                        if Configs["Macro Play"].Value then
                           Configs["Macro Play"]:SetValue(false)
                           wait(1)
                           Loader:Notify({Title = "Replaying Macro...", Duration = 5, Disable = true})
                           Configs["Macro Play"]:SetValue(true)
                        end
                    end
                end
            )
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if Configs["Auto Leave Select Wave"].Value and tonumber(OwnGui.HUD.Map.WavesAmount.Text) >= tonumber(Configs["Select Wave"].Value) then
                        Return_Lobby()
                        wait(10)
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if Configs["Auto Lobby Challenge"].Value and Game.Challenge_Changed and Stage_Type() ~= "Challenge" then
                        Return_Lobby()
                        wait(10)
                    end
                end
            end
        end
    )

    task.spawn(
        function()
            while true and wait() do
                if Loader.Unloaded then break
                else
                    if Configs["Send Webhook"].Value and OwnGui.EndScreen.Enabled and OwnGui.EndScreen.Container.Visible then
                        wait(2)
                        for I, V in next, OwnGui.EndScreen.Container.EndScreen.Main.StageRewards.Main:GetChildren() do
                            local rarity = "Common"
                            if V:IsA("Frame") and V.Holder:FindFirstChildOfClass("UIGradient") and V.Holder:FindFirstChildOfClass("UIGradient").Name ~= "Border" then
                               rarity = V.Holder:FindFirstChildOfClass("UIGradient").Name
                            end
                            if V:IsA("Frame") and V.Holder.Main:FindFirstChild("Amount") then
                                table.insert(Game.Webhook, V.Holder.Main.Amount.Text.." "..V.Name.." ["..rarity.."]")
                            elseif V:IsA("Frame") and V.Holder.Main:FindFirstChild("Amount") == nil then
                                table.insert(Game.Webhook, "x1 "..V.Name.." ["..rarity.."]")
                            end
                        end
                        local Data = game:GetService("HttpService"):JSONEncode({
                            ["username"] = "Spectrum Assistant",
                            ["avatar_url"] = "https://media.discordapp.net/attachments/1232919765094240266/1288197860159914076/received_6268136009875748.jpg?ex=66f44f3f&is=66f2fdbf&hm=a7781334ae91dc5e7d73d148899c1507365a5daf94114d39bcab27e6378f7694&=&format=webp&width=671&height=671",
                            content = nil,
                            embeds = {
                                {
                                    ["title"] = "** 🔔 Webhook Notifaction ✧₊⁺ **",
                                    ["description"] = nil,
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
                                            ["name"] = "**👩🏻‍💼  Account Information ||"..game:GetService("Players").LocalPlayer.Name.."|| **",
                                            ["value"] = OwnGui.Hotbar.Main.Level.Level.Text,
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**💰 Rewards List 🎁**",
                                            ["value"] = "\n"..table.concat(Game.Webhook,"\n"),
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**🎯 Match Result ["..End_Stage().."] 🏆**",
                                            ["value"] = OwnGui.EndScreen.Container.EndScreen.Main.StageStatistics.PlayTime.Amount.Text.." - Wave "..OwnGui.HUD.Map.WavesAmount.Text.."\n"..Stage_Name().." "..OwnGui.EndScreen.Container.EndScreen.Main.StageInfo.Main.ActName.Text.. " - " .. Stage_Type().. " ["..OwnGui.EndScreen.Container.EndScreen.Main.StageInfo.Main.Difficulty.Text.."]",
                                            ["inline"] = false
                                        }
                                    }
                                }
                            }
                        })
                        local response = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or (request)
                        response({Url = Configs["Url"].Value, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = Data})
                        Game.Send_Webhook = true
                        repeat wait() until not Configs["Send Webhook"].Value or not OwnGui.EndScreen.Enabled or not OwnGui.EndScreen.Container.Visible or Loader.Unloaded
                        Game.Send_Webhook = false
                        Game.Webhook = {}
                    end
                end
            end
        end
    )

end

function stringtopos(str)
    return Vector3.new(table.unpack(str:gsub(" ", ""):split(",")))
end

function NavigationGUISelect(Object)
    local GuiService = game:GetService("GuiService")
    repeat
        GuiService.GuiNavigationEnabled = true
        GuiService.SelectedObject = Object
    task.wait()
    until GuiService.SelectedObject == Object

    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, nil)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, nil)

    task.wait(0.0525)
    GuiService.GuiNavigationEnabled = false
    GuiService.SelectedObject = nil
end

function Import_File()
    local passed, error = pcall(
        function()
            local file = string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Import Name"].Value)
            if not isfile then
                error("The Excutor doesn't Support isfile", 9)
            elseif not writefile then
                error("The Excutor doesn't Support writefile", 9)
            elseif isfile(file) then
                error("This File is Already Available", 9)
            elseif not string.find(Configs["Import Link"].Value, "https://cdn.discordapp.com/attachments/") and not string.find(Configs["Import Link"].Value, "https://github.com/") and not string.find(Configs["Import Link"].Value, "https://raw.githubusercontent.com/") then
                error("Please make sure your link is correct", 9)
            else
                local info
                if string.find(Configs["Import Link"].Value, "https://cdn.discordapp.com/attachments/") then
                    info = game:HttpGet(Configs["Import Link"].Value)
                else
                    if not string.find(Configs["Import Link"].Value, "https://raw.githubusercontent.com/") and string.find(Configs["Import Link"].Value, "https://github.com/") then
                        info = Configs["Import Link"].Value
                        info = info:gsub("https://github.com", "https://raw.githubusercontent.com"):gsub("/blob", "")
                        info = game:HttpGet(info)
                    else
                        if string.find(Configs["Import Link"].Value, "https://raw.githubusercontent.com/") then
                            info = game:HttpGet(Configs["Import Link"].Value)
                        end
                    end
                end
                if not info then
                    error("Unable to Concat The Link", 9)
                elseif not info:find([["Data":{]]) then
                    error("Data does not match the database", 9)
                else
                    SetFile:CheckFile(file, info)

                    Configs["Macro File"]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                    for i = 1, #Game.Story_Mode do
                        Configs["Story"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                        Configs["Paragon"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                        Configs["Challenge"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))

                        if Configs["Story"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Story"..Game.Story_Mode[i]].Value)) then
                           Configs["Story"..Game.Story_Mode[i]]:SetValue(nil)
                        end
                        if Configs["Paragon"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Paragon"..Game.Story_Mode[i]].Value)) then
                           Configs["Paragon"..Game.Story_Mode[i]]:SetValue(nil)
                        end
                        if Configs["Challenge"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Challenge"..Game.Story_Mode[i]].Value)) then
                           Configs["Challenge"..Game.Story_Mode[i]]:SetValue(nil)
                        end
                    end
                    for i = 1, #Game.Legend_Stage_Mode do
                        Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))

                        if Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value)) then
                           Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValue(nil)
                        end
                    end
                end
            end
        end
    )
    if passed then
        Loader:Notify({Title = "Successful Import : "..Configs["Import Name"].Value..".json", Disable = true, Duration = 5})
        Configs["Import Link"]:SetValue("")
        Configs["Import Name"]:SetValue("")
    else
        Loader:Notify({Title = "Unsuccessful Import : "..tostring(error), Disable = true, Duration = 5})
    end
end

function Create_Macro()
    local passed, error = pcall(
        function()
            local link = string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["File Name"].Value)

            if not isfile then
                error("The Excutor doesn't Support isfile", 9)
            elseif not writefile then
                error("The Excutor doesn't Support writefile", 9)
            elseif isfile(link) then
                error("This File is Already Available", 9)
            else
                SetFile:CheckFile(link, {Data = {}})

                Configs["Macro File"]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                Configs["Macro File"]:SetValue(Configs["File Name"].Value)

                for i = 1, #Game.Story_Mode do
                    Configs["Story"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                    Configs["Paragon"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))
                    Configs["Challenge"..Game.Story_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))

                    if Configs["Story"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Story"..Game.Story_Mode[i]].Value)) then
                       Configs["Story"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                    if Configs["Paragon"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Paragon"..Game.Story_Mode[i]].Value)) then
                       Configs["Paragon"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                    if Configs["Challenge"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Challenge"..Game.Story_Mode[i]].Value)) then
                       Configs["Challenge"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                end
                for i = 1, #Game.Legend_Stage_Mode do
                    Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValues(SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json"))

                    if Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value)) then
                       Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValue(nil)
                    end
                end
            end
        end
    )
    if passed then
        Loader:Notify({Title = "Successful Create : "..Configs["File Name"].Value..".json", Disable = true, Duration = 5})
        Configs["File Name"]:SetValue("")
    else
        Loader:Notify({Title = "Unsuccessful Create : "..tostring(error), Disable = true, Duration = 5})
    end
end

function Delete_Macro()
    local text = Configs["Macro File"].Value
    local passed, error = pcall(
        function()
            local link = string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", text)

            if not isfile then
                error("The Excutor doesn't Support isfile", 9)
            elseif not delfile then
                error("The Excutor doesn't Support delfile", 9)
            elseif not isfile(link) then
                error("The file cannot be found", 9)
            else
                SetFile:DeleteFile(link)
                local list = SetFile:ListFile("Project Spectrum/Anime Vanguards/Macro","json")

                Configs["Macro File"]:SetValues(list)
                Configs["Macro File"]:SetValue(#list > 0 and list[#list] or nil)

                for i = 1, #Game.Story_Mode do
                    Configs["Story"..Game.Story_Mode[i]]:SetValues(list)
                    Configs["Paragon"..Game.Story_Mode[i]]:SetValues(list)
                    Configs["Challenge"..Game.Story_Mode[i]]:SetValues(list)

                    if Configs["Story"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Story"..Game.Story_Mode[i]].Value)) then
                       Configs["Story"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                    if Configs["Paragon"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Paragon"..Game.Story_Mode[i]].Value)) then
                       Configs["Paragon"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                    if Configs["Challenge"..Game.Story_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Challenge"..Game.Story_Mode[i]].Value)) then
                       Configs["Challenge"..Game.Story_Mode[i]]:SetValue(nil)
                    end
                end
                for i = 1, #Game.Legend_Stage_Mode do
                    Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValues(list)

                    if Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value ~= nil and not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["LegendStage"..Game.Legend_Stage_Mode[i]].Value)) then
                       Configs["LegendStage"..Game.Legend_Stage_Mode[i]]:SetValue(nil)
                    end
                end
            end
        end
    )
    if passed then
        Loader:Notify({Title = "Successful Delete : "..text..".json", Disable = true, Duration = 5})
    else
        Loader:Notify({Title = "Unsuccessful Delete : "..tostring(error), Disable = true, Duration = 5})
    end
end

function Export_Macro()
    local passed, error = pcall(
        function()
            local link = string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Macro File"].Value)

            if not isfile then
                error("The Excutor doesn't Support isfile", 9)
            elseif not readfile then
                error("The Excutor doesn't Support readfile", 9)
            elseif not isfile(link) then
                error("The file cannot be found", 9)
            else
                local A = readfile(link)
                setclipboard(tostring(A))
            end
        end
    )
    if passed then
        Loader:Notify({Title = "Successful Export : "..Configs["Macro File"].Value..".json Just Copy to Your Clipboard", Disable = true, Duration = 5})
    else
        Loader:Notify({Title = "Unsuccessful Export : "..tostring(error), Disable = true, Duration = 5})
    end
end

function Equip_Macro()
    if not isfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Macro File"].Value)) then
       return Loader:Notify({Title = "Error", SubContent = "The file cannot be found", Duration = 5, Disable = true})
    else
        local XData = game:GetService("HttpService"):JSONDecode(readfile(string.format("Project Spectrum/Anime Vanguards/Macro/".."%s.json", Configs["Macro File"].Value)))
        setmetatable(XData, Macro.Len)

        if #XData == 0 then
            return Loader:Notify({Title = "Error", SubContent = "Record Action First", Disable = true, Duration = 5})
        elseif not XData.Data.Units then
            return Loader:Notify({Title = "Error", SubContent = "Units Data is Invaild"})
        else
            game:GetService("ReplicatedStorage").Networking.Units.EquipEvent:FireServer("UnequipAll")
            for i = 1, #XData.Data.Units do
                for I, V in next, game:GetService("Players").LocalPlayer.PlayerGui.Windows.Units.Holder.Main.Units:GetChildren() do
                    if V:IsA("Frame") and V.Holder.Main.UnitName.Text == XData.Data.Units[i] then
                        game:GetService("ReplicatedStorage").Networking.Units.EquipEvent:FireServer("Equip", V.Name)
                        break
                    end
                end
            end
        end
    end
end

function Update_Lock()
    while true and wait() do
        if Loader.Unloaded then break
        else
            local A, B = Configs, Game.Buttons
            if (A["Import Link"].Value == "" or A["Import Name"].Value == "") and not B.Import.IsLocked then
                B.Import:Lock()
            elseif A["Import Link"].Value ~= "" and A["Import Name"].Value ~= "" and B.Import.IsLocked then
                B.Import:UnLock()
            end
            if A["Macro Record"].Value or A["Macro Play"].Value then
                if not B.Delete.IsLocked then
                    B.Delete:Lock()
                end
                if not B.Create.IsLocked then
                    B.Create:Lock()
                end
                if not B.Export.IsLocked then
                    B.Export:Lock()
                end

                if not A["File Name"].IsLocked then
                    A["File Name"]:Lock()
                end
                if not A["Macro File"].IsLocked then
                    A["Macro File"]:Lock()
                end
                if not A["Record Type"].IsLocked then
                    A["Record Type"]:Lock()
                end

                if A["Macro Play"].Value and not A["Macro Record"].IsLocked then
                   A["Macro Record"]:Lock()
                end
                if A["Macro Record"].Value and not A["Macro Play"].IsLocked then
                   A["Macro Play"]:Lock()
                end

                if A["Macro Record"].Value then
                   Macro.Status = "Recording"
                end
                if A["Macro Play"].Value and not Macro.Ended then
                   Macro.Status = "Playing"
                end
                if A["Macro Play"].Value and Macro.Ended then
                   Macro.Status = "Playing Ended"
                end
            else
                if A["Macro File"].Value == nil and not B.Delete.IsLocked then
                   B.Delete:Lock()
                elseif A["Macro File"].Value ~= nil and B.Delete.IsLocked then
                   B.Delete:UnLock()
                end

                if A["Macro File"].Value == nil and not B.Export.IsLocked then
                    B.Export:Lock()
                elseif A["Macro File"].Value ~= nil and B.Export.IsLocked then
                    B.Export:UnLock()
                end

                if A["File Name"].Value == "" and not B.Create.IsLocked then
                   B.Create:Lock()
                elseif A["File Name"].Value ~= "" and B.Create.IsLocked then
                   B.Create:UnLock()
                end

                if A["File Name"].IsLocked then
                    A["File Name"]:UnLock()
                end
                if A["Macro Play"].IsLocked then
                   A["Macro Play"]:UnLock()
                end
                if A["Macro File"].IsLocked then
                   A["Macro File"]:UnLock()
                end
                if A["Record Type"].IsLocked then
                   A["Record Type"]:UnLock()
                end
                if A["Macro Record"].IsLocked then
                   A["Macro Record"]:UnLock()
                end

                Macro.Status = "None"
            end
        end
    end
end

function Unloaded_Loader()
    while true and wait() do
        if Loader.Unloaded then
            for i = 1,#Game.Signals do
                for i, v in pairs(Game.Signals[i]) do
                    if v then
                        v:Disconnect()
                    end
                end
            end
            for i,v in pairs(Game.Signals) do
                if type(v) == "userdata" then
                    if Game.Signals[v] ~= nil then
                        Game.Signals[v]:Disconnect()
                    end
                end
            end
        end
    end
end

Game.Signals.Notify_Check =
game:GetService("Players").LocalPlayer.PlayerGui.Notification.Main.ChildAdded:Connect(
	function(v)
		local Text = v:WaitForChild("Label").Text

        if Text == "Half Hourly Challenge has been reset!" then
            Game.Challenge_Changed = true
            Game.Cannot_Challenge = false
        elseif Text == "Summon banner has been reset!" then
            Game.Banner_Changed = true
        elseif Text == "Unable to go to next act!" and not Game.Cannot_Next then
            Game.Cannot_Next = true
            Loader:Notify({Title = "Error", SubContent = "Unable to go to next act!"})
        elseif Text:match("cannot be retried!") and not Game.Cannot_Retry then
            Game.Cannot_Retry = true
            Loader:Notify({Title = "Error", SubContent = "This act cannot be retried!"})
        elseif Text:match("You haven't unlocked Story") or Text:match("You have already completed this challenge") then
            Game.Cannot_Challenge = true
        end
	end
)


task.spawn(Update_Lock)
task.spawn(Unloaded_Loader)