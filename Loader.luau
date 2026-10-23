local children = workspace:GetChildren()
for k, v in pairs(children) do
end
local children2 = game.CoreGui:GetChildren()
for k2, v2 in pairs(children2) do
end
local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local children3 = PlayerGui:GetChildren()
for k3, v3 in pairs(children3) do
end
getgenv().HawkConsoleLib = {}
getgenv().ConsoleCounter = 1
getgenv().AddedLabels = {}
local TextService = game:GetService("TextService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local connection = RunService.RenderStepped:Connect(function(deltaTime)
	if CoreGui:FindFirstChild("DevConsoleMaster") then
		local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
		local descendants = DevConsoleMaster:GetDescendants()
		for k4, v4 in pairs(descendants) do
			if v4:IsA("TextLabel") then
				v4.RichText = true
			end
		end
	end
end)
getgenv().HawkConsoleLibConn = connection
getgenv().ConsoleCounter = 2
print("[Hawk HUB]: <b><font color='rgb(200, 140, 255)'>Loaded Fast Loader! </font></b>")
if not isfolder("Hawk") then
	makefolder("Hawk")
end
if not isfolder("Hawk/Settings") then
	makefolder("Hawk/Settings")
end
if not isfolder("Hawk/Assets") then
	makefolder("Hawk/Assets")
end
if not isfolder("Hawk/Assets/Devs") then
	makefolder("Hawk/Assets/Devs")
end
if not isfile("Hawk/Assets/HawkLogo.png") then
	local response = game:HttpGet("https://i.ibb.co/hJcsDF0J/image.png")
	writefile("Hawk/Assets/HawkLogo.png", response)
end
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local mouse = Players.LocalPlayer:GetMouse()
getgenv().HawkLoadCancellation = true

--[[

    Removed: a logger that was in the original HawkHub code itself
    (not added by me). It sent your username, UserId, avatar,
    game and server JobId to HawkHub's servers.

task.spawn(function(...)
	local result = WebSocket.connect("wss://chat.hawkhub.lol")
	getgenv().HawkSocket = result
	getgenv().ConsoleCounter = 3
	print("[Hawk Server]: <b><font color='rgb(255,255,255)'>Successfully connected to server.</font></b>")
	local response2 = game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. Players.LocalPlayer.UserId .. "&size=420x420&format=Png&isCircular=false")
	local data = HttpService:JSONDecode(response2)
	local json = HttpService:JSONEncode({
	DisplayName = Players.LocalPlayer.DisplayName,
	GameId = game.GameId,
	JobId = game.JobId,
	Pfp = "https://cdn.hawkhub.lol/get?Url=" .. data.data[1].imageUrl,
	PlaceId = game.PlaceId,
	UserId = Players.LocalPlayer.UserId,
	UserName = Players.LocalPlayer.Name
})
	result:Send(json)
	request({
	Headers = { ["Content-Type"] = "application/json", hawkexecutions = "HawkStorm" },
	Method = "POST",
	Url = "https://api.hawkhub.lol/Execute"
})
	getgenv().ConsoleCounter = 4
	print("[Hawk HUB]: <b><font color='rgb(0,255,0)'>Execution count sent to the server successfully</font></b>")
	local MarketplaceService = game:GetService("MarketplaceService")
	local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)
	local json2 = HttpService:JSONEncode({
	AccountAge = tostring(Players.LocalPlayer.AccountAge),
	Displayname = tostring(Players.LocalPlayer.DisplayName),
	ExecutorLevel = "8",
	ExecutorName = identifyexecutor(),
	GameID = tostring(game.GameId),
	GameName = productInfo.Name,
	LogTime = os.date("%X - %d.%m.%Y"),
	PlaceID = tostring(game.PlaceId),
	UserId = tostring(Players.LocalPlayer.UserId),
	Username = tostring(Players.LocalPlayer.Name)
})
	request({
	Body = json2,
	Headers = { ["Content-Type"] = "application/json", hawk = "hawkhubneverdies" },
	Method = "POST",
	Url = "https://api.hawkhub.lol/bonheur"
})
end)

]]

