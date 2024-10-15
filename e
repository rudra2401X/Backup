local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/notify_ui.lua"))()
local SpecialKey = "Toshy Hub" --// will be used to unlock your info
local RNG = math.random(100,1000)
local repo = "https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/"
local FalseKey = math.random(1,1000)

local GRTV = function(...)
    local T = {...}
    return tostring(T)
end

RNG = GRTV(RNG)

local suc,lib = pcall(function()
    local request = request or syn.request
    local library = nil
    if request then
        library = request({Url = repo.."PandaSVALLib.lua", Method = "GET"}).Body
    else
        warn("SWITCHING TO UNSECURED")
        library = game:HttpGet(repo.."PandaSVALLib.lua")
    end

    if library ~= nil then
        return loadstring(library)()
    else
        warn("NOT SUPPORTED EXECUTOR")
    end
end)

local info = setmetatable({
    [RNG] = function(Key)
        if Key == SpecialKey then
            return {
                Service = "toshy",                   -- Your service name
                DisplayName = "Toshy Hub",      -- Display name
                API_Key = "xLc0o7Kl65Ue78jv",             -- Your API key
                IsDebug = false,                           -- Enable debug mode (optional)
                Allow_BlacklistUsers = false,             -- Allow blacklisted users (optional)
                Save_Key = false,                          -- Save the key to the user's data (optional)
                Initialized = false,                       -- Track initialization status (optional)
                DiagnosticLogs = true,                     -- Enable diagnostic logs (optional)
                GUIVersion = false,                        -- Enable new GUI version (optional)
            }
        end
    end
}, {
    __Index = function()
        warn("ERROR [1] Dont Found")
    end
})

-- Frame to Lua
-- Version: 3.2
-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local TextButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = gethui()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(184, 3, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.191516548, 0, 0.183660999, 0)
Frame.Size = UDim2.new(0.616465867, 0, 0.631049335, 0)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(20, 20, 29)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0249483362, 0, 0.0464165136, 0)
Frame_2.Size = UDim2.new(1.04042542, 0, 1.09398484, 0)

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TextBox.BorderColor3 = Color3.fromRGB(74, 71, 71)
TextBox.Position = UDim2.new(0.157464445, 0, 0.384879768, 0)
TextBox.Size = UDim2.new(0.671841919, 0, 0.230402336, 0)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 25.000

UICorner.Parent = TextBox

UIAspectRatioConstraint.Parent = TextBox
UIAspectRatioConstraint.AspectRatio = 4.900

UICorner_2.Parent = Frame_2

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.572690427, 0, 0.754724443, 0)
TextButton.Size = UDim2.new(0.36334303, 0, 0.154369563, 0)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Get Key"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 40.000
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

UIAspectRatioConstraint_2.Parent = TextButton
UIAspectRatioConstraint_2.AspectRatio = 3.955

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 40

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.064208582, 0, 0.754724443, 0)
TextButton_2.Size = UDim2.new(0.36334303, 0, 0.154369563, 0)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "Submit"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 40.000
TextButton_2.TextWrapped = true

UICorner_4.Parent = TextButton_2

UIAspectRatioConstraint_3.Parent = TextButton_2
UIAspectRatioConstraint_3.AspectRatio = 3.955

UITextSizeConstraint_2.Parent = TextButton_2
UITextSizeConstraint_2.MaxTextSize = 40

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.161481246, 0, 0.0639243796, 0)
TextLabel.Size = UDim2.new(0.663615227, 0, 0.284982085, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Toshy Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextWrapped = true

UITextSizeConstraint_3.Parent = TextLabel
UITextSizeConstraint_3.MaxTextSize = 72

UICorner_5.Parent = TextLabel

UIAspectRatioConstraint_4.Parent = TextLabel
UIAspectRatioConstraint_4.AspectRatio = 3.913

TextButton_3.Parent = Frame_2
TextButton_3.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.919061065, 0, 0.0400654525, 0)
TextButton_3.Size = UDim2.new(0.0589575544, 0, 0.0990730077, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 4)
TextButton_3.TextSize = 30.000

UICorner_6.Parent = TextButton_3

UIAspectRatioConstraint_5.Parent = TextButton_3

UIAspectRatioConstraint_6.Parent = Frame_2
UIAspectRatioConstraint_6.AspectRatio = 1.680

UICorner_7.Parent = Frame

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Frame
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.501110137, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

UIAspectRatioConstraint_7.Parent = DropShadowHolder
UIAspectRatioConstraint_7.AspectRatio = 1.767

UIAspectRatioConstraint_8.Parent = Frame
UIAspectRatioConstraint_8.AspectRatio = 1.767

local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

if suc and info and type(info[RNG]) == "function" then
     print("Sucess in starting!")
else
    return warn("EXITING!")
end

local ValidateKey = function()
    local Info = info[RNG](SpecialKey)
    lib:Initialize(Info)
    if lib:ValidateKey(FalseKey) then
        return "Cracking"
    elseif lib:ValidateKey(TextBox.Text) then
        return "Sucess"
    end
end

TextButton_2.MouseButton1Click:Connect(function()
    if ValidateKey() == "Sucess" then
          Notif.New("Valid Key!", 5)
         print("Validated!")
        ScreenGui:Destroy()
            Script()
    elseif ValidateKey == "Cracking" then
        warn("Attempt to crack");while true do end
    else
         print("Invalid Key!")
           Notif.New("Invalid Key!", 5)
    end
  end)

TextButton.MouseButton1Click:Connect(function()
     setclipboard(lib:GetKey())
      Notif.New("Copied, Into Your Browser", 5)
end)

TextButton_3.MouseButton1Click:Connect(function()
     ScreenGui:Destroy()
end)
