-- repeat task.wait() until game:IsLoaded()
-- setfpscap(15)
--task.wait(15)
-- local white = true
-- local key = game:GetService("UserInputService")
-- local RunService = game:GetService("RunService")
-- RunService:Set3dRenderingEnabled(false)
-- key.InputBegan:Connect(
    -- function(input)
        -- if input.KeyCode == Enum.KeyCode.L then
            -- if white == false then
                -- RunService:Set3dRenderingEnabled(false)
                -- white = true
            -- else
                -- RunService:Set3dRenderingEnabled(true)
                -- white = false
            -- end
        -- end
    -- end
-- )
repeat task.wait() until game.CoreGui:FindFirstChild('NINONOOB')
task.wait(5)
game.CoreGui:FindFirstChild('NINONOOB').Enabled = false
local key = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
key.InputBegan:Connect(
    function(input)
        if input.KeyCode == Enum.KeyCode.F4 then
            if game.CoreGui:FindFirstChild('NINONOOB').Enabled == false then
                game.CoreGui:FindFirstChild('NINONOOB').Enabled = true
            else
                game.CoreGui:FindFirstChild('NINONOOB').Enabled = false
            end
        end
    end
)

local Player = game:GetService("Players").LocalPlayer.Name
local UID = game:GetService("Players").LocalPlayer.UserId
local sea
local melee = ""
local sword = "None"
local sg = "None"
local FruitName = "None"
local DF = "None"
local Awake = ""
local Valkyrie = "None"
local Mirror = "None"
local Leo = ""
local uname = Player .. ".txt"
if not isfolder("mrm") then
    makefolder("mrm")
end
upath = "mrm\/" .. uname
local race = " V1"
local vrace = ""
local GetCode = ""

while true do
    if melee ~= "God" then
		if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") then
			if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman").Level.Value >= 350 then
				melee = "God"
			end
		elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman").Level.Value >= 350 then
				melee = "God"
			end
		end
    end
    local level = game:GetService("Players").LocalPlayer.Data.Level.Value
    if race ~= " V3" then
        if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
            race = " V4"
        elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("Wenlocktoad", "1") == -2 then
            race = " V3"
        elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("Alchemist", "1") == -2 then
            race = " V2"
        end
    end
    if melee == "God" and level == 2550 and race == " V3" then
		RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
        for i, v in pairs(RequestgetInventory) do
            if v.Type == "Sword" then
                if v.Name == "Cursed Dual Katana" then
					if sword == "None" then
						sword = v.Name
					else	
						sword = sword.. " ".. v.Name
					end
                end
				if v.Name == "Shark Anchor" then
					if sword == "None" then
						sword = v.Name
					else	
						sword = sword.. " ".. v.Name
					end
				end	
            elseif v["Type"] == "Gun" then
                if v.Name == "Soul Guitar"then
                    sg = "Soul Guitar"
                end
			elseif v.Type == "Blox Fruit" then
                if v.Rarity > 3 then
                    if DF == "None" then
                        DF = v.Name .. " "
                    else
                        DF = DF .. v.Name .. " "
                    end
                end
            elseif v.Type == "Material" then
                if v.Name == "Mirror Fractal" then
                    Mirror = "Mirror Fractal"
                end
            elseif v.Type == "Wear" then
                if v.Name == "Valkyrie Helm" then
                    Valkyrie = "Valkyrie Helm"
                end
            end
        end

        FruitName = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
        -- for _i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        -- if v:IsA("Tool") then
        -- if v.ToolTip == "Blox Fruit" then
        -- FruitName = v.Name
        -- end
        -- end
        -- end
        r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
        if r then
            for i, v in pairs(r) do
                if v["Awakened"] then
                    Awake = "v2"
                end
            end
        end
        local Races = game.Players.LocalPlayer.Data.Race.Value .. race
        writefile(upath, level .. " " ..Races.. " " .. melee .. "\t" .. FruitName.. Awake.. "\t".. sword.. "\t".. sg.. "\t".. Mirror.. " ".. Valkyrie.. "\t".. DF)
        game:Shutdown()
    end
    task.wait(30)	
end
