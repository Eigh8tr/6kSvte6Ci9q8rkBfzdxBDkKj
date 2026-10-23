-- HawkLib.lua devirtualized: work/hawk pipeline (hawk_opmap.py adapter) + luraph_deob.py engine back end
-- source: scripts/Hawkhub/HawkLib.lua; protos: work/hawk/protos.json
getgenv().HawkLibLOADED = false
getgenv().HawkLibKeybind = "H"

if getgenv().KeyFunction then
	getgenv().KeyFunction:Disconnect()
	getgenv().KeyFunction = nil
end

for _, child in pairs(workspace:GetChildren()) do
	if child:IsA("Sound") and child.Name == "HawkSound" then
		child:Destroy()
	end
end

for _, child in pairs(game.CoreGui:GetChildren()) do
	if child.Name == "Hawk" then
		child:Destroy()
	elseif child.Name == "HawkNotifications" then
		child:Destroy()
	end
end

local v = pairs
local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

for _, child in v(playerGui:GetChildren()) do
	if child.Name == "Hawk" then
		child:Destroy()
	elseif child.Name == "HawkNotifications" then
		child:Destroy()
	end
end

local CoreGui = game:GetService("CoreGui")
local flag = false
local currentCamera = game:GetService("Workspace").CurrentCamera
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
game:GetService("UserInputService")

local tbl = {
	Themes = loadstring(game:HttpGet("https://hawkhub.lol/scripts/Themes.lua"))(),
	Flags = {},
	Elements = {},
	Colors = {},
}

local str = "Dark"
local bindableEvent = Instance.new("BindableEvent")

local connection = bindableEvent.Event:Connect(function(arg)
	if tbl.Themes[arg] then
		str = arg
	end

	if getgenv().HawkLibLOADED == false then
		event:Disconnect()
	end
end)

local GuiService = game:GetService("GuiService")
local tbl2 = { RainbowColorValue = 0, HueSelectionPosition = 0 }
local uiCorner = Instance.new("UICorner")
local imageLabel = Instance.new("ImageLabel")
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local uiCorner2 = Instance.new("UICorner")
local uiListLayout = Instance.new("UIListLayout")
local frame2 = Instance.new("Frame")
local uiListLayout2 = Instance.new("UIListLayout")
local uiCorner3 = Instance.new("UICorner")
local flag2 = false

local function fn(arg, arg2, arg3)
	local flag3 = false
	local position = nil
	local position2 = nil

	arg3.InputBegan:Connect(function(input)
		if flag2 then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag3 = true
			position = input.Position
			position2 = arg2.Position
		end
	end)

	arg3.InputEnded:Connect(function(input)
		if flag2 then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag3 = false
			position = nil
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if flag2 then
			return
		end

		if flag3 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local n = position2.Y.Offset + input.Position.Y - position.Y
			local absoluteSize = arg.AbsoluteSize
			local absoluteSize2 = arg2.AbsoluteSize
			local anchorPoint = arg2.AnchorPoint
			local n2 = anchorPoint.Y * absoluteSize2.Y - absoluteSize.Y * position2.Y.Scale
			local n3 = absoluteSize.Y - absoluteSize2.Y * (1 - anchorPoint.Y) - absoluteSize.Y * position2.Y.Scale
			local n4 = math.clamp(position2.X.Offset + input.Position.X - position.X, anchorPoint.X * absoluteSize2.X - absoluteSize.X * position2.X.Scale, absoluteSize.X - absoluteSize2.X * (1 - anchorPoint.X) - absoluteSize.X * position2.X.Scale)
			local n5 = math.clamp(n, n2, n3)
			local udim2 = UDim2.new(position2.X.Scale, n4, position2.Y.Scale, n5)
			local v2 = Enum
			TweenService:Create(arg2, TweenInfo.new(0.2, v2.EasingStyle.Sine, v2.EasingDirection.Out), { Position = udim2 }):Play()
		end
	end)
end

imageLabel.Name = "Circle"
imageLabel.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
imageLabel.BackgroundTransparency = 1
imageLabel.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
imageLabel.Image = "rbxassetid://266543268"
imageLabel.ImageTransparency = 0.8
imageLabel.BorderSizePixel = 0
uiCorner.Parent = imageLabel
screenGui.Name = "Hawk"
screenGui.Parent = CoreGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.ClipToDeviceSafeArea = false
frame.Name = "NotificationListing"
frame.Parent = screenGui
frame.AnchorPoint = Vector2.new(1, 0)
frame.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.fromRGB(42, 44, 42)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.986912012, 0, -0.0441767052, 0)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.ZIndex = 3
uiCorner2.Parent = frame
uiListLayout.Parent = frame
local v2 = Enum
uiListLayout.HorizontalAlignment = v2.HorizontalAlignment.Right
uiListLayout.SortOrder = v2.SortOrder.LayoutOrder
uiListLayout.VerticalAlignment = v2.VerticalAlignment.Bottom
uiListLayout.Padding = UDim.new(0, 13)
frame2.Name = "NotifyListing"
frame2.Parent = screenGui
frame2.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
frame2.BackgroundTransparency = 1
frame2.BorderColor3 = Color3.fromRGB(42, 44, 42)
frame2.BorderSizePixel = 0
frame2.Position = UDim2.new(0.0177570097, 0, -0.0441767052, 0)
frame2.Size = UDim2.new(1, 0, 1, 0)
frame2.ZIndex = 3
uiListLayout2.Parent = frame2
local v3 = Enum
uiListLayout2.SortOrder = v3.SortOrder.LayoutOrder
uiListLayout2.VerticalAlignment = v3.VerticalAlignment.Bottom
uiListLayout2.Padding = UDim.new(0, 13)
uiCorner3.Parent = frame2
tbl2.RainbowColorValue = 1e27

coroutine.wrap(function()
	while wait() do
		local v4 = tbl2
		v4.RainbowColorValue = v4.RainbowColorValue + 0.0039215686274509803
		v4.HueSelectionPosition = v4.HueSelectionPosition + 1

		if v4.RainbowColorValue >= 1 then
			tbl2.RainbowColorValue = 0
		end

		if tbl2.HueSelectionPosition == 80 then
			tbl2.HueSelectionPosition = 0
		end

		if getgenv().HawkLibLOADED ~= false then
			continue
		end
		break
	end
end)()

getgenv().HawkLibLOADED = true
local flag3 = false

tbl.ToggleUI = function()
	for _, child in pairs(screenGui:GetChildren()) do
		if child:IsA("Frame") and child.Name == "Main" then
			if flag == false then
				flag = true
				child.Visible = false

				if flag3 == false then
					flag3 = true

					tbl:CreateNotification({
						Title = "Hawk Lib",
						Description = "GUI has minimized. Current key is: " .. getgenv().HawkLibKeybind,
						NotificationTransparency = 0.4,
						IconBackgroundColor = Color3.fromRGB(67, 136, 246),
						IconId = "rbxassetid://10723407389",
						Cooldown = 4,
					})
				end
			elseif flag == true then
				flag = false
				child.Visible = true
			end
		end
	end
end

tbl.Destroy = function()
	screenGui:Destroy()
end

tbl.CreateNotification = function(arg, arg2)
	local title = arg2.Title
	local description = arg2.Description
	local notificationTransparency = arg2.NotificationTransparency
	local iconBackgroundColor = arg2.IconBackgroundColor
	local iconId = arg2.IconId
	local cooldown = arg2.Cooldown
	local frame3 = Instance.new("Frame")
	local frame4 = Instance.new("Frame")
	local frame5 = Instance.new("Frame")
	local imageLabel2 = Instance.new("ImageLabel")
	local uiCorner4 = Instance.new("UICorner")
	local frame6 = Instance.new("Frame")
	local textLabel = Instance.new("TextLabel")
	local textLabel2 = Instance.new("TextLabel")
	local uiListLayout3 = Instance.new("UIListLayout")
	local uiPadding = Instance.new("UIPadding")
	local uiCorner5 = Instance.new("UICorner")
	local uiStroke = Instance.new("UIStroke")
	local uiPadding2 = Instance.new("UIPadding")
	local uiCorner6 = Instance.new("UICorner")
	frame3.Name = "NotificationContainer"
	frame3.Parent = frame
	frame3.Active = true
	frame3.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BackgroundTransparency = 1
	frame3.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BorderSizePixel = 0
	frame3.Size = UDim2.new(1, 0, 1, 0)
	frame3.ClipsDescendants = false
	frame4.Name = "Notification"
	frame4.Parent = frame3
	frame4.Active = true
	frame4.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderSizePixel = 0
	frame4.Position = UDim2.new(1000, 0, 0, 0)
	frame4.Size = UDim2.new(0, 287, 0, 61)
	frame4.AutomaticSize = Enum.AutomaticSize.Y
	frame4.BackgroundTransparency = notificationTransparency
	frame5.Name = "IconFrame"
	frame5.Parent = frame4
	frame5.AnchorPoint = Vector2.new(0, 0.5)
	frame5.BackgroundColor3 = iconBackgroundColor
	frame5.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
	frame5.Size = UDim2.new(0, 41, 0, 41)
	imageLabel2.Name = "Icon"
	imageLabel2.Parent = frame5
	imageLabel2.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderColor3 = Color3.fromRGB(155, 135, 255)
	imageLabel2.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
	imageLabel2.Size = UDim2.new(0, 26, 0, 26)
	imageLabel2.Image = iconId
	uiCorner4.Parent = frame5
	frame6.Name = "NotificationListing"
	frame6.Parent = frame4
	frame6.Active = true
	frame6.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame6.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame6.BorderSizePixel = 0
	frame6.Position = UDim2.new(0.202000007, 0, 0, 0)
	frame6.Size = UDim2.new(0.756097555, 0, 1, 0)
	local v4 = Enum
	frame6.AutomaticSize = v4.AutomaticSize.Y
	frame6.BackgroundTransparency = 1
	uiListLayout3.Parent = frame6
	uiListLayout3.SortOrder = v4.SortOrder.LayoutOrder
	uiListLayout3.VerticalAlignment = v4.VerticalAlignment.Center
	uiListLayout3.FillDirection = v4.FillDirection.Vertical
	textLabel.Name = "NotificationTitle"
	textLabel.Parent = frame6
	textLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BorderSizePixel = 0
	textLabel.Size = UDim2.new(0.912857533, 0, 0, 0)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.Text = title
	textLabel.TextColor3 = tbl.Themes[str].ItemTitleColor
	textLabel.TextSize = 14
	textLabel.TextWrapped = true
	local v5 = Enum
	textLabel.TextXAlignment = v5.TextXAlignment.Left
	textLabel.AutomaticSize = v5.AutomaticSize.Y
	textLabel2.Name = "NotificationDescription"
	textLabel2.Parent = frame6
	textLabel2.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BorderSizePixel = 0
	textLabel2.Size = UDim2.new(0.912857533, 0, 0, 0)
	textLabel2.Font = Enum.Font.Gotham
	textLabel2.Text = description
	textLabel2.TextColor3 = tbl.Themes[str].ItemDescriptionColor
	textLabel2.TextSize = 14
	textLabel2.TextWrapped = true
	local v6 = Enum
	textLabel2.TextXAlignment = v6.TextXAlignment.Left
	textLabel2.AutomaticSize = v6.AutomaticSize.Y
	uiPadding.Parent = frame6
	uiPadding.PaddingBottom = UDim.new(0, 5)
	uiPadding.PaddingTop = UDim.new(0, 5)
	uiCorner5.CornerRadius = UDim.new(0, 10)
	uiCorner5.Parent = frame4
	uiStroke.Parent = frame4
	uiStroke.Color = tbl.Themes[str].NotificationStrokeColor
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiPadding2.Parent = frame4
	uiPadding2.PaddingBottom = UDim.new(0, 10)
	uiPadding2.PaddingTop = UDim.new(0, 10)
	uiCorner6.CornerRadius = UDim.new(0, 10)
	uiCorner6.Parent = frame3

	local connection2 = bindableEvent.Event:Connect(function(arg3)
		local v7 = tbl
		local tbl3 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl3):Play()
		local tbl4 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl4):Play()
		local tbl5 = { TextColor3 = v7.Themes[arg3].ItemTitleColor }
		TweenService:Create(textLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
		local tbl6 = { TextColor3 = v7.Themes[arg3].ItemDescriptionColor }
		TweenService:Create(textLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
		local tbl7 = { Color = v7.Themes[arg3].NotificationStrokeColor }
		TweenService:Create(uiStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()

		if getgenv().HawkLibLOADED == false then
			connection:Disconnect()
		end
	end)

	local y = frame4.AbsoluteSize.Y

	task.spawn(function()
		local v7 = frame3
		v7.Size = UDim2.new(0, 0, 0, 0)
		v7.ClipsDescendants = true
		frame4.Position = UDim2.new(3, 0, 0, 0)
		local v8 = frame3
		local v9 = y
		TweenService:Create(v8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, v9) }):Play()
		task.wait(0.2)
		TweenService:Create(v8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, v9) }):Play()
		task.wait(0.2)
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) }):Play()
		task.wait(cooldown)
		local v10
		TweenService:Create(v10, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { Position = UDim2.new(3, 0, 0, 0) }):Play()
		task.wait(0.2)
		local v11 = frame3
		TweenService:Create(v11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, y) }):Play()
		task.wait(0.2)
		TweenService:Create(v11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 0) }):Play()
		v11:Destroy()
		connection2:Disconnect()
	end)
end

tbl.CreateTimer = function(arg, arg2)
	local title = arg2.Title
	local description = arg2.Description
	local timerTransparency = arg2.TimerTransparency
	local cooldown = arg2.Cooldown
	local frame3 = Instance.new("Frame")
	local uiCorner4 = Instance.new("UICorner")
	local frame4 = Instance.new("Frame")
	local uiPadding = Instance.new("UIPadding")
	local uiCorner5 = Instance.new("UICorner")
	local uiStroke = Instance.new("UIStroke")
	local frame5 = Instance.new("Frame")
	local textLabel = Instance.new("TextLabel")
	local textLabel2 = Instance.new("TextLabel")
	local uiListLayout3 = Instance.new("UIListLayout")
	local uiPadding2 = Instance.new("UIPadding")
	local frame6 = Instance.new("Frame")
	frame3.Name = "TimerContainer"
	frame3.Parent = frame
	frame3.Active = true
	frame3.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BackgroundTransparency = 1
	frame3.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BorderSizePixel = 0
	frame3.Size = UDim2.new(1, 0, 1, 0)
	frame3.ClipsDescendants = false
	uiCorner4.CornerRadius = UDim.new(0, 10)
	uiCorner4.Parent = frame3
	frame4.Name = "Timer"
	frame4.Parent = frame3
	frame4.Active = true
	frame4.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderSizePixel = 0
	frame4.Position = UDim2.new(1000, 0, 0, 0)
	frame4.Size = UDim2.new(0, 287, 0, 61)
	frame4.AutomaticSize = Enum.AutomaticSize.Y
	frame4.BackgroundTransparency = timerTransparency
	uiPadding.Parent = frame4
	uiPadding.PaddingBottom = UDim.new(0, 10)
	uiPadding.PaddingTop = UDim.new(0, 10)
	uiCorner5.CornerRadius = UDim.new(0, 10)
	uiCorner5.Parent = frame4
	uiStroke.Parent = frame4
	uiStroke.Color = tbl.Themes[str].NotificationStrokeColor
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	frame5.Name = "TimerListing"
	frame5.Parent = frame4
	frame5.Active = true
	frame5.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame5.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame5.BorderSizePixel = 0
	frame5.Size = UDim2.new(1, 0, 1, 0)
	local v4 = Enum
	frame5.AutomaticSize = v4.AutomaticSize.Y
	frame5.BackgroundTransparency = 1
	uiListLayout3.Parent = frame5
	uiListLayout3.SortOrder = v4.SortOrder.LayoutOrder
	uiListLayout3.VerticalAlignment = v4.VerticalAlignment.Center
	textLabel.Name = "TimerTitle"
	textLabel.Parent = frame5
	textLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BorderSizePixel = 0
	textLabel.Position = UDim2.new(0, 0, 1.12196972e-06, 0)
	textLabel.Size = UDim2.new(0.912857533, 0, 0, 0)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.Text = title
	textLabel.TextColor3 = tbl.Themes[str].ItemTitleColor
	textLabel.TextSize = 14
	textLabel.TextWrapped = true
	local v5 = Enum
	textLabel.TextXAlignment = v5.TextXAlignment.Left
	textLabel.AutomaticSize = v5.AutomaticSize.Y
	textLabel2.Name = "TimerDescription"
	textLabel2.Parent = frame5
	textLabel2.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BorderSizePixel = 0
	textLabel2.Size = UDim2.new(0.912857533, 0, 0, 0)
	textLabel2.Font = Enum.Font.Gotham
	textLabel2.Text = description
	textLabel2.TextColor3 = tbl.Themes[str].ItemDescriptionColor
	textLabel2.TextSize = 14
	textLabel2.TextWrapped = true
	local v6 = Enum
	textLabel2.TextXAlignment = v6.TextXAlignment.Left
	textLabel2.AutomaticSize = v6.AutomaticSize.Y
	uiPadding2.Parent = frame5
	uiPadding2.PaddingBottom = UDim.new(0, 5)
	uiPadding2.PaddingLeft = UDim.new(0, 15)
	uiPadding2.PaddingTop = UDim.new(0, 5)
	frame6.Name = "TimerBar"
	frame6.Parent = frame4
	frame6.AnchorPoint = Vector2.new(0, 1)
	frame6.BackgroundColor3 = tbl.Themes[str].TimerBarColor
	frame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	frame6.BorderSizePixel = 0
	frame6.Position = UDim2.new(0, -30, 1, 5)
	frame6.Size = UDim2.new(0, 0, -1, 0)
	frame6.BackgroundTransparency = 0.2

	local connection2 = bindableEvent.Event:Connect(function(arg3)
		local v7 = tbl
		local tbl3 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl3):Play()
		local tbl4 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl4):Play()
		local tbl5 = { TextColor3 = v7.Themes[arg3].ItemTitleColor }
		TweenService:Create(textLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
		local tbl6 = { TextColor3 = v7.Themes[arg3].ItemDescriptionColor }
		TweenService:Create(textLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
		local tbl7 = { BackgroundColor3 = v7.Themes[arg3].TimerBarColor }
		TweenService:Create(frame6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
		local tbl8 = { Color = v7.Themes[arg3].NotificationStrokeColor }
		TweenService:Create(uiStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()

		if getgenv().HawkLibLOADED == false then
			connection:Disconnect()
		end
	end)

	local y = frame4.AbsoluteSize.Y

	task.spawn(function()
		local v7 = frame3
		v7.Size = UDim2.new(0, 0, 0, 0)
		v7.ClipsDescendants = true
		frame4.Position = UDim2.new(3, 0, 0, 0)
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, y) }):Play()
		task.wait(0.1)
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) }):Play()
		task.wait(0.2)
		local quad = Enum.EasingStyle.Quad
		TweenService:Create(frame6, TweenInfo.new(tonumber(cooldown), quad), { Size = UDim2.new(1.2, 0, -1, 0) }):Play()

		repeat
			wait()
		until frame6.Size == UDim2.new(1.2, 0, -1, 0)

		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(3, 0, 0, 0) }):Play()
		task.wait(0.2)
		local v8 = frame3
		TweenService:Create(v8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, y) }):Play()
		task.wait(0.2)
		v8:Destroy()
		connection2:Disconnect()
	end)
end

