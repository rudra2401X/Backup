local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "db3de8208c084457a8b9d0f3960f0373"
local falseData = "5531b1738a4c45ffbfc5e7d11cb168aa"

KeyGuardLibrary.Set({
  publicToken = "25c5f9d91b7749e48e18bc46096dcad5",
  privateToken = "7dc3dbf84d244d619584181dbd96f573",
  trueData = trueData,
  falseData = falseData,
})

local key = "test"

local getkey = KeyGuardLibrary.getLink()
print(getkey)

local response = KeyGuardLibrary.validateDefaultKey(key)
print(response)

if response == trueData then
  print("Key is valid")
else
  print("Key is invalid")
end

--[[
  KeyGuardLibrary.validateDefaultKey(key) - Validate key
  KeyGuardLibrary.validatePremiumKey(key) - Validate premium key
  KeyGuardLibrary.getService() - Get service
  KeyGuardLibrary.getLink() - Get link
]]
