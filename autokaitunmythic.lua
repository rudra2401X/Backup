
local args = {
    [1] = "ChangeValue",
    [2] = {
        ["Name"] = "MusicVolume",
        ["Value"] = 0
    }
}

game:GetService("ReplicatedStorage").Networking.Settings.SettingsEvent:FireServer(unpack(args))


local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
local notifications = notificationLibrary.new({            
    NotificationLifetime = 999, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});

notifications:BuildNotificationUI();
notifications:Notify("Welcome To Project Spectrum 8.0")
notifications:Notify(" ")
notifications:Notify("by xZPUHigh & Exclusive Edition")
wait(5)

-- Script 1: Memilih Roku
print("Claim Unit Awal")
local function selectRoku()
    local args = {
        [1] = "Select",
        [2] = "Roku"
    }
    game:GetService("ReplicatedStorage").Networking.Units.UnitSelectionEvent:FireServer(unpack(args))
end

-- Script 2: Menghapus Units
local function removeUnits()
    local args = {
        [1] = "Remove",
        [2] = "Units"
    }
    game:GetService("ReplicatedStorage").Networking.AlertEvent:FireServer(unpack(args))
end

-- Menjalankan Script 1 terlebih dahulu
selectRoku()

-- Setelah Script 1 selesai, menjalankan Script 2
removeUnits()
wait(1) -- Memberi waktu sebelum lanjut ke script berikutnya

loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Storage/main/code.lua"))()
wait(1) -- Sesuaikan durasi jika perlu

-- Script 3: SCTutorClaim
--AscensionTutorial, SummonTutorial, EvolveTutorial, StatRerollTutorial, TraitsTutorial, EnemyIndexTutorial, BattlePassTutorial, PlayTutorial, 
print("Claim Tutorial")

-- Fungsi untuk mengirim tutorial event
function sendTutorialEvent(eventType, tutorialCode)
    local args = {
        [1] = eventType,
        [2] = tutorialCode
    }
    game:GetService("ReplicatedStorage").Networking.ClientListeners.TutorialEvent:FireServer(unpack(args))
end

-- Mengirim tutorial dengan event "SaveTutorial"
sendTutorialEvent("SaveTutorial", "AscensionTutorial")
sendTutorialEvent("SaveTutorial", "SummonTutorial")
sendTutorialEvent("SaveTutorial", "EvolveTutorial")
sendTutorialEvent("SaveTutorial", "StatRerollTutorial")
sendTutorialEvent("SaveTutorial", "TraitsTutorial")
sendTutorialEvent("SaveTutorial", "EnemyIndexTutorial")
sendTutorialEvent("SaveTutorial", "BattlePassTutorial")
sendTutorialEvent("SaveTutorial", "PlayTutorial")

-- Mengirim tutorial dengan event "ClaimTutorial"
sendTutorialEvent("ClaimTutorial", "AscensionTutorial")
sendTutorialEvent("ClaimTutorial", "SummonTutorial")
sendTutorialEvent("ClaimTutorial", "EvolveTutorial")
sendTutorialEvent("ClaimTutorial", "StatRerollTutorial")
sendTutorialEvent("ClaimTutorial", "TraitsTutorial")
sendTutorialEvent("ClaimTutorial", "EnemyIndexTutorial")
sendTutorialEvent("ClaimTutorial", "BattlePassTutorial")
sendTutorialEvent("ClaimTutorial", "PlayTutorial")
wait(1)

-- Skip Summon Animation

local args = {
    [1] = "Toggle",
    [2] = "SkipSummonAnimation"
}

game:GetService("ReplicatedStorage").Networking.Settings.SettingsEvent:FireServer(unpack(args))


-- Script 4: GACHA
-- Script 1: Menjalankan Toggle Rare
print("GACHA ON")
local function toggleRare()
    local args = {
        [1] = "Toggle",
        [2] = "Rare"
    }
    game:GetService("ReplicatedStorage").Networking.Settings.SettingsEvent:FireServer(unpack(args))
end


-- Script 2: Menjalankan SummonOne
local function summonOne(times)
    for i = 1, times do
        local args = {
            [1] = "SummonTen",
            [2] = "Special"
        }
        game:GetService("ReplicatedStorage").Networking.Units.SummonEvent:FireServer(unpack(args))
        wait(1) -- Opsional: menambahkan jeda jika diperlukan
    end
end

-- Menjalankan script 1 terlebih dahulu
toggleRare()

-- Setelah script 1 selesai, menjalankan script 2 sebanyak 100 kali
summonOne(999)
wait(1)

-- Script 5: ClaimDaily
for i = 1, 10 do
    -- Menunggu 10 detik sebelum memulai tiap iterasi
    wait(10)
    print("Claim Daily - Iterasi ke-"..i)

    -- Script gabungan yang menjalankan semua perintah secara berurutan

    -- Script 1: Claim Daily Reward untuk setiap index 1 hingga 7
    for j = 1, 7 do
        local args = {
            [1] = "Claim",
            [2] = j
        }
        game:GetService("ReplicatedStorage").Networking.DailyRewardEvent:FireServer(unpack(args))
    end

    -- Script 2: Claim Quest "Summoner"
    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Summoner I"}))

    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Summoner II"}))

    -- Script 3: Claim Quest "Unit Collector"
    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Unit Collector I"}))

    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Unit Collector II"}))

    -- Script 4: Claim Quest "Daily Summoning"
    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Daily Summoning I"}))

    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Daily Summoning II"}))

    -- Script 5: Claim Quest "Weekly Summon"
    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Weekly Summon I"}))

    game:GetService("ReplicatedStorage").Networking.Quests.ClaimQuest:FireServer(unpack({[1] = "Weekly Summon II"}))

    -- Script 7: Claim All Units
    game:GetService("ReplicatedStorage").Networking.Units.CollectionEvent:FireServer(unpack({[1] = "ClaimAll"}))

end
