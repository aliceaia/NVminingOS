repeat task.wait() until game.CoreGui:FindFirstChild('NINONOOB')
if game.CoreGui:FindFirstChild('FluxusAndroidUI') then
	game.CoreGui:FindFirstChild('FluxusAndroidUI').Enabled = false
end
if game.CoreGui:FindFirstChild('Delta') then
	game.CoreGui:FindFirstChild('Delta').Enabled = false
end
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
    level = game:GetService("Players").LocalPlayer.Data.Level.Value
    if level >= 1000 then
		RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
        for i, v in pairs(RequestgetInventory) do
			if v.Type == "Blox Fruit" then
                if v.Rarity > 3 then
                    if DF == "None" then
                        DF = v.Name .. " "
                    else
                        DF = DF .. v.Name .. " "
                    end
                end
            end
        end
        FruitName = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
        r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
        if r then
            for i, v in pairs(r) do
                if v["Awakened"] then
                    Awake = "v2"
                end
            end
        end
        writefile(upath, level .. " " .. melee .. "\t" .. FruitName.. Awake.. "\t".. DF)
        game:Shutdown()
    end
    task.wait(30)	
end