tbl.CreateNotify = function(arg, arg2)
	local title = arg2.Title
	local description = arg2.Description
	local notifyTransparency = arg2.NotifyTransparency
	local iconBackgroundColor = arg2.IconBackgroundColor
	local iconId = arg2.IconId

	local callback = arg2.Callback or function()
	end

	local frame3 = Instance.new("Frame")
	local uiCorner4 = Instance.new("UICorner")
	local frame4 = Instance.new("Frame")
	local uiPadding = Instance.new("UIPadding")
	local uiCorner5 = Instance.new("UICorner")
	local frame5 = Instance.new("Frame")
	local imageLabel2 = Instance.new("ImageLabel")
	local uiCorner6 = Instance.new("UICorner")
	local uiStroke = Instance.new("UIStroke")
	local frame6 = Instance.new("Frame")
	local textLabel = Instance.new("TextLabel")
	local textLabel2 = Instance.new("TextLabel")
	local uiListLayout3 = Instance.new("UIListLayout")
	local uiPadding2 = Instance.new("UIPadding")
	local imageButton = Instance.new("ImageButton")
	local imageButton2 = Instance.new("ImageButton")
	frame3.Name = "NotifyContainer"
	frame3.Parent = frame2
	frame3.Active = true
	frame3.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BackgroundTransparency = 1
	frame3.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame3.BorderSizePixel = 0
	frame3.Position = UDim2.new(0, 0, 0, 0)
	frame3.Size = UDim2.new(1, 0, 1, 0)
	frame3.ClipsDescendants = false
	uiCorner4.CornerRadius = UDim.new(0, 10)
	uiCorner4.Parent = frame3
	frame4.Name = "Notify"
	frame4.Parent = frame3
	frame4.Active = true
	frame4.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame4.BorderSizePixel = 0
	frame4.ClipsDescendants = true
	frame4.Size = UDim2.new(0, 287, 0, 61)
	frame4.Position = UDim2.new(-1000, 0, 0, 0)
	frame4.AutomaticSize = Enum.AutomaticSize.Y
	frame4.BackgroundTransparency = notifyTransparency
	uiPadding.Parent = frame4
	uiPadding.PaddingBottom = UDim.new(0, 10)
	uiPadding.PaddingTop = UDim.new(0, 10)
	uiCorner5.CornerRadius = UDim.new(0, 10)
	uiCorner5.Parent = frame4
	frame5.Name = "IconFrame"
	frame5.Parent = frame4
	frame5.AnchorPoint = Vector2.new(0, 0.5)
	frame5.BackgroundColor3 = iconBackgroundColor
	frame5.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
	frame5.Size = UDim2.new(0, 41, 0, 41)
	imageLabel2.Name = "Icon"
	imageLabel2.Parent = frame5
	imageLabel2.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderColor3 = Color3.fromRGB(155, 135, 255)
	imageLabel2.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
	imageLabel2.Size = UDim2.new(0, 26, 0, 26)
	imageLabel2.Image = iconId
	uiCorner6.Parent = frame5
	uiStroke.Parent = frame4
	uiStroke.Color = tbl.Themes[str].NotificationStrokeColor
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	frame6.Name = "NotifyyListing"
	frame6.Parent = frame4
	frame6.Active = true
	frame6.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
	frame6.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
	frame6.BorderSizePixel = 0
	frame6.Position = UDim2.new(0.202000007, 0, 0, 0)
	frame6.Size = UDim2.new(0.756097555, 0, 1, 0)
	local v4 = Enum
	frame6.AutomaticSize = v4.AutomaticSize.Y
	frame6.BackgroundTransparency = 1
	uiListLayout3.Parent = frame6
	uiListLayout3.SortOrder = v4.SortOrder.LayoutOrder
	uiListLayout3.VerticalAlignment = v4.VerticalAlignment.Center
	uiPadding2.Parent = frame6
	uiPadding2.PaddingBottom = UDim.new(0, 5)
	uiPadding2.PaddingTop = UDim.new(0, 5)
	textLabel.Name = "NotifyTitle"
	textLabel.Parent = frame6
	textLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel.BorderSizePixel = 0
	textLabel.Size = UDim2.new(0.871382892, 0, 0, 0)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.Text = title
	textLabel.TextColor3 = tbl.Themes[str].ItemTitleColor
	textLabel.TextSize = 14
	textLabel.TextWrapped = true
	local v5 = Enum
	textLabel.TextXAlignment = v5.TextXAlignment.Left
	textLabel.AutomaticSize = v5.AutomaticSize.Y
	textLabel2.Name = "NotifyDescription"
	textLabel2.Parent = frame6
	textLabel2.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderColor3 = Color3.fromRGB(43, 43, 41)
	textLabel2.BorderSizePixel = 0
	textLabel2.Size = UDim2.new(0.871382892, 0, 0, 0)
	textLabel2.Font = Enum.Font.Gotham
	textLabel2.Text = description
	textLabel2.TextColor3 = tbl.Themes[str].ItemDescriptionColor
	textLabel2.TextSize = 14
	textLabel2.TextWrapped = true
	local v6 = Enum
	textLabel2.TextXAlignment = v6.TextXAlignment.Left
	textLabel2.AutomaticSize = v6.AutomaticSize.Y
	imageButton.Name = "clear"
	imageButton.Parent = frame4
	imageButton.AnchorPoint = Vector2.new(1, 1)
	imageButton.BackgroundTransparency = 1
	imageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	imageButton.LayoutOrder = 5
	imageButton.Position = UDim2.new(1, -15, 1, 0)
	imageButton.Size = UDim2.new(0, 19, 0, 19)
	imageButton.ZIndex = 2
	imageButton.Image = "rbxassetid://3926305904"
	imageButton.ImageColor3 = tbl.Themes[str].ItemTitleColor
	imageButton.ImageRectOffset = Vector2.new(924, 724)
	imageButton.ImageRectSize = Vector2.new(36, 36)

	imageButton.MouseButton1Click:Connect(function()
		TweenService:Create(frame4, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Position = UDim2.new(-3, 0, 0, 0) }):Play()
		task.wait(0.4)
		TweenService:Create(frame3, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, -13) }):Play()
		frame4.Position = UDim2.new(-1000, 0, 0, 0)
		task.wait(0.4)
		local v7 = frame3
		TweenService:Create(v7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, -13) }):Play()
		task.wait(0.4)
		v7:Destroy()
	end)

	imageButton2.Name = "done"
	imageButton2.Parent = frame4
	imageButton2.AnchorPoint = Vector2.new(1, 0)
	imageButton2.BackgroundTransparency = 1
	imageButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	imageButton2.LayoutOrder = 1
	imageButton2.Position = UDim2.new(1, -15, 0, 0)
	imageButton2.Size = UDim2.new(0, 19, 0, 19)
	imageButton2.ZIndex = 2
	imageButton2.Image = "rbxassetid://3926305904"
	imageButton2.ImageColor3 = tbl.Themes[str].ItemTitleColor
	imageButton2.ImageRectOffset = Vector2.new(644, 204)
	imageButton2.ImageRectSize = Vector2.new(36, 36)

	imageButton2.MouseButton1Click:Connect(function()
		xpcall(callback, function(arg3)
			warn("[Error]: ", arg3)
		end)

		TweenService:Create(frame4, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Position = UDim2.new(-3, 0, 0, 0) }):Play()
		task.wait(0.4)
		TweenService:Create(frame3, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, -13) }):Play()
		frame4.Position = UDim2.new(-1000, 0, 0, 0)
		task.wait(0.4)
		local v7 = frame3
		TweenService:Create(v7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, -13) }):Play()
		task.wait(0.4)
		v7:Destroy()
	end)

	bindableEvent.Event:Connect(function(arg3)
		local v7 = tbl
		local tbl3 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl3):Play()
		local tbl4 = { BackgroundColor3 = v7.Themes[arg3].ItemBackgroundColor }
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl4):Play()
		local tbl5 = { TextColor3 = v7.Themes[arg3].ItemTitleColor }
		TweenService:Create(textLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
		local tbl6 = { TextColor3 = v7.Themes[arg3].ItemDescriptionColor }
		TweenService:Create(textLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
		local tbl7 = { Color = v7.Themes[arg3].NotificationStrokeColor }
		TweenService:Create(uiStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
		local tbl8 = { ImageColor3 = v7.Themes[arg3].ItemTitleColor }
		TweenService:Create(imageButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
		local tbl9 = { ImageColor3 = v7.Themes[arg3].ItemTitleColor }
		TweenService:Create(imageButton2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()

		if getgenv().HawkLibLOADED == false then
			connection:Disconnect()
		end
	end)

	local y = frame4.AbsoluteSize.Y

	task.spawn(function()
		local v7 = frame3
		v7.Size = UDim2.new(0, 0, 0, 0)
		v7.ClipsDescendants = true
		frame4.Position = UDim2.new(-10, 0, 0, 0)
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, y) }):Play()
		task.wait(0.1)
		TweenService:Create(frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) }):Play()
	end)
end

