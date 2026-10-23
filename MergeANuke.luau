local connection
local Dropdown2
game:IsLoaded()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local NukeRemotes = ReplicatedStorage:WaitForChild("NukeRemotes", 15)
local Packages = ReplicatedStorage:WaitForChild("Packages", 10)
local Remotes = Packages:WaitForChild("Remotes", 10)
local Networking = Remotes:WaitForChild("Networking", 10)
local Shared = ReplicatedStorage:WaitForChild("Shared", 10)
local RequestLockBase = NukeRemotes:WaitForChild("RequestLockBase", 10)
local PurchaseUpgrade = NukeRemotes:WaitForChild("PurchaseUpgrade", 10)
Networking:WaitForChild("RE/Pickup/PickUp", 10)
Networking:WaitForChild("RE/Pickup/Drop", 10)
Networking:WaitForChild("RE/Launch/LaunchConfirm", 10)
Networking:WaitForChild("RE/Merge/MergeRequest", 10)
Networking:WaitForChild("RF/AuctionPurchase", 10)
local REBlackMarketAuctionAuctionState = Networking:WaitForChild("RE/BlackMarketAuction/AuctionState", 10)
local RarityData = Shared:WaitForChild("RarityData", 3)
local module = require(RarityData)
for k, v in pairs(module) do
end
local UpgradeConfig = Shared:WaitForChild("UpgradeConfig", 5)
require(UpgradeConfig)
Players.PlayerAdded:Connect(function(player)
	local players2 = Players:GetPlayers()
	local list2 = {}
	for i24, v26 in ipairs(players2) do
		table.insert(list2, v26.Name)
	end
	Dropdown2:Refresh({ MultiOption = false, NewList = list2 })
end)
Players.PlayerRemoving:Connect(function(player2)
	local players3 = Players:GetPlayers()
	local list3 = {}
	for i25, v27 in ipairs(players3) do
		table.insert(list3, v27.Name)
	end
	Dropdown2:Refresh({ MultiOption = false, NewList = list3 })
end)
local players = Players:GetPlayers()
local list = {}
for i, v2 in ipairs(players) do
	table.insert(list, v2.Name)
end
UserInputService.JumpRequest:Connect(function(arg)
end)
Players.LocalPlayer.CharacterAdded:Connect(function(character)
	local Humanoid3 = character:WaitForChild("Humanoid", 5)
	Humanoid3.WalkSpeed = false
end)
Players.LocalPlayer.CharacterAdded:Connect(function(character2)
	local descendants2 = character2:GetDescendants()
	for i26, v28 in ipairs(descendants2) do
	end
	character2.DescendantAdded:Connect(function(descendant2)
	end)
end)
local descendants = Players.LocalPlayer.Character:GetDescendants()
for i2, v3 in ipairs(descendants) do
end
Players.LocalPlayer.Character.DescendantAdded:Connect(function(descendant)
end)
RunService.Stepped:Connect(function(time, deltaTime)
end)
task.spawn(function(...)
	task.wait(0.1)
	task.wait(0.1)
end)
local response = game:HttpGet("https://raw.githubusercontent.com/Eigh8tr/6kSvte6Ci9q8rkBfzdxBDkKj/refs/heads/main/HawkLib.luau")
local result = loadstring(response)()
local HttpService = game:GetService("HttpService")
local Window = result:CreateWindow({
	Config = { FileName = "MergeANuke.json", FolderPath = "Hawk/Settings/" },
	MinimizeMethod = "Button",
	OpenButtonIcon = getcustomasset("Hawk/Assets/HawkLogo.png"),
	ScriptName = "Hawk HUB | Merge A Nuke",
	SizeX = 480,
	SizeY = 259,
	Theme = "Dark",
	CloseButton = function(arg2, arg3)
		result:ToggleUI()
	end
})
local Tab = Window:CreateTab({ Title = "Home", Icon = "rbxassetid://13556188790" })
Tab:CreateLabel({ Title = "Thanks for using Hawk HUB!", Description = "This script is made by Alex" })
Tab:CreatePharagraph({
	Title = "Script Information",
	Lines = {
		"Hawk HUB was originally created at 2023 !",
		"3 years passed, and script was dead .",
		"Now it comes back to life !!!"
	}
})
local Tab2 = Window:CreateTab({ Title = "Auto Merge", Icon = "rbxassetid://87412317685854" })
local Tab3 = Window:CreateTab({ Title = "Auto Attack", Icon = "rbxassetid://81872698913435" })
local Tab4 = Window:CreateTab({ Title = "Auto Auction", Icon = "rbxassetid://79498575790721" })
local Tab5 = Window:CreateTab({ Title = "Movement", Icon = "rbxassetid://102930322246035" })
local Tab6 = Window:CreateTab({ Title = "Utilities", Icon = "rbxassetid://81973586053257" })
local Tab7 = Window:CreateTab({ Title = "Credits", Icon = "rbxassetid://13556192296" })
Tab7:CreateLabel({ Title = "Developers behind Hawk HUB", Description = "" })
Tab7:CreateLine()

