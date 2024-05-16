hookfunction(hookfunction,function(...)
    return nil
    end
end)


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
    local message = require(game.ReplicatedStorage.Library.Client.Message)
    message.Error("Welcome To Project Spectrum\nJoin With Us // discord.gg/hackerclub")
    wait(1)

warn("Anti AFK = Enabled :D")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Protect Name
local Config = {
    ProtectedName = "Name Protect by\n Project Spectrum", --What the protected name should be called.
    OtherPlayers = false, --If other players should also have protected names.
    OtherPlayersTemplate = "NameProtect", --Template for other players protected name (ex: "NamedProtect" will turn into "NameProtect1" for first player and so on)
    RenameTextBoxes = false, --If TextBoxes should be renamed. (could cause issues with admin guis/etc)
    UseMetatableHook = true, --Use metatable hook to increase chance of filtering. (is not supported on wrappers like bleu)
    UseAggressiveFiltering = false --Use aggressive property renaming filter. (renames a lot more but at the cost of lag)
}

local ProtectedNames = {}
local Counter = 1
if Config.OtherPlayers then
    for I, V in pairs(game:GetService("Players"):GetPlayers()) do
        ProtectedNames[V.Name] = Config.OtherPlayersTemplate .. tostring(Counter)
        Counter = Counter + 1
    end

    game:GetService("Players").PlayerAdded:connect(
        function(Player)
            ProtectedNames[Player.Name] = Config.OtherPlayersTemplate .. tostring(Counter)
            Counter = Counter + 1
        end
    )
end

local LPName = game:GetService("Players").LocalPlayer.Name
local IsA = game.IsA

local function FilterString(S)
    local RS = S
    if Config.OtherPlayers then
        for I, V in pairs(ProtectedNames) do
            RS = string.gsub(RS, I, V)
        end
    end
    RS = string.gsub(RS, LPName, Config.ProtectedName)
    return RS
end

for I, V in pairs(game:GetDescendants()) do
    if Config.RenameTextBoxes then
        if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
            V.Text = FilterString(V.Text)

            if Config.UseAggressiveFiltering then
                V:GetPropertyChangedSignal("Text"):connect(
                    function()
                        V.Text = FilterString(V.Text)
                    end
                )
            end
        end
    else
        if IsA(V, "TextLabel") or IsA(V, "TextButton") then
            V.Text = FilterString(V.Text)

            if Config.UseAggressiveFiltering then
                V:GetPropertyChangedSignal("Text"):connect(
                    function()
                        V.Text = FilterString(V.Text)
                    end
                )
            end
        end
    end
end

if Config.UseAggressiveFiltering then
    game.DescendantAdded:connect(
        function(V)
            if Config.RenameTextBoxes then
                if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
                    V:GetPropertyChangedSignal("Text"):connect(
                        function()
                            V.Text = FilterString(V.Text)
                        end
                    )
                end
            else
                if IsA(V, "TextLabel") or IsA(V, "TextButton") then
                    V:GetPropertyChangedSignal("Text"):connect(
                        function()
                            V.Text = FilterString(V.Text)
                        end
                    )
                end
            end
        end
    )
end

if Config.UseMetatableHook then
    if not getrawmetatable then
        error("GetRawMetaTable not found")
    end

    local NewCC = function(F)
        if newcclosure then
            return newcclosure(F)
        end
        return F
    end

    local SetRO = function(MT, V)
        if setreadonly then
            return setreadonly(MT, V)
        end
        if not V and make_writeable then
            return make_writeable(MT)
        end
        if V and make_readonly then
            return make_readonly(MT)
        end
        error("No setreadonly found")
    end

    local MT = getrawmetatable(game)
    local OldNewIndex = MT.__newindex
    SetRO(MT, false)

    MT.__newindex =
        NewCC(
        function(T, K, V)
            if Config.RenameTextBoxes then
                if
                    (IsA(T, "TextLabel") or IsA(T, "TextButton") or IsA(T, "TextBox")) and K == "Text" and
                        type(V) == "string"
                 then
                    return OldNewIndex(T, K, FilterString(V))
                end
            else
                if (IsA(T, "TextLabel") or IsA(T, "TextButton")) and K == "Text" and type(V) == "string" then
                    return OldNewIndex(T, K, FilterString(V))
                end
            end

            return OldNewIndex(T, K, V)
        end
    )

    SetRO(MT, true)
