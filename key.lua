-- TODO: Please read the comments
-- ************************************
-- (08/04/2024 VAL Library)
-- ************************************
-- Variables
local ServiceIdentifier = "spectrum" or "(__YourServiceIdentifier__)"
local ServiceName = "Project Spectrum" or "(__YourServiceName__)"
local APIToken = "spectrum" or "(__YourAPIToken__)"
local KeyPrefix = "spectrum" or "(__YourKeyPrefix__)"
local KeyDirectory = "spectrum" or "(__YourKeyDirectory__)"

local PandaAuth = loadstring(game:HttpGet("https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/VAL", true))()

local InternalTable = { -- // Change
	Service = ("%s"):format(ServiceIdentifier);
	APIToken = ("%s"):format(APIToken);
	VigenereKey = tostring({}) .. tostring(function() end) .. tostring(workspace["GetServerTimeNow" .. ("\0"):rep(math.random(2, 32))](workspace) + math.random(os.clock(), 999999999 or os.time())) .. ("\0"):rep(math.random(2, 32) % os.time() + os.clock());
	TrueEndpoint = tostring({}) .. tostring(function() end) .. tostring(workspace["GetServerTimeNow" .. ("\0"):rep(math.random(2, 32))](workspace) + math.random(os.clock(), 999999999 or os.time())) .. ("\0"):rep(math.random(2, 32) % os.time() + os.clock());
	FalseEndpoint = tostring({}) .. tostring(function() end) .. tostring(workspace["GetServerTimeNow" .. ("\0"):rep(math.random(2, 32))](workspace) + math.random(os.clock(), 999999999 or os.time())) .. ("\0"):rep(math.random(2, 32) % os.time() + os.clock());
	KickWebhook = nil;
	ValidWebhook = "https://discord.com/api/webhooks/1288554139948945438/GpMI7g0ke2riDXtIlDUi2pedGwhE3XkM-wk9M2r7Tlx7f2kj5Jx45Q9NxjZyZNS48ic6";
	InvalidWebhook = "https://discord.com/api/webhooks/1288554139948945438/GpMI7g0ke2riDXtIlDUi2pedGwhE3XkM-wk9M2r7Tlx7f2kj5Jx45Q9NxjZyZNS48ic6";
    Debug = false;
}

local Internal = setmetatable({}, {
	__index = function(self, key)
		return rawget(InternalTable, key)
	end;
	__newindex = function(self, key, value)
		while true do end; repeat until false; print(debug.traceback()) return
	end;
	__tostring = function(self)
		while true do end; repeat until false; print(debug.traceback()) return
	end;
})