tbl.CreateWindow = function(arg, arg2)
	local scriptName = arg2.ScriptName
	local sizeX = arg2.SizeX
	local sizeY = arg2.SizeY
	local theme = arg2.Theme
	local config = arg2.Config or {}
	local folderPath = config.FolderPath
	local fileName = config.FileName
	str = theme

	local closeButton = arg2.CloseButton or function()
	end

	local minimizeMethod = arg2.MinimizeMethod
	local openButtonIcon = arg2.OpenButtonIcon
	local v4 = xpcall

	v4(function()
		tonumber(sizeX)
	end, function(arg3)
		warn("[Hawk Lib]:", arg3)
	end)

	v4(function()
		tonumber(sizeY)
	end, function(arg3)
		warn("[Hawk Lib]:", arg3)
	end)

	if not isfolder(folderPath) then
		makefolder(folderPath)
	end

	local frame3 = Instance.new("Frame")
	local frame4 = Instance.new("Frame")
	local imageLabel2 = Instance.new("ImageLabel")
	local uiSizeConstraint = Instance.new("UISizeConstraint")
	local uiCorner4 = Instance.new("UICorner")
	local frame5 = Instance.new("Frame")
	local uiCorner5 = Instance.new("UICorner")
	local uiStroke = Instance.new("UIStroke")
	local frame6 = Instance.new("Frame")
	local textLabel = Instance.new("TextLabel")
	local frame7 = Instance.new("Frame")
	local uiListLayout3 = Instance.new("UIListLayout")
	local imageButton = Instance.new("ImageButton")
	local imageButton2 = Instance.new("ImageButton")
	local imageButton3 = Instance.new("ImageButton")
	local frame8 = Instance.new("Frame")
	local frame9 = Instance.new("Frame")
	local scrollingFrame = Instance.new("ScrollingFrame")
	local uiListLayout4 = Instance.new("UIListLayout")
	local uiPadding = Instance.new("UIPadding")
	local frame10 = Instance.new("Frame")
	local uiCorner6 = Instance.new("UICorner")
	local uiCorner7 = Instance.new("UICorner")
	frame3.Name = "Main"
	frame3.Parent = screenGui
	frame3.AnchorPoint = Vector2.new(0, 0)
	frame3.BackgroundColor3 = tbl.Themes[str].BackgroundColor
	frame3.BackgroundTransparency = 1
	frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	frame3.BorderSizePixel = 0
	local v5 = tonumber
	frame3.Size = UDim2.new(0, tonumber(sizeX), 0, v5(sizeY))
	frame3.Position = UDim2.fromOffset(currentCamera.ViewportSize.X / 2 - frame3.Size.X.Offset / 2, currentCamera.ViewportSize.Y / 2 - GuiService:GetGuiInset().Y - frame3.Size.Y.Offset / 2)
	fn(screenGui, frame3, frame3)
	frame4.Name = "Shadow"
	frame4.Parent = frame3
	frame4.AnchorPoint = Vector2.new(0.5, 0.5)
	frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	frame4.BackgroundTransparency = 1
	frame4.BorderColor3 = Color3.fromRGB(27, 42, 53)
	frame4.BorderSizePixel = 0
	frame4.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame4.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
	frame4.ZIndex = 0
	imageLabel2.Name = "Image"
	imageLabel2.Parent = frame4
	imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
	imageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	imageLabel2.BorderSizePixel = 0
	imageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
	imageLabel2.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
	imageLabel2.ZIndex = 2
	imageLabel2.Image = "rbxassetid://5587865193"
	imageLabel2.ImageColor3 = tbl.Themes[str].ShadowColor
	imageLabel2.ImageTransparency = 0.5
	uiSizeConstraint.Parent = frame3
	uiSizeConstraint.MaxSize = Vector2.new(99999, 99999)
	uiSizeConstraint.MinSize = Vector2.new(480, 259)
	uiCorner4.CornerRadius = UDim.new(0, 10)
	uiCorner4.Parent = frame3
	frame5.Name = "Window"
	frame5.Parent = frame3
	frame5.AnchorPoint = Vector2.new(0.5, 0.5)
	frame5.BackgroundColor3 = tbl.Themes[str].BackgroundColor
	frame5.BorderColor3 = tbl.Themes[str].BackgroundColor
	frame5.BorderSizePixel = 0
	frame5.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame5.Size = UDim2.new(1, 0, 1, 0)
	frame5.ZIndex = 0
	uiCorner5.CornerRadius = UDim.new(0, 10)
	uiCorner5.Parent = frame5
	uiStroke.Parent = frame5
	uiStroke.Color = tbl.Themes[str].WindowStrokeColor
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	frame6.Name = "TitleBar"
	frame6.Parent = frame5
	frame6.BackgroundColor3 = tbl.Themes[str].TopBar
	frame6.BorderColor3 = tbl.Themes[str].TopBar
	frame6.BorderSizePixel = 0
	frame6.Size = UDim2.new(1, 0, 0, 49)
	frame6.ZIndex = 2
	textLabel.Name = "Title"
	textLabel.Parent = frame6
	textLabel.AnchorPoint = Vector2.new(0, 0.5)
	textLabel.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(36, 36, 36)
	textLabel.BorderSizePixel = 0
	textLabel.Position = UDim2.new(0, 15, 0.5, 0)
	textLabel.Size = UDim2.new(1, -400, 1, -30)
	textLabel.Font = Enum.Font.Gotham
	textLabel.Text = scriptName
	textLabel.TextColor3 = tbl.Themes[str].TitleColor
	textLabel.TextSize = 16
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.RichText = true
	frame7.Name = "BarButtons"
	frame7.Parent = frame6
	frame7.AnchorPoint = Vector2.new(1, 0)
	frame7.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	frame7.BackgroundTransparency = 1
	frame7.BorderColor3 = Color3.fromRGB(31, 31, 31)
	frame7.BorderSizePixel = 0
	frame7.Position = UDim2.new(1, -20, 0, 0)
	frame7.Size = UDim2.new(0.177668899, 0, 1, 0)
	uiListLayout3.Parent = frame7
	local v6 = Enum
	uiListLayout3.FillDirection = v6.FillDirection.Horizontal
	uiListLayout3.HorizontalAlignment = v6.HorizontalAlignment.Right
	uiListLayout3.SortOrder = v6.SortOrder.LayoutOrder
	uiListLayout3.VerticalAlignment = v6.VerticalAlignment.Center
	uiListLayout3.Padding = UDim.new(0, 20)
	imageButton.Name = "Minimize"
	imageButton.Parent = frame7
	imageButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	imageButton.BackgroundTransparency = 1
	imageButton.BorderColor3 = Color3.fromRGB(31, 31, 31)
	imageButton.BorderSizePixel = 0
	imageButton.Position = UDim2.new(0.805743158, 0, 0.295453846, 0)
	imageButton.Size = UDim2.new(0, 18, 1, -30)
	imageButton.Image = "rbxassetid://10734896206"
	imageButton.ImageColor3 = tbl.Themes[str].TopBarButtons
	local flag4 = false

	if minimizeMethod == "Animation" then
		local flag5 = false
		local flag6 = false
		local y = frame3.AbsoluteSize.Y
		local x = frame3.AbsoluteSize.X

		imageButton.MouseButton1Click:Connect(function()
			if flag6 == true then
				return
			end
			flag6 = true

			if flag5 == false then
				flag4 = true
				local v7 = frame3
				y = v7.AbsoluteSize.Y
				x = v7.AbsoluteSize.X
				uiSizeConstraint.MinSize = Vector2.new(480, 49)
				local v8 = Enum
				local tween = TweenService:Create(frame3, TweenInfo.new(0.2, v8.EasingStyle.Sine, v8.EasingDirection.Out), { Size = UDim2.new(0, x, 0, 49) })
				tween:Play()
				tween.Completed:Wait()
				imageButton.Image = "rbxassetid://111774323017047"
				flag5 = true
				flag6 = false
			elseif flag5 == true then
				local v7 = Enum
				local tween = TweenService:Create(frame3, TweenInfo.new(0.2, v7.EasingStyle.Sine, v7.EasingDirection.Out), { Size = UDim2.new(0, x, 0, y) })
				tween:Play()
				tween.Completed:Wait()
				imageButton.Image = "rbxassetid://10734896206"
				task.wait(0.1)
				uiSizeConstraint.MinSize = Vector2.new(480, 259)
				flag5 = false
				flag6 = false
				flag4 = false
			end
		end)
	elseif minimizeMethod == "Button" then
		local frame11 = Instance.new("Frame")
		local uiCorner8 = Instance.new("UICorner")
		local uiPadding2 = Instance.new("UIPadding")
		local imageButton4 = Instance.new("ImageButton")
		local uiStroke2 = Instance.new("UIStroke")
		frame11.Name = "OpenFrame"
		frame11.Parent = screenGui
		frame11.AnchorPoint = Vector2.new(0, 0.5)
		frame11.BackgroundColor3 = tbl.Themes[str].TopBar
		frame11.BorderColor3 = tbl.Themes[str].TopBar
		frame11.BorderSizePixel = 0
		frame11.Position = UDim2.new(0.0139365355, 0, 0.5, 0)
		frame11.BackgroundTransparency = 1
		frame11.Visible = false
		frame11.AutomaticSize = Enum.AutomaticSize.XY
		uiCorner8.CornerRadius = UDim.new(1, 0)
		uiCorner8.Parent = frame11
		uiPadding2.Parent = frame11
		uiPadding2.PaddingBottom = UDim.new(0, 12)
		uiPadding2.PaddingLeft = UDim.new(0, 12)
		uiPadding2.PaddingRight = UDim.new(0, 12)
		uiPadding2.PaddingTop = UDim.new(0, 12)
		imageButton4.Name = "OpenButton"
		imageButton4.Parent = frame11
		imageButton4.BackgroundColor3 = tbl.Themes[str].TopBar
		imageButton4.BackgroundTransparency = 1
		imageButton4.BorderColor3 = tbl.Themes[str].TopBar
		imageButton4.BorderSizePixel = 0
		imageButton4.Size = UDim2.new(0, 50, 0, 50)
		imageButton4.Image = openButtonIcon
		imageButton4.ImageTransparency = 1
		imageButton4.AutomaticSize = Enum.AutomaticSize.XY
		uiStroke2.Parent = frame11
		uiStroke2.Color = tbl.Themes[str].WindowStrokeColor
		uiStroke2.Transparency = 1
		uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		local flag5 = false
		local y = frame3.AbsoluteSize.Y
		local x = frame3.AbsoluteSize.X
		local position = frame3.Position

		imageButton.MouseButton1Click:Connect(function()
			if flag5 == true then
				return
			end
			flag4 = true
			flag5 = true
			textLabel.Visible = false
			local v7 = frame3
			y = v7.AbsoluteSize.Y
			x = v7.AbsoluteSize.X
			position = v7.Position
			uiSizeConstraint.MinSize = Vector2.new(0, 0)
			local v8 = frame3
			local v9 = Enum
			local tween = TweenService:Create(v8, TweenInfo.new(0.2, v9.EasingStyle.Sine, v9.EasingDirection.Out), { Size = UDim2.new(0, 0, 0, 0) })
			local v10 = Enum
			TweenService:Create(v8, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { Position = UDim2.new(0.5, 0, 0.5, 0) }):Play()
			tween:Play()
			tween.Completed:Wait()
			v8.Visible = false
			frame11.Visible = true
			local v11 = Enum
			TweenService:Create(frame11, TweenInfo.new(0.2, v11.EasingStyle.Sine, v11.EasingDirection.Out), { BackgroundTransparency = 0 }):Play()
			TweenService:Create(imageButton4, TweenInfo.new(0.2, v11.EasingStyle.Sine, v11.EasingDirection.Out), { ImageTransparency = 0 }):Play()
			TweenService:Create(uiStroke2, TweenInfo.new(0.2, v11.EasingStyle.Sine, v11.EasingDirection.Out), { Transparency = 0 }):Play()
			task.wait(0.2)
			flag5 = false
		end)

		imageButton4.MouseButton1Click:Connect(function()
			if flag5 == true then
				return
			end
			flag5 = true
			local v7 = Enum
			TweenService:Create(frame11, TweenInfo.new(0.2, v7.EasingStyle.Sine, v7.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(imageButton4, TweenInfo.new(0.2, v7.EasingStyle.Sine, v7.EasingDirection.Out), { ImageTransparency = 1 }):Play()
			TweenService:Create(uiStroke2, TweenInfo.new(0.2, v7.EasingStyle.Sine, v7.EasingDirection.Out), { Transparency = 1 }):Play()
			task.wait(0.2)
			frame11.Visible = false
			frame3.Visible = true
			local v8 = frame3
			local tween = TweenService:Create(v8, TweenInfo.new(0.2, v7.EasingStyle.Sine, v7.EasingDirection.Out), { Size = UDim2.new(0, x, 0, y) })
			local v9 = Enum
			local tbl3 = { Position = position }
			TweenService:Create(v8, TweenInfo.new(0.2, v9.EasingStyle.Sine, v9.EasingDirection.Out), tbl3):Play()
			textLabel.Visible = true
			tween:Play()
			tween.Completed:Wait()
			uiSizeConstraint.MinSize = Vector2.new(480, 259)
			flag5 = false
			flag4 = false
		end)

		fn(screenGui, frame11, frame11)
	end

	imageButton2.Name = "Maximize"
	imageButton2.Parent = frame7
	imageButton2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	imageButton2.BackgroundTransparency = 1
	imageButton2.BorderColor3 = Color3.fromRGB(31, 31, 31)
	imageButton2.BorderSizePixel = 0
	imageButton2.Position = UDim2.new(0.874999881, 0, 0.295453846, 0)
	imageButton2.Size = UDim2.new(0, 18, 1, -30)
	imageButton2.Image = "rbxassetid://10734886735"
	imageButton2.ImageColor3 = tbl.Themes[str].TopBarButtons
	frame10.Name = "Resizing"
	frame10.Parent = frame3
	frame10.AnchorPoint = Vector2.new(1, 1)
	frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	frame10.BackgroundTransparency = 1
	frame10.BorderColor3 = Color3.fromRGB(0, 0, 0)
	frame10.BorderSizePixel = 0
	frame10.Position = UDim2.new(1.1, 0, 1.2, 0)
	frame10.Size = UDim2.new(0, 114, 0, 114)
	uiCorner6.CornerRadius = UDim.new(0, 10)
	uiCorner6.Parent = frame9
	uiCorner7.CornerRadius = UDim.new(0, 10)
	uiCorner7.Parent = frame6
	local flag5 = false
	local position = nil
	local size = nil

	frame10.InputBegan:Connect(function(input)
		if flag4 then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag5 = true
			position = input.Position
			size = frame3.Size
			flag2 = true
		end
	end)

	frame10.InputEnded:Connect(function(input)
		if flag4 then
			return
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag5 = false
			position = nil
			size = nil
			flag2 = false
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if flag4 then
			return
		end

		if flag5 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			frame3.Size = UDim2.new(size.X.Scale, size.X.Offset - position.X - input.Position.X, size.Y.Scale, size.Y.Offset - position.Y - input.Position.Y)
		end
	end)

	local flag6 = false
	local position2 = frame3.Position
	local size2 = frame3.Size

	imageButton2.MouseButton1Click:Connect(function()
		if flag6 == false then
			imageButton2.Image = "rbxassetid://10734895698"
			local v7 = frame3
			position2 = v7.Position
			size2 = v7.Size
			local v8 = Enum
			TweenService:Create(v7, TweenInfo.new(0.2, v8.EasingStyle.Sine, v8.EasingDirection.Out), { Size = UDim2.new(1, 0, 1, 0) }):Play()
			local v9 = Enum
			TweenService:Create(v7, TweenInfo.new(0.2, v9.EasingStyle.Sine, v9.EasingDirection.Out), { Position = UDim2.new(0, 0, 0, 0) }):Play()
			flag6 = true
		elseif flag6 == true then
			local v7 = frame3
			local v8 = Enum
			local tbl3 = { Size = size2 }
			TweenService:Create(v7, TweenInfo.new(0.2, v8.EasingStyle.Sine, v8.EasingDirection.Out), tbl3):Play()
			local tbl4 = { Position = position2 }
			TweenService:Create(v7, TweenInfo.new(0.2, v8.EasingStyle.Sine, v8.EasingDirection.Out), tbl4):Play()
			imageButton2.Image = "rbxassetid://10734886735"
			flag6 = false
		end
	end)

	imageButton3.Name = "Close"
	imageButton3.Parent = frame7
	imageButton3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	imageButton3.BackgroundTransparency = 1
	imageButton3.BorderColor3 = Color3.fromRGB(31, 31, 31)
	imageButton3.BorderSizePixel = 0
	imageButton3.Position = UDim2.new(0.944256663, 0, 0.295453846, 0)
	imageButton3.Size = UDim2.new(0, 18, 1, -30)
	imageButton3.Image = "rbxassetid://10747384394"
	imageButton3.ImageColor3 = tbl.Themes[str].TopBarButtons

	imageButton3.MouseButton1Click:Connect(function()
		pcall(closeButton)
	end)

	frame8.Name = "Pages"
	frame8.Parent = frame5
	frame8.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	frame8.BackgroundTransparency = 1
	frame8.BorderColor3 = Color3.fromRGB(36, 36, 36)
	frame8.BorderSizePixel = 0
	frame8.Position = UDim2.new(0, 171, 0, 49)
	frame8.Size = UDim2.new(1, -171, 1, -49)
	frame9.Name = "TabsFrame"
	frame9.Parent = frame5
	frame9.BackgroundColor3 = tbl.Themes[str].LeftBar
	frame9.BorderColor3 = tbl.Themes[str].LeftBar
	frame9.BorderSizePixel = 0
	frame9.ClipsDescendants = true
	frame9.Size = UDim2.new(0, 171, 1, 0)
	scrollingFrame.Name = "Tabs"
	scrollingFrame.Parent = frame9
	scrollingFrame.Active = true
	scrollingFrame.BackgroundColor3 = tbl.Themes[str].LeftBar
	scrollingFrame.BorderColor3 = tbl.Themes[str].LeftBar
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.ClipsDescendants = false
	scrollingFrame.Position = UDim2.new(0, 0, 0, 49)
	scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
	scrollingFrame.ScrollBarThickness = 0
	scrollingFrame.BackgroundTransparency = 1
	local v7 = Enum
	scrollingFrame.AutomaticCanvasSize = v7.AutomaticSize.Y
	uiListLayout4.Parent = scrollingFrame
	uiListLayout4.HorizontalAlignment = v7.HorizontalAlignment.Center
	uiListLayout4.SortOrder = v7.SortOrder.LayoutOrder
	uiListLayout4.Padding = UDim.new(0, 5)
	uiPadding.Parent = scrollingFrame
	uiPadding.PaddingLeft = UDim.new(0, 15)
	uiPadding.PaddingRight = UDim.new(0, 15)
	uiPadding.PaddingTop = UDim.new(0, 7)

	local connection2 = bindableEvent.Event:Connect(function(arg3)
		local v8 = tbl
		local tbl3 = { BackgroundColor3 = v8.Themes[arg3].BackgroundColor }
		TweenService:Create(frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl3):Play()
		local tbl4 = { BackgroundColor3 = v8.Themes[arg3].ShadowColor }
		TweenService:Create(imageLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl4):Play()
		local tbl5 = { BackgroundColor3 = v8.Themes[arg3].BackgroundColor }
		TweenService:Create(frame5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
		local tbl6 = { Color = v8.Themes[arg3].WindowStrokeColor }
		TweenService:Create(uiStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
		local tbl7 = { BackgroundColor3 = v8.Themes[arg3].TopBar }
		TweenService:Create(frame6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
		local tbl8 = { TextColor3 = v8.Themes[arg3].TitleColor }
		TweenService:Create(textLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
		local tbl9 = { ImageColor3 = v8.Themes[arg3].TopBarButtons }
		TweenService:Create(imageButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
		local tbl10 = { ImageColor3 = v8.Themes[arg3].TopBarButtons }
		TweenService:Create(imageButton2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
		local tbl11 = { ImageColor3 = v8.Themes[arg3].TopBarButtons }
		TweenService:Create(imageButton3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()
		local tbl12 = { BackgroundColor3 = v8.Themes[arg3].LeftBar }
		TweenService:Create(frame9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl12):Play()
		local tbl13 = { BackgroundColor3 = v8.Themes[arg3].LeftBar }
		TweenService:Create(scrollingFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl13):Play()

		if getgenv().HawkLibLOADED == false then
			connection:Disconnect()
		end
	end)

	local flag7 = false
	local tbl3 = {}
	local n = 0

	local tbl4 = {
		CreateTab = function(arg3, arg4)
			local title = arg4.Title
			local icon = arg4.Icon
			n += 1
			tbl3[n] = title
			local frame11 = Instance.new("Frame")
			local uiCorner8 = Instance.new("UICorner")
			local textButton = Instance.new("TextButton")
			local textLabel2 = Instance.new("TextLabel")
			local frame12 = Instance.new("Frame")
			local uiCorner9 = Instance.new("UICorner")
			local uiPadding2 = Instance.new("UIPadding")
			local scrollingFrame2 = Instance.new("ScrollingFrame")
			local uiListLayout5 = Instance.new("UIListLayout")
			local uiPadding3 = Instance.new("UIPadding")
			frame11.Name = "TabBtnFrame"
			frame11.Parent = scrollingFrame
			frame11.BackgroundColor3 = tbl.Themes[str].TabBackground
			frame11.BorderColor3 = tbl.Themes[str].TabBackground
			frame11.BorderSizePixel = 0
			frame11.Size = UDim2.new(0, 140, 0, 0)
			frame11.BackgroundTransparency = 1
			frame11.AutomaticSize = Enum.AutomaticSize.Y
			frame11.ClipsDescendants = true
			uiCorner8.Parent = frame11
			textButton.Name = "TabButton"
			textButton.Parent = frame11
			textButton.BackgroundColor3 = tbl.Themes[str].TabBackground
			textButton.BackgroundTransparency = 1
			textButton.BorderColor3 = tbl.Themes[str].TabBackground
			textButton.BorderSizePixel = 0
			textButton.Size = UDim2.new(1, 0, 0, 0)
			textButton.Font = Enum.Font.SourceSans
			textButton.Text = ""
			textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			textButton.TextSize = 14
			textButton.TextTransparency = 1
			textButton.AutomaticSize = Enum.AutomaticSize.Y
			textLabel2.Name = "TabText"
			textLabel2.Parent = textButton
			textLabel2.BackgroundColor3 = Color3.fromRGB(47, 46, 45)
			textLabel2.BackgroundTransparency = 1
			textLabel2.BorderColor3 = Color3.fromRGB(47, 46, 45)
			textLabel2.BorderSizePixel = 0
			textLabel2.Font = Enum.Font.Gotham
			textLabel2.Text = title
			textLabel2.TextColor3 = tbl.Themes[str].TabTextColor
			textLabel2.TextSize = 15
			textLabel2.TextWrapped = true
			local v8 = Enum
			textLabel2.TextXAlignment = v8.TextXAlignment.Left
			textLabel2.AutomaticSize = v8.AutomaticSize.Y
			frame12.Name = "Selected"
			frame12.Parent = textButton
			frame12.AnchorPoint = Vector2.new(0, 0.5)
			frame12.BackgroundColor3 = tbl.Themes[str].SelectedColor
			frame12.BackgroundTransparency = 0.04
			frame12.BorderColor3 = Color3.fromRGB(0, 0, 0)
			frame12.BorderSizePixel = 0
			frame12.Position = UDim2.new(0, 0, 0.5, 0)
			frame12.Size = UDim2.new(0, 5, 0, 16)
			frame12.BackgroundTransparency = 1
			uiCorner9.Parent = frame12
			uiPadding2.Parent = frame11
			uiPadding2.PaddingBottom = UDim.new(0, 10)
			uiPadding2.PaddingTop = UDim.new(0, 10)
			scrollingFrame2.Name = "Page"
			scrollingFrame2.Parent = frame8
			scrollingFrame2.Active = true
			scrollingFrame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			scrollingFrame2.BackgroundTransparency = 1
			scrollingFrame2.BorderColor3 = Color3.fromRGB(25, 25, 25)
			scrollingFrame2.BorderSizePixel = 0
			scrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
			scrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
			scrollingFrame2.BottomImage = ""
			scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 300)
			scrollingFrame2.MidImage = ""
			scrollingFrame2.ScrollBarThickness = 0
			scrollingFrame2.TopImage = ""
			scrollingFrame2.Visible = false
			local v9 = Enum
			scrollingFrame2.AutomaticCanvasSize = v9.AutomaticSize.Y
			uiListLayout5.Parent = scrollingFrame2
			uiListLayout5.SortOrder = v9.SortOrder.LayoutOrder
			uiListLayout5.Padding = UDim.new(0, 8)
			uiListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Left
			uiPadding3.Parent = scrollingFrame2
			uiPadding3.PaddingBottom = UDim.new(0, 10)
			uiPadding3.PaddingLeft = UDim.new(0, 15)
			uiPadding3.PaddingTop = UDim.new(0, 10)

			if icon then
				local imageLabel3 = Instance.new("ImageLabel")
				imageLabel3.Name = "BtnIcon"
				imageLabel3.Parent = textButton
				imageLabel3.AnchorPoint = Vector2.new(0, 0.5)
				imageLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				imageLabel3.BackgroundTransparency = 1
				imageLabel3.BorderColor3 = Color3.fromRGB(43, 43, 43)
				imageLabel3.BorderSizePixel = 0
				imageLabel3.Size = UDim2.new(0, 17, 0, 17)
				imageLabel3.Image = icon
				imageLabel3.ImageTransparency = 0
				imageLabel3.ImageColor3 = tbl.Themes[str].TabIconColor
				imageLabel3.Position = UDim2.new(0.07, 0, 0.5, 0)
				textLabel2.Position = UDim2.new(0.221, 0, 0, 0)
				textLabel2.Size = UDim2.new(0, 98, 0, 0)
			else
				textLabel2.Position = UDim2.new(0.07, 0, 0, 0)
				textLabel2.Size = UDim2.new(0, 120, 0, 0)
			end

			if title == "Settings" then
				frame11.LayoutOrder = 9999999
			elseif flag7 == false then
				flag7 = true
				frame11.BackgroundTransparency = 0
				frame12.BackgroundTransparency = 0.04
				scrollingFrame2.Visible = true
			end

			textButton.MouseButton1Click:Connect(function()
				if scrollingFrame2.Visible ~= true then
					for _, descendant in pairs(scrollingFrame:GetDescendants()) do
						if descendant:IsA("Frame") and descendant.Name == "TabBtnFrame" then
							local v10 = Enum
							TweenService:Create(descendant, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
						elseif descendant:IsA("Frame") and descendant.Name == "Selected" then
							local v10 = Enum
							TweenService:Create(descendant, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
						end
					end

					for _, child in pairs(frame8:GetChildren()) do
						if child:IsA("ScrollingFrame") then
							child.Visible = false
						end
					end

					local v10 = Enum
					TweenService:Create(frame11, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { BackgroundTransparency = 0 }):Play()
					local v11 = frame12
					TweenService:Create(v11, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { BackgroundTransparency = 0.04 }):Play()
					TweenService:Create(v11, TweenInfo.new(0.2, v10.EasingStyle.Sine, v10.EasingDirection.Out), { Size = UDim2.new(0, 5, 0, 18) }):Play()
					task.wait(0.2)
					local v12 = Enum
					TweenService:Create(v11, TweenInfo.new(0.2, v12.EasingStyle.Sine, v12.EasingDirection.Out), { Size = UDim2.new(0, 5, 0, 16) }):Play()
					scrollingFrame2.Visible = true
				end
			end)

			local connection3 = bindableEvent.Event:Connect(function(arg5)
				local v10 = tbl
				local tbl4 = { BackgroundColor3 = v10.Themes[arg5].TabBackground }
				TweenService:Create(frame11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl4):Play()
				local tbl5 = { BackgroundColor3 = v10.Themes[arg5].TabBackground }
				TweenService:Create(textButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
				local tbl6 = { TextColor3 = v10.Themes[arg5].TabTextColor }
				TweenService:Create(textLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
				local tbl7 = { BackgroundColor3 = v10.Themes[arg5].SelectedColor }
				TweenService:Create(frame12, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()

				if getgenv().HawkLibLOADED == false then
					connection2:Disconnect()
				end
			end)

			local tbl4

			tbl4 = {
				Instance = scrollingFrame2,
				CreateSection = function(arg5, text)
					local frame13 = Instance.new("Frame")
					local uiPadding4 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local uiListLayout6 = Instance.new("UIListLayout")
					local textLabel3 = Instance.new("TextLabel")
					frame13.Name = "Section"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].SectionBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					uiPadding4.Parent = frame13
					uiPadding4.PaddingBottom = UDim.new(0, 10)
					uiPadding4.PaddingLeft = UDim.new(0, 10)
					uiPadding4.PaddingRight = UDim.new(0, 10)
					uiPadding4.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					uiListLayout6.Parent = frame13
					local v10 = Enum
					uiListLayout6.HorizontalAlignment = v10.HorizontalAlignment.Center
					uiListLayout6.SortOrder = v10.SortOrder.LayoutOrder
					uiListLayout6.Padding = UDim.new(0, 5)
					textLabel3.Name = "PageTitle"
					textLabel3.Parent = frame13
					textLabel3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(36, 36, 36)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0.0374999382, 0, 0.158954486, 0)
					textLabel3.Size = UDim2.new(1, -15, 0, 24)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemElementsTextColor
					textLabel3.TextSize = 16
					textLabel3.TextWrapped = true
					local v11 = Enum
					textLabel3.TextXAlignment = v11.TextXAlignment.Left
					textLabel3.AutomaticSize = v11.AutomaticSize.Y

					bindableEvent.Event:Connect(function(arg6)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg6].SectionBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v12.Themes[arg6].ItemElementsTextColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					return setmetatable({ Instance = frame13 }, { __index = tbl4 })
				end,
				CreateTitle = function(arg5, text)
					local textLabel3 = Instance.new("TextLabel")
					textLabel3.Name = "PageTitle"
					textLabel3.Parent = arg5.Instance
					textLabel3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(36, 36, 36)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0.0374999382, 0, 0.158954486, 0)
					textLabel3.Size = UDim2.new(1, -15, 0, 24)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemElementsTextColor
					textLabel3.TextSize = 16
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y

					bindableEvent.Event:Connect(function(arg6)
						local tbl5 = { TextColor3 = tbl.Themes[arg6].ItemElementsTextColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)
				end,
				CreateLabel = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local frame13 = Instance.new("Frame")
					local frame14 = Instance.new("Frame")
					local textLabel3 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local textLabel4 = Instance.new("TextLabel")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					frame13.Name = "Label"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					frame14.Name = "LabelListing"
					frame14.Parent = frame13
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 1
					frame14.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, 0, 0, 0)
					frame14.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "LabelTitle"
					textLabel3.Parent = frame14
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Size = UDim2.new(0.979059696, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					uiPadding4.Parent = frame14
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					textLabel4.Name = "LabelDescription"
					textLabel4.Parent = frame14
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Size = UDim2.new(0.979059696, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiListLayout6.Parent = frame14
					uiListLayout6.SortOrder = v11.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v11.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13

					bindableEvent.Event:Connect(function(arg7)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v12.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v12.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if text == "" or tostring(text) == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or tostring(text2) == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					return { UpdateLabel = function(arg7, arg8)
						local text3 = tostring(arg8.NewTitle)
						local text4 = tostring(arg8.NewDescription)

						if text3 == "" or text3 == "nil" then
							textLabel3.Visible = false
						else
							textLabel3.Visible = true
						end

						if text4 == "" or text4 == "nil" then
							textLabel4.Visible = false
						else
							textLabel4.Visible = true
						end

						textLabel3.Text = text3
						textLabel4.Text = text4
					end }
				end,
				CreateButton = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)

					local callback = arg6.Callback or function()
					end

					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local imageLabel3 = Instance.new("ImageLabel")
					frame13.Name = "Button"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "ButtonClick"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					textButton2.AutomaticSize = Enum.AutomaticSize.Y

					textButton2.MouseButton1Click:Connect(function()
						pcall(callback)
					end)

					textLabel3.Name = "ButtonTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0, 0, 0.122222051, 0)
					textLabel3.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.LayoutOrder = 1
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel4.Name = "ButtonDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.5, 0)
					textLabel4.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.LayoutOrder = 2
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = textButton2
					local v12 = Enum
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					imageLabel3.Name = "ClickIcon"
					imageLabel3.Parent = frame13
					imageLabel3.AnchorPoint = Vector2.new(1, 0.5)
					imageLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					imageLabel3.BorderSizePixel = 0
					imageLabel3.Position = UDim2.new(1, -10, 0.5, 0)
					imageLabel3.Size = UDim2.new(0, 33, 0, 33)
					imageLabel3.Image = "rbxassetid://13570069771"
					imageLabel3.ImageColor3 = tbl.Themes[str].ItemElementsTextColor

					bindableEvent.Event:Connect(function(arg7)
						local v13 = tbl
						local tbl5 = { BackgroundColor3 = v13.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v13.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v13.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { ImageColor3 = v13.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(imageLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if text == "" or tostring(text) == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or tostring(text2) == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					return { UpdateButton = function(arg7, arg8)
						local text3 = tostring(arg8.NewTitle)
						local text4 = tostring(arg8.NewDescription)

						if text3 == "" or text3 == "nil" then
							textLabel3.Visible = false
						else
							textLabel3.Visible = true
						end

						if text4 == "" or text4 == "nil" then
							textLabel4.Visible = false
						else
							textLabel4.Visible = true
						end

						textLabel3.Text = text3
						textLabel4.Text = text4
					end }
				end,
				CreateCheckBox = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local status = arg6.Status

					local callback = arg6.Callback or function()
					end

					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "CheckBox", status = status }
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding4 = Instance.new("UIPadding")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local uiStroke2 = Instance.new("UIStroke")
					local imageLabel3 = Instance.new("ImageLabel")
					local uiCorner12 = Instance.new("UICorner")
					frame13.Name = "Checkbox"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "CheckBoxToggle"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					local v10 = Enum
					textButton2.AutomaticSize = v10.AutomaticSize.Y
					uiListLayout6.Parent = textButton2
					uiListLayout6.SortOrder = v10.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v10.VerticalAlignment.Center
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					textLabel3.Name = "CheckBoxTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(8.46417336e-08, 0, 0, 0)
					textLabel3.Size = UDim2.new(0.880737662, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v11 = Enum
					textLabel3.TextXAlignment = v11.TextXAlignment.Left
					textLabel3.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.Name = "CheckBoxDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(8.46417336e-08, 0, 0.500000238, 0)
					textLabel4.Size = UDim2.new(0.880737662, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v12 = Enum
					textLabel4.TextXAlignment = v12.TextXAlignment.Left
					textLabel4.AutomaticSize = v12.AutomaticSize.Y
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "ToggleIconer"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Position = UDim2.new(1, -14, 0.5, 0)
					frame14.Size = UDim2.new(0, 22, 0, 22)
					uiCorner11.CornerRadius = UDim.new(0, 4)
					uiCorner11.Parent = frame14
					uiStroke2.Parent = frame14
					uiStroke2.Color = tbl.Themes[str].ItemStrokeColor
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					imageLabel3.Name = "done"
					imageLabel3.Parent = frame14
					imageLabel3.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					imageLabel3.Position = UDim2.new(0.0909090936, 0, 0.0909090936, 0)
					imageLabel3.Size = UDim2.new(0, 18, 0, 18)
					imageLabel3.ZIndex = 2
					imageLabel3.Image = "rbxassetid://3926305904"
					imageLabel3.ImageColor3 = tbl.Themes[str].ItemElementsTextColor
					imageLabel3.ImageRectOffset = Vector2.new(644, 204)
					imageLabel3.ImageRectSize = Vector2.new(36, 36)
					imageLabel3.ImageTransparency = 1
					uiCorner12.CornerRadius = UDim.new(0, 4)
					uiCorner12.Parent = imageLabel3

					bindableEvent.Event:Connect(function(arg7)
						local v13 = tbl
						local tbl5 = { BackgroundColor3 = v13.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v13.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v13.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v13.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { ImageColor3 = v13.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(imageLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { Color = v13.Themes[arg7].ItemStrokeColor }
						TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					local status2 = status

					textButton2.MouseButton1Click:Connect(function()
						if status2 == false then
							local v13 = Enum
							local tween = TweenService:Create(imageLabel3, TweenInfo.new(0.2, v13.EasingStyle.Sine, v13.EasingDirection.Out), { ImageTransparency = 0 })
							tween:Play()
							tween.Completed:Wait()
							status2 = true
						elseif status2 == true then
							local v13 = Enum
							local tween = TweenService:Create(imageLabel3, TweenInfo.new(0.2, v13.EasingStyle.Sine, v13.EasingDirection.Out), { ImageTransparency = 1 })
							tween:Play()
							tween.Completed:Wait()
							status2 = false
						end

						tbl.Flags[flag8].status = status2
						pcall(callback, status2)
					end)

					if status == true then
						local v13 = Enum
						local tween = TweenService:Create(imageLabel3, TweenInfo.new(0.2, v13.EasingStyle.Sine, v13.EasingDirection.Out), { ImageTransparency = 0 })
						tween:Play()
						tween.Completed:Wait()
						tbl.Flags[flag8].status = status
						pcall(callback, status)
					end

					local tbl5 = { SetStatus = function(arg7, status3)
						if status3 == true then
							local v13 = Enum
							local tween = TweenService:Create(imageLabel3, TweenInfo.new(0.2, v13.EasingStyle.Sine, v13.EasingDirection.Out), { ImageTransparency = 0 })
							tween:Play()
							tween.Completed:Wait()
						elseif status3 == false then
							local v13 = Enum
							local tween = TweenService:Create(imageLabel3, TweenInfo.new(0.2, v13.EasingStyle.Sine, v13.EasingDirection.Out), { ImageTransparency = 1 })
							tween:Play()
							tween.Completed:Wait()
						end

						tbl.Flags[flag8].status = status3
						pcall(callback, status3)
					end }

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
				CreateToggle = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local status = arg6.Status

					local callback = arg6.Callback or function()
					end

					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "Toggle", status = status }
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding4 = Instance.new("UIPadding")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local frame15 = Instance.new("Frame")
					local uiCorner12 = Instance.new("UICorner")
					local uiStroke2 = Instance.new("UIStroke")
					frame13.Name = "Toggle"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "ToggleButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					local v10 = Enum
					textButton2.AutomaticSize = v10.AutomaticSize.Y
					uiListLayout6.Parent = textButton2
					uiListLayout6.SortOrder = v10.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v10.VerticalAlignment.Center
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					textLabel3.Name = "ToggleTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(-8.46417336e-08, 0, 0, 0)
					textLabel3.Size = UDim2.new(0.797531486, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v11 = Enum
					textLabel3.TextXAlignment = v11.TextXAlignment.Left
					textLabel3.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.Name = "ToggleDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(-8.46417336e-08, 0, 0.500000238, 0)
					textLabel4.Size = UDim2.new(0.797531486, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v12 = Enum
					textLabel4.TextXAlignment = v12.TextXAlignment.Left
					textLabel4.AutomaticSize = v12.AutomaticSize.Y
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "ToggleFrame"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = tbl.Themes[str].ItemHoverColor
					frame14.BorderColor3 = Color3.fromRGB(0, 0, 0)
					frame14.BorderSizePixel = 0
					frame14.Position = UDim2.new(1, -14, 0.5, 0)
					frame14.Size = UDim2.new(0, 46, 0, 21)
					uiCorner11.CornerRadius = UDim.new(99, 99)
					uiCorner11.Parent = frame14
					frame15.Name = "SlidingToggle"
					frame15.Parent = frame14
					frame15.BackgroundColor3 = tbl.Themes[str].SlidingToggleBefore
					frame15.BorderColor3 = tbl.Themes[str].SlidingToggleBefore
					frame15.BorderSizePixel = 0
					frame15.Position = UDim2.new(0.435, 0, 0, 0)
					frame15.Size = UDim2.new(0, 20, 0, 21)
					frame15.AnchorPoint = Vector2.new(1, 0)
					uiCorner12.CornerRadius = UDim.new(99, 99)
					uiCorner12.Parent = frame15
					uiStroke2.Parent = frame14
					uiStroke2.Color = tbl.Themes[str].ToggleStrokeBefore
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					local status2 = status

					bindableEvent.Event:Connect(function(arg7)
						str = arg7
						local v13 = tbl
						local tbl5 = { BackgroundColor3 = v13.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v13.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v13.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()

						if status2 then
							local v14 = tbl
							local tbl8 = { BackgroundColor3 = v14.Themes[arg7].ToggleBackgroundAfter }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
							local tbl9 = { BackgroundColor3 = v14.Themes[arg7].SlidingToggleAfter }
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
							local tbl10 = { Color = v14.Themes[arg7].ToggleStrokeAfter }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
						else
							local v14 = tbl
							local tbl8 = { BackgroundColor3 = v14.Themes[arg7].ItemHoverColor }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
							local tbl9 = { BackgroundColor3 = v14.Themes[arg7].SlidingToggleBefore }
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
							local tbl10 = { Color = v14.Themes[arg7].ToggleStrokeBefore }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
						end

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					textButton2.MouseButton1Click:Connect(function()
						if status2 == false then
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(1, 0, 0, 0) }):Play()
							local tbl5 = { BackgroundColor3 = tbl.Themes[str].SlidingToggleAfter }
							local v13
							TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
							local tbl6 = { BackgroundColor3 = tbl.Themes[str].ToggleBackgroundAfter }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
							local tbl7 = { Color = tbl.Themes[str].ToggleStrokeAfter }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
							status2 = true
						elseif status2 == true then
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0.435, 0, 0, 0) }):Play()
							local tbl5 = { BackgroundColor3 = tbl.Themes[str].SlidingToggleBefore }
							local v13
							TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
							local tbl6 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
							local tbl7 = { Color = tbl.Themes[str].ToggleStrokeBefore }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
							status2 = false
						end

						tbl.Flags[flag8].status = status2
						pcall(callback, status2)
					end)

					if status == true then
						TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(1, 0, 0, 0) }):Play()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].SlidingToggleAfter }
						TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { BackgroundColor3 = tbl.Themes[str].ToggleBackgroundAfter }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { Color = tbl.Themes[str].ToggleStrokeAfter }
						TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						tbl.Flags[flag8].status = status
						pcall(callback, status)
					end

					local tbl5 = { SetStatus = function(arg7, status3)
						if status3 == true then
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(1, 0, 0, 0) }):Play()
							local tbl5 = { BackgroundColor3 = tbl.Themes[str].SlidingToggleAfter }
							local v13
							TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
							local tbl6 = { BackgroundColor3 = tbl.Themes[str].ToggleBackgroundAfter }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
							local tbl7 = { Color = tbl.Themes[str].ToggleStrokeAfter }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						elseif status3 == false then
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0.435, 0, 0, 0) }):Play()
							local tbl5 = { BackgroundColor3 = tbl.Themes[str].SlidingToggleBefore }
							local v13
							TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
							local tbl6 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
							local tbl7 = { Color = tbl.Themes[str].ToggleStrokeBefore }
							TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						end

						tbl.Flags[flag8].status = status3
						pcall(callback, status3)
					end }

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
				CreateKeyBind = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local key = arg6.Key

					local callback = arg6.Callback or function()
					end

					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "KeyBind", key = key.Name }
					local frame13 = Instance.new("Frame")
					local uiPadding4 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local uiStroke2 = Instance.new("UIStroke")
					local textButton2 = Instance.new("TextButton")
					local frame15 = Instance.new("Frame")
					local textLabel3 = Instance.new("TextLabel")
					local uiPadding5 = Instance.new("UIPadding")
					local textLabel4 = Instance.new("TextLabel")
					local uiListLayout6 = Instance.new("UIListLayout")
					frame13.Name = "KeyBind"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					uiPadding4.Parent = frame13
					uiPadding4.PaddingBottom = UDim.new(0, 10)
					uiPadding4.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "BindSelection"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Position = UDim2.new(1, -14, 0.5, 0)
					frame14.Size = UDim2.new(0, 30, 0, 30)
					frame14.ZIndex = 3
					uiCorner11.CornerRadius = UDim.new(0, 6)
					uiCorner11.Parent = frame14
					uiStroke2.Parent = frame14
					uiStroke2.Color = tbl.Themes[str].ItemStrokeColor
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					textButton2.Name = "Bind"
					textButton2.Parent = frame14
					textButton2.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					textButton2.BorderSizePixel = 0
					textButton2.AnchorPoint = Vector2.new(0.5, 0.5)
					textButton2.Position = UDim2.new(0.5, 0, 0.5, 0)
					textButton2.Size = UDim2.new(0, 30, 0, 30)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.Gotham
					textButton2.Text = "..."
					textButton2.TextColor3 = tbl.Themes[str].ItemElementsTextColor
					textButton2.TextSize = 16
					textButton2.AutomaticSize = Enum.AutomaticSize.X
					textButton2.ZIndex = 3
					frame15.Name = "KeyBindListing"
					frame15.Parent = frame13
					frame15.Active = true
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 1
					frame15.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BorderSizePixel = 0
					frame15.Size = UDim2.new(0.828, 0, 0, 0)
					frame15.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "KeyBindTitle"
					textLabel3.Parent = frame15
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					uiPadding5.Parent = frame15
					uiPadding5.PaddingLeft = UDim.new(0, 15)
					textLabel4.Name = "KeyBindDescription"
					textLabel4.Parent = frame15
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.0375690758, 0)
					textLabel4.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiListLayout6.Parent = frame15
					uiListLayout6.SortOrder = v11.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v11.VerticalAlignment.Center
					frame14.Size = UDim2.new(0, textButton2.AbsoluteSize.X + 20, 0, 30)

					bindableEvent.Event:Connect(function(arg7)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v12.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v12.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v12.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { TextColor3 = v12.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(textButton2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { Color = v12.Themes[arg7].ItemStrokeColor }
						TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					local name = nil

					if key then
						name = key.Name
						textButton2.Text = key.Name
						tbl.Flags[flag8].key = key.Name
					end

					textButton2.MouseButton1Click:Connect(function()
						textButton2.Text = "..."
						local result

						repeat
							wait()
							result = UserInputService.InputBegan:Wait()
						until result.UserInputType == Enum.UserInputType.Keyboard

						if result.KeyCode.Name ~= "Unknown" then
							textButton2.Text = result.KeyCode.Name
							name = result.KeyCode.Name
							tbl.Flags[flag8].key = result.KeyCode.Name
							frame14.Size = UDim2.new(0, textButton2.AbsoluteSize.X + 20, 0, 30)
						end
					end)

					local inputBegan = UserInputService.InputBegan

					getgenv().KeyFunction = inputBegan:Connect(function(arg7, arg8)
						if getgenv().HawkLibLOADED == false then
							getgenv().KeyFunction:Disconnect()
						end

						if arg8 then
							return
						end

						if arg7.KeyCode.Name == name then
							pcall(callback, name)
						end
					end)

					local tbl5 = {
						SetKey = function(arg7, key2)
							name = key2
							tbl.Flags[flag8].key = key2
							textButton2.Text = key2
							frame14.Size = UDim2.new(0, textButton2.AbsoluteSize.X + 20, 0, 30)
						end,
						GetKey = function()
							return textButton2.Text
						end,
					}

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
				CreateSlider = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local str2 = tostring(arg6.MinValue)
					local str3 = tostring(arg6.MaxValue)

					local callback = arg6.Callback or function()
					end

					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "Slider", value = 0 }
					local frame13 = Instance.new("Frame")
					local frame14 = Instance.new("Frame")
					local textLabel3 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local textLabel4 = Instance.new("TextLabel")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local textLabel5 = Instance.new("TextLabel")
					Instance.new("UICorner")
					Instance.new("UICorner")
					local canvasGroup = Instance.new("CanvasGroup")
					local frame15 = Instance.new("Frame")
					local frame16 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local textButton2 = Instance.new("TextButton")
					local uiCorner12 = Instance.new("UICorner")
					local uiCorner13 = Instance.new("UICorner")
					local uiCorner14 = Instance.new("UICorner")
					frame13.Name = "Slider"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					frame14.Name = "SliderListing"
					frame14.Parent = frame13
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 1
					frame14.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, 0, 0, 0)
					frame14.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "SliderTitle"
					textLabel3.Parent = frame14
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(8.05595732e-08, 0, 0, 0)
					textLabel3.Size = UDim2.new(0.778733969, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					uiPadding4.Parent = frame14
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					textLabel4.Name = "SliderDescription"
					textLabel4.Parent = frame14
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(-8.05595732e-08, 0, 0.173135817, 0)
					textLabel4.Size = UDim2.new(0.886489809, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiListLayout6.Parent = frame14
					uiListLayout6.SortOrder = v11.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v11.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					textLabel5.Name = "Num"
					textLabel5.Parent = frame13
					textLabel5.AnchorPoint = Vector2.new(1, 0)
					textLabel5.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					textLabel5.BackgroundTransparency = 1
					textLabel5.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					textLabel5.BorderSizePixel = 0
					textLabel5.Position = UDim2.new(1, -10, -0.0138592934, 0)
					textLabel5.Size = UDim2.new(0, 66, 0, 17)
					textLabel5.Font = Enum.Font.GothamBold
					textLabel5.Text = "0"
					textLabel5.TextColor3 = tbl.Themes[str].ItemElementsTextColor
					textLabel5.TextSize = 14
					textLabel5.TextXAlignment = Enum.TextXAlignment.Right
					uiCorner12.CornerRadius = UDim.new(0, 5)
					uiCorner12.Parent = textLabel5
					uiCorner13.CornerRadius = UDim.new(0, 5)
					uiCorner13.Parent = textLabel5
					canvasGroup.Name = "SliderButtonFrame"
					canvasGroup.Parent = frame14
					canvasGroup.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					canvasGroup.BackgroundTransparency = 1
					canvasGroup.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					canvasGroup.BorderSizePixel = 0
					canvasGroup.Size = UDim2.new(0.963, 0, 0, 31)
					canvasGroup.LayoutOrder = 3
					frame15.Name = "SliderFrame"
					frame15.Parent = canvasGroup
					frame15.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame15.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame15.BorderSizePixel = 0
					frame15.Position = UDim2.new(0, 0, 0.386999995, 0)
					frame15.Size = UDim2.new(1, 0, 0.591000021, 0)
					frame16.Name = "InSliderFrame"
					frame16.Parent = frame15
					frame16.BackgroundColor3 = tbl.Themes[str].SliderButtonColor
					frame16.BorderColor3 = tbl.Themes[str].SliderButtonColor
					frame16.BorderSizePixel = 0
					frame16.Size = UDim2.new(0, 7, 1, 0)
					uiCorner11.Parent = frame16
					textButton2.Name = "SliderButton"
					textButton2.Parent = frame15
					textButton2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 45, 55)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 1, 0)
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					uiCorner12.CornerRadius = UDim.new(0, 6)
					uiCorner12.Parent = textButton2
					uiCorner13.Parent = frame15
					uiCorner14.Parent = canvasGroup

					bindableEvent.Event:Connect(function(arg7)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v12.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v12.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { TextColor3 = v12.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(textLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { BackgroundColor3 = v12.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(canvasGroup, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { BackgroundColor3 = v12.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
						local tbl11 = { BackgroundColor3 = v12.Themes[arg7].SliderButtonColor }
						TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					local text3 = nil
					local flag9 = false

					local function fn2(arg7)
						scrollingFrame2.ScrollingEnabled = false
						local n2 = math.clamp(arg7.X - canvasGroup.AbsolutePosition.X, 0, canvasGroup.AbsoluteSize.X)
						local v12 = canvasGroup
						text3 = math.floor((tonumber(str3) - tonumber(str2)) / v12.AbsoluteSize.X * n2 + tonumber(str2))

						if n2 >= v12.AbsoluteSize.X - 1 then
							text3 = tonumber(str3)
						elseif n2 <= 1 then
							text3 = tonumber(str2)
						end

						textLabel5.Text = text3
						tbl.Flags[flag8].value = text3
						pcall(callback, text3)
						frame16:TweenSize(UDim2.new(0, math.max(n2, 7), 1, 0), "Out", "Quad", 0.09, true)
					end

					textButton2.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							flag9 = true
							fn2(input.Position)
						end
					end)

					UserInputService.InputChanged:Connect(function(input)
						if flag9 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
							fn2(input.Position)
						end
					end)

					UserInputService.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							if flag9 then
								flag9 = false
								scrollingFrame2.ScrollingEnabled = true
							end
						end
					end)

					local tbl5 = { SetValue = function(arg7, arg8)
						local v12 = tonumber
						local n2 = math.clamp(arg8, tonumber(str2), v12(str3))
						text3 = math.floor(n2)
						textLabel5.Text = text3
						tbl.Flags[flag8].value = text3
						local v13 = text3
						pcall(callback, v13)
						frame16:TweenSize(UDim2.new(0, math.max((v13 - tonumber(str2)) / (tonumber(str3) - tonumber(str2)) * canvasGroup.AbsoluteSize.X, 7), 1, 0), "Out", "Quad", 0.09, true)
					end }

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
				CreateColorPicker = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local currentColor = arg6.CurrentColor

					local callback = arg6.Callback or function()
					end

					local flag8 = false
					local color = Color3.fromRGB(0, 0, 0)
					local color2 = Color3.fromRGB(0, 0, 0)
					local position3 = nil
					local position4 = nil
					local n2 = 1
					local v10 = n2
					local v11 = n2
					local flag9 = false
					local connection4 = nil
					local connection5 = nil
					local flag10 = arg6.Flag
					tbl.Flags[flag10] = { flag = flag10, type = "ColorPicker", color = tostring(currentColor) }
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding4 = Instance.new("UIPadding")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local frame15 = Instance.new("Frame")
					local uiCorner12 = Instance.new("UICorner")
					local imageLabel3 = Instance.new("ImageLabel")
					local uiCorner13 = Instance.new("UICorner")
					local uiGradient = Instance.new("UIGradient")
					local imageLabel4 = Instance.new("ImageLabel")
					local imageLabel5 = Instance.new("ImageLabel")
					local uiCorner14 = Instance.new("UICorner")
					local imageLabel6 = Instance.new("ImageLabel")
					local textButton3 = Instance.new("TextButton")
					local uiCorner15 = Instance.new("UICorner")
					local textButton4 = Instance.new("TextButton")
					local uiCorner16 = Instance.new("UICorner")
					local textLabel5 = Instance.new("TextLabel")
					local frame16 = Instance.new("Frame")
					local uiCorner17 = Instance.new("UICorner")
					local frame17 = Instance.new("Frame")
					local uiCorner18 = Instance.new("UICorner")
					local frame18 = Instance.new("Frame")
					local uiCorner19 = Instance.new("UICorner")
					frame13.Name = "Colorpicker"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "ColorpickerButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					local v12 = Enum
					textButton2.AutomaticSize = v12.AutomaticSize.Y
					uiListLayout6.Parent = textButton2
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					textLabel3.Name = "ColorPickerTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(-8.46417336e-08, 0, 0, 0)
					textLabel3.Size = UDim2.new(0.797531486, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v13 = Enum
					textLabel3.TextXAlignment = v13.TextXAlignment.Left
					textLabel3.AutomaticSize = v13.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					textLabel4.Name = "ColorPickerDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(-8.46417336e-08, 0, 0.500000238, 0)
					textLabel4.Size = UDim2.new(0.797531486, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v14 = Enum
					textLabel4.TextXAlignment = v14.TextXAlignment.Left
					textLabel4.AutomaticSize = v14.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "Boxcolor"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = currentColor
					frame14.Position = UDim2.new(1, -13, 0.5, 0)
					frame14.Size = UDim2.new(0, 51, 0, 25)
					uiCorner11.CornerRadius = UDim.new(0, 6)
					uiCorner11.Name = "BoxcolorCorner"
					uiCorner11.Parent = frame14
					frame15.Name = "ColorpickerFrame"
					frame15.Parent = arg5.Instance
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 0.2
					frame15.BorderSizePixel = 0
					frame15.ClipsDescendants = true
					frame15.Position = UDim2.new(0, 0, 2.46282744, 0)
					frame15.Size = UDim2.new(1, -15, 0, 0)
					frame15.Visible = false
					uiCorner12.Name = "DropdownFrameCorner"
					uiCorner12.Parent = frame15
					imageLabel3.Name = "Hue"
					imageLabel3.Parent = frame15
					imageLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel3.Position = UDim2.new(0, 209, 0, 9)
					imageLabel3.Size = UDim2.new(0, 25, 0, 80)
					uiCorner13.CornerRadius = UDim.new(0, 3)
					uiCorner13.Name = "HueCorner"
					uiCorner13.Parent = imageLabel3
					local new = ColorSequenceKeypoint.new
					local color3 = Color3.fromRGB

					uiGradient.Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
						ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
						ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
						ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
						ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
						new(1, color3(255, 0, 4)),
					})

					uiGradient.Rotation = 270
					uiGradient.Name = "HueGradient"
					uiGradient.Parent = imageLabel3
					imageLabel4.Name = "HueSelection"
					imageLabel4.Parent = imageLabel3
					imageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
					imageLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel4.BackgroundTransparency = 1
					imageLabel4.Position = UDim2.new(0.479999989, 0, 0, 0)
					imageLabel4.Size = UDim2.new(0, 18, 0, 18)
					imageLabel4.Image = "http://www.roblox.com/asset/?id=4805639000"
					imageLabel5.Name = "Color"
					imageLabel5.Parent = frame15
					imageLabel5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					imageLabel5.Position = UDim2.new(0, 9, 0, 9)
					imageLabel5.Size = UDim2.new(0, 194, 0, 80)
					imageLabel5.ZIndex = 10
					imageLabel5.Image = "rbxassetid://4155801252"
					uiCorner14.CornerRadius = UDim.new(0, 3)
					uiCorner14.Name = "ColorCorner"
					uiCorner14.Parent = imageLabel5
					imageLabel6.Name = "ColorSelection"
					imageLabel6.Parent = imageLabel5
					imageLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
					imageLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel6.BackgroundTransparency = 1
					imageLabel6.Position = UDim2.new(1, 0, 0, 0)
					imageLabel6.Size = UDim2.new(0, 18, 0, 18)
					imageLabel6.Image = "http://www.roblox.com/asset/?id=4805639000"
					imageLabel6.ScaleType = Enum.ScaleType.Fit
					textButton3.Name = "Confirm"
					textButton3.Parent = frame15
					textButton3.AnchorPoint = Vector2.new(1, 0)
					textButton3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
					textButton3.BackgroundTransparency = 1
					textButton3.Position = UDim2.new(1, 0, 0.0900000036, 0)
					textButton3.Size = UDim2.new(0, 145, 0, 27)
					textButton3.AutoButtonColor = false
					textButton3.Font = Enum.Font.Gotham
					textButton3.Text = "Confirm"
					textButton3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textButton3.TextSize = 14
					uiCorner15.Name = "ButtonCorner"
					uiCorner15.Parent = textButton3
					textButton4.Name = "RainbowToggle"
					textButton4.Parent = frame15
					textButton4.AnchorPoint = Vector2.new(1, 0)
					textButton4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
					textButton4.BackgroundTransparency = 1
					textButton4.Position = UDim2.new(1, 0, 0.431324542, 0)
					textButton4.Size = UDim2.new(0, 145, 0, 27)
					textButton4.AutoButtonColor = false
					textButton4.Font = Enum.Font.Gotham
					textButton4.Text = ""
					textButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
					textButton4.TextSize = 14
					uiCorner16.Name = "RainbowToggleCorner"
					uiCorner16.Parent = textButton4
					textLabel5.Name = "RainbowTitle"
					textLabel5.Parent = textButton4
					textLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textLabel5.BackgroundTransparency = 1
					textLabel5.Position = UDim2.new(0.100000001, 0, 0, 0)
					textLabel5.Size = UDim2.new(0, 29, 0, 27)
					textLabel5.Font = Enum.Font.Gotham
					textLabel5.Text = "Rainbow"
					textLabel5.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel5.TextSize = 14
					textLabel5.TextXAlignment = Enum.TextXAlignment.Left
					frame16.Name = "RainbowToggleFrame"
					frame16.Parent = textButton4
					frame16.BackgroundColor3 = tbl.Themes[str].RainbowToggleOffColor
					frame16.Position = UDim2.new(0.693000019, 0, 0.142857149, 0)
					frame16.Size = UDim2.new(0, 36, 0, 19)
					uiCorner17.CornerRadius = UDim.new(1, 0)
					uiCorner17.Name = "RainbowToggleFrameCorner"
					uiCorner17.Parent = frame16
					frame17.Name = "RainbowToggleFrameRainbow"
					frame17.Parent = frame16
					frame17.BackgroundColor3 = tbl.Themes[str].RainbowToggleOnColor
					frame17.BackgroundTransparency = 1
					frame17.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
					frame17.Size = UDim2.new(0, 36, 0, 19)
					uiCorner18.CornerRadius = UDim.new(1, 0)
					uiCorner18.Name = "RainbowToggleFrameRainbowCorner"
					uiCorner18.Parent = frame17
					frame18.Name = "RainbowToggleDot"
					frame18.Parent = frame17
					frame18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					frame18.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
					frame18.Size = UDim2.new(0, 16, 0, 16)
					uiCorner19.CornerRadius = UDim.new(1, 0)
					uiCorner19.Name = "RainbowToggleDotCorner"
					uiCorner19.Parent = frame18

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					local function fn2()
						frame14.BackgroundColor3 = Color3.fromHSV(n2, v10, v11)
						imageLabel5.BackgroundColor3 = Color3.fromHSV(n2, 1, 1)
						tbl.Flags[flag10].color = tostring(frame14.BackgroundColor3)
						pcall(callback, frame14.BackgroundColor3)
					end

					bindableEvent.Event:Connect(function(arg7)
						local v15 = tbl
						local tbl5 = { BackgroundColor3 = v15.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v15.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v15.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v15.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { TextColor3 = v15.Themes[arg7].ItemTitleColor }
						TweenService:Create(textButton3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { TextColor3 = v15.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()

						if not flag9 then
							local tbl11 = { BackgroundColor3 = tbl.Themes[arg7].RainbowToggleOffColor }
							TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()
						end

						local tbl11 = { BackgroundColor3 = tbl.Themes[arg7].RainbowToggleOnColor }
						TweenService:Create(frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					local y = imageLabel3.AbsoluteSize.Y
					local n3 = 1 - math.clamp(imageLabel4.AbsolutePosition.Y - imageLabel3.AbsolutePosition.Y, 0, imageLabel3.AbsoluteSize.Y) / y
					local x = imageLabel5.AbsoluteSize.X
					local n4 = math.clamp(imageLabel6.AbsolutePosition.X - imageLabel5.AbsolutePosition.X, 0, imageLabel5.AbsoluteSize.X) / x
					local y2 = imageLabel5.AbsoluteSize.Y
					local n5 = 1 - math.clamp(imageLabel6.AbsolutePosition.Y - imageLabel5.AbsolutePosition.Y, 0, imageLabel5.AbsoluteSize.Y) / y2
					frame14.BackgroundColor3 = currentColor
					imageLabel5.BackgroundColor3 = currentColor
					tbl.Flags[flag10].color = tostring(frame14.BackgroundColor3)
					pcall(callback, frame14.BackgroundColor3)

					imageLabel5.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							scrollingFrame2.ScrollingEnabled = false
							flag2 = true
							if flag9 then
								return
							end

							if connection4 then
								connection4:Disconnect()
							end

							connection4 = RunService.RenderStepped:Connect(function()
								local v15 = imageLabel5
								local x2 = v15.AbsoluteSize.X
								local n6 = math.clamp(mouse.X - v15.AbsolutePosition.X, 0, v15.AbsoluteSize.X) / x2
								local y3 = v15.AbsoluteSize.Y
								local n7 = math.clamp(mouse.Y - v15.AbsolutePosition.Y, 0, v15.AbsoluteSize.Y) / y3
								imageLabel6.Position = UDim2.new(n6, 0, n7, 0)
								n4 = n6
								n5 = 1 - n7
								fn2(true)
							end)
						end
					end)

					imageLabel5.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							scrollingFrame2.ScrollingEnabled = false
							flag2 = true
							if flag9 then
								return
							end

							if connection4 then
								connection4:Disconnect()
							end

							connection4 = RunService.RenderStepped:Connect(function()
								local v15 = imageLabel5
								local x2 = v15.AbsoluteSize.X
								local n6 = math.clamp(mouse.X - v15.AbsolutePosition.X, 0, v15.AbsoluteSize.X) / x2
								local y3 = v15.AbsoluteSize.Y
								local n7 = math.clamp(mouse.Y - v15.AbsolutePosition.Y, 0, v15.AbsoluteSize.Y) / y3
								imageLabel6.Position = UDim2.new(n6, 0, n7, 0)
								n4 = n6
								n5 = 1 - n7
								fn2(true)
							end)
						end
					end)

					imageLabel5.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							if connection4 then
								scrollingFrame2.ScrollingEnabled = true
								flag2 = false
								connection4:Disconnect()
							end
						end
					end)

					imageLabel3.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							scrollingFrame2.ScrollingEnabled = false
							flag2 = true
							if flag9 then
								return
							end

							if connection5 then
								connection5:Disconnect()
							end

							connection5 = RunService.RenderStepped:Connect(function()
								local y3 = imageLabel3.AbsoluteSize.Y
								local n6 = math.clamp(mouse.Y - imageLabel3.AbsolutePosition.Y, 0, imageLabel3.AbsoluteSize.Y) / y3
								imageLabel4.Position = UDim2.new(0.48, 0, n6, 0)
								n3 = 1 - n6
								fn2(true)
							end)
						end
					end)

					imageLabel3.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							scrollingFrame2.ScrollingEnabled = false
							flag2 = true
							if flag9 then
								return
							end

							if connection5 then
								connection5:Disconnect()
							end

							connection5 = RunService.RenderStepped:Connect(function()
								local y3 = imageLabel3.AbsoluteSize.Y
								local n6 = math.clamp(mouse.Y - imageLabel3.AbsolutePosition.Y, 0, imageLabel3.AbsoluteSize.Y) / y3
								imageLabel4.Position = UDim2.new(0.48, 0, n6, 0)
								n3 = 1 - n6
								fn2(true)
							end)
						end
					end)

					imageLabel3.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							if connection5 then
								connection5:Disconnect()
							end
						end

						scrollingFrame2.ScrollingEnabled = true
						flag2 = false

						if not CoreGui:FindFirstChild("Hawk") then
							if connection5 then
								connection5:Disconnect()
							end
						end
					end)

					textButton4.MouseButton1Click:Connect(function()
						flag9 = not flag9

						if connection4 then
							connection4:Disconnect()
						end

						if connection5 then
							connection5:Disconnect()
						end

						if flag9 then
							TweenService:Create(frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 }):Play()
							local v15
							TweenService:Create(frame18, TweenInfo.new(0.2, v15.EasingStyle.Quad), { Position = UDim2.new(0.595, -3, 0.289000005, -4) }):Play()
							color = frame14.BackgroundColor3
							color2 = imageLabel5.BackgroundColor3
							position3 = imageLabel6.Position
							position4 = imageLabel4.Position

							while flag9 do
								frame14.BackgroundColor3 = Color3.fromHSV(tbl2.RainbowColorValue, 1, 1)
								imageLabel5.BackgroundColor3 = Color3.fromHSV(tbl2.RainbowColorValue, 1, 1)
								imageLabel6.Position = UDim2.new(1, 0, 0, 0)
								imageLabel4.Position = UDim2.new(0.48, 0, 0, tbl2.HueSelectionPosition)
								tbl.Flags[flag10].color = tostring(frame14.BackgroundColor3)
								pcall(callback, frame14.BackgroundColor3)
								wait()
							end
						elseif not flag9 then
							TweenService:Create(frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
							local v15
							TweenService:Create(frame18, TweenInfo.new(0.2, v15.EasingStyle.Quad), { Position = UDim2.new(0.104999997, -3, 0.289000005, -4) }):Play()
							frame14.BackgroundColor3 = color
							imageLabel5.BackgroundColor3 = color2
							imageLabel6.Position = position3
							imageLabel4.Position = position4
							tbl.Flags[flag10].color = tostring(frame14.BackgroundColor3)
							pcall(callback, frame14.BackgroundColor3)
						end
					end)

					textButton2.MouseButton1Click:Connect(function()
						if flag8 == false then
							flag8 = not flag8
							frame15.Visible = true
							local tween = TweenService:Create(frame15, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 91) })
							tween:Play()
							tween.Completed:Wait()
						else
							flag8 = not flag8
							local tween = TweenService:Create(frame15, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) })
							tween:Play()
							tween.Completed:Wait()
							frame15.Visible = false
							scrollingFrame2.ScrollingEnabled = true
							flag2 = false
						end
					end)

					textButton3.MouseButton1Click:Connect(function()
						flag8 = not flag8
						local tween = TweenService:Create(frame15, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) })
						tween:Play()
						tween.Completed:Wait()
						frame15.Visible = false
						scrollingFrame2.ScrollingEnabled = true
						flag2 = false
					end)

					local tbl5 = { SetColor = function(arg7, backgroundColor3)
						local v15, v16, v17 = backgroundColor3:ToHSV()
						n3 = v15
						n4 = v16
						n5 = v17
						frame14.BackgroundColor3 = backgroundColor3
						imageLabel5.BackgroundColor3 = Color3.fromHSV(v15, 1, 1)
						imageLabel6.Position = UDim2.new(v16, 0, 1 - v17, 0)
						imageLabel4.Position = UDim2.new(0.48, 0, 1 - v15, 0)

						if flag9 then
							flag9 = false
							TweenService:Create(frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
							local v18
							TweenService:Create(frame18, TweenInfo.new(0.2, v18.EasingStyle.Quad), { Position = UDim2.new(0.104999997, -3, 0.289000005, -4) }):Play()
						end

						tbl.Flags[flag10].color = backgroundColor3
						pcall(callback, backgroundColor3)
					end }

					tbl.Elements[flag10] = tbl5
					return tbl5
				end,
				CreateDropdown = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local list = arg6.List or {}
					local multiOption = arg6.MultiOption or false

					local callback = arg6.Callback or function()
					end

					local tbl5 = {}
					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "Dropdown", multioption = multiOption, selected = {} }
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local textLabel5 = Instance.new("TextLabel")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local uiListLayout7 = Instance.new("UIListLayout")
					local uiPadding6 = Instance.new("UIPadding")
					local frame15 = Instance.new("Frame")
					local uiListLayout8 = Instance.new("UIListLayout")
					local imageLabel3 = Instance.new("ImageLabel")
					local textBox = Instance.new("TextBox")
					local textLabel6 = Instance.new("TextLabel")
					local scrollingFrame3 = Instance.new("ScrollingFrame")
					local uiListLayout9 = Instance.new("UIListLayout")
					local scrollingFrame4 = Instance.new("ScrollingFrame")
					local uiListLayout10 = Instance.new("UIListLayout")
					frame13.Name = "Dropdown"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "DropdownButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					textButton2.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "DropdownTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0, 0, 0.122222051, 0)
					textLabel3.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					textLabel4.Name = "DropdownDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.5, 0)
					textLabel4.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = textButton2
					local v12 = Enum
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					textLabel5.Name = "DropIcon"
					textLabel5.Parent = frame13
					textLabel5.AnchorPoint = Vector2.new(1, 0.5)
					textLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textLabel5.BackgroundTransparency = 1
					textLabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
					textLabel5.BorderSizePixel = 0
					textLabel5.Position = UDim2.new(1, -10, 0.5, 0)
					textLabel5.Rotation = 0
					textLabel5.Size = UDim2.new(0, 26, 0, 24)
					textLabel5.Text = "+"
					textLabel5.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel5.TextSize = 22
					frame14.Name = "DropdownFrame"
					frame14.Parent = arg5.Instance
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 0.2
					frame14.BorderColor3 = Color3.fromRGB(35, 35, 35)
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, -15, 0, 0)
					frame14.AutomaticSize = Enum.AutomaticSize.None
					frame14.Visible = false
					uiCorner11.CornerRadius = UDim.new(0, 10)
					uiCorner11.Parent = frame14
					uiListLayout7.Parent = frame14
					local v13 = Enum
					uiListLayout7.FillDirection = v13.FillDirection.Horizontal
					uiListLayout7.HorizontalAlignment = v13.HorizontalAlignment.Center
					uiListLayout7.SortOrder = v13.SortOrder.LayoutOrder
					uiListLayout7.VerticalAlignment = v13.VerticalAlignment.Center
					uiListLayout7.Padding = UDim.new(0, 15)
					uiListLayout7.Wraps = true
					uiPadding6.Parent = frame14
					uiPadding6.PaddingBottom = UDim.new(0, 15)
					uiPadding6.PaddingLeft = UDim.new(0, 15)
					uiPadding6.PaddingRight = UDim.new(0, 15)
					uiPadding6.PaddingTop = UDim.new(0, 15)
					frame15.Name = "ItemSearcherFrame"
					frame15.Parent = frame14
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 1
					frame15.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BorderSizePixel = 0
					frame15.Position = UDim2.new(0, 0, 0, 0)
					frame15.Size = UDim2.new(0.984, 0, 0.131, 16)
					frame15.LayoutOrder = 1
					local v14 = Enum
					frame15.AutomaticSize = v14.AutomaticSize.Y
					uiListLayout8.Parent = frame15
					uiListLayout8.FillDirection = v14.FillDirection.Horizontal
					uiListLayout8.SortOrder = v14.SortOrder.LayoutOrder
					uiListLayout8.Padding = UDim.new(0, 1)
					uiListLayout8.Wraps = true
					imageLabel3.Name = "SearchIcon"
					imageLabel3.Parent = frame15
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderSizePixel = 0
					imageLabel3.Position = UDim2.new(-0.063000001, 0, 0.0599999987, 0)
					imageLabel3.Size = UDim2.new(0, 20, 0, 22)
					imageLabel3.Image = "rbxassetid://118685771787843"
					imageLabel3.ImageColor3 = tbl.Themes[str].ItemTitleColor
					imageLabel3.LayoutOrder = 1
					imageLabel3.ImageTransparency = 1
					textBox.Name = "Search"
					textBox.Parent = frame15
					textBox.AnchorPoint = Vector2.new(1, 0)
					textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textBox.BackgroundTransparency = 1
					textBox.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textBox.BorderSizePixel = 0
					textBox.Position = UDim2.new(1, 0, 0.0291970801, 0)
					textBox.Size = UDim2.new(0.926606655, 0, 0, 23)
					textBox.ClearTextOnFocus = false
					textBox.Font = Enum.Font.SourceSans
					textBox.PlaceholderColor3 = tbl.Themes[str].ItemTitleColor
					textBox.PlaceholderText = "Search Item"
					textBox.Text = ""
					textBox.TextColor3 = tbl.Themes[str].ItemTitleColor
					textBox.TextSize = 18
					textBox.TextXAlignment = Enum.TextXAlignment.Left
					textBox.LayoutOrder = 2
					textBox.TextTransparency = 1
					textLabel6.Name = "SelectedText"
					textLabel6.Parent = frame15
					textLabel6.Active = true
					textLabel6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textLabel6.BackgroundTransparency = 1
					textLabel6.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textLabel6.BorderSizePixel = 0
					textLabel6.Position = UDim2.new(8.52235189e-08, 0, 0.421052635, 0)
					textLabel6.Size = UDim2.new(0, 60, 0, 24)
					local v15 = Enum
					textLabel6.FontFace = Font.new("rbxassetid://12187365364", v15.FontWeight.Bold, v15.FontStyle.Normal)
					textLabel6.Text = "Selected: "
					textLabel6.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel6.TextSize = 15
					textLabel6.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
					textLabel6.TextXAlignment = v15.TextXAlignment.Left
					textLabel6.LayoutOrder = 3
					textLabel6.TextTransparency = 1
					scrollingFrame3.Name = "Selections"
					scrollingFrame3.Parent = frame15
					scrollingFrame3.Active = true
					scrollingFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					scrollingFrame3.BackgroundTransparency = 1
					scrollingFrame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					scrollingFrame3.BorderSizePixel = 0
					scrollingFrame3.Position = UDim2.new(0, 0, 0, 0)
					scrollingFrame3.Size = UDim2.new(1, -61, 0, 33)
					scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
					scrollingFrame3.ScrollBarThickness = 3
					scrollingFrame3.LayoutOrder = 4
					local v16 = Enum
					scrollingFrame3.AutomaticCanvasSize = v16.AutomaticSize.X
					scrollingFrame3.ScrollBarImageTransparency = 1
					scrollingFrame3.ClipsDescendants = true
					uiListLayout9.Parent = scrollingFrame3
					uiListLayout9.SortOrder = v16.SortOrder.LayoutOrder
					uiListLayout9.Padding = UDim.new(0, 4)
					uiListLayout9.Wraps = true
					scrollingFrame4.Name = "DropItemHolder"
					scrollingFrame4.Parent = frame14
					scrollingFrame4.Active = true
					scrollingFrame4.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					scrollingFrame4.BackgroundTransparency = 1
					scrollingFrame4.BorderColor3 = Color3.fromRGB(32, 32, 32)
					scrollingFrame4.BorderSizePixel = 0
					scrollingFrame4.Position = UDim2.new(0, 0, 0.410693318, 0)
					scrollingFrame4.Size = UDim2.new(1, 0, 0, 72)
					scrollingFrame4.CanvasSize = UDim2.new(0, 0, 0, 60)
					scrollingFrame4.ScrollBarThickness = 3
					scrollingFrame4.LayoutOrder = 2
					local v17 = Enum
					scrollingFrame4.AutomaticCanvasSize = v17.AutomaticSize.Y
					scrollingFrame4.ClipsDescendants = true
					scrollingFrame4.ScrollBarImageTransparency = 1
					uiListLayout10.Parent = scrollingFrame4
					uiListLayout10.HorizontalAlignment = v17.HorizontalAlignment.Center
					uiListLayout10.SortOrder = v17.SortOrder.LayoutOrder
					uiListLayout10.Padding = UDim.new(0, 6)

					textBox:GetPropertyChangedSignal("Text"):Connect(function()
						local v18 = next
						local descendants, v19 = scrollingFrame4:GetDescendants()

						for _, v20 in v18, descendants, v19 do
							if v20:IsA("TextButton") then
								if not string.lower(v20.Text):find(string.lower(textBox.Text)) then
									v20.Parent.Visible = false
								else
									v20.Parent.Visible = true
								end
							end
						end

						if textBox.Text == "" then
							local v20 = next
							local descendants2, v21 = scrollingFrame4:GetDescendants()

							for _, v22 in v20, descendants2, v21 do
								if v22:IsA("TextButton") then
									v22.Parent.Visible = true
								end
							end
						end
					end)

					bindableEvent.Event:Connect(function(arg7)
						local v18 = tbl
						local tbl6 = { BackgroundColor3 = v18.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v18.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { TextColor3 = v18.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { TextColor3 = v18.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { BackgroundColor3 = v18.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
						local tbl11 = { ImageColor3 = v18.Themes[arg7].ItemTitleColor }
						TweenService:Create(imageLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()
						local v19 = textBox
						local tbl12 = { TextColor3 = v18.Themes[arg7].ItemTitleColor }
						TweenService:Create(v19, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl12):Play()
						v19.PlaceholderColor3 = v18.Themes[arg7].ItemTitleColor
						local tbl13 = { TextColor3 = v18.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl13):Play()

						for _, child in pairs(scrollingFrame4:GetChildren()) do
							if child.Name == "ItemFrame" then
								if tbl.Flags[flag8].selected[child:FindFirstChild("ItemButton").Text] == true then
									local tbl14 = { BackgroundColor3 = tbl.Themes[arg7].SelectedDropdownItemColor }
									TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl14):Play()
								else
									local tbl14 = { BackgroundColor3 = tbl.Themes[arg7].DropdownItemBackground }
									TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl14):Play()
								end

								local itemButton = child:FindFirstChild("ItemButton")

								if itemButton then
									local tbl14 = { TextColor3 = tbl.Themes[arg7].DropdownItemText }
									TweenService:Create(itemButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl14):Play()
								end
							end
						end

						for _, child in pairs(scrollingFrame3:GetChildren()) do
							if child.Name == "Selection" then
								local tbl14 = { BackgroundColor3 = tbl.Themes[arg7].ChipBackgroundColor }
								TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl14):Play()
								local selectionText = child:FindFirstChild("SelectionText")

								if selectionText then
									local tbl15 = { TextColor3 = tbl.Themes[arg7].ItemElementsTextColor }
									TweenService:Create(selectionText, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl15):Play()
								end
							end
						end

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if multiOption == true then
						for _, v18 in pairs(list) do
							tbl.Flags[flag8].selected[v18] = false
							local frame16 = Instance.new("Frame")
							local uiCorner12 = Instance.new("UICorner")
							local textButton3 = Instance.new("TextButton")
							local flag9 = false
							frame16.Name = "ItemFrame"
							frame16.Parent = scrollingFrame4
							frame16.BackgroundColor3 = tbl.Themes[str].DropdownItemBackground
							frame16.BorderColor3 = Color3.fromRGB(49, 49, 49)
							frame16.BorderSizePixel = 0
							frame16.Size = UDim2.new(0.949999988, 0, 0, 27)
							uiCorner12.CornerRadius = UDim.new(0, 5)
							uiCorner12.Parent = frame16
							textButton3.Name = "ItemButton"
							textButton3.Parent = frame16
							textButton3.BackgroundColor3 = tbl.Themes[str].ItemStrokeColor
							textButton3.BackgroundTransparency = 1
							textButton3.BorderColor3 = tbl.Themes[str].ItemStrokeColor
							textButton3.BorderSizePixel = 0
							textButton3.Size = UDim2.new(1, 0, 1, 0)
							textButton3.Font = Enum.Font.Gotham
							textButton3.Text = v18
							textButton3.TextColor3 = tbl.Themes[str].DropdownItemText
							textButton3.TextSize = 14
							textButton3.AutomaticSize = Enum.AutomaticSize.X

							textButton3.MouseButton1Click:Connect(function()
								if flag9 == false then
									local tbl6 = { BackgroundColor3 = tbl.Themes[str].SelectedDropdownItemColor }
									TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
									local frame17 = Instance.new("Frame")
									local textLabel7 = Instance.new("TextLabel")
									local uiCorner13 = Instance.new("UICorner")
									local uiPadding7 = Instance.new("UIPadding")
									local uiCorner14 = Instance.new("UICorner")
									frame17.Name = "Selection"
									frame17.Parent = scrollingFrame3
									frame17.BackgroundColor3 = tbl.Themes[str].ChipBackgroundColor
									frame17.BorderColor3 = Color3.fromRGB(25, 26, 31)
									frame17.BorderSizePixel = 0
									frame17.Size = UDim2.new(0, 0, 0.727272749, 0)
									frame17.AutomaticSize = Enum.AutomaticSize.X
									textLabel7.Name = "SelectionText"
									textLabel7.Parent = frame17
									textLabel7.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
									textLabel7.BackgroundTransparency = 1
									textLabel7.BorderColor3 = Color3.fromRGB(17, 17, 17)
									textLabel7.BorderSizePixel = 0
									textLabel7.Position = UDim2.new(0, 0, 0, 0)
									textLabel7.Size = UDim2.new(1, 0, 1, 0)
									textLabel7.Font = Enum.Font.Ubuntu
									textLabel7.Text = v18
									textLabel7.TextColor3 = tbl.Themes[str].ItemElementsTextColor
									textLabel7.TextSize = 14
									textLabel7.TextStrokeColor3 = tbl.Themes[str].ItemElementsTextColor
									textLabel7.AutomaticSize = Enum.AutomaticSize.X
									uiCorner13.Parent = textLabel7
									uiPadding7.Parent = frame17
									uiPadding7.PaddingBottom = UDim.new(0, 15)
									uiPadding7.PaddingLeft = UDim.new(0, 10)
									uiPadding7.PaddingRight = UDim.new(0, 10)
									uiPadding7.PaddingTop = UDim.new(0, 15)
									uiCorner14.Parent = frame17
									table.insert(tbl5, v18)
									tbl.Flags[flag8].selected[v18] = true
									flag9 = true
								elseif flag9 == true then
									for _, descendant in pairs(scrollingFrame3:GetDescendants()) do
										if descendant:IsA("TextLabel") and descendant.Text == v18 then
											descendant.Parent:Destroy()
										end
									end

									local tbl6 = { BackgroundColor3 = tbl.Themes[str].DropdownItemBackground }
									TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
									tbl.Flags[flag8].selected[v18] = false
									table.remove(tbl5, table.find(tbl5, v18))
									flag9 = false
								end

								pcall(callback, tbl5)
							end)
						end
					elseif multiOption == false then
						for _, v18 in pairs(list) do
							local frame16 = Instance.new("Frame")
							local uiCorner12 = Instance.new("UICorner")
							local textButton3 = Instance.new("TextButton")
							frame16.Name = "ItemFrame"
							frame16.Parent = scrollingFrame4
							frame16.BackgroundColor3 = tbl.Themes[str].DropdownItemBackground
							frame16.BorderColor3 = Color3.fromRGB(49, 49, 49)
							frame16.BorderSizePixel = 0
							frame16.Size = UDim2.new(0.949999988, 0, 0, 27)
							uiCorner12.CornerRadius = UDim.new(0, 5)
							uiCorner12.Parent = frame16
							textButton3.Name = "ItemButton"
							textButton3.Parent = frame16
							textButton3.BackgroundColor3 = tbl.Themes[str].ItemStrokeColor
							textButton3.BackgroundTransparency = 1
							textButton3.BorderColor3 = tbl.Themes[str].ItemStrokeColor
							textButton3.BorderSizePixel = 0
							textButton3.Size = UDim2.new(1, 0, 1, 0)
							textButton3.Font = Enum.Font.Gotham
							textButton3.Text = v18
							textButton3.TextColor3 = tbl.Themes[str].DropdownItemText
							textButton3.TextSize = 14
							textButton3.AutomaticSize = Enum.AutomaticSize.X

							textButton3.MouseButton1Click:Connect(function()
								for _, descendant in pairs(scrollingFrame3:GetDescendants()) do
									if descendant:IsA("TextLabel") then
										descendant.Parent:Destroy()
									end
								end

								for _, descendant in pairs(scrollingFrame4:GetDescendants()) do
									if descendant:IsA("TextButton") then
										local tbl6 = { BackgroundColor3 = tbl.Themes[str].DropdownItemBackground }
										TweenService:Create(descendant.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
									end
								end

								local tbl6 = { BackgroundColor3 = tbl.Themes[str].SelectedDropdownItemColor }
								TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
								local frame17 = Instance.new("Frame")
								local textLabel7 = Instance.new("TextLabel")
								local uiCorner13 = Instance.new("UICorner")
								local uiPadding7 = Instance.new("UIPadding")
								local uiCorner14 = Instance.new("UICorner")
								frame17.Name = "Selection"
								frame17.Parent = scrollingFrame3
								frame17.BackgroundColor3 = tbl.Themes[str].ChipBackgroundColor
								frame17.BorderColor3 = Color3.fromRGB(25, 26, 31)
								frame17.BorderSizePixel = 0
								frame17.Size = UDim2.new(0, 0, 0.727272749, 0)
								frame17.AutomaticSize = Enum.AutomaticSize.X
								textLabel7.Name = "SelectionText"
								textLabel7.Parent = frame17
								textLabel7.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
								textLabel7.BackgroundTransparency = 1
								textLabel7.BorderColor3 = Color3.fromRGB(17, 17, 17)
								textLabel7.BorderSizePixel = 0
								textLabel7.Position = UDim2.new(0, 0, 0, 0)
								textLabel7.Size = UDim2.new(1, 0, 1, 0)
								textLabel7.Font = Enum.Font.Ubuntu
								textLabel7.Text = v18
								textLabel7.TextColor3 = tbl.Themes[str].ItemElementsTextColor
								textLabel7.TextSize = 14
								textLabel7.TextStrokeColor3 = tbl.Themes[str].ItemElementsTextColor
								textLabel7.AutomaticSize = Enum.AutomaticSize.X
								uiCorner13.Parent = textLabel7
								uiPadding7.Parent = frame17
								uiPadding7.PaddingBottom = UDim.new(0, 15)
								uiPadding7.PaddingLeft = UDim.new(0, 10)
								uiPadding7.PaddingRight = UDim.new(0, 10)
								uiPadding7.PaddingTop = UDim.new(0, 15)
								uiCorner14.Parent = frame17
								pcall(callback, v18)
								table.clear(tbl.Flags[flag8].selected)
								tbl.Flags[flag8].selected[v18] = true
							end)
						end
					end

					frame13.MouseEnter:Connect(function()
						local tbl6 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl6 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					local flag9 = false

					textButton2.MouseButton1Click:Connect(function()
						if flag9 == false then
							frame14.Visible = true
							TweenService:Create(frame14, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) }):Play()
							TweenService:Create(textLabel5, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Rotation = 225 }):Play()
							task.wait(0.1)

							for _, descendant in pairs(frame14:GetDescendants()) do
								if descendant:IsA("ScrollingFrame") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 0 }):Play()
								elseif descendant:IsA("Frame") and (descendant.Name == "ItemFrame" or descendant.Name == "Selection") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 }):Play()
								elseif descendant:IsA("TextLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								elseif descendant:IsA("TextBox") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								elseif descendant:IsA("ImageLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 }):Play()
								elseif descendant:IsA("TextButton") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								end
							end

							frame14.AutomaticSize = Enum.AutomaticSize.Y
							flag9 = true
						elseif flag9 == true then
							frame14.AutomaticSize = Enum.AutomaticSize.None

							for _, descendant in pairs(frame14:GetDescendants()) do
								if descendant:IsA("ScrollingFrame") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 1 }):Play()
								elseif descendant:IsA("Frame") and (descendant.Name == "ItemFrame" or descendant.Name == "Selection") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
								elseif descendant:IsA("TextLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("TextBox") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("ImageLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
								elseif descendant:IsA("TextButton") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								end
							end

							task.wait(0.1)
							TweenService:Create(textLabel5, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Rotation = 0 }):Play()
							local v18
							TweenService:Create(frame14, TweenInfo.new(0.2, v18.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) }):Play()
							task.wait(0.1)
							flag9 = false
							local v19
							v19.Visible = false
						end
					end)

					local tbl6

					tbl6 = {
						Clear = function()
							local v18 = next
							local descendants, v19 = scrollingFrame4:GetDescendants()

							for _, v20 in v18, descendants, v19 do
								if v20:IsA("TextButton") then
									v20.Parent:Destroy()
								end
							end

							local v20 = next
							local descendants2, v21 = scrollingFrame3:GetDescendants()

							for _, v22 in v20, descendants2, v21 do
								if v22:IsA("TextLabel") then
									v22.Parent:Destroy()
								end
							end

							table.clear(tbl.Flags[flag8].selected)
						end,
						Refresh = function(arg7, arg8)
							local multiOption2 = arg8.MultiOption
							local newList = arg8.NewList
							tbl6:Clear()
							table.clear(tbl5)
							multiOption = multiOption2

							if multiOption == true then
								for _, v18 in pairs(newList) do
									tbl.Flags[flag8].selected[v18] = false
									local frame16 = Instance.new("Frame")
									local uiCorner12 = Instance.new("UICorner")
									local textButton3 = Instance.new("TextButton")
									local flag10 = false
									frame16.Name = "ItemFrame"
									frame16.Parent = scrollingFrame4
									frame16.BackgroundColor3 = tbl.Themes[str].DropdownItemBackground
									frame16.BorderColor3 = Color3.fromRGB(49, 49, 49)
									frame16.BorderSizePixel = 0
									frame16.Size = UDim2.new(0.949999988, 0, 0, 27)
									uiCorner12.CornerRadius = UDim.new(0, 5)
									uiCorner12.Parent = frame16
									textButton3.Name = "ItemButton"
									textButton3.Parent = frame16
									textButton3.BackgroundColor3 = tbl.Themes[str].ItemStrokeColor
									textButton3.BackgroundTransparency = 1
									textButton3.BorderColor3 = tbl.Themes[str].ItemStrokeColor
									textButton3.BorderSizePixel = 0
									textButton3.Size = UDim2.new(1, 0, 1, 0)
									textButton3.Font = Enum.Font.Gotham
									textButton3.Text = v18
									textButton3.TextColor3 = tbl.Themes[str].DropdownItemText
									textButton3.TextSize = 14
									textButton3.AutomaticSize = Enum.AutomaticSize.X

									textButton3.MouseButton1Click:Connect(function()
										if flag10 == false then
											local tbl7 = { BackgroundColor3 = tbl.Themes[str].SelectedDropdownItemColor }
											TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
											local frame17 = Instance.new("Frame")
											local textLabel7 = Instance.new("TextLabel")
											local uiCorner13 = Instance.new("UICorner")
											local uiPadding7 = Instance.new("UIPadding")
											local uiCorner14 = Instance.new("UICorner")
											frame17.Name = "Selection"
											frame17.Parent = scrollingFrame3
											frame17.BackgroundColor3 = tbl.Themes[str].ChipBackgroundColor
											frame17.BorderColor3 = Color3.fromRGB(25, 26, 31)
											frame17.BorderSizePixel = 0
											frame17.Size = UDim2.new(0, 0, 0.727272749, 0)
											frame17.AutomaticSize = Enum.AutomaticSize.X
											textLabel7.Name = "SelectionText"
											textLabel7.Parent = frame17
											textLabel7.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
											textLabel7.BackgroundTransparency = 1
											textLabel7.BorderColor3 = Color3.fromRGB(17, 17, 17)
											textLabel7.BorderSizePixel = 0
											textLabel7.Position = UDim2.new(0, 0, 0, 0)
											textLabel7.Size = UDim2.new(1, 0, 1, 0)
											textLabel7.Font = Enum.Font.Ubuntu
											textLabel7.Text = v18
											textLabel7.TextColor3 = tbl.Themes[str].ItemElementsTextColor
											textLabel7.TextSize = 14
											textLabel7.TextStrokeColor3 = tbl.Themes[str].ItemElementsTextColor
											textLabel7.AutomaticSize = Enum.AutomaticSize.X
											uiCorner13.Parent = textLabel7
											uiPadding7.Parent = frame17
											uiPadding7.PaddingBottom = UDim.new(0, 15)
											uiPadding7.PaddingLeft = UDim.new(0, 10)
											uiPadding7.PaddingRight = UDim.new(0, 10)
											uiPadding7.PaddingTop = UDim.new(0, 15)
											uiCorner14.Parent = frame17
											table.insert(tbl5, v18)
											tbl.Flags[flag8].selected[v18] = true
											flag10 = true
										elseif flag10 == true then
											for _, descendant in pairs(scrollingFrame3:GetDescendants()) do
												if descendant:IsA("TextLabel") and descendant.Text == v18 then
													descendant.Parent:Destroy()
												end
											end

											local tbl7 = { BackgroundColor3 = tbl.Themes[str].DropdownItemBackground }
											TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
											tbl.Flags[flag8].selected[v18] = false
											table.remove(tbl5, table.find(tbl5, v18))
											flag10 = false
										end

										pcall(callback, tbl5)
									end)
								end
							elseif multiOption == false then
								for _, v18 in pairs(newList) do
									local frame16 = Instance.new("Frame")
									local uiCorner12 = Instance.new("UICorner")
									local textButton3 = Instance.new("TextButton")
									frame16.Name = "ItemFrame"
									frame16.Parent = scrollingFrame4
									frame16.BackgroundColor3 = tbl.Themes[str].DropdownItemBackground
									frame16.BorderColor3 = Color3.fromRGB(49, 49, 49)
									frame16.BorderSizePixel = 0
									frame16.Size = UDim2.new(0.949999988, 0, 0, 27)
									uiCorner12.CornerRadius = UDim.new(0, 5)
									uiCorner12.Parent = frame16
									textButton3.Name = "ItemButton"
									textButton3.Parent = frame16
									textButton3.BackgroundColor3 = tbl.Themes[str].ItemStrokeColor
									textButton3.BackgroundTransparency = 1
									textButton3.BorderColor3 = tbl.Themes[str].ItemStrokeColor
									textButton3.BorderSizePixel = 0
									textButton3.Size = UDim2.new(1, 0, 1, 0)
									textButton3.Font = Enum.Font.Gotham
									textButton3.Text = v18
									textButton3.TextColor3 = tbl.Themes[str].DropdownItemText
									textButton3.TextSize = 14
									textButton3.AutomaticSize = Enum.AutomaticSize.X

									textButton3.MouseButton1Click:Connect(function()
										for _, descendant in pairs(scrollingFrame3:GetDescendants()) do
											if descendant:IsA("TextLabel") then
												descendant.Parent:Destroy()
											end
										end

										for _, descendant in pairs(scrollingFrame4:GetDescendants()) do
											if descendant:IsA("TextButton") then
												local tbl7 = { BackgroundColor3 = tbl.Themes[str].DropdownItemBackground }
												TweenService:Create(descendant.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
											end
										end

										local tbl7 = { BackgroundColor3 = tbl.Themes[str].SelectedDropdownItemColor }
										TweenService:Create(frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
										local frame17 = Instance.new("Frame")
										local textLabel7 = Instance.new("TextLabel")
										local uiCorner13 = Instance.new("UICorner")
										local uiPadding7 = Instance.new("UIPadding")
										local uiCorner14 = Instance.new("UICorner")
										frame17.Name = "Selection"
										frame17.Parent = scrollingFrame3
										frame17.BackgroundColor3 = tbl.Themes[str].ChipBackgroundColor
										frame17.BorderColor3 = Color3.fromRGB(25, 26, 31)
										frame17.BorderSizePixel = 0
										frame17.Size = UDim2.new(0, 0, 0.727272749, 0)
										frame17.AutomaticSize = Enum.AutomaticSize.X
										textLabel7.Name = "SelectionText"
										textLabel7.Parent = frame17
										textLabel7.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
										textLabel7.BackgroundTransparency = 1
										textLabel7.BorderColor3 = Color3.fromRGB(17, 17, 17)
										textLabel7.BorderSizePixel = 0
										textLabel7.Position = UDim2.new(0, 0, 0, 0)
										textLabel7.Size = UDim2.new(1, 0, 1, 0)
										textLabel7.Font = Enum.Font.Ubuntu
										textLabel7.Text = v18
										textLabel7.TextColor3 = tbl.Themes[str].ItemElementsTextColor
										textLabel7.TextSize = 14
										textLabel7.TextStrokeColor3 = tbl.Themes[str].ItemElementsTextColor
										textLabel7.AutomaticSize = Enum.AutomaticSize.X
										uiCorner13.Parent = textLabel7
										uiPadding7.Parent = frame17
										uiPadding7.PaddingBottom = UDim.new(0, 15)
										uiPadding7.PaddingLeft = UDim.new(0, 10)
										uiPadding7.PaddingRight = UDim.new(0, 10)
										uiPadding7.PaddingTop = UDim.new(0, 15)
										uiCorner14.Parent = frame17
										pcall(callback, v18)
										table.clear(tbl.Flags[flag8].selected)
										tbl.Flags[flag8].selected[v18] = true
									end)
								end
							end
						end,
						ClearSelections = function()
							for _, descendant in pairs(scrollingFrame3:GetDescendants()) do
								if descendant:IsA("TextLabel") then
									descendant.Parent:Destroy()
								end
							end

							for _, descendant in pairs(scrollingFrame4:GetDescendants()) do
								if descendant:IsA("TextButton") then
									local tbl7 = { BackgroundColor3 = tbl.Themes[str].DropdownItemBackground }
									TweenService:Create(descendant.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
								end
							end
						end,
						Select = function(arg7, arg8)
							if type(arg8) ~= "table" then
								return
							end

							for _, v18 in pairs(arg8) do
								local v19 = next
								local descendants, v20 = scrollingFrame4:GetDescendants()

								for _, v21 in v19, descendants, v20 do
									if v21:IsA("TextButton") and v21.Text == v18 then
										local tbl7 = { BackgroundColor3 = tbl.Themes[str].SelectedDropdownItemColor }
										TweenService:Create(v21.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
									end
								end

								local flag10 = false
								local v21 = next
								local descendants2, v22 = scrollingFrame3:GetDescendants()

								for _, v23 in v21, descendants2, v22 do
									if v23:IsA("TextLabel") and v23.Name == "SelectionText" and v18 == v23.Text then
										flag10 = true
									end
								end

								if not flag10 then
									local frame16 = Instance.new("Frame")
									local textLabel7 = Instance.new("TextLabel")
									local uiCorner12 = Instance.new("UICorner")
									local uiPadding7 = Instance.new("UIPadding")
									local uiCorner13 = Instance.new("UICorner")
									frame16.Name = "Selection"
									frame16.Parent = scrollingFrame3
									frame16.BackgroundColor3 = tbl.Themes[str].ChipBackgroundColor
									frame16.BorderColor3 = Color3.fromRGB(25, 26, 31)
									frame16.BorderSizePixel = 0
									frame16.Size = UDim2.new(0, 0, 0.727272749, 0)
									frame16.AutomaticSize = Enum.AutomaticSize.X
									textLabel7.Name = "SelectionText"
									textLabel7.Parent = frame16
									textLabel7.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
									textLabel7.BackgroundTransparency = 1
									textLabel7.BorderColor3 = Color3.fromRGB(17, 17, 17)
									textLabel7.BorderSizePixel = 0
									textLabel7.Position = UDim2.new(0, 0, 0, 0)
									textLabel7.Size = UDim2.new(1, 0, 1, 0)
									textLabel7.Font = Enum.Font.Ubuntu
									textLabel7.Text = v18
									textLabel7.TextColor3 = tbl.Themes[str].ItemElementsTextColor
									textLabel7.TextSize = 14
									textLabel7.TextStrokeColor3 = tbl.Themes[str].ItemElementsTextColor
									textLabel7.AutomaticSize = Enum.AutomaticSize.X
									uiCorner12.Parent = textLabel7
									uiPadding7.Parent = frame16
									uiPadding7.PaddingBottom = UDim.new(0, 15)
									uiPadding7.PaddingLeft = UDim.new(0, 10)
									uiPadding7.PaddingRight = UDim.new(0, 10)
									uiPadding7.PaddingTop = UDim.new(0, 15)
									uiCorner13.Parent = frame16
								end

								pcall(callback, v18)
								tbl.Flags[flag8].selected[v18] = true
							end
						end,
					}

					tbl.Elements[flag8] = tbl6
					return tbl6
				end,
				CreateTextBox = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local placeholderText = tostring(arg6.PlaceHolderText)
					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "TextBox", text = "" }

					local callback = arg6.Callback or function()
					end

					local frame13 = Instance.new("Frame")
					local uiPadding4 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local textBox = Instance.new("TextBox")
					local uiCorner11 = Instance.new("UICorner")
					local uiCorner12 = Instance.new("UICorner")
					local uiPadding5 = Instance.new("UIPadding")
					local frame15 = Instance.new("Frame")
					local textLabel3 = Instance.new("TextLabel")
					local uiPadding6 = Instance.new("UIPadding")
					local textLabel4 = Instance.new("TextLabel")
					local uiListLayout6 = Instance.new("UIListLayout")
					frame13.Name = "TextBox"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					uiPadding4.Parent = frame13
					uiPadding4.PaddingBottom = UDim.new(0, 10)
					uiPadding4.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "TexttingBoxFrame"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Position = UDim2.new(1, -14, 0.5, 0)
					frame14.Size = UDim2.new(0, 0, 0, 27)
					frame14.AutomaticSize = Enum.AutomaticSize.X
					frame14.ZIndex = 3
					textBox.Name = "TexttingBox"
					textBox.Parent = frame14
					textBox.AnchorPoint = Vector2.new(0, 0)
					textBox.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					textBox.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					textBox.BorderSizePixel = 0
					textBox.BackgroundTransparency = 1
					textBox.ClipsDescendants = true
					textBox.Position = UDim2.new(0, 0, 0, 0)
					textBox.Size = UDim2.new(0, 0, 1, 0)
					textBox.ClearTextOnFocus = false
					textBox.Font = Enum.Font.Gotham
					textBox.PlaceholderColor3 = tbl.Themes[str].ItemElementsTextColor
					textBox.PlaceholderText = placeholderText
					textBox.TextXAlignment = Enum.TextXAlignment.Center
					textBox.Text = ""
					textBox.TextColor3 = tbl.Themes[str].ItemElementsTextColor
					textBox.TextSize = 14
					textBox.AutomaticSize = Enum.AutomaticSize.X
					textBox.ZIndex = 3

					textBox:GetPropertyChangedSignal("Text"):Connect(function()
						if #textBox.Text >= 12 then
							local v10 = Enum
							frame14.AutomaticSize = v10.AutomaticSize.None
							textBox.AutomaticSize = v10.AutomaticSize.None
							frame14.Size = UDim2.new(0, 106, 0, 27)
							textBox.Size = UDim2.new(1, 0, 1, 0)
						else
							local v10 = Enum
							frame14.AutomaticSize = v10.AutomaticSize.X
							textBox.AutomaticSize = v10.AutomaticSize.X
							frame14.Size = UDim2.new(0, 0, 0, 27)
							textBox.Size = UDim2.new(0, 0, 1, 0)
						end
					end)

					uiCorner12.CornerRadius = UDim.new(0, 6)
					uiCorner12.Parent = textBox
					uiCorner11.CornerRadius = UDim.new(0, 6)
					uiCorner11.Parent = frame14
					uiPadding5.Parent = frame14
					uiPadding5.PaddingLeft = UDim.new(0, 10)
					uiPadding5.PaddingRight = UDim.new(0, 10)
					frame15.Name = "TextBoxListing"
					frame15.Parent = frame13
					frame15.Active = true
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 1
					frame15.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BorderSizePixel = 0
					frame15.Size = UDim2.new(0.563, 0, 0, 0)
					frame15.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "TextBoxTitle"
					textLabel3.Parent = frame15
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Size = UDim2.new(0.659646749, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					uiPadding6.Parent = frame15
					uiPadding6.PaddingLeft = UDim.new(0, 15)
					textLabel4.Name = "TextBoxDescription"
					textLabel4.Parent = frame15
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.500000238, 0)
					textLabel4.Size = UDim2.new(0.659646749, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiListLayout6.Parent = frame15
					uiListLayout6.SortOrder = v11.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v11.VerticalAlignment.Center

					bindableEvent.Event:Connect(function(arg7)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { BackgroundColor3 = v12.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v12.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { TextColor3 = v12.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local v13 = textBox
						local tbl9 = { TextColor3 = v12.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { PlaceholderColor3 = v12.Themes[arg7].ItemElementsTextColor }
						TweenService:Create(v13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					textBox.Focused:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(textBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					textBox.FocusLost:Connect(function()
						if #textBox.Text > 0 then
							pcall(callback, textBox.Text)
							tbl.Flags[flag8].text = textBox.Text
						end

						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor }
						TweenService:Create(textBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					local tbl5 = { SetText = function(arg7, text3)
						textBox.Text = text3
						tbl.Flags[flag8].text = text3
						pcall(callback, text3)
					end }

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
				CreateLine = function(arg5)
					local frame13 = Instance.new("Frame")
					local uiCorner10 = Instance.new("UICorner")
					frame13.Name = "Line"
					frame13.Parent = arg5.Instance
					frame13.BackgroundColor3 = tbl.Themes[str].LineColor
					frame13.BorderColor3 = Color3.fromRGB(43, 43, 41)
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 8)
					uiCorner10.Parent = frame13

					bindableEvent.Event:Connect(function(arg6)
						local tbl5 = { BackgroundColor3 = tbl.Themes[arg6].LineColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)
				end,
				CreatePharagraph = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local lines = arg6.Lines or {}
					local frame13 = Instance.new("Frame")
					local frame14 = Instance.new("Frame")
					local textLabel3 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					frame13.Name = "Pharagraph"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					frame14.Name = "PharagraphListing"
					frame14.Parent = frame13
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 1
					frame14.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, 0, 0, 0)
					frame14.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "PharagraphTitle"
					textLabel3.Parent = frame14
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Size = UDim2.new(0.979059696, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					uiPadding4.Parent = frame14
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = frame14
					local v11 = Enum
					uiListLayout6.SortOrder = v11.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v11.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13

					for _, line in pairs(lines) do
						local textLabel4 = Instance.new("TextLabel")
						textLabel4.Name = "PharagraphDescription"
						textLabel4.Parent = frame14
						textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						textLabel4.BackgroundTransparency = 1
						textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
						textLabel4.BorderSizePixel = 0
						textLabel4.Size = UDim2.new(0.979059696, 0, 0, 0)
						textLabel4.Font = Enum.Font.Gotham
						textLabel4.Text = line
						textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
						textLabel4.TextSize = 14
						textLabel4.TextWrapped = true
						local v12 = Enum
						textLabel4.TextXAlignment = v12.TextXAlignment.Left
						textLabel4.AutomaticSize = v12.AutomaticSize.Y
					end

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					bindableEvent.Event:Connect(function(arg7)
						local v12 = tbl
						local tbl5 = { BackgroundColor3 = v12.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v12.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()

						for _, child in pairs(frame14:GetChildren()) do
							if child:IsA("TextLabel") then
								local tbl7 = { TextColor3 = tbl.Themes[arg7].ItemDescriptionColor }
								TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
							end
						end

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)
				end,
				CreateImage = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local imageId = arg6.ImageInfo.ImageId
					local imageStrokeColor = arg6.ImageInfo.ImageStrokeColor
					local imageTitle = arg6.ImageInfo.ImageTitle
					local imageDescription = arg6.ImageInfo.ImageDescription or {}
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local imageLabel3 = Instance.new("ImageLabel")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local imageLabel4 = Instance.new("ImageLabel")
					local uiCorner12 = Instance.new("UICorner")
					local uiStroke2 = Instance.new("UIStroke")
					local uiListLayout7 = Instance.new("UIListLayout")
					local frame15 = Instance.new("Frame")
					local uiListLayout8 = Instance.new("UIListLayout")
					local textLabel5 = Instance.new("TextLabel")
					local uiPadding6 = Instance.new("UIPadding")
					local uiPadding7 = Instance.new("UIPadding")
					frame13.Name = "Image"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "ImageButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					textButton2.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "ImageTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0, 0, 0.122222051, 0)
					textLabel3.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					textLabel4.Name = "ImageDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.5, 0)
					textLabel4.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = textButton2
					local v12 = Enum
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					imageLabel3.Name = "Arrow"
					imageLabel3.Parent = frame13
					imageLabel3.AnchorPoint = Vector2.new(1, 0.5)
					imageLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					imageLabel3.BorderSizePixel = 0
					imageLabel3.Position = UDim2.new(1, -14, 0.5, 0)
					imageLabel3.Size = UDim2.new(0, 26, 0, 27)
					imageLabel3.Image = "rbxassetid://6034818372"
					imageLabel3.ImageColor3 = Color3.fromRGB(182, 182, 182)
					frame14.Name = "ImageFrame"
					frame14.Parent = arg5.Instance
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 0.2
					frame14.BorderColor3 = Color3.fromRGB(35, 35, 35)
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, -15, 0, 0)
					frame14.AutomaticSize = Enum.AutomaticSize.None
					frame14.ClipsDescendants = true
					frame14.Visible = false
					uiCorner11.CornerRadius = UDim.new(0, 10)
					uiCorner11.Parent = frame14
					imageLabel4.Parent = frame14
					imageLabel4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					imageLabel4.BackgroundTransparency = 1
					imageLabel4.BorderColor3 = Color3.fromRGB(35, 35, 35)
					imageLabel4.BorderSizePixel = 0
					imageLabel4.Position = UDim2.new(0.0239352528, 0, 0.115073025, 0)
					imageLabel4.Size = UDim2.new(0, 97, 0, 95)
					imageLabel4.Image = imageId
					imageLabel4.ImageTransparency = 1
					uiCorner12.Parent = imageLabel4
					uiStroke2.Parent = imageLabel4
					uiStroke2.Color = imageStrokeColor
					local v13 = Enum
					uiStroke2.ApplyStrokeMode = v13.ApplyStrokeMode.Border
					uiStroke2.Transparency = 1
					uiListLayout7.Parent = frame14
					uiListLayout7.FillDirection = v13.FillDirection.Horizontal
					uiListLayout7.SortOrder = v13.SortOrder.LayoutOrder
					uiListLayout7.VerticalAlignment = v13.VerticalAlignment.Center
					uiListLayout7.Padding = UDim.new(0, 30)
					frame15.Name = "ImageListing"
					frame15.Parent = frame14
					frame15.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					frame15.BackgroundTransparency = 1
					frame15.BorderColor3 = Color3.fromRGB(35, 35, 35)
					frame15.BorderSizePixel = 0
					frame15.Position = UDim2.new(0, 0, 0, 0)
					frame15.Size = UDim2.new(1, -130, 0.894, 0)
					local v14 = Enum
					frame15.AutomaticSize = v14.AutomaticSize.Y
					uiListLayout8.Parent = frame15
					uiListLayout8.SortOrder = v14.SortOrder.LayoutOrder
					uiListLayout8.VerticalAlignment = v14.VerticalAlignment.Center
					textLabel5.Name = "ButtonTitle"
					textLabel5.Parent = frame15
					textLabel5.Active = true
					textLabel5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textLabel5.BackgroundTransparency = 1
					textLabel5.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textLabel5.BorderSizePixel = 0
					textLabel5.Size = UDim2.new(1, 0, 0, 17)
					textLabel5.Font = Enum.Font.GothamBold
					textLabel5.Text = imageTitle
					textLabel5.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel5.TextSize = 15
					textLabel5.TextWrapped = true
					local v15 = Enum
					textLabel5.TextXAlignment = v15.TextXAlignment.Left
					textLabel5.AutomaticSize = v15.AutomaticSize.Y
					textLabel5.TextTransparency = 1

					for _, v16 in pairs(imageDescription) do
						local textLabel6 = Instance.new("TextLabel")
						textLabel6.Name = "ButtonText"
						textLabel6.Parent = frame15
						textLabel6.Active = true
						textLabel6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						textLabel6.BackgroundTransparency = 1
						textLabel6.BorderColor3 = Color3.fromRGB(35, 35, 35)
						textLabel6.BorderSizePixel = 0
						textLabel6.Size = UDim2.new(1, 0, 0, 17)
						textLabel6.Font = Enum.Font.Gotham
						textLabel6.Text = v16
						textLabel6.TextColor3 = tbl.Themes[str].ItemDescriptionColor
						textLabel6.TextSize = 15
						textLabel6.TextWrapped = true
						local v17 = Enum
						textLabel6.TextXAlignment = v17.TextXAlignment.Left
						textLabel6.TextTransparency = 1
						textLabel6.AutomaticSize = v17.AutomaticSize.Y
					end

					uiPadding6.Parent = frame15
					uiPadding6.PaddingRight = UDim.new(0, 10)
					uiPadding7.Parent = frame14
					uiPadding7.PaddingBottom = UDim.new(0, 10)
					uiPadding7.PaddingLeft = UDim.new(0, 15)
					uiPadding7.PaddingRight = UDim.new(0, 10)
					uiPadding7.PaddingTop = UDim.new(0, 10)

					bindableEvent.Event:Connect(function(arg7)
						local v16 = tbl
						local tbl5 = { BackgroundColor3 = v16.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v16.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v16.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { TextColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()

						for _, child in pairs(frame15:GetChildren()) do
							if child:IsA("TextLabel") then
								local tbl10 = { TextColor3 = tbl.Themes[arg7].ItemDescriptionColor }
								TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
							end
						end

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					local flag8 = false

					textButton2.MouseButton1Click:Connect(function()
						if flag8 == false then
							frame14.Visible = true
							TweenService:Create(frame14, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) }):Play()
							TweenService:Create(uiStroke2, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 0 }):Play()
							local v16
							TweenService:Create(imageLabel4, TweenInfo.new(0.15, v16.EasingStyle.Quad), { ImageTransparency = 0 }):Play()

							for _, child in pairs(frame15:GetChildren()) do
								if child:IsA("TextLabel") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								end
							end

							task.wait(0.1)
							frame14.AutomaticSize = Enum.AutomaticSize.Y
							flag8 = true
						elseif flag8 == true then
							frame14.AutomaticSize = Enum.AutomaticSize.None
							TweenService:Create(uiStroke2, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 1 }):Play()
							local v16
							TweenService:Create(imageLabel4, TweenInfo.new(0.15, v16.EasingStyle.Quad), { ImageTransparency = 1 }):Play()

							for _, child in pairs(frame15:GetChildren()) do
								if child:IsA("TextLabel") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								end
							end

							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) }):Play()
							task.wait(0.1)
							flag8 = false
							local v17
							v17.Visible = false
						end
					end)
				end,
				CreateVideo = function(arg5, arg6)
					local text = tostring(arg6.Title)
					local text2 = tostring(arg6.Description)
					local videoId = arg6.VideoInfo.VideoId
					local videoStrokeColor = arg6.VideoInfo.VideoStrokeColor
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local imageLabel3 = Instance.new("ImageLabel")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local uiListLayout7 = Instance.new("UIListLayout")
					local frame15 = Instance.new("Frame")
					local frame16 = Instance.new("Frame")
					local uiCorner12 = Instance.new("UICorner")
					local uiAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local uiCorner13 = Instance.new("UICorner")
					local frame17 = Instance.new("Frame")
					local imageButton4 = Instance.new("ImageButton")
					local imageButton5 = Instance.new("ImageButton")
					local imageButton6 = Instance.new("ImageButton")
					local imageButton7 = Instance.new("ImageButton")
					local uiListLayout8 = Instance.new("UIListLayout")
					local uiCorner14 = Instance.new("UICorner")
					local uiPadding6 = Instance.new("UIPadding")
					local videoFrame = Instance.new("VideoFrame")
					local uiStroke2 = Instance.new("UIStroke")
					local uiCorner15 = Instance.new("UICorner")
					local flag8 = false
					frame13.Name = "Video"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "VideoButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					textButton2.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "VideoTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0, 0, 0.122222051, 0)
					textLabel3.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = text
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					textLabel4.Name = "VideoDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0.5, 0)
					textLabel4.Size = UDim2.new(0.854911864, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = text2
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = textButton2
					local v12 = Enum
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					imageLabel3.Name = "Arrow"
					imageLabel3.Parent = frame13
					imageLabel3.AnchorPoint = Vector2.new(1, 0.5)
					imageLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					imageLabel3.BorderSizePixel = 0
					imageLabel3.Position = UDim2.new(1, -14, 0.5, 0)
					imageLabel3.Size = UDim2.new(0, 26, 0, 27)
					imageLabel3.Image = "rbxassetid://6034818372"
					imageLabel3.ImageColor3 = Color3.fromRGB(182, 182, 182)
					frame14.Name = "VideoFrame"
					frame14.Parent = arg5.Instance
					frame14.Active = true
					frame14.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame14.BackgroundTransparency = 0
					frame14.BorderColor3 = Color3.fromRGB(35, 35, 35)
					frame14.BorderSizePixel = 0
					frame14.Size = UDim2.new(1, -15, 0, 0)
					frame14.ClipsDescendants = true
					frame14.AutomaticSize = Enum.AutomaticSize.None
					frame14.Visible = false
					uiCorner11.CornerRadius = UDim.new(0, 10)
					uiCorner11.Parent = frame14
					uiListLayout7.Parent = frame14
					local v13 = Enum
					uiListLayout7.FillDirection = v13.FillDirection.Horizontal
					uiListLayout7.HorizontalAlignment = v13.HorizontalAlignment.Center
					uiListLayout7.SortOrder = v13.SortOrder.LayoutOrder
					uiListLayout7.VerticalAlignment = v13.VerticalAlignment.Center
					uiListLayout7.Padding = UDim.new(0, 30)
					frame15.Name = "VideoFrame"
					frame15.Parent = frame14
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 1
					frame15.BorderColor3 = Color3.fromRGB(33, 33, 33)
					frame15.BorderSizePixel = 0
					frame15.Size = UDim2.new(1, 0, 1, 0)
					frame15.AutomaticSize = Enum.AutomaticSize.Y
					frame15.ClipsDescendants = true
					videoFrame.Parent = frame16
					videoFrame.BackgroundTransparency = 1
					videoFrame.Size = UDim2.new(1, 0, 1, 0)
					videoFrame.Position = UDim2.new(0, 0, 0, 0)
					videoFrame.Volume = 1
					videoFrame.TimePosition = 0
					videoFrame.Looped = true
					videoFrame.Video = videoId
					uiStroke2.Parent = videoFrame
					uiStroke2.Color = videoStrokeColor
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					uiCorner15.Parent = videoFrame
					frame16.Name = "VF"
					frame16.Parent = frame15
					frame16.AnchorPoint = Vector2.new(0.5, 0.5)
					frame16.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame16.BorderColor3 = Color3.fromRGB(0, 0, 0)
					frame16.BackgroundTransparency = 1
					frame16.BorderSizePixel = 0
					frame16.Position = UDim2.new(0.5, 0, 0.5, 0)
					frame16.Size = UDim2.new(0.723, 0, 0.953, 0)
					uiCorner12.Parent = frame16
					uiAspectRatioConstraint.Parent = frame16
					uiAspectRatioConstraint.AspectRatio = 1.778
					uiCorner13.CornerRadius = UDim.new(0, 6)
					uiCorner13.Parent = frame15
					frame17.Name = "VidBtnS"
					frame17.Parent = frame15
					frame17.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
					frame17.BorderColor3 = Color3.fromRGB(0, 0, 0)
					frame17.BorderSizePixel = 0
					frame17.Position = UDim2.new(0.5, 120, 0, 0)
					frame17.Size = UDim2.new(0, 29, 0, 118)
					imageButton4.Name = "Start"
					imageButton4.Parent = frame17
					imageButton4.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
					imageButton4.BackgroundTransparency = 1
					imageButton4.BorderColor3 = Color3.fromRGB(33, 33, 33)
					imageButton4.BorderSizePixel = 0
					imageButton4.Position = UDim2.new(0.206896558, 0, 0.0762711838, 0)
					imageButton4.Size = UDim2.new(0, 25, 0, 25)
					imageButton4.Image = "rbxassetid://6026663699"
					imageButton4.LayoutOrder = 1

					imageButton4.MouseButton1Click:Connect(function()
						videoFrame:Play()
						flag8 = true
					end)

					imageButton5.Name = "Stop"
					imageButton5.Parent = frame17
					imageButton5.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
					imageButton5.BackgroundTransparency = 1
					imageButton5.BorderColor3 = Color3.fromRGB(33, 33, 33)
					imageButton5.BorderSizePixel = 0
					imageButton5.Position = UDim2.new(0.206896558, 0, 0.288135588, 0)
					imageButton5.Size = UDim2.new(0, 25, 0, 25)
					imageButton5.Image = "rbxassetid://6026681576"
					imageButton5.LayoutOrder = 2

					imageButton5.MouseButton1Click:Connect(function()
						videoFrame:Pause()
						flag8 = false
					end)

					imageButton6.Name = "Prev5"
					imageButton6.Parent = frame17
					imageButton6.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
					imageButton6.BackgroundTransparency = 1
					imageButton6.BorderColor3 = Color3.fromRGB(33, 33, 33)
					imageButton6.BorderSizePixel = 0
					imageButton6.Position = UDim2.new(0.206896558, 0, 0.5, 0)
					imageButton6.Size = UDim2.new(0, 25, 0, 25)
					imageButton6.Image = "rbxassetid://6026667011"
					imageButton6.LayoutOrder = 3

					imageButton6.MouseButton1Click:Connect(function()
						videoFrame.TimePosition = videoFrame.TimePosition - 5
					end)

					imageButton7.Name = "Skip5"
					imageButton7.Parent = frame17
					imageButton7.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
					imageButton7.BackgroundTransparency = 1
					imageButton7.BorderColor3 = Color3.fromRGB(33, 33, 33)
					imageButton7.BorderSizePixel = 0
					imageButton7.Position = UDim2.new(0.206896558, 0, 0.711864412, 0)
					imageButton7.Size = UDim2.new(0, 25, 0, 25)
					imageButton7.Image = "rbxassetid://6026667005"
					imageButton7.LayoutOrder = 4

					imageButton7.MouseButton1Click:Connect(function()
						videoFrame.TimePosition = videoFrame.TimePosition + 5
					end)

					uiListLayout8.Parent = frame17
					local v14 = Enum
					uiListLayout8.HorizontalAlignment = v14.HorizontalAlignment.Center
					uiListLayout8.SortOrder = v14.SortOrder.LayoutOrder
					uiListLayout8.VerticalAlignment = v14.VerticalAlignment.Center
					uiCorner14.CornerRadius = UDim.new(0, 6)
					uiCorner14.Parent = frame17
					uiPadding6.Parent = frame14
					uiPadding6.PaddingBottom = UDim.new(0, 15)
					uiPadding6.PaddingLeft = UDim.new(0, 15)
					uiPadding6.PaddingRight = UDim.new(0, 15)
					uiPadding6.PaddingTop = UDim.new(0, 15)

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					if text == "" or text == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if text2 == "" or text2 == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					bindableEvent.Event:Connect(function(arg7)
						local v15 = tbl
						local tbl5 = { BackgroundColor3 = v15.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v15.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v15.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v15.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					local flag9 = false

					textButton2.MouseButton1Click:Connect(function()
						if flag9 == false then
							frame14.Visible = true
							TweenService:Create(frame14, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) }):Play()
							TweenService:Create(uiStroke2, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 0 }):Play()
							videoFrame.Visible = true

							if flag8 == true then
								videoFrame:Play()
							end

							for _, child in pairs(frame14:GetChildren()) do
								if child:IsA("Frame") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 }):Play()
								elseif child:IsA("ImageButton") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 }):Play()
								end
							end

							task.wait(0.1)
							frame14.AutomaticSize = Enum.AutomaticSize.Y
							flag9 = true
						elseif flag9 == true then
							frame14.AutomaticSize = Enum.AutomaticSize.None
							TweenService:Create(uiStroke2, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 1 }):Play()
							videoFrame:Pause()
							videoFrame.Visible = false

							for _, child in pairs(frame14:GetChildren()) do
								if child:IsA("Frame") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
								elseif child:IsA("ImageButton") then
									TweenService:Create(child, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
								end
							end

							TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) }):Play()
							task.wait(0.1)
							flag9 = false
							local v15
							v15.Visible = false
						end
					end)
				end,
				CreatePicker = function(arg5, arg6)
					local title2 = arg6.Title
					local description = arg6.Description
					local placeHolderText = arg6.PlaceHolderText

					local callback = arg6.Callback or function()
					end

					local list = arg6.List or {}
					local flag8 = arg6.Flag
					tbl.Flags[flag8] = { flag = flag8, type = "Picker", selected = { list[1] } }
					local frame13 = Instance.new("Frame")
					local textButton2 = Instance.new("TextButton")
					local textLabel3 = Instance.new("TextLabel")
					local textLabel4 = Instance.new("TextLabel")
					local uiPadding4 = Instance.new("UIPadding")
					local uiListLayout6 = Instance.new("UIListLayout")
					local uiPadding5 = Instance.new("UIPadding")
					local uiCorner10 = Instance.new("UICorner")
					local frame14 = Instance.new("Frame")
					local uiCorner11 = Instance.new("UICorner")
					local uiStroke2 = Instance.new("UIStroke")
					local textButton3 = Instance.new("TextButton")
					local textLabel5 = Instance.new("TextLabel")
					local uiListLayout7 = Instance.new("UIListLayout")
					local uiPadding6 = Instance.new("UIPadding")
					local frame15 = Instance.new("Frame")
					local uiCorner12 = Instance.new("UICorner")
					local uiListLayout8 = Instance.new("UIListLayout")
					local frame16 = Instance.new("Frame")
					local textBox = Instance.new("TextBox")
					local imageLabel3 = Instance.new("ImageLabel")
					local scrollingFrame3 = Instance.new("ScrollingFrame")
					local uiListLayout9 = Instance.new("UIListLayout")
					local uiPadding7 = Instance.new("UIPadding")
					local uiCorner13 = Instance.new("UICorner")
					local uiPadding8 = Instance.new("UIPadding")
					frame13.Name = "ThemePicker"
					frame13.Parent = arg5.Instance
					frame13.Active = true
					frame13.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame13.BorderSizePixel = 0
					frame13.Size = UDim2.new(1, -15, 0, 0)
					frame13.AutomaticSize = Enum.AutomaticSize.Y
					textButton2.Name = "ThemePickerButton"
					textButton2.Parent = frame13
					textButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BackgroundTransparency = 1
					textButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textButton2.BorderSizePixel = 0
					textButton2.Size = UDim2.new(1, 0, 0, 0)
					textButton2.AutoButtonColor = false
					textButton2.Font = Enum.Font.SourceSans
					textButton2.Text = ""
					textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton2.TextSize = 14
					textButton2.AutomaticSize = Enum.AutomaticSize.Y
					textLabel3.Name = "ThemePickerTitle"
					textLabel3.Parent = textButton2
					textLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BackgroundTransparency = 1
					textLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel3.BorderSizePixel = 0
					textLabel3.Position = UDim2.new(0, 0, 0, 0)
					textLabel3.Size = UDim2.new(0.612073958, 0, 0, 0)
					textLabel3.Font = Enum.Font.GothamBold
					textLabel3.Text = title2
					textLabel3.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel3.TextSize = 14
					textLabel3.TextWrapped = true
					local v10 = Enum
					textLabel3.TextXAlignment = v10.TextXAlignment.Left
					textLabel3.AutomaticSize = v10.AutomaticSize.Y
					textLabel3.LayoutOrder = 1
					textLabel4.Name = "ThemePickerDescription"
					textLabel4.Parent = textButton2
					textLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BackgroundTransparency = 1
					textLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
					textLabel4.BorderSizePixel = 0
					textLabel4.Position = UDim2.new(0, 0, 0, 0)
					textLabel4.Size = UDim2.new(0.612073958, 0, 0, 0)
					textLabel4.Font = Enum.Font.Gotham
					textLabel4.Text = description
					textLabel4.TextColor3 = tbl.Themes[str].ItemDescriptionColor
					textLabel4.TextSize = 14
					textLabel4.TextWrapped = true
					local v11 = Enum
					textLabel4.TextXAlignment = v11.TextXAlignment.Left
					textLabel4.AutomaticSize = v11.AutomaticSize.Y
					textLabel4.LayoutOrder = 2
					uiPadding4.Parent = textButton2
					uiPadding4.PaddingLeft = UDim.new(0, 15)
					uiListLayout6.Parent = textButton2
					local v12 = Enum
					uiListLayout6.SortOrder = v12.SortOrder.LayoutOrder
					uiListLayout6.VerticalAlignment = v12.VerticalAlignment.Center
					uiPadding5.Parent = frame13
					uiPadding5.PaddingBottom = UDim.new(0, 10)
					uiPadding5.PaddingTop = UDim.new(0, 10)
					uiCorner10.CornerRadius = UDim.new(0, 10)
					uiCorner10.Parent = frame13
					frame14.Name = "ThemePickerClicker"
					frame14.Parent = frame13
					frame14.AnchorPoint = Vector2.new(1, 0.5)
					frame14.BackgroundColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderColor3 = tbl.Themes[str].ItemElementsBackgroundColor
					frame14.BorderSizePixel = 0
					frame14.Position = UDim2.new(1, -14, 0.5, 0)
					frame14.Size = UDim2.new(0, 0, 0, 27)
					frame14.AutomaticSize = Enum.AutomaticSize.X
					uiCorner11.CornerRadius = UDim.new(0, 5)
					uiCorner11.Parent = frame14
					uiStroke2.Parent = frame14
					uiStroke2.Color = tbl.Themes[str].ItemStrokeColor
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					textButton3.Name = "SelectThemeButton"
					textButton3.Parent = frame14
					textButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textButton3.BackgroundTransparency = 1
					textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					textButton3.BorderSizePixel = 0
					textButton3.Size = UDim2.new(0, 0, 1, 0)
					textButton3.Font = Enum.Font.SourceSans
					textButton3.Text = ""
					textButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
					textButton3.TextSize = 14
					textButton3.TextTransparency = 1
					textButton3.AutomaticSize = Enum.AutomaticSize.X
					textLabel5.Name = "SelectedTheme"
					textLabel5.Parent = textButton3
					textLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textLabel5.BackgroundTransparency = 1
					textLabel5.Size = UDim2.new(0, 0, 1, 0)
					textLabel5.ZIndex = 2
					textLabel5.Font = Enum.Font.Gotham
					textLabel5.Text = list[1]
					textLabel5.TextColor3 = tbl.Themes[str].ItemTitleColor
					textLabel5.TextSize = 15
					textLabel5.TextWrapped = true
					local v13 = Enum
					textLabel5.TextXAlignment = v13.TextXAlignment.Center
					textLabel5.LayoutOrder = 1
					textLabel5.AutomaticSize = v13.AutomaticSize.X
					uiListLayout7.Parent = textButton3
					uiListLayout7.SortOrder = v13.SortOrder.LayoutOrder
					uiListLayout7.Padding = UDim.new(0, 2)
					uiListLayout7.Wraps = true
					uiPadding6.Parent = frame14
					uiPadding6.PaddingLeft = UDim.new(0, 10)
					uiPadding6.PaddingRight = UDim.new(0, 10)
					frame15.Name = "ThemePickerFrame"
					frame15.Parent = arg5.Instance
					frame15.Active = true
					frame15.BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BackgroundTransparency = 0.2
					frame15.BorderColor3 = tbl.Themes[str].ItemBackgroundColor
					frame15.BorderSizePixel = 0
					frame15.Size = UDim2.new(1, -15, 0, 0)
					frame15.Visible = false
					frame15.AutomaticSize = Enum.AutomaticSize.Y
					uiCorner12.CornerRadius = UDim.new(0, 10)
					uiCorner12.Parent = frame15
					uiListLayout8.Parent = frame15
					local v14 = Enum
					uiListLayout8.FillDirection = v14.FillDirection.Horizontal
					uiListLayout8.HorizontalAlignment = v14.HorizontalAlignment.Center
					uiListLayout8.SortOrder = v14.SortOrder.LayoutOrder
					uiListLayout8.VerticalAlignment = v14.VerticalAlignment.Center
					uiListLayout8.Padding = UDim.new(0, 30)
					frame16.Name = "Themes"
					frame16.Parent = frame15
					frame16.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					frame16.BackgroundTransparency = 1
					frame16.BorderColor3 = Color3.fromRGB(38, 38, 38)
					frame16.BorderSizePixel = 0
					frame16.Position = UDim2.new(0, 0, 0.55306071, 0)
					frame16.Size = UDim2.new(1, 0, 1, 0)
					textBox.Name = "Search"
					textBox.Parent = frame16
					textBox.AnchorPoint = Vector2.new(0, 0)
					textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					textBox.BorderColor3 = Color3.fromRGB(35, 35, 35)
					textBox.BorderSizePixel = 0
					textBox.Position = UDim2.new(0, 37, 0, -2)
					textBox.Size = UDim2.new(0.926606655, 0, 0, 23)
					textBox.ClearTextOnFocus = false
					textBox.Font = Enum.Font.SourceSans
					textBox.PlaceholderColor3 = tbl.Themes[str].ItemTitleColor
					textBox.PlaceholderText = placeHolderText
					textBox.Text = ""
					textBox.TextColor3 = tbl.Themes[str].ItemTitleColor
					textBox.TextSize = 18
					textBox.TextXAlignment = Enum.TextXAlignment.Left
					textBox.BackgroundTransparency = 1

					textBox:GetPropertyChangedSignal("Text"):Connect(function()
						local v15 = next
						local descendants, v16 = scrollingFrame3:GetDescendants()

						for _, v17 in v15, descendants, v16 do
							if v17:IsA("TextButton") then
								if not string.lower(v17.Text):find(string.lower(textBox.Text)) then
									v17.Parent.Visible = false
								else
									v17.Parent.Visible = true
								end
							end
						end

						if textBox.Text == "" then
							local v17 = next
							local descendants2, v18 = scrollingFrame3:GetDescendants()

							for _, v19 in v17, descendants2, v18 do
								if v19:IsA("TextButton") then
									v19.Parent.Visible = true
								end
							end
						end
					end)

					imageLabel3.Name = "SearchIcon"
					imageLabel3.Parent = frame16
					imageLabel3.BackgroundTransparency = 1
					imageLabel3.BorderSizePixel = 0
					imageLabel3.Position = UDim2.new(0, 17, 0, -1)
					imageLabel3.Size = UDim2.new(0, 20, 0, 22)
					imageLabel3.Image = "rbxassetid://118685771787843"
					imageLabel3.ImageColor3 = tbl.Themes[str].ItemTitleColor
					scrollingFrame3.Name = "ThemeContainer"
					scrollingFrame3.Parent = frame16
					scrollingFrame3.Active = true
					scrollingFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					scrollingFrame3.BackgroundTransparency = 1
					scrollingFrame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
					scrollingFrame3.BorderSizePixel = 0
					scrollingFrame3.Position = UDim2.new(0, 0, 0, 26)
					scrollingFrame3.Size = UDim2.new(1, 0, -0.129999995, 100)
					scrollingFrame3.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
					scrollingFrame3.ScrollBarThickness = 6
					scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
					local v15 = Enum
					scrollingFrame3.AutomaticCanvasSize = v15.AutomaticSize.Y
					uiListLayout9.Parent = scrollingFrame3
					uiListLayout9.HorizontalAlignment = v15.HorizontalAlignment.Center
					uiListLayout9.SortOrder = v15.SortOrder.LayoutOrder
					uiListLayout9.Padding = UDim.new(0, 5)
					uiPadding7.Parent = scrollingFrame3
					uiPadding7.PaddingBottom = UDim.new(0, 10)
					uiPadding7.PaddingTop = UDim.new(0, 10)
					uiCorner13.Parent = frame16
					uiPadding8.Parent = frame16
					uiPadding8.PaddingBottom = UDim.new(0, 15)
					uiPadding8.PaddingLeft = UDim.new(0, 15)
					uiPadding8.PaddingRight = UDim.new(0, 15)
					uiPadding8.PaddingTop = UDim.new(0, 15)

					frame13.MouseEnter:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemHoverColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					frame13.MouseLeave:Connect(function()
						local tbl5 = { BackgroundColor3 = tbl.Themes[str].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
					end)

					if title2 == "" or title2 == "nil" then
						textLabel3.Visible = false
					else
						textLabel3.Visible = true
					end

					if description == "" or description == "nil" then
						textLabel4.Visible = false
					else
						textLabel4.Visible = true
					end

					local flag9 = false

					textButton2.MouseButton1Click:Connect(function()
						if flag9 == false then
							frame15.Visible = true
							local v16 = frame15
							TweenService:Create(v16, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) }):Play()
							task.wait(0.1)

							for _, descendant in pairs(v16:GetDescendants()) do
								if descendant:IsA("ScrollingFrame") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 0 }):Play()
								elseif descendant:IsA("Frame") and (descendant.Name == "ItemFrame" or descendant.Name == "Selection") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 }):Play()
								elseif descendant:IsA("TextLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								elseif descendant:IsA("TextBox") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								elseif descendant:IsA("ImageLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 }):Play()
								elseif descendant:IsA("TextButton") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
								end
							end

							frame15.AutomaticSize = Enum.AutomaticSize.Y
							flag9 = true
						elseif flag9 == true then
							frame15.AutomaticSize = Enum.AutomaticSize.None

							for _, descendant in pairs(frame15:GetDescendants()) do
								if descendant:IsA("ScrollingFrame") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 1 }):Play()
								elseif descendant:IsA("Frame") and (descendant.Name == "ItemFrame" or descendant.Name == "Selection") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
								elseif descendant:IsA("TextLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("TextBox") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("ImageLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
								elseif descendant:IsA("TextButton") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								end
							end

							task.wait(0.1)
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) }):Play()
							task.wait(0.1)
							flag9 = false
							local v16
							v16.Visible = false
						end
					end)

					for _, v16 in pairs(list) do
						local frame17 = Instance.new("Frame")
						local textButton4 = Instance.new("TextButton")
						local uiCorner14 = Instance.new("UICorner")
						local uiCorner15 = Instance.new("UICorner")
						frame17.Name = "ItemFrame"
						frame17.Parent = scrollingFrame3
						frame17.BackgroundColor3 = tbl.Themes[str].DropdownItemBackground
						frame17.BorderColor3 = tbl.Themes[str].DropdownItemBackground
						frame17.BorderSizePixel = 0
						frame17.Position = UDim2.new(0.107260369, 0, 0, 0)
						frame17.Size = UDim2.new(0.926217794, 0, 0, 27)
						textButton4.Name = "ItemButton"
						textButton4.Parent = frame17
						textButton4.BackgroundColor3 = tbl.Themes[str].ItemStrokeColor
						textButton4.BackgroundTransparency = 1
						textButton4.BorderColor3 = tbl.Themes[str].ItemStrokeColor
						textButton4.BorderSizePixel = 0
						textButton4.Size = UDim2.new(1, 0, 1, 0)
						textButton4.Font = Enum.Font.Gotham
						textButton4.Text = v16
						textButton4.TextColor3 = tbl.Themes[str].DropdownItemText
						textButton4.TextSize = 14
						textButton4.TextWrapped = true
						uiCorner14.Parent = textButton4
						uiCorner15.CornerRadius = UDim.new(0, 5)
						uiCorner15.Parent = frame17

						textButton4.MouseButton1Click:Connect(function()
							frame15.AutomaticSize = Enum.AutomaticSize.None

							for _, descendant in pairs(frame15:GetDescendants()) do
								if descendant:IsA("ScrollingFrame") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 1 }):Play()
								elseif descendant:IsA("Frame") and (descendant.Name == "ItemFrame" or descendant.Name == "Selection") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
								elseif descendant:IsA("TextLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("TextBox") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								elseif descendant:IsA("ImageLabel") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
								elseif descendant:IsA("TextButton") then
									TweenService:Create(descendant, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
								end
							end

							task.wait(0.1)
							textLabel5.Text = v16
							TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) }):Play()
							task.wait(0.1)
							flag9 = false
							local v17
							v17.Visible = false
							table.clear(tbl.Flags[flag8].selected)
							local v18 = v16
							table.insert(tbl.Flags[flag8].selected, v18)
							pcall(callback, v18)
						end)
					end

					bindableEvent.Event:Connect(function(arg7)
						local v16 = tbl
						local tbl5 = { BackgroundColor3 = v16.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl5):Play()
						local tbl6 = { TextColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl6):Play()
						local tbl7 = { TextColor3 = v16.Themes[arg7].ItemDescriptionColor }
						TweenService:Create(textLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl7):Play()
						local tbl8 = { BackgroundColor3 = v16.Themes[arg7].ItemElementsBackgroundColor }
						TweenService:Create(frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl8):Play()
						local tbl9 = { Color = v16.Themes[arg7].ItemStrokeColor }
						TweenService:Create(uiStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl9):Play()
						local tbl10 = { TextColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(textLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl10):Play()
						local tbl11 = { BackgroundColor3 = v16.Themes[arg7].ItemBackgroundColor }
						TweenService:Create(frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl11):Play()
						local tbl12 = { ImageColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(imageLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl12):Play()
						local v17 = textBox
						local tbl13 = { TextColor3 = v16.Themes[arg7].ItemTitleColor }
						TweenService:Create(v17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl13):Play()
						v17.PlaceholderColor3 = v16.Themes[arg7].ItemTitleColor

						for _, child in pairs(scrollingFrame3:GetChildren()) do
							if child.Name == "ItemFrame" then
								local tbl14 = { BackgroundColor3 = tbl.Themes[arg7].DropdownItemBackground }
								TweenService:Create(child, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl14):Play()
								local itemButton = child:FindFirstChild("ItemButton")

								if itemButton then
									local tbl15 = { TextColor3 = tbl.Themes[arg7].DropdownItemText }
									TweenService:Create(itemButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), tbl15):Play()
								end
							end
						end

						if getgenv().HawkLibLOADED == false then
							connection3:Disconnect()
						end
					end)

					local tbl5 = { Select = function(arg7, arg8)
						if type(arg8) ~= "table" then
							return
						end

						for _, v16 in next, arg8, nil do
							for _, v17 in ipairs(list) do
								if v16 == v17 then
									table.clear(tbl.Flags[flag8].selected)
									table.insert(tbl.Flags[flag8].selected, v16)
									textLabel5.Text = v16
									pcall(callback, v16)
								end
							end
						end
					end }

					tbl.Elements[flag8] = tbl5
					return tbl5
				end,
			}

			return setmetatable(tbl4, { __index = tbl4 })
		end,
		SaveConfig = function(arg3, arg4)
			local tbl4 = {}

			for _, flag8 in pairs(tbl.Flags) do
				table.insert(tbl4, flag8)
			end

			writefile(folderPath .. "/" .. arg4, HttpService:JSONEncode(tbl4))
		end,
		LoadConfig = function(arg3, arg4)
			local str2 = folderPath .. "/" .. arg4
			if not isfile(str2) then
				warn("[Hawk Lib]: Config file not found.")
				return
			end
			local v8 = readfile(str2)
			local ok, result = pcall(HttpService.JSONDecode, HttpService, v8)
			if not ok then
				warn("[Hawk Lib]: Failed to decode config.")
				return
			end

			for _, v9 in pairs(result) do
				local flag8 = v9.flag

				if tbl.Elements[flag8] then
					if v9.type == "Slider" then
						tbl.Elements[flag8]:SetValue(v9.value)
					elseif v9.type == "Dropdown" then
						local tbl4 = {}

						for k, v10 in pairs(v9.selected) do
							if v10 == true then
								table.insert(tbl4, k)
							end
						end

						tbl.Elements[flag8]:Select(tbl4)
					elseif v9.type == "Picker" then
						local tbl4 = {}

						for _, v10 in pairs(v9.selected) do
							table.insert(tbl4, v10)
						end

						tbl.Elements[flag8]:Select(tbl4)
					elseif v9.type == "CheckBox" then
						tbl.Elements[flag8]:SetStatus(v9.status)
					elseif v9.type == "Toggle" then
						tbl.Elements[flag8]:SetStatus(v9.status)
					elseif v9.type == "KeyBind" then
						tbl.Elements[flag8]:SetKey(v9.key)
					elseif v9.type == "TextBox" then
						tbl.Elements[flag8]:SetText(v9.text)
					elseif v9.type == "ColorPicker" then
						local v10, v11, v12 = string.match(v9.color, "([^,]+),%s*([^,]+),%s*([^,]+)")

						if v10 and v11 and v12 then
							local v13 = tonumber
							local color = Color3.new(tonumber(v10), tonumber(v11), v13(v12))
							tbl.Elements[flag8]:SetColor(color)
						end
					end
				end
			end
		end,
		DeleteConfig = function(arg3, arg4)
			local str2 = folderPath .. "/" .. arg4
			if not isfile(str2) then
				warn("[Hawk Lib]: Config file not found.")
				return
			end

			pcall(function()
				delfile(str2)
			end)
		end,
		SetTheme = function(arg3, arg4)
			if not tbl.Themes[arg4] then
				warn("[Hawk Lib]: Theme '" .. tostring(arg4) .. "' does not exist.")
				return
			end
			bindableEvent:Fire(arg4)
		end,
	}

	local v8 = tbl4:CreateTab({ Title = "Settings", Icon = "rbxassetid://13663778415" })
	local tbl5 = {}

	for k in pairs(tbl.Themes) do
		table.insert(tbl5, k)
	end

	local flag8 = false
	local str2 = "H"

	tbl4.ToggleUI = function()
		for _, child in pairs(screenGui:GetChildren()) do
			if child:IsA("Frame") and child.Name == "Main" then
				if flag == false then
					flag = true
					child.Visible = false

					if flag8 == false then
						flag8 = true

						tbl:CreateNotification({
							Title = "Hawk Lib",
							Description = "GUI has minimized. Current key is: " .. str2,
							NotificationTransparency = 0.4,
							IconBackgroundColor = Color3.fromRGB(67, 136, 246),
							IconId = "rbxassetid://10723407389",
							Cooldown = 4,
						})
					end
				elseif flag == true then
					flag = false
					child.Visible = true
				end
			end
		end
	end

	v8:CreatePicker({
		Title = "Theme Picker",
		Description = "Choose a theme!!",
		List = tbl5,
		Flag = "ThemePicker",
		PlaceHolderText = "Search a theme here.",
		Callback = function(arg3)
			tbl4:SetTheme(arg3)
		end,
	}):Select({ "Dark" })

	v8:CreateKeyBind({
		Title = "UI Keybind",
		Description = "Toggles The UI",
		Key = Enum.KeyCode.H,
		Flag = "UI Keybind",
		Callback = function(hawkLibKeybind)
			getgenv().HawkLibKeybind = hawkLibKeybind
			str2 = hawkLibKeybind
			tbl4:ToggleUI()
		end,
	})

	v8:CreateLine()
	local str3 = fileName
	local v9 = listfiles(folderPath)
	local tbl6 = {}

	for k, v10 in pairs(v9) do
		tbl6[k] = tostring(v10):gsub(folderPath .. "/", ""):gsub(folderPath .. "\\", "")
	end

	v8:CreateTextBox({
		Title = "Config Name",
		Description = "Enter a config name to save",
		PlaceHolderText = "Type a config name...",
		Flag = "ConfigNamer",
		Callback = function(arg3)
			str3 = arg3 .. ".json"
		end,
	})

	local v10 = v8:CreateDropdown({
		Title = "Config List",
		Description = "Choose one from the list",
		List = tbl6,
		MultiOption = false,
		Flag = "ConfigDropdown",
		Callback = function(arg3)
			str3 = tostring(arg3):gsub(folderPath .. "/", ""):gsub(folderPath .. "\\", "")
		end,
	})

	v8:CreateButton({
		Title = "Refresh Configs!",
		Description = "Refresh config list!",
		Callback = function()
			v9 = listfiles(folderPath)
			tbl6 = {}

			for k, v11 in pairs(v9) do
				tbl6[k] = tostring(v11):gsub(folderPath .. "/", ""):gsub(folderPath .. "\\", "")
			end

			tbl:CreateNotification({
				Title = "Refreshed Successfully!",
				Description = "",
				NotificationTransparency = 0.4,
				IconBackgroundColor = Color3.fromRGB(67, 136, 246),
				IconId = "rbxassetid://10723407389",
				Cooldown = 4,
			})

			v10:Refresh({ MultiOption = false, NewList = tbl6 })
		end,
	})

	v8:CreateButton({
		Title = "Save Config",
		Description = "Save current settings!",
		Callback = function()
			tbl4:SaveConfig(tostring(str3))
			v9 = listfiles(folderPath)
			tbl6 = {}

			for k, v11 in pairs(v9) do
				tbl6[k] = tostring(v11):gsub(folderPath .. "/", ""):gsub(folderPath .. "\\", "")
			end

			v10:Refresh({ MultiOption = false, NewList = tbl6 })
		end,
	})

	v8:CreateButton({
		Title = "Load Config",
		Description = "Load settings from a file!",
		Callback = function()
			tbl4:LoadConfig(tostring(str3))
		end,
	})

	v8:CreateButton({
		Title = "Delete Config",
		Description = "Delete a config file.",
		Callback = function()
			tbl4:DeleteConfig(tostring(str3))
			v9 = listfiles(folderPath)
			tbl6 = {}

			for k, v11 in pairs(v9) do
				tbl6[k] = tostring(v11):gsub(folderPath .. "/", ""):gsub(folderPath .. "\\", "")
			end

			v10:Refresh({ MultiOption = false, NewList = tbl6 })
		end,
	})

	return tbl4
end

return tbl
