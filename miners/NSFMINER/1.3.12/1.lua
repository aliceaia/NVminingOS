repeat task.wait() until game:IsLoaded() and game.CoreGui:FindFirstChild('Delta')
-- local Black = true
-- function blackscreen(enable)
    -- local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    -- if not enable then
        -- local sUi = playerGui:FindFirstChild("Blackscreen")
        -- if sUi then sUi:Destroy() end
        -- return
    -- elseif playerGui:FindFirstChild("Blackscreen") then
        -- return
    -- end
    -- local sUi = Instance.new("ScreenGui", playerGui)
    -- sUi.Name = "Blackscreen"
    -- sUi.DisplayOrder = -727

    -- local uiFrame = Instance.new("Frame", sUi)
    -- uiFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    -- uiFrame.Size = UDim2.new(0, 72727, 0, 72727)
    -- uiFrame.Position = UDim2.new(0, 0, -5, 0)
-- end
-- blackscreen(true)
-- local key = game:GetService("UserInputService")
-- key.InputBegan:Connect(
    -- function(input)
        -- if input.KeyCode == Enum.KeyCode.L then
            -- if Black == false then
                -- blackscreen(true)
                -- Black = true
            -- else
                -- blackscreen(false)
                -- Black = false
            -- end
        -- end
    -- end
-- )

_G.Team = "Pirate" -- Marine / Pirate

_G.LogsDes = {
    ["Enabled"] = false, -- เปิดการใช้งาน
    ["SendAlias"] = false, -- เปิดการส่ง Alias
    ["SendDescription"] = false, -- เปิดการส่ง Des
    ["DelaySend"] = 5 -- วินาที
}
_G.WebHook = {
    ["Enabled"] = false, -- เปิดการใช้งาน
    ["Url"] = "", -- ลิ้งค์เว็บฮุก
    ["Delay"] = 60 -- วินาที
}
_G.MainSettings = {
        ["EnabledHOP"] = false, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ['FPSBOOST'] = true, -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 15, -- จำนวน FPS
        ['WhiteScreen'] = false, -- จอขาว
        ['CloseUI'] = false, -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 150, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 50000, -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = { -- ล็อคผลที่ไม่เอาไปลงดัน
            [1] = "Dough-Dough",
            [2] = "Dragon-Dragon",
			[3] = "Kitsune-Kitsune",
			[4] = "Leopard-Leopard"
        }
    }
_G.Fruits_Settings = { -- ตั้งค่าผล
    ['Main_Fruits'] = {"Dough-Dough"}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ['Select_Fruits'] = {"Light-Light", "Dark-Dark", "Flame-Flame", "Quake-Quake", "Rumble-Rumble", "Magma-Magma", "Buddha-Buddha", "Dragon-Dragon", "Leopard-Leopard", "Kitsune-Kitsune"} -- กินหรือซื้อตอนไม่มีผล
}
_G.Quests_Settings = { -- ตั้งค่าเควสหลักๆ
    ['Rainbow_Haki'] = false,
    ["MusketeerHat"] = false,
    ["PullLever"] = false,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }        
}
_G.Races_Settings = { -- ตั้งค่าเผ่า
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = true,
                ["Human"] = true,
                ["Fishman"] = false
            },
            ["RerollsWhenFragments"] = 3000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- หมัดที่จะทำ
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = false,
    ['DevilFruits'] = false,
    ['Select_Swords'] = {
        ["AutoSettings"] = false, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
        ["ManualSettings"] = { -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Saber",
            "Buddy Sword"
        }
    }
}
_G.SwordSettings = { -- ดาบที่จะทำ
    ['Saber'] = false,
    ["Pole"] = false,
    ['MidnightBlade'] = false,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = false,
    ['Rengoku'] = false,
    ['Canvander'] = false,
    ['BuddySword'] = false,
    ['TwinHooks'] = false,
    ['HallowScryte'] = false,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = false
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = false
}

_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = false,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = false
}
local isExecuted = false
task.spawn(function()
	repeat task.wait() until isExecuted == false
    if not game.CoreGui:FindFirstChild('NINONOOB') then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
	else
		loadstring(game:HttpGet("https://raw.githubusercontent.com/aliceaia/NVminingOS/main/miners/NSFMINER/1.3.12/2.lua"))()
		isExecuted = true
    end
end);

-- getgenv().Key = "MARU-8LY9G-0MSC9-CKM9-BB2VD-Z51P"
-- getgenv().id = "1027130540664565830"
getgenv().Key = "MARU-IM0R-IFK1L-LFDO-TFEH8-GCBH"
getgenv().id = "288666180791566346"
-- getgenv().Key = "MARU-V1GD-FVV18-HQ6R-566O3-JTO0"
-- getgenv().id = "1029317109303496735"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
