local service = "spectrum" --- Change this to your service name 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local PandaAuth = loadstring(game:HttpGet("https://pandadevelopment.net/service_api/PandaBetaLib.lua"))()
local Window = OrionLib:MakeWindow({Name = "Project Spectrum | Key System [By xZPUHigh]", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxthumb://type=Asset&id=15489113836&w=1000&h=1000",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key system loaded !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Section = Tab:AddSection({
	Name = "Validate keys"
})
local function RandomString(length)
    local randomString = ""
    for i = 1, length do
        local randomNumber = math.random(97, 122)
        randomString = randomString .. string.char(randomNumber)
    end
    return tostring(randomString)
end

Tab:AddTextbox({
	Name = "Any key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidateKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	while true do end
	else if PandaAuth:ValidateKey(service, Value) then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key validated !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key not valid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	end
	end	  
	end
})

Tab:AddTextbox({
	Name = "Normal key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidateNormalKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	
	else if PandaAuth:ValidateNormalKey(service, Value) then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is normal !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
if PandaAuth:ValidateKey(service, Value) then 
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is premium, not normal !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is invalid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
wait(1)
LoadScript()
end
	end
	end	  
	end
})

Tab:AddTextbox({
	Name = "Premium key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidatePremiumKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	
	else if PandaAuth:ValidatePremiumKey(service, Value) == true then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is premium !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
wait(1)
LoadScript()
else
if PandaAuth:ValidateKey(service, Value) then 
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is normal, not premium !",
	Image = "rbxthumb://type=Asset&w=768&h=432&id=13797614864",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is invalid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
	end
	end	  
	end
})

local Others = Tab:AddSection({
	Name = "Get Key"
})


Tab:AddButton({
	Name = "Copy get key link",
	Callback = function()
      		setclipboard(PandaAuth:GetLink(service))
      print(PandaAuth:GetLink(service))
  	end    
})

function LoadScript()
loadstring(game:HttpGet("https://raw.githubusercontent.com/x2CPUz/Backup/refs/heads/main/riot.html"))()
Orion:Destroy()
end