--[[
	23.10.2026
]]

local data = {
	matemahirbaz = {
		id = "1355555077330440435",
		username = "matemahirbaz",
		global_name = "! Math",
		display_name = "! Math",
		avatar_url = "https://i.ibb.co/R4byKXWK/image.png",
		badges = {},
		status = "offline",
		activities = {},
		bot = false,
		created_at = "2025-03-29T14:51:55.431Z",
	},
	falpearx = {
		id = "1434630279502368892",
		username = "falpearx",
		global_name = "Alex",
		display_name = "Alex",
		avatar_url = "https://i.ibb.co/Lz1f4sC8/image.png",
		badges = {},
		status = "offline",
		activities = {},
		bot = false,
		created_at = "2025-11-02T19:48:32.775Z",
	},
	elrandom1311 = {
		id = "805080253986242590",
		username = "elrandom1311",
		global_name = "✧ 87ms",
		display_name = "✧ 87ms",
		avatar_url = "https://i.ibb.co/YB1zR6m7/image.png",
		badges = { "HypeSquadOnlineHouse2" },
		status = "offline",
		activities = {},
		bot = false,
		created_at = "2021-01-30T14:21:30.218Z",
	},
	demoinrk = {
		id = "1358162148689445035",
		username = "demoinrk",
		global_name = "Hash",
		display_name = "Hash",
		avatar_url = "https://i.ibb.co/ZRCcHcQ5/image.png",
		badges = {},
		status = "offline",
		activities = {},
		bot = false,
		created_at = "2025-04-05T19:31:29.680Z",
	},
}

