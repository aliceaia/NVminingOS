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

-- local UGS = UserSettings():GetService'UserGameSettings'
-- UGS.MasterVolume = 0
-- UGS.SavedQualityLevel = 1
for k,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name ~= "RobloxGui" and v.Name ~= "CoreScriptLocalization" and v.Name ~= "TeleportGui" and v.Name ~= "RobloxPromptGui" and
        v.Name ~= "OnRootedListener" and v.Name ~= "CursorContainer" and v.Name ~= "PlayerList" and v.Name ~= "ScreenshotsCarousel" and v.Name ~= "CaptureOverlay" and
        v.Name ~= "RobloxNetworkPauseNotification" and v.Name ~= "ToastNotification" and v.Name ~= "TeleportEffectGui" and v.Name ~= "SocialContextToast" and v.Name ~= "GameInvite" and
        v.Name ~= "PurchasePrompt" and v.Name ~= "PublishAssetPrompt" and v.Name ~= "ThemeProvider" and v.Name ~= "AdsEuDsaPromptHandler" and v.Name ~= "CallDialogScreen" and v.Name ~= "PlayerMenuScreen" and
        v.Name ~= "ContactList" and v.Name ~= "HeadsetDisconnectedDialog" and v.Name ~= "DevConsoleMaster" and v.Name ~= "drawingDirectory" and v.Name ~= "NINONOOB" then
        v.Enabled = false
    end
end
game:GetService("Players").LocalPlayer.PlayerGui.TopbarPlus.Enabled = false
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
-- game:GetService("GuiService").TouchControlsEnabled = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.DynamicTopBar.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.AlliesButton.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.HomeButton.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = false
-- gethui():FindFirstChild("FluxusAndroidUI").Enabled = false
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
local RequestgetInventory = ""
while true do
    if GetCode == "" and game:GetService("Players").LocalPlayer.Data.Level.Value >= 150 then
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("ADMIN_TROLL")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("fudd10_v2")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Fudd10")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("BIGNEWS")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("THEGREATACE")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2GAMERROBOT_EXP1")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2OfficialNoobie")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("StrawHatMaine")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2NOOBMASTER123")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Daigrock")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Axiore")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("TantaiGaming")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("kittgaming")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Fer999")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Enyu_is_Pro")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Magicbus")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("JCWK")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Starcodeheo")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Bluxxy")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2CaptainMaui")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SECRET_ADMIN")
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("NEWTROLL")
        GetCode = "done"
    end
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
	awk = FruitName.. Awake
	RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
	for i, v in pairs(RequestgetInventory) do
		if v["Type"] == "Gun" and sg == "None" then
			if v.Name == "Soul Guitar" then
				sg = v.Name
			end
		elseif v.Type == "Sword" then
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
		elseif v.Type == "Blox Fruit" then
			if v.Name == "Dragon-Dragon" or v.Name == "Leopard-Leopard" or v.Name == "Kitsune-Kitsune" then
				DF = "Yes"
			end
		end
	end
    if melee == "God" and level == 2550 and race == " V3" then
		if sg == "Soul Guitar" or sword ~= "None" or DF ~= "None" or awk == "Dough-Doughv2" then
			for i, v in pairs(RequestgetInventory) do
				if v.Type == "Blox Fruit" then
					if v.Rarity > 3 then
						if DF == "Yes" or DF == "None" then
							DF = v.Name .. " "
						else
							DF = DF .. v.Name .. " "
						end
					end
				elseif v.Type == "Material" and Mirror ~= "Mirror Fractal" then
					if v.Name == "Mirror Fractal" then
						Mirror = "Mirror Fractal"
					end
				elseif v.Type == "Wear" then
					if v.Name == "Valkyrie Helm" and Valkyrie ~= "Valkyrie Helm" then
						Valkyrie = "Valkyrie Helm"
					end
				end
			end

			local Races = game.Players.LocalPlayer.Data.Race.Value .. race
			writefile(upath, level .. " " ..Races.. " " .. melee .. "\t" .. awk.. "\t".. sword.. "\t".. sg.. "\t".. Mirror.. " ".. Valkyrie.. "\t".. DF)
			game:Shutdown()
		end
    end
    task.wait(30)
end