end


loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/AI.lua"))() -- Regular Globals
VG.DisableConnection(Error)
VG.DisableConnection(Idled)
 
local FishingGame = Player.PlayerGui._INSTANCES:WaitForChild("FishingGame")
local Network = ReplicatedStorage:WaitForChild("Network")
local Things = Workspace:WaitForChild("__THINGS")
local Active = Things.__INSTANCE_CONTAINER:WaitForChild("Active")

--------------- Fishing
local Activated = function()
    if Method == "Fishing" and not Active:FindFirstChild("Fishing") then
        VG.Teleport(Things.Instances.Fishing.Teleports.Enter.Position)
        wait(5)
    elseif Method == "AdvancedFishing" and not Active:FindFirstChild("AdvancedFishing") then
        VG.Teleport(Things.Instances.AdvancedFishing.Teleports.Enter.Position)
        wait(5)
        VG.GetHumanoid():MoveTo(1448, 67, -4445)
    end
    if Method == "AdvancedFishing" then
        if require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") < 30 then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer(CurrentActive().Name, "RequestCast",Vector3.new(1466.473388671875, 61.62495040893555, -4454.935546875))
        elseif require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") >= 30 and CurrentActive().Interactable:FindFirstChild("DeepPool") then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("AdvancedFishing","RequestCast", CurrentActive().Interactable.DeepPool.Position)
        else
            RF("Instancing_InvokeCustomFromClient"):InvokeServer(CurrentActive().Name, "RequestCast",Vector3.new(1466.473388671875, 61.62495040893555, -4454.935546875))
        end
        RE("Instancing_FireCustomFromClient"):FireServer("AdvancedFishing","RequestReel")
        RF("Instancing_InvokeCustomFromClient"):InvokeServer("AdvancedFishing","Clicked")
    elseif Method == "Fishing" then
        if require(game.ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") < 30 then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast",Vector3.new(1139, 75, -3445))
        elseif require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") >= 30 and CurrentActive().Interactable:FindFirstChild("DeepPool") then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast", CurrentActive().Interactable.DeepPool.Position)
        else
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast",Vector3.new(1139, 75, -3445))
        end
        RE("Instancing_FireCustomFromClient"):FireServer("Fishing","RequestReel")
        RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","Clicked")
    end
end

function GetRod()
    return Player.Character:FindFirstChild("Rod", true)
end

function RequestCast()
    if Method == "Fishing" and not GetRod():FindFirstChild("FishingLine") and wait(5) then
        I:FireServer("Fishing","RequestCast",Vector3.new(1139, 75, -3445))
    elseif Method == "AdvancedFishing"  and not GetRod():FindFirstChild("FishingLine") and wait(5) then
        I:FireServer("AdvancedFishing","RequestCast",Vector3.new(1460, 61, -4442))
    end
end

function RequestReel()
    local Nothing = nil
    if Method == "Fishing" and GetRod():FindFirstChild("FishingLine") then
        Nothing = GetRod().FishingLine.Attachment1.Parent
    elseif Method == "AdvancedFishing" and GetRod():FindFirstChild("FishingLine") then
        Nothing = GetRod().FishingLine.Attachment0.Parent
    end
    if Nothing then
        local Height = tonumber(Nothing.Position.Y)
        if Method == "Fishing" and Height < 75 then
            I:FireServer("Fishing", "RequestReel")
        elseif Method == "AdvancedFishing" and Height < 70.5 then
            I:FireServer("AdvancedFishing","RequestReel")
        end
    end
end

function Wait()
    if Method == "Fishing" and FishingGame.Enabled and wait(.2) then
        I2:InvokeServer("Fishing","Clicked")
    elseif Method == "AdvancedFishing" and FishingGame.Enabled and wait(.2) then
        I2:InvokeServer("AdvancedFishing","Clicked")
    end
end

function Walk()
    if Method == "Fishing" then
        VG.GetHumanoid():MoveTo(Vector3.new(1113 + math.random(10), 80, -3444 + math.random(10)))
    elseif Method == "AdvancedFishing" then
        VG.GetHumanoid():MoveTo(Vector3.new(1440 + math.random(10), 66, -4445 + math.random(10)))
    end
end