for k2, v4 in pairs(data) do
	if not isfolder("Hawk/Assets/Devs") then
		makefolder("Hawk/Assets/Devs")
	end
	if not isfile("Hawk/Assets/Devs/" .. v4.username .. ".png") then
		local response3 = game:HttpGet(v4.avatar_url)
		writefile("Hawk/Assets/Devs/" .. v4.username .. ".png", response3)
	end
	Tab7:CreateImage({
	Title = k2,
	Description = "",
	ImageInfo = {
		ImageDescription = { "Developer of Hawk HUB", "Discord: " .. v4.username },
		ImageId = getcustomasset("Hawk/Assets/Devs/" .. v4.username .. ".png"),
		ImageStrokeColor = Color3.fromRGB(150, 150, 150),
		ImageTitle = v4.display_name
	}
})
end
local Section = Tab2:CreateSection("Merge Systems")
Section:CreateToggle({
	Title = "Fast Merge",
	Description = "Maximum speed — fires merge as fast as server allows.",
	Flag = "RageMerge",
	Status = false,
	Callback = function(state, arg5)
	end
})
Section:CreateToggle({
	Title = "Auto Merge (Safe)",
	Description = "Stable merging with small delays.",
	Flag = "AutoMerge",
	Status = false,
	Callback = function(state, arg7)
	end
})
Section:CreateButton({
	Title = "Merge Once",
	Description = "Perform a single merge of the two lowest-tier nukes.",
	Callback = function(state, arg9)
		task.spawn(function(...)
			local PlayerGui = Players.LocalPlayer:FindFirstChild("PlayerGui")
			local ScreenGui = PlayerGui:FindFirstChild("ScreenGui")
			ScreenGui:FindFirstChild("HoldingFrame")
			local Controllers = ReplicatedStorage:WaitForChild("Controllers", 5)
			local HeldNuke = Controllers:WaitForChild("HeldNuke", 5)
			require(HeldNuke)
			local Bases = workspace:FindFirstChild("Bases")
			local children = Bases:GetChildren()
			for i3, v5 in ipairs(children) do
				local attribute = v5:GetAttribute("OwnerUserId")
				if attribute == Players.LocalPlayer.UserId then
					v5:FindFirstChild("Floor")
					local PlayerGui2 = Players.LocalPlayer:FindFirstChild("PlayerGui")
					local ScreenGui2 = PlayerGui2:FindFirstChild("ScreenGui")
					ScreenGui2:FindFirstChild("HoldingFrame")
					Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				end
			end
		end)
	end
})
local Section2 = Tab2:CreateSection("Auto Upgrades")
Section2:CreateToggle({
	Title = "Auto Buy Tier Upgrade",
	Flag = "TIERUpg",
	Status = false,
	Callback = function(state, arg11)
		if state then
			task.spawn(function(...)
				PurchaseUpgrade:FireServer("TIER")
				task.wait(1.5)
				PurchaseUpgrade:FireServer("TIER")
				task.wait(1.5)
			end)
		end
	end
})
Section2:CreateToggle({
	Title = "Auto Buy Max Spawn",
	Flag = "MAXUpg",
	Status = false,
	Callback = function(state, arg13)
		if state then
			task.spawn(function(...)
				PurchaseUpgrade:FireServer("MAX")
				task.wait(1.5)
				PurchaseUpgrade:FireServer("MAX")
				task.wait(1.5)
			end)
		end
	end
})
Section2:CreateToggle({
	Title = "Auto Buy Lock Upgrade",
	Flag = "LOCKBASEUpg",
	Status = false,
	Callback = function(state, arg15)
		if state then
			task.spawn(function(...)
				PurchaseUpgrade:FireServer("LOCKBASE")
				task.wait(1.5)
				PurchaseUpgrade:FireServer("LOCKBASE")
				task.wait(1.5)
			end)
		end
	end
})
local Section3 = Tab3:CreateSection("Nuke Selection Filter")
local Dropdown = Section3:CreateDropdown({
	Title = "Nuke Tiers to Launch",
	Description = "Select which nuke tiers to use. Leave empty to use ANY HIGHEST TIER available nuke.",
	Flag = "TargetTiersFilter",
	List = {
		"[1] Lil Boomer",
		"[2] Spark Popper",
		"[3] Blast Buddy",
		"[4] Mega Fizzer",
		"[5] Crater Maker",
		"[6] Boom Baron",
		"[7] Shockzilla",
		"[8] Kaboominator",
		"[9] Star Smasher",
		"[10] Galaxy Gobbler",
		"[11] Doom Bringer",
		"[12] Nebula Nuker",
		"[13] Comet Crusher",
		"[14] Quasar Quaker",
		"[15] Void Vaporizer",
		"[16] Cosmic Crumbler",
		"[17] Supernova Slammer",
		"[18] Black Hole Bopper",
		"[19] Reality Ripper",
		"[20] Dimension Demolisher",
		"[21] Infinity Igniter",
		"[22] Omega Obliterator",
		"[23] Universe Unmaker",
		"[24] The Final Fizzle",
		"[25] Apocalypse Architect",
		"[26] Entropy Engine",
		"[27] Singularity Sovereign",
		"[28] The Last Light",
		"[29] Oblivion Maestro",
		"[30] Eternity Ender",
		"[31] The Null Throne",
		"[32] Genesis Undone",
		"[33] The Omega Point",
		"[34] Veilbreaker",
		"[35] Ashen Sovereign",
		"[36] Hollow Star",
		"[37] The Pale Reckoning",
		"[38] Wyrmfall Cataclysm",
		"[39] Stormcrown Eternal",
		"[40] The Sundering Choir",
		"[41] Threadcutter Prime",
		"[42] Final Verse",
		"[43] The Quiet After",
		"[44] Voidheart's Vigil",
		"[45] The Forever Hush",
		"[46] Worldspine Sundered",
		"[47] Echo of the First Dawn",
		"[48] The Unwritten Page",
		"[49] Crown of Cinder Memory",
		"[50] The Last True Word",
		"[51] Beyond the Veil's Veil",
		"[52] The Nameless Hour",
		"[53] Auroric Requiem",
		"[54] The Final Stillness",
		"[55] All That Never Was",
		"[56] Silent Strike",
		"[57] Crownslayer",
		"[58] Time Devourer",
		"[59] Existence Shatterer",
		"[60] Void Eater",
		"[61] Godhammer",
		"[62] Solar Grave",
		"[63] Nova Reaper",
		"[64] The Vanishing",
		"[65] The Big One",
		"[66] Mech",
		"[67] Rising Sun",
		"[68] Voltage",
		"[69] Abduction",
		"[70] Glitch",
		"[71] Sci-fi",
		"[72] Ornate",
		"[73] Voidform",
		"[74] Fossil",
		"[75] Frost Imbued",
		"[76] Arcane",
		"[77] Corrupted Tech",
		"[78] Venom",
		"[79] Mars Rock",
		"[80] Raptor"
	},
	MultiOption = true,
	Callback = function(state, arg17)
	end
})
Section3:CreateButton({
	Title = "Clear Nuke Filter Selections",
	Description = "Clears the selected items in the nuke filter dropdown so it will continue attacks with highest tier rocket again.",
	Callback = function(state, arg19)
		task.spawn(function(...)
			Dropdown:ClearSelections()
		end)
	end
})
local Section4 = Tab3:CreateSection("City Attack (Smart)")
Section4:CreateButton({
	Title = "FIRE ONCE — City",
	Description = "Fire exactly ONE nuke at city buildings once.",
	Callback = function(state, arg21)
		if state then
			task.spawn(function(...)
				local Bases2 = workspace:FindFirstChild("Bases")
				local children2 = Bases2:GetChildren()
				for i4, v6 in ipairs(children2) do
					local attribute2 = v6:GetAttribute("OwnerUserId")
					if attribute2 == Players.LocalPlayer.UserId then
						local Nukes = v6:FindFirstChild("Nukes")
						local children3 = Nukes:GetChildren()
						for i5, v7 in ipairs(children3) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		else
			task.spawn(function(...)
				local Bases3 = workspace:FindFirstChild("Bases")
				local children4 = Bases3:GetChildren()
				for i6, v8 in ipairs(children4) do
					local attribute3 = v8:GetAttribute("OwnerUserId")
					if attribute3 == Players.LocalPlayer.UserId then
						local Nukes2 = v8:FindFirstChild("Nukes")
						local children5 = Nukes2:GetChildren()
						for i7, v9 in ipairs(children5) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		end
	end
})
Section4:CreateToggle({
	Title = "Auto Attack City",
	Flag = "AttackCity",
	Status = false,
	Callback = function(state, arg23)
	end
})
local Section5 = Tab3:CreateSection("Player Attack")
Dropdown2 = Section5:CreateDropdown({
	Title = "Target Player",
	Description = "Updates automatically as players join/leave.",
	Flag = "TargetPlayer",
	List = list,
	MultiOption = false,
	Callback = function(state, arg25)
	end
})
Section5:CreateButton({
	Title = "RAID ONCE — Player",
	Description = "Nukes the selected player's base once.",
	Callback = function(state, arg27)
		if state then
			task.spawn(function(...)
				local Bases4 = workspace:FindFirstChild("Bases")
				local children6 = Bases4:GetChildren()
				for i8, v10 in ipairs(children6) do
					local attribute4 = v10:GetAttribute("OwnerUserId")
					if attribute4 == Players.LocalPlayer.UserId then
						local Nukes3 = v10:FindFirstChild("Nukes")
						local children7 = Nukes3:GetChildren()
						for i9, v11 in ipairs(children7) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		else
			task.spawn(function(...)
				local Bases5 = workspace:FindFirstChild("Bases")
				local children8 = Bases5:GetChildren()
				for i10, v12 in ipairs(children8) do
					local attribute5 = v12:GetAttribute("OwnerUserId")
					if attribute5 == Players.LocalPlayer.UserId then
						local Nukes4 = v12:FindFirstChild("Nukes")
						local children9 = Nukes4:GetChildren()
						for i11, v13 in ipairs(children9) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		end
	end
})
Section5:CreateToggle({
	Title = "Auto Raid Player",
	Flag = "AttackPlayer",
	Status = false,
	Callback = function(state, arg29)
	end
})
local Section6 = Tab3:CreateSection("Rarity Filter  •  6 tiers loaded")
Section6:CreateLabel({
	Title = "Commander Rarity Filter",
	Description = "Select rarities to target. (Leave empty to target HIGHEST rarity commander if its available on the map.)"
})
Section6:CreateDropdown({
	Title = "Select Target Rarities",
	Flag = "CommanderRarities",
	List = { "Common", "Rare", "Epic", "Legendary", "Admiral", "Limited" },
	MultiOption = true,
	Callback = function(state, arg31)
	end
})
local Section7 = Tab3:CreateSection("Commander Nuke Strike")
Section7:CreateButton({
	Title = "FIRE ONCE",
	Description = "Fire exactly ONE nuke at a matching commander.",
	Callback = function(state, arg33)
		if state then
			task.spawn(function(...)
				local Bases6 = workspace:FindFirstChild("Bases")
				local children10 = Bases6:GetChildren()
				for i12, v14 in ipairs(children10) do
					local attribute6 = v14:GetAttribute("OwnerUserId")
					if attribute6 == Players.LocalPlayer.UserId then
						local Nukes5 = v14:FindFirstChild("Nukes")
						local children11 = Nukes5:GetChildren()
						for i13, v15 in ipairs(children11) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		else
			task.spawn(function(...)
				local Bases7 = workspace:FindFirstChild("Bases")
				local children12 = Bases7:GetChildren()
				for i14, v16 in ipairs(children12) do
					local attribute7 = v16:GetAttribute("OwnerUserId")
					if attribute7 == Players.LocalPlayer.UserId then
						local Nukes6 = v16:FindFirstChild("Nukes")
						local children13 = Nukes6:GetChildren()
						for i15, v17 in ipairs(children13) do
						end
						warn("[HawkHub] No available nukes!")
					end
				end
			end)
		end
	end
})
Section7:CreateToggle({
	Title = "Auto Attack Commanders",
	Description = "Auto-nukes commanders on every cycle.",
	Flag = "AutoCommanders",
	Status = false,
	Callback = function(state, arg35)
	end
})
local Section8 = Tab4:CreateSection("Black Market")
Section8:CreateLabel({
	Title = "Caution",
	Description = "Untested feature. Proceed only if you have funds to spare. Use at your own risk."
})
Section8:CreateToggle({
	Title = "Lightning Fast Auction",
	Description = "Instantly snipes auction items with maximum speed.",
	Flag = "AutoAuctionSniper",
	Status = false,
	Callback = function(state, arg37)
		if state then
			connection = REBlackMarketAuctionAuctionState.OnClientEvent:Connect(function(arg38)
			end)
		else
			connection:Disconnect()
		end
	end
})
local Section9 = Tab5:CreateSection("Movement Options")
Section9:CreateToggle({
	Title = "Infinite Jump",
	Flag = "InfJump",
	Status = false,
	Callback = function(state, arg40)
	end
})
Section9:CreateSlider({
	Title = "Walk Speed",
	CurrentValue = 16,
	Flag = "WalkSpeed",
	MaxValue = 250,
	MinValue = 16,
	Callback = function(state, arg42)
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	end
})
Section9:CreateToggle({
	Title = "Noclip",
	Description = "Walk through all parts and walls.",
	Flag = "Noclip",
	Status = false,
	Callback = function(state, arg44)
	end
})
local Section10 = Tab5:CreateSection("Anti Rocket Cam")
Section10:CreateToggle({
	Title = "Anti Rocket Cam",
	Description = "Prevents LaunchCamera from stealing your view on every nuke fire kinda working.",
	Flag = "AntiRocketCam",
	Status = false,
	Callback = function(state, arg46)
		if state then
			hookmetamethod(workspace.CurrentCamera, "__newindex", function(arg47, arg48)
			end)
			RunService:BindToRenderStep("__HawkHubAntiCam", 11999, function(arg49, arg50)
			end)
			local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			workspace.CurrentCamera.CameraSubject = Humanoid
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			workspace.CurrentCamera.CFrame = CFrame.lookAt(((HumanoidRootPart.Position + ((-HumanoidRootPart.CFrame.LookVector) * 12)) + Vector3.new(0, 5, 0)), (HumanoidRootPart.Position + Vector3.new(0, 2.5, 0)))
			print("[HawkHub] Anti Rocket Cam ON  [hookmetamethod + renderStep(Last+9999)]")
		else
			RunService:UnbindFromRenderStep("__HawkHubAntiCam")
			hookmetamethod(workspace.CurrentCamera, "__newindex", function(arg51, arg52)
			end)
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			local Humanoid2 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid2
			print("[HawkHub] Anti Rocket Cam OFF")
		end
	end
})
local Section11 = Tab6:CreateSection("Base Utilities")
Section11:CreateToggle({
	Title = "Auto Lock Base",
	Description = "Auto target/lock",
	Flag = "AutoLocked",
	Status = false,
	Callback = function(state, arg54)
		if state then
			task.spawn(function(...)
				task.wait(1)
				RequestLockBase:FireServer()
				task.wait(1)
			end)
		end
	end
})
Section11:CreateButton({
	Title = "Lock Base",
	Callback = function(state, arg56)
		RequestLockBase:FireServer()
	end
})
Section11:CreateButton({
	Title = "Force Drop (Clear Hand)",
	Callback = function(state, arg58)
		if state then
			task.spawn(function(...)
				local PlayerGui3 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local ScreenGui3 = PlayerGui3:FindFirstChild("ScreenGui")
				ScreenGui3:FindFirstChild("HoldingFrame")
				local Bases8 = workspace:FindFirstChild("Bases")
				local children14 = Bases8:GetChildren()
				for i16, v18 in ipairs(children14) do
					local attribute8 = v18:GetAttribute("OwnerUserId")
					if attribute8 == Players.LocalPlayer.UserId then
						v18:FindFirstChild("Floor")
						local PlayerGui4 = Players.LocalPlayer:FindFirstChild("PlayerGui")
						local ScreenGui4 = PlayerGui4:FindFirstChild("ScreenGui")
						ScreenGui4:FindFirstChild("HoldingFrame")
						Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					end
				end
			end)
		else
			task.spawn(function(...)
				local PlayerGui5 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local ScreenGui5 = PlayerGui5:FindFirstChild("ScreenGui")
				ScreenGui5:FindFirstChild("HoldingFrame")
				local Bases9 = workspace:FindFirstChild("Bases")
				local children15 = Bases9:GetChildren()
				for i17, v19 in ipairs(children15) do
					local attribute9 = v19:GetAttribute("OwnerUserId")
					if attribute9 == Players.LocalPlayer.UserId then
						v19:FindFirstChild("Floor")
						local PlayerGui6 = Players.LocalPlayer:FindFirstChild("PlayerGui")
						local ScreenGui6 = PlayerGui6:FindFirstChild("ScreenGui")
						ScreenGui6:FindFirstChild("HoldingFrame")
						Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					end
				end
			end)
		end
	end
})
Section11:CreateButton({
	Title = "Teleport to My Base",
	Callback = function(arg59, arg60)
		local Bases10 = workspace:FindFirstChild("Bases")
		local children16 = Bases10:GetChildren()
		for i18, v20 in ipairs(children16) do
			local attribute10 = v20:GetAttribute("OwnerUserId")
			if attribute10 == Players.LocalPlayer.UserId then
				v20:FindFirstChild("Floor")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			end
		end
	end
})
local Section12 = Tab6:CreateSection("Debug")
Section12:CreateButton({
	Title = "Print Nuke Count",
	Callback = function(state, arg62)
		if state then
			local Bases11 = workspace:FindFirstChild("Bases")
			local children17 = Bases11:GetChildren()
			for i19, v21 in ipairs(children17) do
				local attribute11 = v21:GetAttribute("OwnerUserId")
				if attribute11 == Players.LocalPlayer.UserId then
					local Nukes7 = v21:FindFirstChild("Nukes")
					local children18 = Nukes7:GetChildren()
					for i20, v22 in ipairs(children18) do
					end
					print("[HawkHub] Nukes — Total: 0 | Ready: 0 | Cooldown: 0")
				end
			end
		else
			local Bases12 = workspace:FindFirstChild("Bases")
			local children19 = Bases12:GetChildren()
			for i21, v23 in ipairs(children19) do
				local attribute12 = v23:GetAttribute("OwnerUserId")
				if attribute12 == Players.LocalPlayer.UserId then
					local Nukes8 = v23:FindFirstChild("Nukes")
					local children20 = Nukes8:GetChildren()
					for i22, v24 in ipairs(children20) do
					end
					print("[HawkHub] Nukes — Total: 0 | Ready: 0 | Cooldown: 0")
				end
			end
		end
	end
})
Section12:CreateButton({
	Title = "Print Active Commanders",
	Description = "Prints all live commanders and reads their rarity from the UI.",
	Callback = function(arg63, arg64)
		local children21 = workspace:GetChildren()
		for i23, v25 in ipairs(children21) do
			if v25:IsA("Model") then
				v25:FindFirstChild("Part")
				local PlayerGui7 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local child = PlayerGui7:FindFirstChild("ClaimableUI_" .. string.match(v25.Name, "ClaimableCommander_(%d+)"))
				local Rarity = child:FindFirstChild("Rarity", true)
			end
		end
	end
})
Section12:CreateButton({
	Title = "Print Detected Commander raritys",
	Description = "Shows the statically available tier targets.",
	Callback = function(state, arg66)
		print("[HawkHub] Tiers: Common, Rare, Epic, Legendary, Admiral, Limited")
	end
})
result:CreateNotification({
	Title = "Hawk Hub",
	Description = "Script Is Ready.",
	Cooldown = 5,
	IconBackgroundColor = Color3.fromRGB(67, 136, 246),
	IconId = "rbxassetid://10723407389",
	NotificationTransparency = 0.4
})