local HeavyClonefunction = function(closure)
	local clonefunction = clonefunction or function(closure) return closure end

	local newclosures = {
		clonefunction(closure);
	}

	local len

	for i = 1, math.random(8, 16) + Random.new():NextInteger(16, 32) do
		local newLen = ((workspace["GetServerTimeNow" .. ("\0"):rep(math.random(2, 32))](workspace) + math.random(os.clock(), 999999999 or os.time())) / (math.random(8, 16) + Random.new():NextInteger(16, 32) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(32, 64) + Random.new():NextInteger(64, 128) + math.random(128, 256) + Random.new():NextInteger(256, 512) + math.random(512, 1024) + Random.new():NextInteger(1024, 2048) * 4)) / (math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16))
		
		if newLen == len then
			while true do end print(debug.traceback()) return
		end
		
		len = newLen
	end

	for i = 1, len do
		local _ = ((workspace["GetServerTimeNow" .. ("\0"):rep(math.random(2, 32))](workspace) + math.random(os.clock(), 999999999 or os.time())) / (math.random(8, 16) + Random.new():NextInteger(16, 32) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(32, 64) + Random.new():NextInteger(64, 128) + math.random(128, 256) + Random.new():NextInteger(256, 512) + math.random(512, 1024) + Random.new():NextInteger(1024, 2048) * 4)) / (math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16) + math.random(4, 8) + Random.new():NextInteger(8, 16))
		_ = math.random(1, #newclosures)

		local fetchIndex = math.random(1, #newclosures)
		
		newclosures[#newclosures + 1] = newclosures[fetchIndex] or clonefunction(closure)

		_ = math.random(1, #newclosures)
	end

	local fetchIndex = math.random(1, #newclosures)

	return newclosures[fetchIndex]
end

-- Up to you whether it's hard coded or stored in a server like github
-- The levels are how risky it is to use (also defines how vulnerable it is to attacks/spoofs)
local PreWhitelist = { 
	{
		Mode = PandaAuth.Enum.PreWhitelist.HWID; -- Modes: UserId, HWID, and Key -- [BEWARE: Shareable Vuln Risk Lv. 3]
		List = {
			--"0fa7f509fd795206d6aaa217eca834eb20acdaf266ed9778ef496577ff8a8d58";
		};
	};
	{
		Mode = PandaAuth.Enum.PreWhitelist.UserId; -- Modes: UserId, HWID, and Key -- [BEWARE: Shareable Vuln Risk Lv. 2]
		List = {
			--"6224976744";
		};
	};
	{
		Mode = PandaAuth.Enum.PreWhitelist.Key; -- Modes: UserId, HWID, and Key -- [BEWARE: Shareable Vuln Risk Lv. 5]
		List = {
			--"Infinix_731ac6627f092a5bd2a3d34106447bbacb9532322af15799efc9e64f2e939592";
		};
	};
};

local SetPreWhitelist = HeavyClonefunction(PandaAuth.SetPreWhitelist);
SetPreWhitelist(PandaAuth, PreWhitelist)

local SetInternal = PandaAuth.SetInternal;
PandaAuth:SetInternal(Internal)

-- TODO: Do not change these below unless told
-- Below is the entire validation process meaning you can place it in a button for example submit/validate a key

local Directory = KeyDirectory -- TODO: Your directory here for write/read key

local result = PandaAuth:ValidateKey(isfile(Directory) and readfile(Directory) or ("(Variable or Key to validate here)")) -- TODO: Change this to what you want to validate

local FetchedInternal = PandaAuth:GetInternal()

local Crypt
local SHA256
local SyncTrue

if not (
	result["Pre"] 
	and type(result["ENV"]) == type(getfenv(1)) 
	and result["Raw"] == Internal.TrueEndpoint 
	and PandaAuth.Validated[1] == Internal.TrueEndpoint 
	and PandaAuth.Validated[2] == true
) then
	Crypt = FetchedInternal.Crypt

	SHA256 = Crypt:SHA256(Internal.TrueEndpoint, Internal.VigenereKey, nil, nil)

	SyncTrue = Crypt:EncryptC(SHA256, Internal.VigenereKey, nil)
end

local IteratedTables = {}

local ValueSpoofed; ValueSpoofed = function(val, tbl)
	local ret = nil
	
	for i, v in pairs(tbl) do
		if v == val then
			print(i, v, val)
			
			ret = true 
			
			break
		elseif type(tbl) == "table" and not IteratedTables[tbl] then
			IteratedTables[tbl] = true
			
			ret = ValueSpoofed(val, tbl)
			
			break
		end
	end
	
	table.clear(IteratedTables)
	
	return ret
end

if ValueSpoofed(result["KEY"], {result, SHA256, SyncTrue}) 
or ValueSpoofed(result["Encrypted"], {result}) then
	while true do end do return end
end

if (
	(
		getmetatable(getfenv(PandaAuth.SetInternal)["getrenv\0"])["__newindex"]() == SetInternal 
		and PandaAuth.SetInternal ~= SetInternal 
		and getmetatable(getfenv(select(2, PandaAuth:SetInternal(Internal)))["getrenv\0"])["__newindex"]() == SetInternal 
		and PandaAuth:SetInternal(Internal) == SetInternal
	)
	and (
		getfenv(PandaAuth.ValidateKey)["getrenv\0"][1] == getfenv(PandaAuth.ValidateKey)["getrenv\0"][1]
		and getfenv(PandaAuth.ValidateKey)["getrenv\0"][2]() == getfenv(PandaAuth.ValidateKey)["getrenv\0"][1]
		and getfenv(PandaAuth.ValidateKey)["getrenv\0"][3]() == getfenv(PandaAuth.ValidateKey)["getrenv\0"][1]
		and getfenv(PandaAuth.ValidateKey)["getrenv\0"][3][1] == getfenv(PandaAuth.ValidateKey)["getrenv\0"][1]
		and getfenv(PandaAuth.ValidateKey)["getrenv\0"][4] == getfenv(PandaAuth.ValidateKey)["getrenv\0"][4]
		and (function()
			getfenv(PandaAuth.ValidateKey)["getrenv\0"][3][1] = "nil"

			return true
		end)()
		and getfenv(PandaAuth.ValidateKey)["getrenv\0"][5] == getfenv(PandaAuth.ValidateKey)["getrenv\0"][1]
		and getfenv(getfenv(PandaAuth.ValidateKey)["getrenv\0"][2])["getrenv\0"] == getmetatable(getfenv(PandaAuth.ValidateKey)["getrenv\0"][3])
	)
) then
	if result 
	and (
		(
			result["KEY"] 
			and type(result["ENV"]) == type(getfenv(1)) 
			and result["Raw"] == Internal.TrueEndpoint 
			and result["Encrypted"] == SyncTrue 
			and type(result["Premium"]) == "boolean" 
			and PandaAuth.Validated[1] == Internal.TrueEndpoint 
			and PandaAuth.Validated[2] == true
		)
		or (
			result["Pre"] 
			and type(result["ENV"]) == type(getfenv(1)) 
			and result["Raw"] == Internal.TrueEndpoint 
			and PandaAuth.Validated[1] == Internal.TrueEndpoint 
			and PandaAuth.Validated[2] == true
		)
	) then
		writefile(Directory, result["KEY"])
		
		print("Key is valid:")
		
		print("Is key premium:", result["Premium"] or result["Pre"])

		-- TODO: Your script here after SUCCEEDING validation [SUCCESS: Option 1]
	elseif result
	and result["Raw"] == Internal.FalseEndpoint
	and PandaAuth.Validated[1] == Internal.FalseEndpoint
	and PandaAuth.Validated[2] == false then
		print("Key is invalid.")

		-- TODO: Your script here after FAILING validation [FAILURE: Option 1]

		return false
	else
		while true do end do return end
	end
else
	while true do end do return end
end

--[[
-- Above is the entire validation process meaning you can place it in a button for example submit/validate a key
-- TODO: Do not change these above unless told

-- You can even put a script here below after the validation process because the validation process does a "return false" when it fails
-- TODO: Your script here after SUCCEEDING validation [SUCCESS: Option 2]
--]]