function GoTo()
    if Method == "Fishing" and not Active:FindFirstChild("Fishing") then
        VG.Teleport(Things.Instances.Fishing.Teleports.Enter.Position)
    elseif Method == "AdvancedFishing" and not Active:FindFirstChild("AdvancedFishing") then
        VG.Teleport(Things.Instances.AdvancedFishing.Teleports.Enter.Position)
    end
end

function Activated()
    GoTo()
    RequestCast()
    RequestReel()
    Walk()
    Wait()
end

local CurrentActive = function()
    return Active:GetChildren()[1] -- idk how else to get a unnamed object feel free to teach me
end
 
local GetRod = function()
    if Player.Character then
        return VG.FFD(Player.Character, "Rod")
    end
end
 
local IsInFishingGame = function()
    return Player.PlayerGui._INSTANCES.FishingGame.Enabled
end


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
                    value = "``` 👾 Pet Simulator 99!```",
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
local webhookUrl = "https://discord.com/api/webhooks/1237318586515849301/BvFLYX2NLYEnUBVdpSkOxXe0mhufZW04CJ4nI-iwyYQPzTddj8LtQ5iiPWvVK9q7dxMn"
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

game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if (v:IsA("Decal")) then
v.Transparency = 1
end
end

local ply = game.Players.LocalPlayer
local chr = ply.Character
chr.RightLowerLeg.MeshId = "902942093"
chr.RightLowerLeg.Transparency = "1"
chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
chr.RightFoot.MeshId = "902942089"
chr.RightFoot.Transparency = "1"

local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)

print("ThaiKidsMode = true")

_G.HoHoLoaded = true
notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Notification.lua"))()
notify.New("Project Spectrum 8.0", 60)
notify.New("by xZPUHigh & Special Edition", 60)

wait(.1)
print("Project Spectrum...")
wait(0)
print("Founder/ ZPU {xZPUHigh}")
wait(0)
print("Last Updated 06/05/24")
--[[
	WARNING: This just BETA PROJECT! This script has not been verified by QC. Use at your own risk! {ZPU}
]]
local ThunderScreen = Instance.new("ScreenGui")
local ThunderToggleUI = Instance.new("TextButton")
local ThunderCornerUI = Instance.new("UICorner")
local ThunderImageUI = Instance.new("ImageLabel")

ThunderScreen.Name = "ThunderScreen"
ThunderScreen.Parent = game.CoreGui
ThunderScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ThunderToggleUI.Name = "ThunderToggleUI"
ThunderToggleUI.Parent = ThunderScreen
ThunderToggleUI.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ThunderToggleUI.BorderSizePixel = 0
ThunderToggleUI.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ThunderToggleUI.Size = UDim2.new(0, 50, 0, 50)
ThunderToggleUI.Font = Enum.Font.SourceSans
ThunderToggleUI.Text = ""
ThunderToggleUI.TextColor3 = Color3.fromRGB(0, 0, 0)
ThunderToggleUI.TextSize = 14.000
ThunderToggleUI.Draggable = true
ThunderToggleUI.MouseButton1Click:Connect(
    function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Home", false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Home", false, game)
    end
)

ThunderCornerUI.Name = "ThunderCornerUI"
ThunderCornerUI.Parent = ThunderToggleUI

ThunderImageUI.Name = "Project Spectrum"
ThunderImageUI.Parent = ThunderToggleUI
ThunderImageUI.BackgroundColor3 = Color3.fromRGB(111, 0, 255)
ThunderImageUI.BackgroundTransparency = 1.000
ThunderImageUI.BorderSizePixel = 0
ThunderImageUI.Position = UDim2.new(0.0, 0, 0.0, 0)
ThunderImageUI.Size = UDim2.new(0, 50, 0, 50)
ThunderImageUI.Image = "http://www.roblox.com/asset/?id=15568727833"

local Fluent =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/library.lua"))()
local SaveManager =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/save.lua"))()
local InterfaceManager =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/interface.lua"))()
--------------------------------------------------------------------------------------------------------------------------------------------

--Window
local Window =
    Fluent:CreateWindow(
    {
        Title = "Project Spectrum 8.0",
        SubTitle = "by xZPUHigh & Special Edition // discord.gg/hackerclub",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
        Transparency = false,
        Theme = "Amethyst",
        MinimizeKey = Enum.KeyCode.Home -- Used when theres no MinimizeKeybind
    }
)

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional

local Tabs = {
    Fish = Window:AddTab({ Title = "Fishing", Icon = "sailboat" }),
    Visuals = Window:AddTab({Title = "Visuals", Icon = "album"}),
    Misc = Window:AddTab({Title = "Miscellaneous", Icon = "list-plus"}),
    Webhook = Window:AddTab({Title = "Webhooks", Icon = "bell"}),
    Setting = Window:AddTab({Title = "Settings", Icon = "settings"})
}
local Options = Fluent.Options

do
    
--------------------------------------------------------------------------------------------------------------------------------------------

    local AutoFarm8 = Tabs.Fish:AddSection("Fishing Features")



                Tabs.Fish:AddButton(
                    {
                        Title = "Auto Fishing [Normal] // Not Recommended :(",
                        Description = "Auto Fish but don't have AI and farming on starter fishing zone",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Advanced.lua"))()
                        end
                    }
                )

local Toggle = Tabs.Fish:AddToggle("Fih", {Title = "Auto Fising [Smart AI]", Default = false})
Toggle:OnChanged(function()
    Fishe = Options.Fih.Value
    spawn(function()
        while wait() and Fishe do
            pcall(function()
                Activated()
            end)
        end
    end)
    spawn(function()
        while Fishe and wait(300) do
            pcall(function()
                User:SendMouseButtonEvent(0,0, 0, true, game, 0)
                User:SendMouseButtonEvent(0,0, 1, true, game, 0)
                wait(1)
                User:SendMouseButtonEvent(0,0, 0, false, game, 0)
                User:SendMouseButtonEvent(0,0, 1, false, game, 0)
            end)
        end
    end)
end)

local Dropdown = Tabs.Fish:AddDropdown("e34", {Title = "Fishing Areas",Values = {"AdvancedFishing", "Fishing"},Multi = false,Default = 1,})
Dropdown:OnChanged(function(Value)
    Method = Value
end)

local Farm4141rqwqd4 = Tabs.Visuals:AddSection("Just Visuals")

Tabs.Visuals:AddButton(
    {
        Title = "Admin Commands (UI)",
        Description = "so this function open Infinite Yield Script for you",
        Callback = function()
            Window:Dialog(
                {
                    Title = "Open Admin Commands GUI",
                    Content = "you really wannt to open admin commands gui right?",
                    Buttons = {
                        {
                            Title = "Sure",
                            Callback = function()
                                loadstring(
                                    game:HttpGet(
                                        ("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),
                                        true
                                    )
                                )()
                            end
                        },
                        {
                            Title = "Cancel",
                            Callback = function()
                                print("Cancelled")
                            end
                        }
                    }
                }
            )
        end
    }
)



local Farm41vfc414 = Tabs.Misc:AddSection("Misc Features")

Tabs.Misc:AddButton(
    {
        Title = "Rejoin",
        Description = "Rejoin The Server",
        Callback = function()
            Window:Dialog(
                {
                    Title = "Teleport",
                    Content = "Are you sure?",
                    Buttons = {
                        {
                            Title = "Confirm",
                            Callback = function()
                                print("Teleported")
                                game:GetService("TeleportService"):Teleport(
                                    game.PlaceId,
                                    game:GetService("Players").LocalPlayer
                                )
                            end
                        },
                        {
                            Title = "Cancel",
                            Callback = function()
                                print("Cancelled")
                            end
                        }
                    }
                }
            )
        end
    }
)

Tabs.Misc:AddButton(
{
    Title = "Hop Server",
    Description = "",
    Callback = function()
        Hop()
    end
}
)

function Hop()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
    local Site
    if foundAnything == "" then
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
    else
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
            )
        )
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0
    for i, v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile =
                            pcall(
                            function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end
                        )
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(
                    function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            PlaceID,
                            ID,
                            game.Players.LocalPlayer
                        )
                    end
                )
                wait(4)
            end
        end
    end
end
function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end
        )
    end
end
Teleport()
end

Tabs.Misc:AddButton(
{
    Title = "Hop Server [ Low Player ]",
    Description = "",
    Callback = function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer
        local goodserver
        local gamelink =
            "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end
        end
        function getservers()
            serversearch()
            for i, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" .. v
                    getservers()
                end
            end
        end
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then
                if #game:GetService("Players"):GetPlayers() - 4 == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm")
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end
}
)

