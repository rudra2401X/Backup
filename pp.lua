local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "bb6b303869cd4763a9bf2e8ba6c7717c"
local falseData = "112fb7589d8b40448a469e7468982873"

KeyGuardLibrary.Set({
  publicToken = "25c5f9d91b7749e48e18bc46096dcad5",
  privateToken = "7dc3dbf84d244d619584181dbd96f573",
  trueData = trueData,
  falseData = falseData,
})

local Fluent = local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Library.lua"))()
local key = ""

local Window = Fluent:CreateWindow({
    Title = "Key System 🔐 | Project Spectrum 8.0",
    SubTitle = "by xZPUHigh & Special Edition",
    TabWidth = 130,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = true, 
    Transparency = false,
    Theme = "Black",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    KeySys = Window:AddTab({ Title = "Key System", Icon = "key" }),
}

local Entkey = Tabs.KeySys:AddInput("Input", {
    Title = "Enter Key",
    Description = "Enter Key Here",
    Default = "",
    Placeholder = "Enter key…",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        key = Value
    end
})

local Checkkey = Tabs.KeySys:AddButton({
    Title = "Check Key",
    Description = "Enter Key before pressing this button",
    Callback = function()
        local response = KeyGuardLibrary.validateDefaultKey(key)
        if response == trueData then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Sober.lua'))()
            wait()
           -- Your code here
        else
           print("Key is invalid")
        end
    end
})

local Getkey = Tabs.KeySys:AddButton({
    Title = "Get Key",
    Description = "Get Key here",
    Callback = function()
       setclipboard(KeyGuardLibrary.getLink())
    end
})

Window:SelectTab(1)