local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "Circle"
ImageLabel.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
ImageLabel.Image = "rbxassetid://266543268"
ImageLabel.ImageTransparency = 0.8
ImageLabel.BorderSizePixel = 0
UICorner.CornerRadius = UDim.new(1, 6)
UICorner.Name = "DropdownCorner"
UICorner.Parent = ImageLabel
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner2 = Instance.new("UICorner")
local Frame2 = Instance.new("Frame")
local ImageLabel2 = Instance.new("ImageLabel")
local ImageLabel3 = Instance.new("ImageLabel")
local CanvasGroup = Instance.new("CanvasGroup")
local ImageLabel4 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local ImageLabel5 = Instance.new("ImageLabel")
local UICorner3 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Frame3 = Instance.new("Frame")
local UICorner4 = Instance.new("UICorner")
local UIStroke2 = Instance.new("UIStroke")
local ImageLabel6 = Instance.new("ImageLabel")
local TextLabel3 = Instance.new("TextLabel")
local Frame4 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame5 = Instance.new("Frame")
local UICorner5 = Instance.new("UICorner")
local UIStroke3 = Instance.new("UIStroke")
local TextLabel4 = Instance.new("TextLabel")
local TextLabel5 = Instance.new("TextLabel")
local Frame6 = Instance.new("Frame")
local UICorner6 = Instance.new("UICorner")
local UIStroke4 = Instance.new("UIStroke")
local TextLabel6 = Instance.new("TextLabel")
local TextLabel7 = Instance.new("TextLabel")
local Frame7 = Instance.new("Frame")
local UICorner7 = Instance.new("UICorner")
local UIStroke5 = Instance.new("UIStroke")
local TextLabel8 = Instance.new("TextLabel")
local TextLabel9 = Instance.new("TextLabel")
local TextLabel10 = Instance.new("TextLabel")
local Frame8 = Instance.new("Frame")
local UICorner8 = Instance.new("UICorner")
local TextLabel11 = Instance.new("TextLabel")
local Frame9 = Instance.new("Frame")
local UICorner9 = Instance.new("UICorner")
local Frame10 = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local TextLabel12 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")
local Frame11 = Instance.new("Frame")
local UICorner10 = Instance.new("UICorner")
local UIStroke6 = Instance.new("UIStroke")
local TextButton3 = Instance.new("TextButton")
local Frame12 = Instance.new("Frame")
local UICorner11 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
ScreenGui.Name = "HawkLauncher"
local PlayerGui2 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Parent = PlayerGui2
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
Frame.Name = "Main"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BackgroundTransparency = 1
Frame.BorderColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Visible = false
UICorner2.CornerRadius = UDim.new(0, 10)
UICorner2.Name = "MainCorner"
UICorner2.Parent = Frame
Frame2.Name = "Shadow"
Frame2.Parent = Frame
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.BackgroundTransparency = 1
Frame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame2.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
Frame2.ZIndex = 0
ImageLabel2.Name = "Image"
ImageLabel2.Parent = Frame2
ImageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel2.BackgroundTransparency = 1
ImageLabel2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel2.BorderSizePixel = 0
ImageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel2.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
ImageLabel2.ZIndex = 2
ImageLabel2.Image = "rbxassetid://5587865193"
ImageLabel2.ImageColor3 = Color3.fromRGB(20, 20, 20)
ImageLabel2.ImageTransparency = 1
ImageLabel3.Name = "Logo"
ImageLabel3.Parent = Frame
ImageLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel3.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ImageLabel3.BackgroundTransparency = 1
ImageLabel3.BorderColor3 = Color3.fromRGB(26, 26, 26)
ImageLabel3.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel3.Size = UDim2.new(0, 75, 0, 75)
ImageLabel3.Visible = false
ImageLabel3.ZIndex = 2
ImageLabel3.Image = getcustomasset("Hawk/Assets/HawkLogo.png")
ImageLabel3.ImageTransparency = 1
CanvasGroup.Name = "HawkLauncherGroup"
CanvasGroup.Parent = Frame
CanvasGroup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CanvasGroup.BorderColor3 = Color3.fromRGB(25, 25, 25)
CanvasGroup.BorderSizePixel = 0
CanvasGroup.Size = UDim2.new(1, 0, 1, 0)
CanvasGroup.GroupTransparency = 1
CanvasGroup.Visible = false
ImageLabel4.Name = "Logo"
ImageLabel4.Parent = CanvasGroup
ImageLabel4.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ImageLabel4.BackgroundTransparency = 1
ImageLabel4.BorderColor3 = Color3.fromRGB(26, 26, 26)
ImageLabel4.Position = UDim2.new(0, 15, 0, 15)
ImageLabel4.Size = UDim2.new(0, 50, 0, 50)
ImageLabel4.ZIndex = 2
ImageLabel4.Image = getcustomasset("Hawk/Assets/HawkLogo.png")
TextLabel.Name = "Subtitle"
TextLabel.Parent = ImageLabel4
TextLabel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(26, 26, 26)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(1.15172207, 0, 0.513440311, 0)
TextLabel.Size = UDim2.new(0, 129, 0, 16)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Fast Loader"
TextLabel.TextColor3 = Color3.fromRGB(175, 175, 175)
TextLabel.TextScaled = true
TextLabel.TextSize = 15
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Name = "Title"
TextLabel2.Parent = ImageLabel4
TextLabel2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderColor3 = Color3.fromRGB(26, 26, 26)
TextLabel2.BorderSizePixel = 0
TextLabel2.Position = UDim2.new(1.15172207, 0, 0.216999128, 0)
TextLabel2.Size = UDim2.new(0, 90, 0, 16)
TextLabel2.ZIndex = 2
TextLabel2.Font = Enum.Font.GothamMedium
TextLabel2.Text = "Hawk HUB"
TextLabel2.TextColor3 = Color3.fromRGB(240, 240, 240)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 16
TextLabel2.TextWrapped = true
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel5.Name = "Glow"
ImageLabel5.Parent = CanvasGroup
ImageLabel5.Active = true
ImageLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel5.BackgroundTransparency = 1
ImageLabel5.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel5.Position = UDim2.new(0, -15, 0, -15)
ImageLabel5.Size = UDim2.new(1, 30, 1, 30)
ImageLabel5.Visible = false
ImageLabel5.Image = "rbxassetid://5028857084"
ImageLabel5.ImageColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel5.ScaleType = Enum.ScaleType.Slice
ImageLabel5.SliceCenter = Rect.new(24, 24, 276, 276)
UICorner3.CornerRadius = UDim.new(0, 10)
UICorner3.Parent = CanvasGroup
UIStroke.Parent = CanvasGroup
UIStroke.Color = Color3.fromRGB(38, 38, 38)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Frame3.Name = "Discord"
Frame3.Parent = CanvasGroup
Frame3.AnchorPoint = Vector2.new(0.5, 1)
Frame3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0.5, 0, 1, -16)
Frame3.Size = UDim2.new(0, 416, 0, 151)
UICorner4.CornerRadius = UDim.new(0, 10)
UICorner4.Parent = Frame3
UIStroke2.Parent = Frame3
UIStroke2.Color = Color3.fromRGB(59, 59, 59)
UIStroke2.Thickness = 1.4
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

--[[
	23.10.2026
]]

local data2 = {
	InviteLink = "Tz9UXwMeWK",
	Server_Name = "🎃 Hawk HUB | Reborn (BETA) 👻",
	Server_Icon = "https://i.ibb.co/Fkt6jD8h/image.png",
	Total_Members = 1776,
	Online_Members = 82,
	Offline_Members = 1694,
	Expires_At = "Never",
}

local response4 = game:HttpGet(data2.Server_Icon)
if not isfile("Hawk/Assets/HawkServerLogo.png") then
	writefile("Hawk/Assets/HawkServerLogo.png", response4)
	writefile("Hawk/Assets/HawkServerLogo.hash", crypt.hash(crypt.base64.encode(response4), "md5"))