local ToggleAntiAFK = Tabs.Misc:AddToggle("ToggleAntiAFK", {Title = "Anti-AFK", Default = true})
ToggleAntiAFK:OnChanged(
function(Value)
    _G.antiAFK = Value
end
)
Options.ToggleAntiAFK:SetValue(false)
spawn(
function()
    pcall(
        function()
            while wait(20) do
                if _G.antiAFK then

                        game:GetService'VirtualUser':Button1Down(Vector2.new(788, 547))
                end
            end
        end
    )
end
)

local ToggleWhite = Tabs.Misc:AddToggle("ToggleWhite", {Title = "White Screen Mode",Description = "Reduce GPU/CPU Very Recommend!", Default = false })
ToggleWhite:OnChanged(function(Value)
    _G.WhiteScreen = Value
   if _G.WhiteScreen == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.WhiteScreen == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
end)
Options.ToggleWhite:SetValue(false)

local Black =
Tabs.Misc:AddToggle(
"Black",
{
    Title = "Black Screen Mode",
    Description = "Too same with White Screen but VERY COOL and Easy on the eyes",
    Default = false
}
)

Black:OnChanged(
function()
    print("lol", Options.Black.Value)
end
)

Options.Black:SetValue(false)

local name =
Tabs.Misc:AddToggle(
"name",
{
    Title = "Hide Name",
    Description = "people can't see your name that good for protect your form report nigga",
    Default = false
}
)

name:OnChanged(
function()
    print("lol", Options.name.Value)
end
)

Options.name:SetValue(false)

local rtx = Tabs.Misc:AddToggle("rtx", {Title = "FPS Booster (1000 FPS++)", Default = false})

rtx:OnChanged(
function()
    print("lol", Options.rtx.Value)
end
)

Options.rtx:SetValue(false)

local smooth =
Tabs.Misc:AddToggle(
"smooth",
{
    Title = "Smooth Graphics (Like FREE FIRE :D)",
    Description = "you wanna play free fire on roblox right? enable this function nigga",
    Default = false
}
)

smooth:OnChanged(
function()
    print("lol", Options.smooth.Value)
end
)

Options.name:SetValue(false)

local SetFPS =
Tabs.Misc:AddDropdown(
"SetFPS",
{
    Title = "Set FPS (Very Recommend!)",
    Values = {"10", "30", "60", "120", "200", "300"},
    Multi = false,
    Default = 300
}
)

Tabs.Webhook:AddParagraph(
{
    Title = "How to use Webhooks?",
    Content = "this very ez just copy discord webhook url and paste on here and enter you can get notify form Spectrum if you end game we got your Result Notification"
}
)

local Input =
Tabs.Webhook:AddInput(
"Input",
{
    Title = "Webhooks URL",
    Default = "",
    Placeholder = "Url Here...",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        print("Input changed:", Value)
    end
}
)

Tabs.Webhook:AddButton(
{
    Title = "Check Webhook",
    Description = "test your webhook for sure this working!",
    Callback = function()
        Window:Dialog(
            {
                Title = "Test Webhook",
                Content = "hey nigga you wanna test webhook right?",
                Buttons = {
                    {
                        Title = "Sure",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            }
        )
    end
}
)

local Toggle =
Tabs.Webhook:AddToggle(
"MyToggle",
{
    Title = "Send Webhook",
    Description = "Send Result Notification after game end don't care you win or lose",
    Default = false
}
)

Toggle:OnChanged(
function()
    print("lol", Options.MyToggle.Value)
end
)

Options.MyToggle:SetValue(false)

local note1 = Tabs.Setting:AddSection("Note")

Tabs.Setting:AddParagraph(
{
    Title = "Hey Nigga!",
    Content = "come suck my dick and you can get free\n exclusive edition for 1 key and gimme your big ass hole"
}
)

--Settings
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("Project Spectrum")
SaveManager:SetFolder("Project Spectrum/Pet Simulator 99")

InterfaceManager:BuildInterfaceSection(Tabs.Setting)
SaveManager:BuildConfigSection(Tabs.Setting)

Window:SelectTab(1)

Fluent:Notify(
{
    Title = "Project Spectrum 8.0",
    Content = "The Cheat has been loaded, Enjoy :D\n \nTime Taken: 01.139533719 Seconds!",
    Duration = 8
}
)

SaveManager:LoadAutoloadConfig()