end
ImageLabel6.Name = "HawkLogo"
ImageLabel6.Parent = Frame3
ImageLabel6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ImageLabel6.BackgroundTransparency = 1
ImageLabel6.BorderColor3 = Color3.fromRGB(25, 25, 25)
ImageLabel6.Position = UDim2.new(0.0458951071, 0, 0.0956618935, 0)
ImageLabel6.Size = UDim2.new(0, 55, 0, 55)
ImageLabel6.ZIndex = 2
ImageLabel6.Image = getcustomasset("Hawk/Assets/HawkServerLogo.png")
TextLabel3.Name = "Title"
TextLabel3.Parent = Frame3
TextLabel3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel3.BackgroundTransparency = 1
TextLabel3.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextLabel3.BorderSizePixel = 0
TextLabel3.Position = UDim2.new(0.209971845, 0, 0.10595905, 0)
TextLabel3.Size = UDim2.new(0, 290, 0, 22)
TextLabel3.ZIndex = 2
TextLabel3.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel3.Text = data2.Server_Name
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.TextSize = 20
TextLabel3.TextWrapped = true
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
Frame4.Name = "MembersFrame"
Frame4.Parent = Frame3
Frame4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame4.BackgroundTransparency = 1
Frame4.BorderColor3 = Color3.fromRGB(39, 39, 39)
Frame4.BorderSizePixel = 0
Frame4.Position = UDim2.new(0.00248138956, 0, 0.459900707, 0)
Frame4.Size = UDim2.new(1, 0, 0, 80)
UIListLayout.Parent = Frame4
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 27)
UIListLayout.Wraps = true
Frame5.Name = "Member"
Frame5.Parent = Frame4
Frame5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame5.BorderSizePixel = 0
Frame5.Position = UDim2.new(0.0447761193, 0, 0.1641009, 0)
Frame5.Size = UDim2.new(0, 102, 0, 52)
UICorner5.CornerRadius = UDim.new(0, 10)
UICorner5.Parent = Frame5
UIStroke3.Parent = Frame5
UIStroke3.Color = Color3.fromRGB(66, 66, 66)
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextLabel4.Name = "MemberCount"
TextLabel4.Parent = Frame5
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.BackgroundTransparency = 2
TextLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel4.BorderSizePixel = 0
TextLabel4.Position = UDim2.new(0, 0, 0.480769217, 0)
TextLabel4.Size = UDim2.new(0, 102, 0, 18)
TextLabel4.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel4.Text = "Total"
TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.TextSize = 14
TextLabel4.TextWrapped = true
TextLabel5.Name = "MemberCount"
TextLabel5.Parent = Frame5
TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.BackgroundTransparency = 2
TextLabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel5.BorderSizePixel = 0
TextLabel5.Position = UDim2.new(0, 0, 0.134615391, 0)
TextLabel5.Size = UDim2.new(0, 102, 0, 18)
TextLabel5.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel5.Text = data2.Total_Members
TextLabel5.TextColor3 = Color3.fromRGB(0, 170, 255)
TextLabel5.TextSize = 14
TextLabel5.TextWrapped = true
Frame6.Name = "Online"
Frame6.Parent = Frame4
Frame6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame6.BorderSizePixel = 0
Frame6.Position = UDim2.new(0.373134315, 0, 0.1641009, 0)
Frame6.Size = UDim2.new(0, 102, 0, 52)
UICorner6.CornerRadius = UDim.new(0, 10)
UICorner6.Parent = Frame6
UIStroke4.Parent = Frame6
UIStroke4.Color = Color3.fromRGB(66, 66, 66)
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextLabel6.Name = "MemberCount"
TextLabel6.Parent = Frame6
TextLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel6.BackgroundTransparency = 2
TextLabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel6.BorderSizePixel = 0
TextLabel6.Position = UDim2.new(0, 0, 0.480769217, 0)
TextLabel6.Size = UDim2.new(0, 102, 0, 18)
TextLabel6.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel6.Text = "Online"
TextLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel6.TextSize = 14
TextLabel6.TextWrapped = true
TextLabel7.Name = "MemberCount"
TextLabel7.Parent = Frame6
TextLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.BackgroundTransparency = 2
TextLabel7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel7.BorderSizePixel = 0
TextLabel7.Position = UDim2.new(0, 0, 0.134615391, 0)
TextLabel7.Size = UDim2.new(0, 102, 0, 18)
TextLabel7.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel7.Text = data2.Online_Members
TextLabel7.TextColor3 = Color3.fromRGB(56, 158, 100)
TextLabel7.TextSize = 14
TextLabel7.TextWrapped = true
Frame7.Name = "Offline"
Frame7.Parent = Frame4
Frame7.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame7.BorderSizePixel = 0
Frame7.Position = UDim2.new(0.701492548, 0, 0.1641009, 0)
Frame7.Size = UDim2.new(0, 102, 0, 52)
UICorner7.CornerRadius = UDim.new(0, 10)
UICorner7.Parent = Frame7
UIStroke5.Parent = Frame7
UIStroke5.Color = Color3.fromRGB(66, 66, 66)
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextLabel8.Name = "MemberCount"
TextLabel8.Parent = Frame7
TextLabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel8.BackgroundTransparency = 2
TextLabel8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel8.BorderSizePixel = 0
TextLabel8.Position = UDim2.new(0, 0, 0.480769217, 0)
TextLabel8.Size = UDim2.new(0, 102, 0, 18)
TextLabel8.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel8.Text = "Offline"
TextLabel8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel8.TextSize = 14
TextLabel8.TextWrapped = true
TextLabel9.Name = "MemberCount"
TextLabel9.Parent = Frame7
TextLabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel9.BackgroundTransparency = 2
TextLabel9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel9.BorderSizePixel = 0
TextLabel9.Position = UDim2.new(0, 0, 0.134615391, 0)
TextLabel9.Size = UDim2.new(0, 102, 0, 18)
TextLabel9.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel9.Text = data2.Offline_Members
TextLabel9.TextColor3 = Color3.fromRGB(158, 158, 165)
TextLabel9.TextSize = 14
TextLabel9.TextWrapped = true
TextLabel10.Name = "Online"
TextLabel10.Parent = Frame3
TextLabel10.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel10.BackgroundTransparency = 1
TextLabel10.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextLabel10.BorderSizePixel = 0
TextLabel10.Position = UDim2.new(0.250620335, 0, 0.25443536, 0)
TextLabel10.Size = UDim2.new(0, 76, 0, 22)
TextLabel10.ZIndex = 2
TextLabel10.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel10.Text = data2.Online_Members .. " Online"
TextLabel10.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel10.TextSize = 17
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
Frame8.Name = "OnlineStatus"
Frame8.Parent = TextLabel10
Frame8.BackgroundColor3 = Color3.fromRGB(56, 158, 100)
Frame8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame8.BorderSizePixel = 0
Frame8.Position = UDim2.new(0, -17, 0.226999998, 0)
Frame8.Size = UDim2.new(0, 12, 0, 12)
UICorner8.CornerRadius = UDim.new(99, 99)
UICorner8.Parent = Frame8
TextLabel11.Name = "All"
TextLabel11.Parent = Frame3
TextLabel11.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel11.BackgroundTransparency = 1
TextLabel11.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextLabel11.BorderSizePixel = 0
TextLabel11.Position = UDim2.new(0.490368873, 0, 0.25443536, 0)
TextLabel11.Size = UDim2.new(0, 115, 0, 22)
TextLabel11.ZIndex = 2
TextLabel11.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel11.Text = data2.Total_Members .. " Members"
TextLabel11.TextColor3 = Color3.fromRGB(195, 195, 195)
TextLabel11.TextSize = 17
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
Frame9.Name = "OnlineStatus"
Frame9.Parent = TextLabel11
Frame9.BackgroundColor3 = Color3.fromRGB(158, 158, 165)
Frame9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame9.BorderSizePixel = 0
Frame9.Position = UDim2.new(0, -17, 0.227272734, 0)
Frame9.Size = UDim2.new(0, 12, 0, 12)
UICorner9.CornerRadius = UDim.new(99, 99)
UICorner9.Parent = Frame9
Frame10.Name = ""
Frame10.Parent = CanvasGroup
Frame10.AnchorPoint = Vector2.new(0.5, 0)
Frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame10.BackgroundTransparency = 1
Frame10.BorderColor3 = Color3.fromRGB(25, 25, 25)
Frame10.BorderSizePixel = 0
Frame10.Position = UDim2.new(0.5, 0, -0.0547263697, 170)
Frame10.Size = UDim2.new(0, 416, 0, 69)
UIListLayout2.Parent = Frame10
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
TextLabel12.Name = "Thanks"
TextLabel12.Parent = Frame10
TextLabel12.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel12.BackgroundTransparency = 1
TextLabel12.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextLabel12.BorderSizePixel = 0
TextLabel12.Position = UDim2.new(0, 0, 0.134905383, 0)
TextLabel12.Size = UDim2.new(1, 0, 0.234290719, 0)
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.Text = "Thanks for using Hawk HUB :D"
TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel12.TextSize = 16
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.RichText = true
TextButton.Name = "Discord"
TextButton.Parent = Frame10
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BackgroundTransparency = 1
TextButton.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.369196355, 0)
TextButton.Size = UDim2.new(1, 0, 0.234290749, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "<b>Discord: </b><font color='rgb(66, 133, 244)'>https://discord.gg/Tz9UXwMeWK</font>"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 16
TextButton.TextXAlignment = Enum.TextXAlignment.Left
TextButton.RichText = true
TextButton.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/Tz9UXwMeWK")
	StarterGui:SetCore("SendNotification", {
	Text = "Copied Link!",
	Title = "Hawk HUB",
	Duration = 5,
	Icon = getcustomasset("Hawk/Assets/HawkLogo.png")
})
end)
TextButton2.Name = "Website"
TextButton2.Parent = Frame10
TextButton2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton2.BackgroundTransparency = 1
TextButton2.BorderColor3 = Color3.fromRGB(25, 25, 25)
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0, 0, 0.603486419, 0)
TextButton2.Size = UDim2.new(1, 0, 0.234290749, 0)
TextButton2.Font = Enum.Font.Gotham
TextButton2.Text = "<b>Website: </b><font color='rgb(66, 133, 244)'>https://hawkhub.lol</font>"
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.TextSize = 16
TextButton2.TextXAlignment = Enum.TextXAlignment.Left
TextButton2.RichText = true
TextButton2.MouseButton1Click:Connect(function()
	setclipboard("https://hawkhub.lol")
	StarterGui:SetCore("SendNotification", {
	Text = "Copied Link!",
	Title = "Hawk HUB",
	Duration = 5,
	Icon = getcustomasset("Hawk/Assets/HawkLogo.png")
})
end)
Frame11.Name = "Launcher"
Frame11.Parent = CanvasGroup
Frame11.AnchorPoint = Vector2.new(0.5, 0)
Frame11.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame11.BorderColor3 = Color3.fromRGB(47, 47, 47)
Frame11.BorderSizePixel = 0
Frame11.Position = UDim2.new(0.5, 0, 0, 77)
Frame11.Size = UDim2.new(0, 416, 0, 71)
UICorner10.Parent = Frame11
UIStroke6.Parent = Frame11
UIStroke6.Color = Color3.fromRGB(74, 74, 74)
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextButton3.Name = "LaunchButton"
TextButton3.Parent = Frame11
TextButton3.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextButton3.BackgroundTransparency = 1
TextButton3.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextButton3.BorderSizePixel = 0
TextButton3.Size = UDim2.new(1, 0, 1, 0)
TextButton3.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextButton3.Text = "Launch"
TextButton3.TextColor3 = Color3.fromRGB(255, 70, 70)
TextButton3.TextSize = 50
TextButton3.TextWrapped = true
Frame12.Name = "Stroke"
Frame12.Parent = CanvasGroup
Frame12.AnchorPoint = Vector2.new(0.5, 0)
Frame12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame12.BorderColor3 = Color3.fromRGB(107, 107, 107)
Frame12.Position = UDim2.new(0.5, 0, 0.5, 15)
Frame12.Size = UDim2.new(0, 461, 0, 1)
UICorner11.CornerRadius = UDim.new(0, 20)
UICorner11.Parent = Frame12
UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30)) })
UIGradient.Parent = Frame12
wait(1)
Frame.Visible = true
local tween = TweenService:Create(Frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
tween:Play()
local tween2 = TweenService:Create(ImageLabel2, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { ImageTransparency = 0.5 })
tween2:Play()
local tween3 = TweenService:Create(Frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 100, 0, 100) })
tween3:Play()
local tween4 = TweenService:Create(Frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad), { Position = UDim2.new(0.5, 0, 0.5, 0) })
tween4:Play()
wait(1)
ImageLabel3.Visible = true
local tween5 = TweenService:Create(ImageLabel3, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { ImageTransparency = 0 })
tween5:Play()
wait(1)
local tween6 = TweenService:Create(ImageLabel3, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { ImageTransparency = 1 })
tween6:Play()
wait(0.5)
local tween7 = TweenService:Create(Frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 447, 0, 402) })
tween7:Play()
local tween8 = TweenService:Create(Frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad), { Position = UDim2.new(0.5, 0, 0.5, 0) })
tween8:Play()
wait(1)
CanvasGroup.Visible = true
local tween9 = TweenService:Create(CanvasGroup, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { GroupTransparency = 0 })
tween9:Play()
wait(0.5)
Frame.BackgroundTransparency = 1
UICorner2:Destroy()
Frame.InputBegan:Connect(function(input, gameProcessed)
end)
Frame.InputChanged:Connect(function(input2, gameProcessed2)
end)
UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
end)
TextButton3.MouseButton1Click:Connect(function()
	spawn(function(...)
		Frame11.ClipsDescendants = true
		local clone = ImageLabel:Clone()
		clone.Parent = Frame11
		clone.ZIndex = 1000
		clone.ImageColor3 = Color3.fromRGB(255, 255, 255)
		clone.Position = UDim2.new(0, (mouse.X - clone.AbsolutePosition.X), 0, (mouse.Y - clone.AbsolutePosition.Y))
		clone:TweenSizeAndPosition(UDim2.new(0, 624, 0, 624), UDim2.new(0.5, -312, 0.5, -312), "Out", "Linear", 0.3)
		clone.ImageTransparency = 0.1
		wait()
		clone.ImageTransparency = 0.2
		wait()
		clone.ImageTransparency = 0.3
		wait()
		clone.ImageTransparency = 0.4
		wait()
		clone.ImageTransparency = 0.5
		wait()
		clone.ImageTransparency = 0.6
		wait()
		clone.ImageTransparency = 0.7
		wait()
		clone.ImageTransparency = 0.8
		wait()
		clone.ImageTransparency = 0.9
		wait()
		clone.ImageTransparency = 1
		wait()
		clone:Destroy()
	end)
	wait(1)
	local tween10 = TweenService:Create(CanvasGroup, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { GroupTransparency = 1 })
	tween10:Play()
	local tween11 = TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Transparency = 1 })
	tween11:Play()
	local tween12 = TweenService:Create(ImageLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageTransparency = 1 })
	tween12:Play()
	wait(1)
	ScreenGui:Destroy()
	local children4 = workspace:GetChildren()
	for k5, v5 in pairs(children4) do
	end
	local children5 = game.CoreGui:GetChildren()
	for k6, v6 in pairs(children5) do
	end
	local PlayerGui3 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	local children6 = PlayerGui3:GetChildren()
	for k7, v7 in pairs(children6) do
	end
	
	--[[
		23.10.2026
	]]
	
	local data3 = {
		HawkLoader = {
			Url = "https://hawkhub.lol/scripts/HawkLoader.lua",
			Status = "Working",
			ScriptName = "Hawk TUAH",
			FileName = "HawkLoader.lua",
			LastUpdate = "13/10/2026",
		},
		Loader = {
			Url = "https://hawkhub.lol/scripts/Loader.lua",
			Status = "Working",
			LastUpdate = "16/04/2026",
		},
		KeySystem = {
			Url = "https://hawkhub.lol/scripts/KeySystem.lua",
			Status = "Working",
			FileName = "KeySystem.lua",
			LastUpdate = "29/07/2026",
		},
		HideAndSeek = {
			Url = "https://hawkhub.lol/scripts/HideAndSeek.lua",
			GameId = "93740418",
			Status = "Kinda Working",
			ScriptName = "Hide and Seek Extreme",
			FileName = "HideAndSeek.lua",
			LastUpdate = "25/07/2026",
		},
		LuckyBlocks = {
			Url = "https://hawkhub.lol/scripts/LuckyBlocks.lua",
			GameId = "279565647",
			Status = "Kinda Working",
			ScriptName = "Lucky Blocks Battlegrounds",
			FileName = "LuckyBlocks.lua",
			LastUpdate = "25/07/2026",
		},
		ZombieAttack = {
			Url = "https://hawkhub.lol/scripts/ZombieAttack.lua",
			GameId = "504035427",
			Status = "Kinda Working",
			ScriptName = "Zombie Attack",
			FileName = "ZombieAttack.lua",
			LastUpdate = "25/07/2026",
		},
		Troll = {
			Url = "https://hawkhub.lol/scripts/Troll.lua",
			LastUpdate = "01/05/2026",
		},
		Skywars = {
			Url = "https://hawkhub.lol/scripts/Skywars.lua",
			GameId = "354554209",
			Status = "Working",
			ScriptName = "SKYWARS",
			FileName = "Skywars.lua",
			LastUpdate = "04/10/2026",
		},
		Universal = {
			Url = "https://hawkhub.lol/scripts/Universal.lua",
			Status = "Working",
			FileName = "Universal.lua",
			LastUpdate = "13/10/2026",
		},
		OldHawkRedirector = {
			Url = "https://hawkhub.lol/scripts/OldHawkRedirector.lua",
			Status = "Working",
			FileName = "OldHawkRedirector.lua",
			LastUpdate = "09/05/2026",
		},
		Updater = {
			Url = "https://hawkhub.lol/scripts/Updater.lua",
			ScriptName = "Guncelleme",
			FileName = "Updater.lua",
			LastUpdate = "16/10/2026",
		},
		toh = {
			Url = "https://hawkhub.lol/scripts/toh.lua",
			GameId = "703124385",
			Status = "Kinda Working",
			ScriptName = "Tower Of Hell",
			FileName = "toh.lua",
			LastUpdate = "13/08/2026",
		},
		gateway = {
			Url = "https://hawkhub.lol/scripts/gateway.lua",
			ScriptName = "Gateway",
			FileName = "gateway.lua",
			LastUpdate = "04/10/2026",
		},
		MM2 = {
			Url = "https://hawkhub.lol/scripts/MM2.lua",
			GameId = "66654135",
			Status = "Working",
			ScriptName = "Murder Mystery 2",
			FileName = "MM2.lua",
			LastUpdate = "16/10/2026",
		},
		Oxyo = {
			Url = "https://hawkhub.lol/scripts/Oxyo.lua",
			FileName = "Oxyo.lua",
			LastUpdate = "13/08/2026",
		},
		Evade = {
			Url = "https://hawkhub.lol/scripts/Evade.lua",
			GameId = "3647333358",
			Status = "Kinda Working",
			ScriptName = "Evade",
			FileName = "Evade.lua",
			LastUpdate = "29/07/2026",
		},
		FastLoader = {
			Url = "https://hawkhub.lol/scripts/FastLoader.lua",
			ScriptName = "FastLoader",
			FileName = "FastLoader.lua",
			LastUpdate = "13/10/2026",
		},
		HawkLib = {
			Url = "https://hawkhub.lol/scripts/HawkLib.lua",
			Status = "Working",
			ScriptName = "HawkLib",
			FileName = "HawkLib.lua",
			LastUpdate = "10/10/2026",
		},
		MergeANuke = {
			Url = "https://hawkhub.lol/scripts/MergeANuke.lua",
			GameId = "10199301628",
			Status = "Working",
			ScriptName = "Merge A Nuke",
			FileName = "MergeANuke.lua",
			LastUpdate = "04/10/2026",
		},
		sgcracker = {
			Url = "https://hawkhub.lol/scripts/sgcracker.lua",
			FileName = "sgcracker.lua",
			LastUpdate = "13/08/2026",
		},
		HawkChat = {
			Url = "https://hawkhub.lol/scripts/HawkChat.lua",
			ScriptName = "Hawk Chat",
			FileName = "HawkChat.lua",
			LastUpdate = "19/08/2026",
		},
		FleeTheFacility = {
			Url = "https://hawkhub.lol/scripts/FleeTheFacility.lua",
			GameId = "372226183",
			Status = "Working",
			ScriptName = "Flee The Facility",
			FileName = "FleeTheFacility.lua",
			LastUpdate = "04/10/2026",
		},
		SkywarsAcBypasser = {
			Url = "https://hawkhub.lol/scripts/SkywarsAcBypasser.lua",
			FileName = "SkywarsAcBypasser.lua",
			LastUpdate = "04/10/2026",
		},
		Themes = {
			Url = "https://hawkhub.lol/scripts/Themes.lua",
			FileName = "Themes.lua",
			LastUpdate = "10/10/2026",
		},
	}
	
	local ScreenGui2 = Instance.new("ScreenGui")
	local Frame13 = Instance.new("Frame")
	local UICorner12 = Instance.new("UICorner")
	local CanvasGroup2 = Instance.new("CanvasGroup")
	local UICorner13 = Instance.new("UICorner")
	local UIStroke7 = Instance.new("UIStroke")
	local Frame14 = Instance.new("Frame")
	local UICorner14 = Instance.new("UICorner")
	local Frame15 = Instance.new("Frame")
	local UICorner15 = Instance.new("UICorner")
	local UIStroke8 = Instance.new("UIStroke")
	local TextLabel13 = Instance.new("TextLabel")
	local Frame16 = Instance.new("Frame")
	local UICorner16 = Instance.new("UICorner")
	local Frame17 = Instance.new("Frame")
	local UICorner17 = Instance.new("UICorner")
	local UIStroke9 = Instance.new("UIStroke")
	local TextLabel14 = Instance.new("TextLabel")
	local Frame18 = Instance.new("Frame")
	local UICorner18 = Instance.new("UICorner")
	local Frame19 = Instance.new("Frame")
	local UICorner19 = Instance.new("UICorner")
	local UIStroke10 = Instance.new("UIStroke")
	local TextLabel15 = Instance.new("TextLabel")
	local Frame20 = Instance.new("Frame")
	local UICorner20 = Instance.new("UICorner")
	local Frame21 = Instance.new("Frame")
	local UICorner21 = Instance.new("UICorner")
	local ImageLabel7 = Instance.new("ImageLabel")
	local Frame22 = Instance.new("Frame")
	local UICorner22 = Instance.new("UICorner")
	local Frame23 = Instance.new("Frame")
	local UIListLayout3 = Instance.new("UIListLayout")
	local TextLabel16 = Instance.new("TextLabel")
	local TextLabel17 = Instance.new("TextLabel")
	local Frame24 = Instance.new("Frame")
	local UICorner23 = Instance.new("UICorner")
	local ImageLabel8 = Instance.new("ImageLabel")
	local TextLabel18 = Instance.new("TextLabel")
	local TextLabel19 = Instance.new("TextLabel")
	local TextLabel20 = Instance.new("TextLabel")
	local TextLabel21 = Instance.new("TextLabel")
	local Frame25 = Instance.new("Frame")
	local ImageLabel9 = Instance.new("ImageLabel")
	ScreenGui2.Name = "HawkLoader"
	local PlayerGui4 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui2.Parent = PlayerGui4
	ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui2.ResetOnSpawn = false
	Frame13.Name = "Main"
	Frame13.Parent = ScreenGui2
	Frame13.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame13.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame13.BorderColor3 = Color3.fromRGB(30, 30, 30)
	Frame13.BorderSizePixel = 0
	Frame13.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame13.Size = UDim2.new(0, 480, 0, 262)
	Frame13.BackgroundTransparency = 1
	UICorner12.CornerRadius = UDim.new(0, 10)
	UICorner12.Name = "FrameCorner"
	UICorner12.Parent = Frame13
	CanvasGroup2.Name = "Main"
	CanvasGroup2.Parent = Frame13
	CanvasGroup2.AnchorPoint = Vector2.new(0.5, 0.5)
	CanvasGroup2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	CanvasGroup2.BorderColor3 = Color3.fromRGB(30, 30, 30)
	CanvasGroup2.BorderSizePixel = 0
	CanvasGroup2.Position = UDim2.new(0.5, 0, 0.5, 0)
	CanvasGroup2.Size = UDim2.new(0, 480, 0, 262)
	CanvasGroup2.GroupTransparency = 1
	UICorner13.CornerRadius = UDim.new(0, 10)
	UICorner13.Name = "MainCorner"
	UICorner13.Parent = CanvasGroup2
	UIStroke7.Name = "MainStroke"
	UIStroke7.Parent = CanvasGroup2
	UIStroke7.Color = Color3.fromRGB(44, 44, 44)
	UIStroke7.Transparency = 1
	UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Frame25.Name = "Shadow"
	Frame25.Parent = Frame13
	Frame25.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame25.BackgroundTransparency = 1
	Frame25.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Frame25.BorderSizePixel = 0
	Frame25.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame25.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
	Frame25.ZIndex = 0
	ImageLabel9.Name = "Image"
	ImageLabel9.Parent = Frame25
	ImageLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel9.BackgroundTransparency = 1
	ImageLabel9.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ImageLabel9.BorderSizePixel = 0
	ImageLabel9.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel9.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
	ImageLabel9.ZIndex = 2
	ImageLabel9.Image = "rbxassetid://5587865193"
	ImageLabel9.ImageColor3 = Color3.fromRGB(20, 20, 20)
	ImageLabel9.ImageTransparency = 1
	Frame14.Name = "LoadingBar"
	Frame14.Parent = CanvasGroup2
	Frame14.AnchorPoint = Vector2.new(0.5, 0)
	Frame14.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Frame14.BorderColor3 = Color3.fromRGB(45, 45, 45)
	Frame14.BorderSizePixel = 0
	Frame14.Position = UDim2.new(0.5, 0, 0.648999989, 0)
	Frame14.Size = UDim2.new(0, 426, 0, 9)
	UICorner14.CornerRadius = UDim.new(0, 10)
	UICorner14.Name = "MainCorner"
	UICorner14.Parent = Frame14
	Frame15.Name = "DetectStep"
	Frame15.Parent = Frame14
	Frame15.AnchorPoint = Vector2.new(0, 0.5)
	Frame15.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame15.BorderColor3 = Color3.fromRGB(30, 30, 30)
	Frame15.BorderSizePixel = 0
	Frame15.Position = UDim2.new(0, 0, 0.5, 0)
	Frame15.Size = UDim2.new(0, 15, 0, 15)
	Frame15.ZIndex = 2
	UICorner15.CornerRadius = UDim.new(1, 0)
	UICorner15.Name = "DetectCorner"
	UICorner15.Parent = Frame15
	UIStroke8.Parent = Frame15
	UIStroke8.Color = Color3.fromRGB(91, 91, 91)
	TextLabel13.Name = "DetectLabel"
	TextLabel13.Parent = Frame15
	TextLabel13.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel13.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel13.BackgroundTransparency = 1
	TextLabel13.BorderColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel13.BorderSizePixel = 0
	TextLabel13.Position = UDim2.new(0.5, 0, 0, 22)
	TextLabel13.Size = UDim2.new(0, 44, 0, 10)
	TextLabel13.Font = Enum.Font.SourceSans
	TextLabel13.Text = "DETECT"
	TextLabel13.TextColor3 = Color3.fromRGB(120, 120, 120)
	TextLabel13.TextSize = 14
	TextLabel13.TextStrokeColor3 = Color3.fromRGB(120, 120, 120)
	Frame16.Name = "DetectInside"
	Frame16.Parent = Frame15
	Frame16.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame16.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame16.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame16.BorderSizePixel = 0
	Frame16.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame16.Size = UDim2.new(0, 9, 0, 9)
	UICorner16.CornerRadius = UDim.new(1, 0)
	UICorner16.Name = "DetectCorner"
	UICorner16.Parent = Frame16
	Frame17.Name = "LaunchStep"
	Frame17.Parent = Frame14
	Frame17.AnchorPoint = Vector2.new(1, 0.5)
	Frame17.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame17.BorderColor3 = Color3.fromRGB(30, 30, 30)
	Frame17.BorderSizePixel = 0
	Frame17.Position = UDim2.new(1, 0, 0.5, 0)
	Frame17.Size = UDim2.new(0, 15, 0, 15)
	Frame17.ZIndex = 2
	UICorner17.CornerRadius = UDim.new(1, 0)
	UICorner17.Name = "DetectCorner"
	UICorner17.Parent = Frame17
	UIStroke9.Parent = Frame17
	UIStroke9.Color = Color3.fromRGB(91, 91, 91)
	TextLabel14.Name = "LaunchLabel"
	TextLabel14.Parent = Frame17
	TextLabel14.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel14.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel14.BackgroundTransparency = 1
	TextLabel14.BorderColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel14.BorderSizePixel = 0
	TextLabel14.Position = UDim2.new(0.5, 0, 0, 22)
	TextLabel14.Size = UDim2.new(0, 44, 0, 10)
	TextLabel14.Font = Enum.Font.SourceSans
	TextLabel14.Text = "LAUNCH"
	TextLabel14.TextColor3 = Color3.fromRGB(120, 120, 120)
	TextLabel14.TextSize = 14
	TextLabel14.TextStrokeColor3 = Color3.fromRGB(120, 120, 120)
	Frame18.Name = "LaunchInside"
	Frame18.Parent = Frame17
	Frame18.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame18.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame18.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame18.BorderSizePixel = 0
	Frame18.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame18.Size = UDim2.new(0, 9, 0, 9)
	UICorner18.CornerRadius = UDim.new(1, 0)
	UICorner18.Name = "DetectCorner"
	UICorner18.Parent = Frame18
	Frame19.Name = "FetchStep"
	Frame19.Parent = Frame14
	Frame19.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame19.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame19.BorderColor3 = Color3.fromRGB(30, 30, 30)
	Frame19.BorderSizePixel = 0
	Frame19.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame19.Size = UDim2.new(0, 15, 0, 15)
	Frame19.ZIndex = 2
	UICorner19.CornerRadius = UDim.new(1, 0)
	UICorner19.Name = "DetectCorner"
	UICorner19.Parent = Frame19
	UIStroke10.Parent = Frame19
	UIStroke10.Color = Color3.fromRGB(91, 91, 91)
	TextLabel15.Name = "FetchLabel"
	TextLabel15.Parent = Frame19
	TextLabel15.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel15.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel15.BackgroundTransparency = 1
	TextLabel15.BorderColor3 = Color3.fromRGB(30, 30, 30)
	TextLabel15.BorderSizePixel = 0
	TextLabel15.Position = UDim2.new(0.5, 0, 0, 22)
	TextLabel15.Size = UDim2.new(0, 44, 0, 10)
	TextLabel15.Font = Enum.Font.SourceSans
	TextLabel15.Text = "FETCH"
	TextLabel15.TextColor3 = Color3.fromRGB(120, 120, 120)
	TextLabel15.TextSize = 14
	TextLabel15.TextStrokeColor3 = Color3.fromRGB(120, 120, 120)
	Frame20.Name = "FetchInside"
	Frame20.Parent = Frame19
	Frame20.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame20.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame20.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame20.BorderSizePixel = 0
	Frame20.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame20.Size = UDim2.new(0, 9, 0, 9)
	UICorner20.CornerRadius = UDim.new(1, 0)
	UICorner20.Name = "DetectCorner"
	UICorner20.Parent = Frame20
	Frame21.Name = "Bar"
	Frame21.Parent = Frame14
	Frame21.BackgroundColor3 = Color3.fromRGB(255, 117, 117)
	Frame21.BorderColor3 = Color3.fromRGB(45, 45, 45)
	Frame21.BorderSizePixel = 0
	Frame21.ClipsDescendants = true
	Frame21.Size = UDim2.new(0, 0, 0, 9)
	Frame21.Visible = false
	UICorner21.CornerRadius = UDim.new(0, 10)
	UICorner21.Name = "MainCorner"
	UICorner21.Parent = Frame21
	ImageLabel7.Name = "Pattern"
	ImageLabel7.Parent = Frame21
	ImageLabel7.BackgroundTransparency = 1
	ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel7.Image = "rbxassetid://300134974"
	ImageLabel7.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel7.ImageTransparency = 0.7
	ImageLabel7.ScaleType = Enum.ScaleType.Tile
	ImageLabel7.TileSize = UDim2.new(0, 45, 0, 45)
	Frame22.Name = "Stroke2"
	Frame22.Parent = CanvasGroup2
	Frame22.AnchorPoint = Vector2.new(0.5, 0)
	Frame22.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Frame22.BorderColor3 = Color3.fromRGB(44, 44, 44)
	Frame22.Position = UDim2.new(0.5, 0, 0, 220)
	Frame22.Size = UDim2.new(1, 0, 0, 1)
	UICorner22.CornerRadius = UDim.new(0, 20)
	UICorner22.Name = "Stroke2Corner"
	UICorner22.Parent = Frame22
	Frame23.Name = "Texts"
	Frame23.Parent = CanvasGroup2
	Frame23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame23.BackgroundTransparency = 1
	Frame23.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame23.BorderSizePixel = 0
	Frame23.Position = UDim2.new(0.0562499985, 0, 0.381679386, 0)
	Frame23.Size = UDim2.new(0, 426, 0, 46)
	UIListLayout3.Name = "TextsLayout"
	UIListLayout3.Parent = Frame23
	UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout3.Padding = UDim.new(0, 5)
	TextLabel17.Name = "LoadingTheScriptForYou"
	TextLabel17.Parent = Frame23
	TextLabel17.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel17.BackgroundTransparency = 1
	TextLabel17.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel17.BorderSizePixel = 0
	TextLabel17.Size = UDim2.new(1, 0, 0, 16)
	TextLabel17.ZIndex = 2
	TextLabel17.Font = Enum.Font.GothamMedium
	TextLabel17.Text = "Loading the script for you."
	TextLabel17.TextColor3 = Color3.fromRGB(175, 175, 175)
	TextLabel17.TextSize = 16
	TextLabel17.TextWrapped = true
	TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel16.Name = "GameFind"
	TextLabel16.Parent = Frame23
	TextLabel16.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel16.BackgroundTransparency = 1
	TextLabel16.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel16.BorderSizePixel = 0
	TextLabel16.Size = UDim2.new(1, 0, 0, 16)
	TextLabel16.ZIndex = 2
	TextLabel16.Font = Enum.Font.GothamMedium
	TextLabel16.Text = "We are searching for the script for this game."
	TextLabel16.TextColor3 = Color3.fromRGB(175, 175, 175)
	TextLabel16.TextSize = 16
	TextLabel16.TextWrapped = true
	TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel16.RichText = true
	Frame24.Name = "Stroke1"
	Frame24.Parent = CanvasGroup2
	Frame24.AnchorPoint = Vector2.new(0.5, 0)
	Frame24.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Frame24.BorderColor3 = Color3.fromRGB(44, 44, 44)
	Frame24.Position = UDim2.new(0.5, 0, 0, 90)
	Frame24.Size = UDim2.new(0, 426, 0, 1)
	UICorner23.CornerRadius = UDim.new(0, 20)
	UICorner23.Name = "Stroke1Corner"
	UICorner23.Parent = Frame24
	ImageLabel8.Name = "Logo"
	ImageLabel8.Parent = CanvasGroup2
	ImageLabel8.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	ImageLabel8.BackgroundTransparency = 1
	ImageLabel8.BorderColor3 = Color3.fromRGB(26, 26, 26)
	ImageLabel8.Position = UDim2.new(0, 20, 0, 20)
	ImageLabel8.Size = UDim2.new(0, 50, 0, 50)
	ImageLabel8.ZIndex = 2
	ImageLabel8.Image = getcustomasset("Hawk/Assets/HawkLogo.png")
	TextLabel18.Name = "Subtitle"
	TextLabel18.Parent = ImageLabel8
	TextLabel18.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel18.BackgroundTransparency = 1
	TextLabel18.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel18.BorderSizePixel = 0
	TextLabel18.Position = UDim2.new(1.15172207, 0, 0.513440311, 0)
	TextLabel18.Size = UDim2.new(0, 129, 0, 16)
	TextLabel18.ZIndex = 2
	TextLabel18.Font = Enum.Font.GothamMedium
	TextLabel18.Text = "Game Detector"
	TextLabel18.TextColor3 = Color3.fromRGB(175, 175, 175)
	TextLabel18.TextScaled = true
	TextLabel18.TextSize = 15
	TextLabel18.TextWrapped = true
	TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel19.Name = "Title"
	TextLabel19.Parent = ImageLabel8
	TextLabel19.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel19.BackgroundTransparency = 1
	TextLabel19.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel19.BorderSizePixel = 0
	TextLabel19.Position = UDim2.new(1.15172207, 0, 0.216999128, 0)
	TextLabel19.Size = UDim2.new(0, 90, 0, 16)
	TextLabel19.ZIndex = 2
	TextLabel19.Font = Enum.Font.GothamMedium
	TextLabel19.Text = "Hawk HUB"
	TextLabel19.TextColor3 = Color3.fromRGB(240, 240, 240)
	TextLabel19.TextScaled = true
	TextLabel19.TextSize = 16
	TextLabel19.TextWrapped = true
	TextLabel19.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel20.Name = "LastUpdate"
	TextLabel20.Parent = ImageLabel8
	TextLabel20.AnchorPoint = Vector2.new(0, 0.5)
	TextLabel20.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel20.BackgroundTransparency = 1
	TextLabel20.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel20.BorderSizePixel = 0
	TextLabel20.Position = UDim2.new(6.85172367, 0, 0.5, 0)
	TextLabel20.Size = UDim2.new(0, 90, 0, 32)
	TextLabel20.ZIndex = 2
	TextLabel20.Font = Enum.Font.GothamMedium
	TextLabel20.Text = "<sc>Last Update</sc><br/><font color='rgb(175, 175, 175)'>" .. data3.Updater.LastUpdate .. "</font>"
	TextLabel20.TextColor3 = Color3.fromRGB(240, 240, 240)
	TextLabel20.TextSize = 16
	TextLabel20.TextWrapped = true
	TextLabel20.RichText = true
	TextLabel21.Name = "FunFact"
	TextLabel21.Parent = CanvasGroup2
	TextLabel21.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel21.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel21.BackgroundTransparency = 1
	TextLabel21.BorderColor3 = Color3.fromRGB(26, 26, 26)
	TextLabel21.BorderSizePixel = 0
	TextLabel21.Position = UDim2.new(0.5, 0, 0.843511462, 0)
	TextLabel21.Size = UDim2.new(0, 450, 0.0954198465, 16)
	TextLabel21.ZIndex = 2
	TextLabel21.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'></font>"
	TextLabel21.TextColor3 = Color3.fromRGB(175, 175, 175)
	TextLabel21.TextSize = 15
	TextLabel21.TextWrapped = true
	TextLabel21.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel21.RichText = true
	wait(2)
	local tween13 = TweenService:Create(CanvasGroup2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { GroupTransparency = 0 })
	tween13:Play()
	local tween14 = TweenService:Create(UIStroke7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Transparency = 0 })
	tween14:Play()
	local tween15 = TweenService:Create(ImageLabel9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageTransparency = 0.5 })
	tween15:Play()
	wait(2)
	TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'>This script was originally made at 2023</font>"
	
	--[[
		23.10.2026
	]]
	
	local data4 = {
		HideAndSeek = { GameId = "93740418", ScriptName = "Hide and Seek Extreme", FileName = "HideAndSeek.lua" },
		LuckyBlocks = { GameId = "279565647", ScriptName = "Lucky Blocks Battlegrounds", FileName = "LuckyBlocks.lua" },
		ZombieAttack = { GameId = "504035427", ScriptName = "Zombie Attack", FileName = "ZombieAttack.lua" },
		Skywars = { GameId = "354554209", ScriptName = "SKYWARS", FileName = "Skywars.lua" },
		toh = { GameId = "703124385", ScriptName = "Tower Of Hell", FileName = "toh.lua" },
		MM2 = { GameId = "66654135", ScriptName = "Murder Mystery 2", FileName = "MM2.lua" },
		Evade = { GameId = "3647333358", ScriptName = "Evade", FileName = "Evade.lua" },
		MergeANuke = { GameId = "10199301628", ScriptName = "Merge A Nuke", FileName = "MergeANuke.luau" },
		FleeTheFacility = { GameId = "372226183", ScriptName = "Flee The Facility", FileName = "FleeTheFacility.lua" },
	}
	
	local found
	for k8, v8 in pairs(data4) do
		if tonumber(v8.GameId) == tonumber(game.GameId) then
			found = v8
		end
	end
	if found then
		TextLabel16.Text = "Found Game: <font color='rgb(255,111,111)'>" .. found.ScriptName .. "</font>"
		local tween16 = TweenService:Create(UIStroke8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween16:Play()
		local tween17 = TweenService:Create(Frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween17:Play()
		local tween18 = TweenService:Create(TextLabel13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween18:Play()
		Frame21.Visible = true
		wait(2)
		TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'>All guis are custom made.</font>"
		local response7 = game:HttpGet("https://raw.githubusercontent.com/Eigh8tr/6kSvte6Ci9q8rkBfzdxBDkKj/refs/heads/main/" .. found.FileName)
		local tween19 = TweenService:Create(Frame21, TweenInfo.new(0.8, Enum.EasingStyle.Quad), { Size = UDim2.new(0.5, 0, 0, 9) })
		tween19:Play()
		tween19.Completed:Wait()
		local tween20 = TweenService:Create(UIStroke10, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween20:Play()
		local tween21 = TweenService:Create(Frame20, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween21:Play()
		local tween22 = TweenService:Create(TextLabel15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween22:Play()
		wait(2)
		TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'>Our ui lib is made by <font color='rgb(155,255,255)'>@matemahirbaz</font></font>"
		local tween23 = TweenService:Create(Frame21, TweenInfo.new(0.8, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 9) })
		tween23:Play()
		tween23.Completed:Wait()
		local tween24 = TweenService:Create(UIStroke9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween24:Play()
		local tween25 = TweenService:Create(Frame18, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween25:Play()
		local tween26 = TweenService:Create(TextLabel14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween26:Play()
		wait(2)
		local tween27 = TweenService:Create(CanvasGroup2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { GroupTransparency = 1 })
		tween27:Play()
		local tween28 = TweenService:Create(UIStroke7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Transparency = 1 })
		tween28:Play()
		local tween29 = TweenService:Create(ImageLabel9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageTransparency = 1 })
		tween29:Play()
		wait(1)
		ScreenGui2:Destroy()
		wait(2)
		loadstring(response7)()
	else
		TextLabel17.Text = "There isnt a matching script."
		TextLabel16.Text = "Currently opening <font color='rgb(255,255,255)'>Universal</font>"
		local tween30 = TweenService:Create(UIStroke8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween30:Play()
		local tween31 = TweenService:Create(Frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween31:Play()
		local tween32 = TweenService:Create(TextLabel13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween32:Play()
		Frame21.Visible = true
		wait(2)
		TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'>All guis are custom made.</font>"
		local response8 = game:HttpGet("https://hawkhub.lol/scripts/Universal.lua")
		local tween33 = TweenService:Create(Frame21, TweenInfo.new(0.8, Enum.EasingStyle.Quad), { Size = UDim2.new(0.5, 0, 0, 9) })
		tween33:Play()
		tween33.Completed:Wait()
		local tween34 = TweenService:Create(UIStroke10, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween34:Play()
		local tween35 = TweenService:Create(Frame20, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween35:Play()
		local tween36 = TweenService:Create(TextLabel15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween36:Play()
		wait(2)
		TextLabel21.Text = "Fun Fact: <font color='rgb(255,255,255)'>Our ui lib is made by <font color='rgb(155,255,255)'>@matemahirbaz</font></font>"
		local tween37 = TweenService:Create(Frame21, TweenInfo.new(0.8, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 9) })
		tween37:Play()
		tween37.Completed:Wait()
		local tween38 = TweenService:Create(UIStroke9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = Color3.fromRGB(255, 111, 111) })
		tween38:Play()
		local tween39 = TweenService:Create(Frame18, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 111, 111) })
		tween39:Play()
		local tween40 = TweenService:Create(TextLabel14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = Color3.fromRGB(255, 111, 111) })
		tween40:Play()
		wait(2)
		local tween41 = TweenService:Create(CanvasGroup2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { GroupTransparency = 1 })
		tween41:Play()
		local tween42 = TweenService:Create(UIStroke7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Transparency = 1 })
		tween42:Play()
		local tween43 = TweenService:Create(ImageLabel9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageTransparency = 1 })
		tween43:Play()
		wait(1)
		ScreenGui2:Destroy()
		wait(2)
		loadstring(response8)()
	end
end)
