getgenv().HawkLibLOADED = false
getgenv().HawkLibKeybind = "H"
local children = workspace:GetChildren()
for k, v in pairs(children) do
end
local children2 = game.CoreGui:GetChildren()
for k2, v2 in pairs(children2) do
end
local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local children3 = PlayerGui:GetChildren()
for k3, v3 in pairs(children3) do
end
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
Players.LocalPlayer:GetMouse()
local response = game:HttpGet("https://raw.githubusercontent.com/Eigh8tr/6kSvte6Ci9q8rkBfzdxBDkKj/refs/heads/main/Themes.luau")
local result = loadstring(response)()
local BindableEvent = Instance.new("BindableEvent")
BindableEvent.Event:Connect(function(arg)
end)
local GuiService = game:GetService("GuiService")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Frame2 = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local UICorner3 = Instance.new("UICorner")
ImageLabel.Name = "Circle"
ImageLabel.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
ImageLabel.Image = "rbxassetid://266543268"
ImageLabel.ImageTransparency = 0.8
ImageLabel.BorderSizePixel = 0
UICorner.Parent = ImageLabel
ScreenGui.Name = "Hawk"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ClipToDeviceSafeArea = false
Frame.Name = "NotificationListing"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
Frame.BackgroundTransparency = 1
Frame.BorderColor3 = Color3.fromRGB(42, 44, 42)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.986912012, 0, -0.0441767052, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.ZIndex = 3
UICorner2.Parent = Frame
UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 13)
Frame2.Name = "NotifyListing"
Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
Frame2.BackgroundTransparency = 1
Frame2.BorderColor3 = Color3.fromRGB(42, 44, 42)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.0177570097, 0, -0.0441767052, 0)
Frame2.Size = UDim2.new(1, 0, 1, 0)
Frame2.ZIndex = 3
UIListLayout2.Parent = Frame2
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout2.Padding = UDim.new(0, 13)
UICorner3.Parent = Frame2
wait()
getgenv().HawkLibLOADED = true
return {
	Colors = {},
	Elements = {},
	Flags = {},
	Themes = result,
	CreateNotification = function(arg2, arg3)
		local Frame3 = Instance.new("Frame")
		local Frame4 = Instance.new("Frame")
		local Frame5 = Instance.new("Frame")
		local ImageLabel2 = Instance.new("ImageLabel")
		local UICorner4 = Instance.new("UICorner")
		local Frame6 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel2 = Instance.new("TextLabel")
		local UIListLayout3 = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local UICorner5 = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local UIPadding2 = Instance.new("UIPadding")
		local UICorner6 = Instance.new("UICorner")
		Frame3.Name = "NotificationContainer"
		Frame3.Parent = Frame
		Frame3.Active = true
		Frame3.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame3.BackgroundTransparency = 1
		Frame3.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame3.BorderSizePixel = 0
		Frame3.Size = UDim2.new(1, 0, 1, 0)
		Frame3.ClipsDescendants = false
		Frame4.Name = "Notification"
		Frame4.Parent = Frame3
		Frame4.Active = true
		Frame4.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame4.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame4.BorderSizePixel = 0
		Frame4.Position = UDim2.new(1000, 0, 0, 0)
		Frame4.Size = UDim2.new(0, 287, 0, 61)
		Frame4.AutomaticSize = Enum.AutomaticSize.Y
		Frame4.BackgroundTransparency = arg3.NotificationTransparency
		Frame5.Name = "IconFrame"
		Frame5.Parent = Frame4
		Frame5.AnchorPoint = Vector2.new(0, 0.5)
		Frame5.BackgroundColor3 = arg3.IconBackgroundColor
		Frame5.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
		Frame5.Size = UDim2.new(0, 41, 0, 41)
		ImageLabel2.Name = "Icon"
		ImageLabel2.Parent = Frame5
		ImageLabel2.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
		ImageLabel2.BackgroundTransparency = 1
		ImageLabel2.BorderColor3 = Color3.fromRGB(155, 135, 255)
		ImageLabel2.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
		ImageLabel2.Size = UDim2.new(0, 26, 0, 26)
		ImageLabel2.Image = arg3.IconId
		UICorner4.Parent = Frame5
		Frame6.Name = "NotificationListing"
		Frame6.Parent = Frame4
		Frame6.Active = true
		Frame6.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame6.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame6.BorderSizePixel = 0
		Frame6.Position = UDim2.new(0.202000007, 0, 0, 0)
		Frame6.Size = UDim2.new(0.756097555, 0, 1, 0)
		Frame6.AutomaticSize = Enum.AutomaticSize.Y
		Frame6.BackgroundTransparency = 1
		UIListLayout3.Parent = Frame6
		UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout3.FillDirection = Enum.FillDirection.Vertical
		TextLabel.Name = "NotificationTitle"
		TextLabel.Parent = Frame6
		TextLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0.912857533, 0, 0, 0)
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.Text = arg3.Title
		TextLabel.TextColor3 = result.Dark.ItemTitleColor
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel2.Name = "NotificationDescription"
		TextLabel2.Parent = Frame6
		TextLabel2.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Size = UDim2.new(0.912857533, 0, 0, 0)
		TextLabel2.Font = Enum.Font.Gotham
		TextLabel2.Text = arg3.Description
		TextLabel2.TextColor3 = result.Dark.ItemDescriptionColor
		TextLabel2.TextSize = 14
		TextLabel2.TextWrapped = true
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding.Parent = Frame6
		UIPadding.PaddingBottom = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)
		UICorner5.CornerRadius = UDim.new(0, 10)
		UICorner5.Parent = Frame4
		UIStroke.Parent = Frame4
		UIStroke.Color = result.Dark.NotificationStrokeColor
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIPadding2.Parent = Frame4
		UIPadding2.PaddingBottom = UDim.new(0, 10)
		UIPadding2.PaddingTop = UDim.new(0, 10)
		UICorner6.CornerRadius = UDim.new(0, 10)
		UICorner6.Parent = Frame3
		BindableEvent.Event:Connect(function(arg4)
			local tween15 = TweenService:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg4].ItemBackgroundColor })
			tween15:Play()
			local tween16 = TweenService:Create(Frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg4].ItemBackgroundColor })
			tween16:Play()
			local tween17 = TweenService:Create(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg4].ItemTitleColor })
			tween17:Play()
			local tween18 = TweenService:Create(TextLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg4].ItemDescriptionColor })
			tween18:Play()
			local tween19 = TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg4].NotificationStrokeColor })
			tween19:Play()
		end)
		task.spawn(function(...)
			Frame3.Size = UDim2.new(0, 0, 0, 0)
			Frame3.ClipsDescendants = true
			Frame4.Position = UDim2.new(3, 0, 0, 0)
			local tween = TweenService:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 61) })
			tween:Play()
			task.wait(0.2)
			local tween2 = TweenService:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, 61) })
			tween2:Play()
			task.wait(0.2)
			local tween3 = TweenService:Create(Frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) })
			tween3:Play()
		end)
	end,
	CreateNotify = function(arg5, arg6)
		local Frame7 = Instance.new("Frame")
		local UICorner7 = Instance.new("UICorner")
		local Frame8 = Instance.new("Frame")
		local UIPadding3 = Instance.new("UIPadding")
		local UICorner8 = Instance.new("UICorner")
		local Frame9 = Instance.new("Frame")
		local ImageLabel3 = Instance.new("ImageLabel")
		local UICorner9 = Instance.new("UICorner")
		local UIStroke2 = Instance.new("UIStroke")
		local Frame10 = Instance.new("Frame")
		local TextLabel3 = Instance.new("TextLabel")
		local TextLabel4 = Instance.new("TextLabel")
		local UIListLayout4 = Instance.new("UIListLayout")
		local UIPadding4 = Instance.new("UIPadding")
		local ImageButton = Instance.new("ImageButton")
		local ImageButton2 = Instance.new("ImageButton")
		Frame7.Name = "NotifyContainer"
		Frame7.Parent = Frame2
		Frame7.Active = true
		Frame7.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame7.BackgroundTransparency = 1
		Frame7.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame7.BorderSizePixel = 0
		Frame7.Position = UDim2.new(0, 0, 0, 0)
		Frame7.Size = UDim2.new(1, 0, 1, 0)
		Frame7.ClipsDescendants = false
		UICorner7.CornerRadius = UDim.new(0, 10)
		UICorner7.Parent = Frame7
		Frame8.Name = "Notify"
		Frame8.Parent = Frame7
		Frame8.Active = true
		Frame8.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame8.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame8.BorderSizePixel = 0
		Frame8.ClipsDescendants = true
		Frame8.Size = UDim2.new(0, 287, 0, 61)
		Frame8.Position = UDim2.new(-1000, 0, 0, 0)
		Frame8.AutomaticSize = Enum.AutomaticSize.Y
		Frame8.BackgroundTransparency = arg6.NotifyTransparency
		UIPadding3.Parent = Frame8
		UIPadding3.PaddingBottom = UDim.new(0, 10)
		UIPadding3.PaddingTop = UDim.new(0, 10)
		UICorner8.CornerRadius = UDim.new(0, 10)
		UICorner8.Parent = Frame8
		Frame9.Name = "IconFrame"
		Frame9.Parent = Frame8
		Frame9.AnchorPoint = Vector2.new(0, 0.5)
		Frame9.BackgroundColor3 = arg6.IconBackgroundColor
		Frame9.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
		Frame9.Size = UDim2.new(0, 41, 0, 41)
		ImageLabel3.Name = "Icon"
		ImageLabel3.Parent = Frame9
		ImageLabel3.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
		ImageLabel3.BackgroundTransparency = 1
		ImageLabel3.BorderColor3 = Color3.fromRGB(155, 135, 255)
		ImageLabel3.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
		ImageLabel3.Size = UDim2.new(0, 26, 0, 26)
		ImageLabel3.Image = arg6.IconId
		UICorner9.Parent = Frame9
		UIStroke2.Parent = Frame8
		UIStroke2.Color = result.Dark.NotificationStrokeColor
		UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Frame10.Name = "NotifyyListing"
		Frame10.Parent = Frame8
		Frame10.Active = true
		Frame10.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame10.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame10.BorderSizePixel = 0
		Frame10.Position = UDim2.new(0.202000007, 0, 0, 0)
		Frame10.Size = UDim2.new(0.756097555, 0, 1, 0)
		Frame10.AutomaticSize = Enum.AutomaticSize.Y
		Frame10.BackgroundTransparency = 1
		UIListLayout4.Parent = Frame10
		UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding4.Parent = Frame10
		UIPadding4.PaddingBottom = UDim.new(0, 5)
		UIPadding4.PaddingTop = UDim.new(0, 5)
		TextLabel3.Name = "NotifyTitle"
		TextLabel3.Parent = Frame10
		TextLabel3.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel3.BorderSizePixel = 0
		TextLabel3.Size = UDim2.new(0.871382892, 0, 0, 0)
		TextLabel3.Font = Enum.Font.GothamBold
		TextLabel3.Text = arg6.Title
		TextLabel3.TextColor3 = result.Dark.ItemTitleColor
		TextLabel3.TextSize = 14
		TextLabel3.TextWrapped = true
		TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel3.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel4.Name = "NotifyDescription"
		TextLabel4.Parent = Frame10
		TextLabel4.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel4.BackgroundTransparency = 1
		TextLabel4.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel4.BorderSizePixel = 0
		TextLabel4.Size = UDim2.new(0.871382892, 0, 0, 0)
		TextLabel4.Font = Enum.Font.Gotham
		TextLabel4.Text = arg6.Description
		TextLabel4.TextColor3 = result.Dark.ItemDescriptionColor
		TextLabel4.TextSize = 14
		TextLabel4.TextWrapped = true
		TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel4.AutomaticSize = Enum.AutomaticSize.Y
		ImageButton.Name = "clear"
		ImageButton.Parent = Frame8
		ImageButton.AnchorPoint = Vector2.new(1, 1)
		ImageButton.BackgroundTransparency = 1
		ImageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
		ImageButton.LayoutOrder = 5
		ImageButton.Position = UDim2.new(1, -15, 1, 0)
		ImageButton.Size = UDim2.new(0, 19, 0, 19)
		ImageButton.ZIndex = 2
		ImageButton.Image = "rbxassetid://3926305904"
		ImageButton.ImageColor3 = result.Dark.ItemTitleColor
		ImageButton.ImageRectOffset = Vector2.new(924, 724)
		ImageButton.ImageRectSize = Vector2.new(36, 36)
		ImageButton.MouseButton1Click:Connect(function()
			local tween20 = TweenService:Create(Frame8, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Position = UDim2.new(-3, 0, 0, 0) })
			tween20:Play()
			task.wait(0.4)
			local tween21 = TweenService:Create(Frame7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, -13) })
			tween21:Play()
			Frame8.Position = UDim2.new(-1000, 0, 0, 0)
			task.wait(0.4)
			local tween22 = TweenService:Create(Frame7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, -13) })
			tween22:Play()
			task.wait(0.4)
			Frame7:Destroy()
		end)
		ImageButton2.Name = "done"
		ImageButton2.Parent = Frame8
		ImageButton2.AnchorPoint = Vector2.new(1, 0)
		ImageButton2.BackgroundTransparency = 1
		ImageButton2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		ImageButton2.LayoutOrder = 1
		ImageButton2.Position = UDim2.new(1, -15, 0, 0)
		ImageButton2.Size = UDim2.new(0, 19, 0, 19)
		ImageButton2.ZIndex = 2
		ImageButton2.Image = "rbxassetid://3926305904"
		ImageButton2.ImageColor3 = result.Dark.ItemTitleColor
		ImageButton2.ImageRectOffset = Vector2.new(644, 204)
		ImageButton2.ImageRectSize = Vector2.new(36, 36)
		ImageButton2.MouseButton1Click:Connect(function()
			arg6.Callback()
			local tween23 = TweenService:Create(Frame8, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Position = UDim2.new(-3, 0, 0, 0) })
			tween23:Play()
			task.wait(0.4)
			local tween24 = TweenService:Create(Frame7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, -13) })
			tween24:Play()
			Frame8.Position = UDim2.new(-1000, 0, 0, 0)
			task.wait(0.4)
			local tween25 = TweenService:Create(Frame7, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, -13) })
			tween25:Play()
			task.wait(0.4)
			Frame7:Destroy()
		end)
		BindableEvent.Event:Connect(function(arg7)
			local tween26 = TweenService:Create(Frame7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg7].ItemBackgroundColor })
			tween26:Play()
			local tween27 = TweenService:Create(Frame8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg7].ItemBackgroundColor })
			tween27:Play()
			local tween28 = TweenService:Create(TextLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg7].ItemTitleColor })
			tween28:Play()
			local tween29 = TweenService:Create(TextLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg7].ItemDescriptionColor })
			tween29:Play()
			local tween30 = TweenService:Create(UIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg7].NotificationStrokeColor })
			tween30:Play()
			local tween31 = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg7].ItemTitleColor })
			tween31:Play()
			local tween32 = TweenService:Create(ImageButton2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg7].ItemTitleColor })
			tween32:Play()
		end)
		task.spawn(function(...)
			Frame7.Size = UDim2.new(0, 0, 0, 0)
			Frame7.ClipsDescendants = true
			Frame8.Position = UDim2.new(-10, 0, 0, 0)
			local tween4 = TweenService:Create(Frame7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, 61) })
			tween4:Play()
			task.wait(0.1)
			local tween5 = TweenService:Create(Frame8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) })
			tween5:Play()
		end)
	end,
	CreateTimer = function(arg8, arg9)
		local Frame11 = Instance.new("Frame")
		local UICorner10 = Instance.new("UICorner")
		local Frame12 = Instance.new("Frame")
		local UIPadding5 = Instance.new("UIPadding")
		local UICorner11 = Instance.new("UICorner")
		local UIStroke3 = Instance.new("UIStroke")
		local Frame13 = Instance.new("Frame")
		local TextLabel5 = Instance.new("TextLabel")
		local TextLabel6 = Instance.new("TextLabel")
		local UIListLayout5 = Instance.new("UIListLayout")
		local UIPadding6 = Instance.new("UIPadding")
		local Frame14 = Instance.new("Frame")
		Frame11.Name = "TimerContainer"
		Frame11.Parent = Frame
		Frame11.Active = true
		Frame11.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame11.BackgroundTransparency = 1
		Frame11.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame11.BorderSizePixel = 0
		Frame11.Size = UDim2.new(1, 0, 1, 0)
		Frame11.ClipsDescendants = false
		UICorner10.CornerRadius = UDim.new(0, 10)
		UICorner10.Parent = Frame11
		Frame12.Name = "Timer"
		Frame12.Parent = Frame11
		Frame12.Active = true
		Frame12.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame12.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame12.BorderSizePixel = 0
		Frame12.Position = UDim2.new(1000, 0, 0, 0)
		Frame12.Size = UDim2.new(0, 287, 0, 61)
		Frame12.AutomaticSize = Enum.AutomaticSize.Y
		Frame12.BackgroundTransparency = arg9.TimerTransparency
		UIPadding5.Parent = Frame12
		UIPadding5.PaddingBottom = UDim.new(0, 10)
		UIPadding5.PaddingTop = UDim.new(0, 10)
		UICorner11.CornerRadius = UDim.new(0, 10)
		UICorner11.Parent = Frame12
		UIStroke3.Parent = Frame12
		UIStroke3.Color = result.Dark.NotificationStrokeColor
		UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Frame13.Name = "TimerListing"
		Frame13.Parent = Frame12
		Frame13.Active = true
		Frame13.BackgroundColor3 = result.Dark.ItemBackgroundColor
		Frame13.BorderColor3 = result.Dark.ItemBackgroundColor
		Frame13.BorderSizePixel = 0
		Frame13.Size = UDim2.new(1, 0, 1, 0)
		Frame13.AutomaticSize = Enum.AutomaticSize.Y
		Frame13.BackgroundTransparency = 1
		UIListLayout5.Parent = Frame13
		UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
		TextLabel5.Name = "TimerTitle"
		TextLabel5.Parent = Frame13
		TextLabel5.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel5.BackgroundTransparency = 1
		TextLabel5.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel5.BorderSizePixel = 0
		TextLabel5.Position = UDim2.new(0, 0, 1.12196972e-06, 0)
		TextLabel5.Size = UDim2.new(0.912857533, 0, 0, 0)
		TextLabel5.Font = Enum.Font.GothamBold
		TextLabel5.Text = arg9.Title
		TextLabel5.TextColor3 = result.Dark.ItemTitleColor
		TextLabel5.TextSize = 14
		TextLabel5.TextWrapped = true
		TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel5.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel6.Name = "TimerDescription"
		TextLabel6.Parent = Frame13
		TextLabel6.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel6.BackgroundTransparency = 1
		TextLabel6.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel6.BorderSizePixel = 0
		TextLabel6.Size = UDim2.new(0.912857533, 0, 0, 0)
		TextLabel6.Font = Enum.Font.Gotham
		TextLabel6.Text = arg9.Description
		TextLabel6.TextColor3 = result.Dark.ItemDescriptionColor
		TextLabel6.TextSize = 14
		TextLabel6.TextWrapped = true
		TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel6.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding6.Parent = Frame13
		UIPadding6.PaddingBottom = UDim.new(0, 5)
		UIPadding6.PaddingLeft = UDim.new(0, 15)
		UIPadding6.PaddingTop = UDim.new(0, 5)
		Frame14.Name = "TimerBar"
		Frame14.Parent = Frame12
		Frame14.AnchorPoint = Vector2.new(0, 1)
		Frame14.BackgroundColor3 = result.Dark.TimerBarColor
		Frame14.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame14.BorderSizePixel = 0
		Frame14.Position = UDim2.new(0, -30, 1, 5)
		Frame14.Size = UDim2.new(0, 0, -1, 0)
		Frame14.BackgroundTransparency = 0.2
		BindableEvent.Event:Connect(function(arg10)
			local tween33 = TweenService:Create(Frame11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg10].ItemBackgroundColor })
			tween33:Play()
			local tween34 = TweenService:Create(Frame12, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg10].ItemBackgroundColor })
			tween34:Play()
			local tween35 = TweenService:Create(TextLabel5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg10].ItemTitleColor })
			tween35:Play()
			local tween36 = TweenService:Create(TextLabel6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg10].ItemDescriptionColor })
			tween36:Play()
			local tween37 = TweenService:Create(Frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg10].TimerBarColor })
			tween37:Play()
			local tween38 = TweenService:Create(UIStroke3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg10].NotificationStrokeColor })
			tween38:Play()
		end)
		task.spawn(function(...)
			Frame11.Size = UDim2.new(0, 0, 0, 0)
			Frame11.ClipsDescendants = true
			Frame12.Position = UDim2.new(3, 0, 0, 0)
			local tween6 = TweenService:Create(Frame11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, 61) })
			tween6:Play()
			task.wait(0.1)
			local tween7 = TweenService:Create(Frame12, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) })
			tween7:Play()
			task.wait(0.2)
			local tween8 = TweenService:Create(Frame14, TweenInfo.new(tonumber(arg9.Cooldown), Enum.EasingStyle.Quad), { Size = UDim2.new(1.2, 0, -1, 0) })
			tween8:Play()
			wait()
			wait()
		end)
	end,
	CreateWindow = function(arg11, arg12)
		if not isfolder(arg12.Config.FolderPath) then
			makefolder(arg12.Config.FolderPath)
		end
		local Frame15 = Instance.new("Frame")
		local Frame16 = Instance.new("Frame")
		local ImageLabel4 = Instance.new("ImageLabel")
		local UISizeConstraint = Instance.new("UISizeConstraint")
		local UICorner12 = Instance.new("UICorner")
		local Frame17 = Instance.new("Frame")
		local UICorner13 = Instance.new("UICorner")
		local UIStroke4 = Instance.new("UIStroke")
		local Frame18 = Instance.new("Frame")
		local TextLabel7 = Instance.new("TextLabel")
		local Frame19 = Instance.new("Frame")
		local UIListLayout6 = Instance.new("UIListLayout")
		local ImageButton3 = Instance.new("ImageButton")
		local ImageButton4 = Instance.new("ImageButton")
		local ImageButton5 = Instance.new("ImageButton")
		local Frame20 = Instance.new("Frame")
		local Frame21 = Instance.new("Frame")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout7 = Instance.new("UIListLayout")
		local UIPadding7 = Instance.new("UIPadding")
		local Frame22 = Instance.new("Frame")
		local UICorner14 = Instance.new("UICorner")
		local UICorner15 = Instance.new("UICorner")
		Frame15.Name = "Main"
		Frame15.Parent = ScreenGui
		Frame15.AnchorPoint = Vector2.new(0, 0)
		Frame15.BackgroundColor3 = result[arg12.Theme].BackgroundColor
		Frame15.BackgroundTransparency = 1
		Frame15.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame15.BorderSizePixel = 0
		Frame15.Size = UDim2.new(0, tonumber(arg12.SizeX), 0, tonumber(arg12.SizeY))
		local guiInset = GuiService:GetGuiInset()
		Frame15.Position = UDim2.fromOffset(0, ((0 - guiInset.Y) - 0))
		Frame15.InputBegan:Connect(function(input, gameProcessed)
		end)
		Frame15.InputEnded:Connect(function(input2, gameProcessed2)
		end)
		UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
		end)
		Frame16.Name = "Shadow"
		Frame16.Parent = Frame15
		Frame16.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame16.BackgroundTransparency = 1
		Frame16.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Frame16.BorderSizePixel = 0
		Frame16.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame16.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
		Frame16.ZIndex = 0
		ImageLabel4.Name = "Image"
		ImageLabel4.Parent = Frame16
		ImageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel4.BackgroundTransparency = 1
		ImageLabel4.BorderColor3 = Color3.fromRGB(27, 42, 53)
		ImageLabel4.BorderSizePixel = 0
		ImageLabel4.Position = UDim2.new(0.5, 0, 0.5, 0)
		ImageLabel4.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
		ImageLabel4.ZIndex = 2
		ImageLabel4.Image = "rbxassetid://5587865193"
		ImageLabel4.ImageColor3 = result[arg12.Theme].ShadowColor
		ImageLabel4.ImageTransparency = 0.5
		UISizeConstraint.Parent = Frame15
		UISizeConstraint.MaxSize = Vector2.new(99999, 99999)
		UISizeConstraint.MinSize = Vector2.new(480, 259)
		UICorner12.CornerRadius = UDim.new(0, 10)
		UICorner12.Parent = Frame15
		Frame17.Name = "Window"
		Frame17.Parent = Frame15
		Frame17.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame17.BackgroundColor3 = result[arg12.Theme].BackgroundColor
		Frame17.BorderColor3 = result[arg12.Theme].BackgroundColor
		Frame17.BorderSizePixel = 0
		Frame17.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame17.Size = UDim2.new(1, 0, 1, 0)
		Frame17.ZIndex = 0
		UICorner13.CornerRadius = UDim.new(0, 10)
		UICorner13.Parent = Frame17
		UIStroke4.Parent = Frame17
		UIStroke4.Color = result[arg12.Theme].WindowStrokeColor
		UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Frame18.Name = "TitleBar"
		Frame18.Parent = Frame17
		Frame18.BackgroundColor3 = result[arg12.Theme].TopBar
		Frame18.BorderColor3 = result[arg12.Theme].TopBar
		Frame18.BorderSizePixel = 0
		Frame18.Size = UDim2.new(1, 0, 0, 49)
		Frame18.ZIndex = 2
		TextLabel7.Name = "Title"
		TextLabel7.Parent = Frame18
		TextLabel7.AnchorPoint = Vector2.new(0, 0.5)
		TextLabel7.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		TextLabel7.BackgroundTransparency = 1
		TextLabel7.BorderColor3 = Color3.fromRGB(36, 36, 36)
		TextLabel7.BorderSizePixel = 0
		TextLabel7.Position = UDim2.new(0, 15, 0.5, 0)
		TextLabel7.Size = UDim2.new(1, -400, 1, -30)
		TextLabel7.Font = Enum.Font.Gotham
		TextLabel7.Text = arg12.ScriptName
		TextLabel7.TextColor3 = result[arg12.Theme].TitleColor
		TextLabel7.TextSize = 16
		TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel7.RichText = true
		Frame19.Name = "BarButtons"
		Frame19.Parent = Frame18
		Frame19.AnchorPoint = Vector2.new(1, 0)
		Frame19.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Frame19.BackgroundTransparency = 1
		Frame19.BorderColor3 = Color3.fromRGB(31, 31, 31)
		Frame19.BorderSizePixel = 0
		Frame19.Position = UDim2.new(1, -20, 0, 0)
		Frame19.Size = UDim2.new(0.177668899, 0, 1, 0)
		UIListLayout6.Parent = Frame19
		UIListLayout6.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout6.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout6.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout6.Padding = UDim.new(0, 20)
		ImageButton3.Name = "Minimize"
		ImageButton3.Parent = Frame19
		ImageButton3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton3.BackgroundTransparency = 1
		ImageButton3.BorderColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton3.BorderSizePixel = 0
		ImageButton3.Position = UDim2.new(0.805743158, 0, 0.295453846, 0)
		ImageButton3.Size = UDim2.new(0, 18, 1, -30)
		ImageButton3.Image = "rbxassetid://10734896206"
		ImageButton3.ImageColor3 = result[arg12.Theme].TopBarButtons
		ImageButton4.Name = "Maximize"
		ImageButton4.Parent = Frame19
		ImageButton4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton4.BackgroundTransparency = 1
		ImageButton4.BorderColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton4.BorderSizePixel = 0
		ImageButton4.Position = UDim2.new(0.874999881, 0, 0.295453846, 0)
		ImageButton4.Size = UDim2.new(0, 18, 1, -30)
		ImageButton4.Image = "rbxassetid://10734886735"
		ImageButton4.ImageColor3 = result[arg12.Theme].TopBarButtons
		Frame22.Name = "Resizing"
		Frame22.Parent = Frame15
		Frame22.AnchorPoint = Vector2.new(1, 1)
		Frame22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame22.BackgroundTransparency = 1
		Frame22.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame22.BorderSizePixel = 0
		Frame22.Position = UDim2.new(1.1, 0, 1.2, 0)
		Frame22.Size = UDim2.new(0, 114, 0, 114)
		UICorner14.CornerRadius = UDim.new(0, 10)
		UICorner14.Parent = Frame21
		UICorner15.CornerRadius = UDim.new(0, 10)
		UICorner15.Parent = Frame18
		Frame22.InputBegan:Connect(function(input4, gameProcessed4)
		end)
		Frame22.InputEnded:Connect(function(input5, gameProcessed5)
		end)
		UserInputService.InputChanged:Connect(function(input6, gameProcessed6)
		end)
		ImageButton4.MouseButton1Click:Connect(function()
			ImageButton4.Image = "rbxassetid://10734895698"
			local tween39 = TweenService:Create(Frame15, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.new(1, 0, 1, 0) })
			tween39:Play()
			local tween40 = TweenService:Create(Frame15, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 0, 0) })
			tween40:Play()
		end)
		ImageButton5.Name = "Close"
		ImageButton5.Parent = Frame19
		ImageButton5.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton5.BackgroundTransparency = 1
		ImageButton5.BorderColor3 = Color3.fromRGB(31, 31, 31)
		ImageButton5.BorderSizePixel = 0
		ImageButton5.Position = UDim2.new(0.944256663, 0, 0.295453846, 0)
		ImageButton5.Size = UDim2.new(0, 18, 1, -30)
		ImageButton5.Image = "rbxassetid://10747384394"
		ImageButton5.ImageColor3 = result[arg12.Theme].TopBarButtons
		ImageButton5.MouseButton1Click:Connect(function()
		end)
		Frame20.Name = "Pages"
		Frame20.Parent = Frame17
		Frame20.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Frame20.BackgroundTransparency = 1
		Frame20.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Frame20.BorderSizePixel = 0
		Frame20.Position = UDim2.new(0, 171, 0, 49)
		Frame20.Size = UDim2.new(1, -171, 1, -49)
		Frame21.Name = "TabsFrame"
		Frame21.Parent = Frame17
		Frame21.BackgroundColor3 = result[arg12.Theme].LeftBar
		Frame21.BorderColor3 = result[arg12.Theme].LeftBar
		Frame21.BorderSizePixel = 0
		Frame21.ClipsDescendants = true
		Frame21.Size = UDim2.new(0, 171, 1, 0)
		ScrollingFrame.Name = "Tabs"
		ScrollingFrame.Parent = Frame21
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = result[arg12.Theme].LeftBar
		ScrollingFrame.BorderColor3 = result[arg12.Theme].LeftBar
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.ClipsDescendants = false
		ScrollingFrame.Position = UDim2.new(0, 0, 0, 49)
		ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
		ScrollingFrame.ScrollBarThickness = 0
		ScrollingFrame.BackgroundTransparency = 1
		ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		UIListLayout7.Parent = ScrollingFrame
		UIListLayout7.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout7.Padding = UDim.new(0, 5)
		UIPadding7.Parent = ScrollingFrame
		UIPadding7.PaddingLeft = UDim.new(0, 15)
		UIPadding7.PaddingRight = UDim.new(0, 15)
		UIPadding7.PaddingTop = UDim.new(0, 7)
		BindableEvent.Event:Connect(function(arg13)
			local tween41 = TweenService:Create(Frame15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].BackgroundColor })
			tween41:Play()
			local tween42 = TweenService:Create(ImageLabel4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].ShadowColor })
			tween42:Play()
			local tween43 = TweenService:Create(Frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].BackgroundColor })
			tween43:Play()
			local tween44 = TweenService:Create(UIStroke4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg13].WindowStrokeColor })
			tween44:Play()
			local tween45 = TweenService:Create(Frame18, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].TopBar })
			tween45:Play()
			local tween46 = TweenService:Create(TextLabel7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg13].TitleColor })
			tween46:Play()
			local tween47 = TweenService:Create(ImageButton3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg13].TopBarButtons })
			tween47:Play()
			local tween48 = TweenService:Create(ImageButton4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg13].TopBarButtons })
			tween48:Play()
			local tween49 = TweenService:Create(ImageButton5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg13].TopBarButtons })
			tween49:Play()
			local tween50 = TweenService:Create(Frame21, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].LeftBar })
			tween50:Play()
			local tween51 = TweenService:Create(ScrollingFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg13].LeftBar })
			tween51:Play()
		end)
		local Frame23 = Instance.new("Frame")
		local UICorner16 = Instance.new("UICorner")
		local TextButton = Instance.new("TextButton")
		local TextLabel8 = Instance.new("TextLabel")
		local Frame24 = Instance.new("Frame")
		local UICorner17 = Instance.new("UICorner")
		local UIPadding8 = Instance.new("UIPadding")
		local ScrollingFrame2 = Instance.new("ScrollingFrame")
		local UIListLayout8 = Instance.new("UIListLayout")
		local UIPadding9 = Instance.new("UIPadding")
		Frame23.Name = "TabBtnFrame"
		Frame23.Parent = ScrollingFrame
		Frame23.BackgroundColor3 = result[arg12.Theme].TabBackground
		Frame23.BorderColor3 = result[arg12.Theme].TabBackground
		Frame23.BorderSizePixel = 0
		Frame23.Size = UDim2.new(0, 140, 0, 0)
		Frame23.BackgroundTransparency = 1
		Frame23.AutomaticSize = Enum.AutomaticSize.Y
		Frame23.ClipsDescendants = true
		UICorner16.Parent = Frame23
		TextButton.Name = "TabButton"
		TextButton.Parent = Frame23
		TextButton.BackgroundColor3 = result[arg12.Theme].TabBackground
		TextButton.BackgroundTransparency = 1
		TextButton.BorderColor3 = result[arg12.Theme].TabBackground
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(1, 0, 0, 0)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14
		TextButton.TextTransparency = 1
		TextButton.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel8.Name = "TabText"
		TextLabel8.Parent = TextButton
		TextLabel8.BackgroundColor3 = Color3.fromRGB(47, 46, 45)
		TextLabel8.BackgroundTransparency = 1
		TextLabel8.BorderColor3 = Color3.fromRGB(47, 46, 45)
		TextLabel8.BorderSizePixel = 0
		TextLabel8.Font = Enum.Font.Gotham
		TextLabel8.Text = "Settings"
		TextLabel8.TextColor3 = result[arg12.Theme].TabTextColor
		TextLabel8.TextSize = 15
		TextLabel8.TextWrapped = true
		TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel8.AutomaticSize = Enum.AutomaticSize.Y
		Frame24.Name = "Selected"
		Frame24.Parent = TextButton
		Frame24.AnchorPoint = Vector2.new(0, 0.5)
		Frame24.BackgroundColor3 = result[arg12.Theme].SelectedColor
		Frame24.BackgroundTransparency = 0.04
		Frame24.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame24.BorderSizePixel = 0
		Frame24.Position = UDim2.new(0, 0, 0.5, 0)
		Frame24.Size = UDim2.new(0, 5, 0, 16)
		Frame24.BackgroundTransparency = 1
		UICorner17.Parent = Frame24
		UIPadding8.Parent = Frame23
		UIPadding8.PaddingBottom = UDim.new(0, 10)
		UIPadding8.PaddingTop = UDim.new(0, 10)
		ScrollingFrame2.Name = "Page"
		ScrollingFrame2.Parent = Frame20
		ScrollingFrame2.Active = true
		ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		ScrollingFrame2.BackgroundTransparency = 1
		ScrollingFrame2.BorderColor3 = Color3.fromRGB(25, 25, 25)
		ScrollingFrame2.BorderSizePixel = 0
		ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
		ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame2.BottomImage = ""
		ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 300)
		ScrollingFrame2.MidImage = ""
		ScrollingFrame2.ScrollBarThickness = 0
		ScrollingFrame2.TopImage = ""
		ScrollingFrame2.Visible = false
		ScrollingFrame2.AutomaticCanvasSize = Enum.AutomaticSize.Y
		UIListLayout8.Parent = ScrollingFrame2
		UIListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout8.Padding = UDim.new(0, 8)
		UIListLayout8.HorizontalAlignment = Enum.HorizontalAlignment.Left
		UIPadding9.Parent = ScrollingFrame2
		UIPadding9.PaddingBottom = UDim.new(0, 10)
		UIPadding9.PaddingLeft = UDim.new(0, 15)
		UIPadding9.PaddingTop = UDim.new(0, 10)
		local ImageLabel5 = Instance.new("ImageLabel")
		ImageLabel5.Name = "BtnIcon"
		ImageLabel5.Parent = TextButton
		ImageLabel5.AnchorPoint = Vector2.new(0, 0.5)
		ImageLabel5.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
		ImageLabel5.BackgroundTransparency = 1
		ImageLabel5.BorderColor3 = Color3.fromRGB(43, 43, 43)
		ImageLabel5.BorderSizePixel = 0
		ImageLabel5.Size = UDim2.new(0, 17, 0, 17)
		ImageLabel5.Image = "rbxassetid://13663778415"
		ImageLabel5.ImageTransparency = 0
		ImageLabel5.ImageColor3 = result[arg12.Theme].TabIconColor
		ImageLabel5.Position = UDim2.new(0.07, 0, 0.5, 0)
		TextLabel8.Position = UDim2.new(0.221, 0, 0, 0)
		TextLabel8.Size = UDim2.new(0, 98, 0, 0)
		Frame23.LayoutOrder = 9999999
		TextButton.MouseButton1Click:Connect(function()
			ScrollingFrame:GetDescendants()
			Frame20:GetChildren()
			local tween52 = TweenService:Create(Frame23, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
			tween52:Play()
			local tween53 = TweenService:Create(Frame24, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 0.04 })
			tween53:Play()
			local tween54 = TweenService:Create(Frame24, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.new(0, 5, 0, 18) })
			tween54:Play()
			task.wait(0.2)
			local tween55 = TweenService:Create(Frame24, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.new(0, 5, 0, 16) })
			tween55:Play()
			ScrollingFrame2.Visible = true
		end)
		BindableEvent.Event:Connect(function(arg14)
			local tween56 = TweenService:Create(Frame23, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg14].TabBackground })
			tween56:Play()
			local tween57 = TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg14].TabBackground })
			tween57:Play()
			local tween58 = TweenService:Create(TextLabel8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg14].TabTextColor })
			tween58:Play()
			local tween59 = TweenService:Create(Frame24, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg14].SelectedColor })
			tween59:Play()
		end)
		local lastKey
		local list = {}
		local list2 = {}
		for k4, v4 in pairs(result) do
			lastKey = k4
			table.insert(list, k4)
			table.insert(list2, k4)
		end
		local Frame25 = Instance.new("Frame")
		local TextButton2 = Instance.new("TextButton")
		local TextLabel9 = Instance.new("TextLabel")
		local TextLabel10 = Instance.new("TextLabel")
		local UIPadding10 = Instance.new("UIPadding")
		local UIListLayout9 = Instance.new("UIListLayout")
		local UIPadding11 = Instance.new("UIPadding")
		local UICorner18 = Instance.new("UICorner")
		local Frame26 = Instance.new("Frame")
		local UICorner19 = Instance.new("UICorner")
		local UIStroke5 = Instance.new("UIStroke")
		local TextButton3 = Instance.new("TextButton")
		local TextLabel11 = Instance.new("TextLabel")
		local UIListLayout10 = Instance.new("UIListLayout")
		local UIPadding12 = Instance.new("UIPadding")
		local Frame27 = Instance.new("Frame")
		local UICorner20 = Instance.new("UICorner")
		local UIListLayout11 = Instance.new("UIListLayout")
		local Frame28 = Instance.new("Frame")
		local TextBox = Instance.new("TextBox")
		local ImageLabel6 = Instance.new("ImageLabel")
		local ScrollingFrame3 = Instance.new("ScrollingFrame")
		local UIListLayout12 = Instance.new("UIListLayout")
		local UIPadding13 = Instance.new("UIPadding")
		local UICorner21 = Instance.new("UICorner")
		local UIPadding14 = Instance.new("UIPadding")
		Frame25.Name = "ThemePicker"
		Frame25.Parent = ScrollingFrame2
		Frame25.Active = true
		Frame25.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame25.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame25.BorderSizePixel = 0
		Frame25.Size = UDim2.new(1, -15, 0, 0)
		Frame25.AutomaticSize = Enum.AutomaticSize.Y
		TextButton2.Name = "ThemePickerButton"
		TextButton2.Parent = Frame25
		TextButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton2.BackgroundTransparency = 1
		TextButton2.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton2.BorderSizePixel = 0
		TextButton2.Size = UDim2.new(1, 0, 0, 0)
		TextButton2.AutoButtonColor = false
		TextButton2.Font = Enum.Font.SourceSans
		TextButton2.Text = ""
		TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton2.TextSize = 14
		TextButton2.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel9.Name = "ThemePickerTitle"
		TextLabel9.Parent = TextButton2
		TextLabel9.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel9.BackgroundTransparency = 1
		TextLabel9.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel9.BorderSizePixel = 0
		TextLabel9.Position = UDim2.new(0, 0, 0, 0)
		TextLabel9.Size = UDim2.new(0.612073958, 0, 0, 0)
		TextLabel9.Font = Enum.Font.GothamBold
		TextLabel9.Text = "Theme Picker"
		TextLabel9.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel9.TextSize = 14
		TextLabel9.TextWrapped = true
		TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel9.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel9.LayoutOrder = 1
		TextLabel10.Name = "ThemePickerDescription"
		TextLabel10.Parent = TextButton2
		TextLabel10.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel10.BackgroundTransparency = 1
		TextLabel10.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel10.BorderSizePixel = 0
		TextLabel10.Position = UDim2.new(0, 0, 0, 0)
		TextLabel10.Size = UDim2.new(0.612073958, 0, 0, 0)
		TextLabel10.Font = Enum.Font.Gotham
		TextLabel10.Text = "Choose a theme!!"
		TextLabel10.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel10.TextSize = 14
		TextLabel10.TextWrapped = true
		TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel10.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel10.LayoutOrder = 2
		UIPadding10.Parent = TextButton2
		UIPadding10.PaddingLeft = UDim.new(0, 15)
		UIListLayout9.Parent = TextButton2
		UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout9.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding11.Parent = Frame25
		UIPadding11.PaddingBottom = UDim.new(0, 10)
		UIPadding11.PaddingTop = UDim.new(0, 10)
		UICorner18.CornerRadius = UDim.new(0, 10)
		UICorner18.Parent = Frame25
		Frame26.Name = "ThemePickerClicker"
		Frame26.Parent = Frame25
		Frame26.AnchorPoint = Vector2.new(1, 0.5)
		Frame26.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame26.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame26.BorderSizePixel = 0
		Frame26.Position = UDim2.new(1, -14, 0.5, 0)
		Frame26.Size = UDim2.new(0, 0, 0, 27)
		Frame26.AutomaticSize = Enum.AutomaticSize.X
		UICorner19.CornerRadius = UDim.new(0, 5)
		UICorner19.Parent = Frame26
		UIStroke5.Parent = Frame26
		UIStroke5.Color = result[arg12.Theme].ItemStrokeColor
		UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		TextButton3.Name = "SelectThemeButton"
		TextButton3.Parent = Frame26
		TextButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton3.BackgroundTransparency = 1
		TextButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton3.BorderSizePixel = 0
		TextButton3.Size = UDim2.new(0, 0, 1, 0)
		TextButton3.Font = Enum.Font.SourceSans
		TextButton3.Text = ""
		TextButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton3.TextSize = 14
		TextButton3.TextTransparency = 1
		TextButton3.AutomaticSize = Enum.AutomaticSize.X
		TextLabel11.Name = "SelectedTheme"
		TextLabel11.Parent = TextButton3
		TextLabel11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel11.BackgroundTransparency = 1
		TextLabel11.Size = UDim2.new(0, 0, 1, 0)
		TextLabel11.ZIndex = 2
		TextLabel11.Font = Enum.Font.Gotham
		TextLabel11.Text = lastKey
		TextLabel11.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel11.TextSize = 15
		TextLabel11.TextWrapped = true
		TextLabel11.TextXAlignment = Enum.TextXAlignment.Center
		TextLabel11.LayoutOrder = 1
		TextLabel11.AutomaticSize = Enum.AutomaticSize.X
		UIListLayout10.Parent = TextButton3
		UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout10.Padding = UDim.new(0, 2)
		UIListLayout10.Wraps = true
		UIPadding12.Parent = Frame26
		UIPadding12.PaddingLeft = UDim.new(0, 10)
		UIPadding12.PaddingRight = UDim.new(0, 10)
		Frame27.Name = "ThemePickerFrame"
		Frame27.Parent = ScrollingFrame2
		Frame27.Active = true
		Frame27.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame27.BackgroundTransparency = 0.2
		Frame27.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame27.BorderSizePixel = 0
		Frame27.Size = UDim2.new(1, -15, 0, 0)
		Frame27.Visible = false
		Frame27.AutomaticSize = Enum.AutomaticSize.Y
		UICorner20.CornerRadius = UDim.new(0, 10)
		UICorner20.Parent = Frame27
		UIListLayout11.Parent = Frame27
		UIListLayout11.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout11.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout11.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout11.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout11.Padding = UDim.new(0, 30)
		Frame28.Name = "Themes"
		Frame28.Parent = Frame27
		Frame28.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		Frame28.BackgroundTransparency = 1
		Frame28.BorderColor3 = Color3.fromRGB(38, 38, 38)
		Frame28.BorderSizePixel = 0
		Frame28.Position = UDim2.new(0, 0, 0.55306071, 0)
		Frame28.Size = UDim2.new(1, 0, 1, 0)
		TextBox.Name = "Search"
		TextBox.Parent = Frame28
		TextBox.AnchorPoint = Vector2.new(0, 0)
		TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextBox.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextBox.BorderSizePixel = 0
		TextBox.Position = UDim2.new(0, 37, 0, -2)
		TextBox.Size = UDim2.new(0.926606655, 0, 0, 23)
		TextBox.ClearTextOnFocus = false
		TextBox.Font = Enum.Font.SourceSans
		TextBox.PlaceholderColor3 = result[arg12.Theme].ItemTitleColor
		TextBox.PlaceholderText = "Search a theme here."
		TextBox.Text = ""
		TextBox.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextBox.TextSize = 18
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.BackgroundTransparency = 1
		local changedSignal = TextBox:GetPropertyChangedSignal("Text")
		changedSignal:Connect(function(arg15)
			ScrollingFrame3:GetDescendants()
			ScrollingFrame3:GetDescendants()
		end)
		ImageLabel6.Name = "SearchIcon"
		ImageLabel6.Parent = Frame28
		ImageLabel6.BackgroundTransparency = 1
		ImageLabel6.BorderSizePixel = 0
		ImageLabel6.Position = UDim2.new(0, 17, 0, -1)
		ImageLabel6.Size = UDim2.new(0, 20, 0, 22)
		ImageLabel6.Image = "rbxassetid://118685771787843"
		ImageLabel6.ImageColor3 = result[arg12.Theme].ItemTitleColor
		ScrollingFrame3.Name = "ThemeContainer"
		ScrollingFrame3.Parent = Frame28
		ScrollingFrame3.Active = true
		ScrollingFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame3.BackgroundTransparency = 1
		ScrollingFrame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame3.BorderSizePixel = 0
		ScrollingFrame3.Position = UDim2.new(0, 0, 0, 26)
		ScrollingFrame3.Size = UDim2.new(1, 0, -0.129999995, 100)
		ScrollingFrame3.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame3.ScrollBarThickness = 6
		ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame3.AutomaticCanvasSize = Enum.AutomaticSize.Y
		UIListLayout12.Parent = ScrollingFrame3
		UIListLayout12.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout12.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout12.Padding = UDim.new(0, 5)
		UIPadding13.Parent = ScrollingFrame3
		UIPadding13.PaddingBottom = UDim.new(0, 10)
		UIPadding13.PaddingTop = UDim.new(0, 10)
		UICorner21.Parent = Frame28
		UIPadding14.Parent = Frame28
		UIPadding14.PaddingBottom = UDim.new(0, 15)
		UIPadding14.PaddingLeft = UDim.new(0, 15)
		UIPadding14.PaddingRight = UDim.new(0, 15)
		UIPadding14.PaddingTop = UDim.new(0, 15)
		Frame25.MouseEnter:Connect(function(arg16)
			local tween60 = TweenService:Create(Frame25, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween60:Play()
		end)
		Frame25.MouseLeave:Connect(function(arg17)
			local tween61 = TweenService:Create(Frame25, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween61:Play()
		end)
		TextLabel9.Visible = true
		TextLabel10.Visible = true
		TextButton2.MouseButton1Click:Connect(function()
			Frame27.Visible = true
			local tween62 = TweenService:Create(Frame27, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
			tween62:Play()
			task.wait(0.1)
			Frame27:GetDescendants()
			Frame27.AutomaticSize = Enum.AutomaticSize.Y
		end)
		local lastValue
		for k5, v5 in pairs(list) do
			local Frame29 = Instance.new("Frame")
			local TextButton4 = Instance.new("TextButton")
			local UICorner22 = Instance.new("UICorner")
			local UICorner23 = Instance.new("UICorner")
			Frame29.Name = "ItemFrame"
			Frame29.Parent = ScrollingFrame3
			Frame29.BackgroundColor3 = result[arg12.Theme].DropdownItemBackground
			Frame29.BorderColor3 = result[arg12.Theme].DropdownItemBackground
			Frame29.BorderSizePixel = 0
			Frame29.Position = UDim2.new(0.107260369, 0, 0, 0)
			Frame29.Size = UDim2.new(0.926217794, 0, 0, 27)
			TextButton4.Name = "ItemButton"
			TextButton4.Parent = Frame29
			TextButton4.BackgroundColor3 = result[arg12.Theme].ItemStrokeColor
			TextButton4.BackgroundTransparency = 1
			TextButton4.BorderColor3 = result[arg12.Theme].ItemStrokeColor
			TextButton4.BorderSizePixel = 0
			TextButton4.Size = UDim2.new(1, 0, 1, 0)
			TextButton4.Font = Enum.Font.Gotham
			TextButton4.Text = v5
			TextButton4.TextColor3 = result[arg12.Theme].DropdownItemText
			TextButton4.TextSize = 14
			TextButton4.TextWrapped = true
			UICorner22.Parent = TextButton4
			UICorner23.CornerRadius = UDim.new(0, 5)
			UICorner23.Parent = Frame29
			TextButton4.MouseButton1Click:Connect(function()
				Frame27.AutomaticSize = Enum.AutomaticSize.None
				Frame27:GetDescendants()
				task.wait(0.1)
				TextLabel11.Text = v5
				local tween63 = TweenService:Create(Frame27, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) })
				tween63:Play()
				task.wait(0.1)
				Frame27.Visible = false
				BindableEvent:Fire(v5)
			end)
			lastValue = v5
		end
		BindableEvent.Event:Connect(function(arg18)
			local tween64 = TweenService:Create(Frame25, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg18].ItemBackgroundColor })
			tween64:Play()
			local tween65 = TweenService:Create(TextLabel9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg18].ItemTitleColor })
			tween65:Play()
			local tween66 = TweenService:Create(TextLabel10, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg18].ItemDescriptionColor })
			tween66:Play()
			local tween67 = TweenService:Create(Frame26, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg18].ItemElementsBackgroundColor })
			tween67:Play()
			local tween68 = TweenService:Create(UIStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg18].ItemStrokeColor })
			tween68:Play()
			local tween69 = TweenService:Create(TextLabel11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg18].ItemTitleColor })
			tween69:Play()
			local tween70 = TweenService:Create(Frame27, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg18].ItemBackgroundColor })
			tween70:Play()
			local tween71 = TweenService:Create(ImageLabel6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg18].ItemTitleColor })
			tween71:Play()
			local tween72 = TweenService:Create(TextBox, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg18].ItemTitleColor })
			tween72:Play()
			TextBox.PlaceholderColor3 = result[arg18].ItemTitleColor
			ScrollingFrame3:GetChildren()
		end)
		for i, v6 in ipairs(list) do
		end
		local Frame30 = Instance.new("Frame")
		local UIPadding15 = Instance.new("UIPadding")
		local UICorner24 = Instance.new("UICorner")
		local Frame31 = Instance.new("Frame")
		local UICorner25 = Instance.new("UICorner")
		local UIStroke6 = Instance.new("UIStroke")
		local TextButton5 = Instance.new("TextButton")
		local Frame32 = Instance.new("Frame")
		local TextLabel12 = Instance.new("TextLabel")
		local UIPadding16 = Instance.new("UIPadding")
		local TextLabel13 = Instance.new("TextLabel")
		local UIListLayout13 = Instance.new("UIListLayout")
		Frame30.Name = "KeyBind"
		Frame30.Parent = ScrollingFrame2
		Frame30.Active = true
		Frame30.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame30.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame30.BorderSizePixel = 0
		Frame30.Size = UDim2.new(1, -15, 0, 0)
		Frame30.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding15.Parent = Frame30
		UIPadding15.PaddingBottom = UDim.new(0, 10)
		UIPadding15.PaddingTop = UDim.new(0, 10)
		UICorner24.CornerRadius = UDim.new(0, 10)
		UICorner24.Parent = Frame30
		Frame31.Name = "BindSelection"
		Frame31.Parent = Frame30
		Frame31.AnchorPoint = Vector2.new(1, 0.5)
		Frame31.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame31.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame31.BorderSizePixel = 0
		Frame31.Position = UDim2.new(1, -14, 0.5, 0)
		Frame31.Size = UDim2.new(0, 30, 0, 30)
		Frame31.ZIndex = 3
		UICorner25.CornerRadius = UDim.new(0, 6)
		UICorner25.Parent = Frame31
		UIStroke6.Parent = Frame31
		UIStroke6.Color = result[arg12.Theme].ItemStrokeColor
		UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		TextButton5.Name = "Bind"
		TextButton5.Parent = Frame31
		TextButton5.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		TextButton5.BackgroundTransparency = 1
		TextButton5.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		TextButton5.BorderSizePixel = 0
		TextButton5.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton5.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton5.Size = UDim2.new(0, 30, 0, 30)
		TextButton5.AutoButtonColor = false
		TextButton5.Font = Enum.Font.Gotham
		TextButton5.Text = "..."
		TextButton5.TextColor3 = result[arg12.Theme].ItemElementsTextColor
		TextButton5.TextSize = 16
		TextButton5.AutomaticSize = Enum.AutomaticSize.X
		TextButton5.ZIndex = 3
		Frame32.Name = "KeyBindListing"
		Frame32.Parent = Frame30
		Frame32.Active = true
		Frame32.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame32.BackgroundTransparency = 1
		Frame32.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame32.BorderSizePixel = 0
		Frame32.Size = UDim2.new(0.828, 0, 0, 0)
		Frame32.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel12.Name = "KeyBindTitle"
		TextLabel12.Parent = Frame32
		TextLabel12.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel12.BackgroundTransparency = 1
		TextLabel12.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel12.BorderSizePixel = 0
		TextLabel12.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel12.Font = Enum.Font.GothamBold
		TextLabel12.Text = "UI Keybind"
		TextLabel12.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel12.TextSize = 14
		TextLabel12.TextWrapped = true
		TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel12.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel12.LayoutOrder = 1
		UIPadding16.Parent = Frame32
		UIPadding16.PaddingLeft = UDim.new(0, 15)
		TextLabel13.Name = "KeyBindDescription"
		TextLabel13.Parent = Frame32
		TextLabel13.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel13.BackgroundTransparency = 1
		TextLabel13.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel13.BorderSizePixel = 0
		TextLabel13.Position = UDim2.new(0, 0, 0.0375690758, 0)
		TextLabel13.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel13.Font = Enum.Font.Gotham
		TextLabel13.Text = "Toggles The UI"
		TextLabel13.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel13.TextSize = 14
		TextLabel13.TextWrapped = true
		TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel13.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel13.LayoutOrder = 2
		UIListLayout13.Parent = Frame32
		UIListLayout13.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout13.VerticalAlignment = Enum.VerticalAlignment.Center
		Frame31.Size = UDim2.new(0, 50, 0, 30)
		BindableEvent.Event:Connect(function(arg19)
			local tween73 = TweenService:Create(Frame30, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg19].ItemBackgroundColor })
			tween73:Play()
			local tween74 = TweenService:Create(TextLabel12, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg19].ItemTitleColor })
			tween74:Play()
			local tween75 = TweenService:Create(TextLabel13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg19].ItemDescriptionColor })
			tween75:Play()
			local tween76 = TweenService:Create(Frame31, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg19].ItemElementsBackgroundColor })
			tween76:Play()
			local tween77 = TweenService:Create(TextButton5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg19].ItemElementsTextColor })
			tween77:Play()
			local tween78 = TweenService:Create(UIStroke6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg19].ItemStrokeColor })
			tween78:Play()
		end)
		TextLabel12.Visible = true
		TextLabel13.Visible = true
		Frame30.MouseEnter:Connect(function(arg20)
			local tween79 = TweenService:Create(Frame30, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween79:Play()
		end)
		Frame30.MouseLeave:Connect(function(arg21)
			local tween80 = TweenService:Create(Frame30, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween80:Play()
		end)
		TextButton5.Text = "H"
		TextButton5.MouseButton1Click:Connect(function()
			TextButton5.Text = "..."
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
			UserInputService.InputBegan:Wait()
			wait()
		end)
		local connection = UserInputService.InputBegan:Connect(function(input7, gameProcessed7)
		end)
		getgenv().KeyFunction = connection
		local Frame33 = Instance.new("Frame")
		local UICorner26 = Instance.new("UICorner")
		Frame33.Name = "Line"
		Frame33.Parent = ScrollingFrame2
		Frame33.BackgroundColor3 = result[arg12.Theme].LineColor
		Frame33.BorderColor3 = Color3.fromRGB(43, 43, 41)
		Frame33.BorderSizePixel = 0
		Frame33.Size = UDim2.new(1, -15, 0, 8)
		UICorner26.Parent = Frame33
		BindableEvent.Event:Connect(function(arg22)
			local tween81 = TweenService:Create(Frame33, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg22].LineColor })
			tween81:Play()
		end)
		local Frame34 = Instance.new("Frame")
		local UIPadding17 = Instance.new("UIPadding")
		local UICorner27 = Instance.new("UICorner")
		local Frame35 = Instance.new("Frame")
		local TextBox2 = Instance.new("TextBox")
		local UICorner28 = Instance.new("UICorner")
		local UICorner29 = Instance.new("UICorner")
		local UIPadding18 = Instance.new("UIPadding")
		local Frame36 = Instance.new("Frame")
		local TextLabel14 = Instance.new("TextLabel")
		local UIPadding19 = Instance.new("UIPadding")
		local TextLabel15 = Instance.new("TextLabel")
		local UIListLayout14 = Instance.new("UIListLayout")
		Frame34.Name = "TextBox"
		Frame34.Parent = ScrollingFrame2
		Frame34.Active = true
		Frame34.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame34.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame34.BorderSizePixel = 0
		Frame34.Size = UDim2.new(1, -15, 0, 0)
		Frame34.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding17.Parent = Frame34
		UIPadding17.PaddingBottom = UDim.new(0, 10)
		UIPadding17.PaddingTop = UDim.new(0, 10)
		UICorner27.CornerRadius = UDim.new(0, 10)
		UICorner27.Parent = Frame34
		Frame35.Name = "TexttingBoxFrame"
		Frame35.Parent = Frame34
		Frame35.AnchorPoint = Vector2.new(1, 0.5)
		Frame35.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame35.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		Frame35.BorderSizePixel = 0
		Frame35.Position = UDim2.new(1, -14, 0.5, 0)
		Frame35.Size = UDim2.new(0, 0, 0, 27)
		Frame35.AutomaticSize = Enum.AutomaticSize.X
		Frame35.ZIndex = 3
		TextBox2.Name = "TexttingBox"
		TextBox2.Parent = Frame35
		TextBox2.AnchorPoint = Vector2.new(0, 0)
		TextBox2.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		TextBox2.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
		TextBox2.BorderSizePixel = 0
		TextBox2.BackgroundTransparency = 1
		TextBox2.ClipsDescendants = true
		TextBox2.Position = UDim2.new(0, 0, 0, 0)
		TextBox2.Size = UDim2.new(0, 0, 1, 0)
		TextBox2.ClearTextOnFocus = false
		TextBox2.Font = Enum.Font.Gotham
		TextBox2.PlaceholderColor3 = result[arg12.Theme].ItemElementsTextColor
		TextBox2.PlaceholderText = "Type a config name..."
		TextBox2.TextXAlignment = Enum.TextXAlignment.Center
		TextBox2.Text = ""
		TextBox2.TextColor3 = result[arg12.Theme].ItemElementsTextColor
		TextBox2.TextSize = 14
		TextBox2.AutomaticSize = Enum.AutomaticSize.X
		TextBox2.ZIndex = 3
		local changedSignal2 = TextBox2:GetPropertyChangedSignal("Text")
		changedSignal2:Connect(function(arg23)
			Frame35.AutomaticSize = Enum.AutomaticSize.X
			TextBox2.AutomaticSize = Enum.AutomaticSize.X
			Frame35.Size = UDim2.new(0, 0, 0, 27)
			TextBox2.Size = UDim2.new(0, 0, 1, 0)
		end)
		UICorner29.CornerRadius = UDim.new(0, 6)
		UICorner29.Parent = TextBox2
		UICorner28.CornerRadius = UDim.new(0, 6)
		UICorner28.Parent = Frame35
		UIPadding18.Parent = Frame35
		UIPadding18.PaddingLeft = UDim.new(0, 10)
		UIPadding18.PaddingRight = UDim.new(0, 10)
		Frame36.Name = "TextBoxListing"
		Frame36.Parent = Frame34
		Frame36.Active = true
		Frame36.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame36.BackgroundTransparency = 1
		Frame36.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame36.BorderSizePixel = 0
		Frame36.Size = UDim2.new(0.563, 0, 0, 0)
		Frame36.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel14.Name = "TextBoxTitle"
		TextLabel14.Parent = Frame36
		TextLabel14.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel14.BackgroundTransparency = 1
		TextLabel14.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel14.BorderSizePixel = 0
		TextLabel14.Size = UDim2.new(0.659646749, 0, 0, 0)
		TextLabel14.Font = Enum.Font.GothamBold
		TextLabel14.Text = "Config Name"
		TextLabel14.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel14.TextSize = 14
		TextLabel14.TextWrapped = true
		TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel14.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel14.LayoutOrder = 1
		UIPadding19.Parent = Frame36
		UIPadding19.PaddingLeft = UDim.new(0, 15)
		TextLabel15.Name = "TextBoxDescription"
		TextLabel15.Parent = Frame36
		TextLabel15.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel15.BackgroundTransparency = 1
		TextLabel15.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel15.BorderSizePixel = 0
		TextLabel15.Position = UDim2.new(0, 0, 0.500000238, 0)
		TextLabel15.Size = UDim2.new(0.659646749, 0, 0, 0)
		TextLabel15.Font = Enum.Font.Gotham
		TextLabel15.Text = "Enter a config name to save"
		TextLabel15.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel15.TextSize = 14
		TextLabel15.TextWrapped = true
		TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel15.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel15.LayoutOrder = 2
		UIListLayout14.Parent = Frame36
		UIListLayout14.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout14.VerticalAlignment = Enum.VerticalAlignment.Center
		BindableEvent.Event:Connect(function(arg24)
			local tween82 = TweenService:Create(Frame34, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg24].ItemBackgroundColor })
			tween82:Play()
			local tween83 = TweenService:Create(Frame35, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg24].ItemElementsBackgroundColor })
			tween83:Play()
			local tween84 = TweenService:Create(TextLabel14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg24].ItemTitleColor })
			tween84:Play()
			local tween85 = TweenService:Create(TextLabel15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg24].ItemDescriptionColor })
			tween85:Play()
			local tween86 = TweenService:Create(TextBox2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg24].ItemElementsTextColor })
			tween86:Play()
			local tween87 = TweenService:Create(TextBox2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { PlaceholderColor3 = result[arg24].ItemElementsTextColor })
			tween87:Play()
		end)
		TextLabel14.Visible = true
		TextLabel15.Visible = true
		Frame34.MouseEnter:Connect(function(arg25)
			local tween88 = TweenService:Create(Frame34, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween88:Play()
		end)
		Frame34.MouseLeave:Connect(function(arg26)
			local tween89 = TweenService:Create(Frame34, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween89:Play()
		end)
		TextBox2.Focused:Connect(function(arg27)
			local tween90 = TweenService:Create(TextBox2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween90:Play()
		end)
		TextBox2.FocusLost:Connect(function(enterPressed, inputObject)
			local tween91 = TweenService:Create(TextBox2, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemElementsBackgroundColor })
			tween91:Play()
		end)
		local Frame37 = Instance.new("Frame")
		local TextButton6 = Instance.new("TextButton")
		local TextLabel16 = Instance.new("TextLabel")
		local TextLabel17 = Instance.new("TextLabel")
		local UIPadding20 = Instance.new("UIPadding")
		local UIListLayout15 = Instance.new("UIListLayout")
		local UIPadding21 = Instance.new("UIPadding")
		local UICorner30 = Instance.new("UICorner")
		local TextLabel18 = Instance.new("TextLabel")
		local Frame38 = Instance.new("Frame")
		local UICorner31 = Instance.new("UICorner")
		local UIListLayout16 = Instance.new("UIListLayout")
		local UIPadding22 = Instance.new("UIPadding")
		local Frame39 = Instance.new("Frame")
		local UIListLayout17 = Instance.new("UIListLayout")
		local ImageLabel7 = Instance.new("ImageLabel")
		local TextBox3 = Instance.new("TextBox")
		local TextLabel19 = Instance.new("TextLabel")
		local ScrollingFrame4 = Instance.new("ScrollingFrame")
		local UIListLayout18 = Instance.new("UIListLayout")
		local ScrollingFrame5 = Instance.new("ScrollingFrame")
		local UIListLayout19 = Instance.new("UIListLayout")
		Frame37.Name = "Dropdown"
		Frame37.Parent = ScrollingFrame2
		Frame37.Active = true
		Frame37.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame37.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame37.BorderSizePixel = 0
		Frame37.Size = UDim2.new(1, -15, 0, 0)
		Frame37.AutomaticSize = Enum.AutomaticSize.Y
		TextButton6.Name = "DropdownButton"
		TextButton6.Parent = Frame37
		TextButton6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton6.BackgroundTransparency = 1
		TextButton6.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton6.BorderSizePixel = 0
		TextButton6.Size = UDim2.new(1, 0, 0, 0)
		TextButton6.AutoButtonColor = false
		TextButton6.Font = Enum.Font.SourceSans
		TextButton6.Text = ""
		TextButton6.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton6.TextSize = 14
		TextButton6.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel16.Name = "DropdownTitle"
		TextLabel16.Parent = TextButton6
		TextLabel16.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel16.BackgroundTransparency = 1
		TextLabel16.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel16.BorderSizePixel = 0
		TextLabel16.Position = UDim2.new(0, 0, 0.122222051, 0)
		TextLabel16.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel16.Font = Enum.Font.GothamBold
		TextLabel16.Text = "Config List"
		TextLabel16.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel16.TextSize = 14
		TextLabel16.TextWrapped = true
		TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel16.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel16.LayoutOrder = 1
		TextLabel17.Name = "DropdownDescription"
		TextLabel17.Parent = TextButton6
		TextLabel17.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel17.BackgroundTransparency = 1
		TextLabel17.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel17.BorderSizePixel = 0
		TextLabel17.Position = UDim2.new(0, 0, 0.5, 0)
		TextLabel17.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel17.Font = Enum.Font.Gotham
		TextLabel17.Text = "Choose one from the list"
		TextLabel17.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel17.TextSize = 14
		TextLabel17.TextWrapped = true
		TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel17.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel17.LayoutOrder = 2
		UIPadding20.Parent = TextButton6
		UIPadding20.PaddingLeft = UDim.new(0, 15)
		UIListLayout15.Parent = TextButton6
		UIListLayout15.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout15.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding21.Parent = Frame37
		UIPadding21.PaddingBottom = UDim.new(0, 10)
		UIPadding21.PaddingTop = UDim.new(0, 10)
		UICorner30.CornerRadius = UDim.new(0, 10)
		UICorner30.Parent = Frame37
		TextLabel18.Name = "DropIcon"
		TextLabel18.Parent = Frame37
		TextLabel18.AnchorPoint = Vector2.new(1, 0.5)
		TextLabel18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel18.BackgroundTransparency = 1
		TextLabel18.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel18.BorderSizePixel = 0
		TextLabel18.Position = UDim2.new(1, -10, 0.5, 0)
		TextLabel18.Rotation = 0
		TextLabel18.Size = UDim2.new(0, 26, 0, 24)
		TextLabel18.Text = "+"
		TextLabel18.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel18.TextSize = 22
		Frame38.Name = "DropdownFrame"
		Frame38.Parent = ScrollingFrame2
		Frame38.Active = true
		Frame38.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame38.BackgroundTransparency = 0.2
		Frame38.BorderColor3 = Color3.fromRGB(35, 35, 35)
		Frame38.BorderSizePixel = 0
		Frame38.Size = UDim2.new(1, -15, 0, 0)
		Frame38.AutomaticSize = Enum.AutomaticSize.None
		Frame38.Visible = false
		UICorner31.CornerRadius = UDim.new(0, 10)
		UICorner31.Parent = Frame38
		UIListLayout16.Parent = Frame38
		UIListLayout16.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout16.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout16.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout16.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout16.Padding = UDim.new(0, 15)
		UIListLayout16.Wraps = true
		UIPadding22.Parent = Frame38
		UIPadding22.PaddingBottom = UDim.new(0, 15)
		UIPadding22.PaddingLeft = UDim.new(0, 15)
		UIPadding22.PaddingRight = UDim.new(0, 15)
		UIPadding22.PaddingTop = UDim.new(0, 15)
		Frame39.Name = "ItemSearcherFrame"
		Frame39.Parent = Frame38
		Frame39.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame39.BackgroundTransparency = 1
		Frame39.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame39.BorderSizePixel = 0
		Frame39.Position = UDim2.new(0, 0, 0, 0)
		Frame39.Size = UDim2.new(0.984, 0, 0.131, 16)
		Frame39.LayoutOrder = 1
		Frame39.AutomaticSize = Enum.AutomaticSize.Y
		UIListLayout17.Parent = Frame39
		UIListLayout17.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout17.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout17.Padding = UDim.new(0, 1)
		UIListLayout17.Wraps = true
		ImageLabel7.Name = "SearchIcon"
		ImageLabel7.Parent = Frame39
		ImageLabel7.BackgroundTransparency = 1
		ImageLabel7.BorderSizePixel = 0
		ImageLabel7.Position = UDim2.new(-0.063000001, 0, 0.0599999987, 0)
		ImageLabel7.Size = UDim2.new(0, 20, 0, 22)
		ImageLabel7.Image = "rbxassetid://118685771787843"
		ImageLabel7.ImageColor3 = result[arg12.Theme].ItemTitleColor
		ImageLabel7.LayoutOrder = 1
		ImageLabel7.ImageTransparency = 1
		TextBox3.Name = "Search"
		TextBox3.Parent = Frame39
		TextBox3.AnchorPoint = Vector2.new(1, 0)
		TextBox3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextBox3.BackgroundTransparency = 1
		TextBox3.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextBox3.BorderSizePixel = 0
		TextBox3.Position = UDim2.new(1, 0, 0.0291970801, 0)
		TextBox3.Size = UDim2.new(0.926606655, 0, 0, 23)
		TextBox3.ClearTextOnFocus = false
		TextBox3.Font = Enum.Font.SourceSans
		TextBox3.PlaceholderColor3 = result[arg12.Theme].ItemTitleColor
		TextBox3.PlaceholderText = "Search Item"
		TextBox3.Text = ""
		TextBox3.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextBox3.TextSize = 18
		TextBox3.TextXAlignment = Enum.TextXAlignment.Left
		TextBox3.LayoutOrder = 2
		TextBox3.TextTransparency = 1
		TextLabel19.Name = "SelectedText"
		TextLabel19.Parent = Frame39
		TextLabel19.Active = true
		TextLabel19.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextLabel19.BackgroundTransparency = 1
		TextLabel19.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextLabel19.BorderSizePixel = 0
		TextLabel19.Position = UDim2.new(8.52235189e-08, 0, 0.421052635, 0)
		TextLabel19.Size = UDim2.new(0, 60, 0, 24)
		TextLabel19.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		TextLabel19.Text = "Selected: "
		TextLabel19.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel19.TextSize = 15
		TextLabel19.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
		TextLabel19.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel19.LayoutOrder = 3
		TextLabel19.TextTransparency = 1
		ScrollingFrame4.Name = "Selections"
		ScrollingFrame4.Parent = Frame39
		ScrollingFrame4.Active = true
		ScrollingFrame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame4.BackgroundTransparency = 1
		ScrollingFrame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame4.BorderSizePixel = 0
		ScrollingFrame4.Position = UDim2.new(0, 0, 0, 0)
		ScrollingFrame4.Size = UDim2.new(1, -61, 0, 33)
		ScrollingFrame4.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame4.ScrollBarThickness = 3
		ScrollingFrame4.LayoutOrder = 4
		ScrollingFrame4.AutomaticCanvasSize = Enum.AutomaticSize.X
		ScrollingFrame4.ScrollBarImageTransparency = 1
		ScrollingFrame4.ClipsDescendants = true
		UIListLayout18.Parent = ScrollingFrame4
		UIListLayout18.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout18.Padding = UDim.new(0, 4)
		UIListLayout18.Wraps = true
		ScrollingFrame5.Name = "DropItemHolder"
		ScrollingFrame5.Parent = Frame38
		ScrollingFrame5.Active = true
		ScrollingFrame5.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		ScrollingFrame5.BackgroundTransparency = 1
		ScrollingFrame5.BorderColor3 = Color3.fromRGB(32, 32, 32)
		ScrollingFrame5.BorderSizePixel = 0
		ScrollingFrame5.Position = UDim2.new(0, 0, 0.410693318, 0)
		ScrollingFrame5.Size = UDim2.new(1, 0, 0, 72)
		ScrollingFrame5.CanvasSize = UDim2.new(0, 0, 0, 60)
		ScrollingFrame5.ScrollBarThickness = 3
		ScrollingFrame5.LayoutOrder = 2
		ScrollingFrame5.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ScrollingFrame5.ClipsDescendants = true
		ScrollingFrame5.ScrollBarImageTransparency = 1
		UIListLayout19.Parent = ScrollingFrame5
		UIListLayout19.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout19.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout19.Padding = UDim.new(0, 6)
		local changedSignal3 = TextBox3:GetPropertyChangedSignal("Text")
		changedSignal3:Connect(function(arg28)
			ScrollingFrame5:GetDescendants()
			ScrollingFrame5:GetDescendants()
		end)
		BindableEvent.Event:Connect(function(arg29)
			local tween92 = TweenService:Create(Frame37, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg29].ItemBackgroundColor })
			tween92:Play()
			local tween93 = TweenService:Create(TextLabel16, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg29].ItemTitleColor })
			tween93:Play()
			local tween94 = TweenService:Create(TextLabel17, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg29].ItemDescriptionColor })
			tween94:Play()
			local tween95 = TweenService:Create(TextLabel18, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg29].ItemTitleColor })
			tween95:Play()
			local tween96 = TweenService:Create(Frame38, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg29].ItemBackgroundColor })
			tween96:Play()
			local tween97 = TweenService:Create(ImageLabel7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg29].ItemTitleColor })
			tween97:Play()
			local tween98 = TweenService:Create(TextBox3, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg29].ItemTitleColor })
			tween98:Play()
			TextBox3.PlaceholderColor3 = result[arg29].ItemTitleColor
			local tween99 = TweenService:Create(TextLabel19, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg29].ItemTitleColor })
			tween99:Play()
			ScrollingFrame5:GetChildren()
			ScrollingFrame4:GetChildren()
		end)
		Frame37.MouseEnter:Connect(function(arg30)
			local tween100 = TweenService:Create(Frame37, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween100:Play()
		end)
		Frame37.MouseLeave:Connect(function(arg31)
			local tween101 = TweenService:Create(Frame37, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween101:Play()
		end)
		TextLabel16.Visible = true
		TextLabel17.Visible = true
		TextButton6.MouseButton1Click:Connect(function()
			Frame38.Visible = true
			local tween102 = TweenService:Create(Frame38, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
			tween102:Play()
			local tween103 = TweenService:Create(TextLabel18, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Rotation = 225 })
			tween103:Play()
			task.wait(0.1)
			Frame38:GetDescendants()
			Frame38.AutomaticSize = Enum.AutomaticSize.Y
		end)
		local Frame40 = Instance.new("Frame")
		local TextButton7 = Instance.new("TextButton")
		local TextLabel20 = Instance.new("TextLabel")
		local TextLabel21 = Instance.new("TextLabel")
		local UIPadding23 = Instance.new("UIPadding")
		local UIListLayout20 = Instance.new("UIListLayout")
		local UIPadding24 = Instance.new("UIPadding")
		local UICorner32 = Instance.new("UICorner")
		local ImageLabel8 = Instance.new("ImageLabel")
		Frame40.Name = "Button"
		Frame40.Parent = ScrollingFrame2
		Frame40.Active = true
		Frame40.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame40.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame40.BorderSizePixel = 0
		Frame40.Size = UDim2.new(1, -15, 0, 0)
		Frame40.AutomaticSize = Enum.AutomaticSize.Y
		TextButton7.Name = "ButtonClick"
		TextButton7.Parent = Frame40
		TextButton7.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton7.BackgroundTransparency = 1
		TextButton7.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton7.BorderSizePixel = 0
		TextButton7.Size = UDim2.new(1, 0, 0, 0)
		TextButton7.AutoButtonColor = false
		TextButton7.Font = Enum.Font.SourceSans
		TextButton7.Text = ""
		TextButton7.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton7.TextSize = 14
		TextButton7.AutomaticSize = Enum.AutomaticSize.Y
		TextButton7.MouseButton1Click:Connect(function()
			local Frame94 = Instance.new("Frame")
			local Frame95 = Instance.new("Frame")
			local Frame96 = Instance.new("Frame")
			local ImageLabel25 = Instance.new("ImageLabel")
			local UICorner89 = Instance.new("UICorner")
			local Frame97 = Instance.new("Frame")
			local TextLabel66 = Instance.new("TextLabel")
			local TextLabel67 = Instance.new("TextLabel")
			local UIListLayout51 = Instance.new("UIListLayout")
			local UIPadding70 = Instance.new("UIPadding")
			local UICorner90 = Instance.new("UICorner")
			local UIStroke14 = Instance.new("UIStroke")
			local UIPadding71 = Instance.new("UIPadding")
			local UICorner91 = Instance.new("UICorner")
			Frame94.Name = "NotificationContainer"
			Frame94.Parent = Frame
			Frame94.Active = true
			Frame94.BackgroundColor3 = result[arg].ItemBackgroundColor
			Frame94.BackgroundTransparency = 1
			Frame94.BorderColor3 = result[arg].ItemBackgroundColor
			Frame94.BorderSizePixel = 0
			Frame94.Size = UDim2.new(1, 0, 1, 0)
			Frame94.ClipsDescendants = false
			Frame95.Name = "Notification"
			Frame95.Parent = Frame94
			Frame95.Active = true
			Frame95.BackgroundColor3 = result[arg].ItemBackgroundColor
			Frame95.BorderColor3 = result[arg].ItemBackgroundColor
			Frame95.BorderSizePixel = 0
			Frame95.Position = UDim2.new(1000, 0, 0, 0)
			Frame95.Size = UDim2.new(0, 287, 0, 61)
			Frame95.AutomaticSize = Enum.AutomaticSize.Y
			Frame95.BackgroundTransparency = 0.4
			Frame96.Name = "IconFrame"
			Frame96.Parent = Frame95
			Frame96.AnchorPoint = Vector2.new(0, 0.5)
			Frame96.BackgroundColor3 = Color3.fromRGB(67, 136, 246)
			Frame96.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
			Frame96.Size = UDim2.new(0, 41, 0, 41)
			ImageLabel25.Name = "Icon"
			ImageLabel25.Parent = Frame96
			ImageLabel25.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
			ImageLabel25.BackgroundTransparency = 1
			ImageLabel25.BorderColor3 = Color3.fromRGB(155, 135, 255)
			ImageLabel25.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
			ImageLabel25.Size = UDim2.new(0, 26, 0, 26)
			ImageLabel25.Image = "rbxassetid://10723407389"
			UICorner89.Parent = Frame96
			Frame97.Name = "NotificationListing"
			Frame97.Parent = Frame95
			Frame97.Active = true
			Frame97.BackgroundColor3 = result[arg].ItemBackgroundColor
			Frame97.BorderColor3 = result[arg].ItemBackgroundColor
			Frame97.BorderSizePixel = 0
			Frame97.Position = UDim2.new(0.202000007, 0, 0, 0)
			Frame97.Size = UDim2.new(0.756097555, 0, 1, 0)
			Frame97.AutomaticSize = Enum.AutomaticSize.Y
			Frame97.BackgroundTransparency = 1
			UIListLayout51.Parent = Frame97
			UIListLayout51.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout51.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout51.FillDirection = Enum.FillDirection.Vertical
			TextLabel66.Name = "NotificationTitle"
			TextLabel66.Parent = Frame97
			TextLabel66.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
			TextLabel66.BackgroundTransparency = 1
			TextLabel66.BorderColor3 = Color3.fromRGB(43, 43, 41)
			TextLabel66.BorderSizePixel = 0
			TextLabel66.Size = UDim2.new(0.912857533, 0, 0, 0)
			TextLabel66.Font = Enum.Font.GothamBold
			TextLabel66.Text = "Refreshed Successfully!"
			TextLabel66.TextColor3 = result[arg].ItemTitleColor
			TextLabel66.TextSize = 14
			TextLabel66.TextWrapped = true
			TextLabel66.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel66.AutomaticSize = Enum.AutomaticSize.Y
			TextLabel67.Name = "NotificationDescription"
			TextLabel67.Parent = Frame97
			TextLabel67.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
			TextLabel67.BackgroundTransparency = 1
			TextLabel67.BorderColor3 = Color3.fromRGB(43, 43, 41)
			TextLabel67.BorderSizePixel = 0
			TextLabel67.Size = UDim2.new(0.912857533, 0, 0, 0)
			TextLabel67.Font = Enum.Font.Gotham
			TextLabel67.Text = ""
			TextLabel67.TextColor3 = result[arg].ItemDescriptionColor
			TextLabel67.TextSize = 14
			TextLabel67.TextWrapped = true
			TextLabel67.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel67.AutomaticSize = Enum.AutomaticSize.Y
			UIPadding70.Parent = Frame97
			UIPadding70.PaddingBottom = UDim.new(0, 5)
			UIPadding70.PaddingTop = UDim.new(0, 5)
			UICorner90.CornerRadius = UDim.new(0, 10)
			UICorner90.Parent = Frame95
			UIStroke14.Parent = Frame95
			UIStroke14.Color = result[arg].NotificationStrokeColor
			UIStroke14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIPadding71.Parent = Frame95
			UIPadding71.PaddingBottom = UDim.new(0, 10)
			UIPadding71.PaddingTop = UDim.new(0, 10)
			UICorner91.CornerRadius = UDim.new(0, 10)
			UICorner91.Parent = Frame94
			local connection4 = BindableEvent.Event:Connect(function(arg168)
				local tween286 = TweenService:Create(Frame94, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg168].ItemBackgroundColor })
				tween286:Play()
				local tween287 = TweenService:Create(Frame95, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg168].ItemBackgroundColor })
				tween287:Play()
				local tween288 = TweenService:Create(TextLabel66, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg168].ItemTitleColor })
				tween288:Play()
				local tween289 = TweenService:Create(TextLabel67, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg168].ItemDescriptionColor })
				tween289:Play()
				local tween290 = TweenService:Create(UIStroke14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg168].NotificationStrokeColor })
				tween290:Play()
			end)
			task.spawn(function(...)
				Frame94.Size = UDim2.new(0, 0, 0, 0)
				Frame94.ClipsDescendants = true
				Frame95.Position = UDim2.new(3, 0, 0, 0)
				local tween104 = TweenService:Create(Frame94, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 61) })
				tween104:Play()
				task.wait(0.2)
				local tween105 = TweenService:Create(Frame94, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, 61) })
				tween105:Play()
				task.wait(0.2)
				local tween106 = TweenService:Create(Frame95, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) })
				tween106:Play()
				task.wait(4)
				local tween107 = TweenService:Create(Frame95, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { Position = UDim2.new(3, 0, 0, 0) })
				tween107:Play()
				task.wait(0.2)
				local tween108 = TweenService:Create(Frame94, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 61) })
				tween108:Play()
				task.wait(0.2)
				local tween109 = TweenService:Create(Frame94, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 0) })
				tween109:Play()
				Frame94:Destroy()
				connection4:Disconnect()
			end)
			ScrollingFrame5:GetDescendants()
			ScrollingFrame4:GetDescendants()
		end)
		TextLabel20.Name = "ButtonTitle"
		TextLabel20.Parent = TextButton7
		TextLabel20.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel20.BackgroundTransparency = 1
		TextLabel20.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel20.BorderSizePixel = 0
		TextLabel20.Position = UDim2.new(0, 0, 0.122222051, 0)
		TextLabel20.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel20.Font = Enum.Font.GothamBold
		TextLabel20.Text = "Refresh Configs!"
		TextLabel20.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel20.TextSize = 14
		TextLabel20.TextWrapped = true
		TextLabel20.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel20.LayoutOrder = 1
		TextLabel20.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel21.Name = "ButtonDescription"
		TextLabel21.Parent = TextButton7
		TextLabel21.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel21.BackgroundTransparency = 1
		TextLabel21.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel21.BorderSizePixel = 0
		TextLabel21.Position = UDim2.new(0, 0, 0.5, 0)
		TextLabel21.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel21.Font = Enum.Font.Gotham
		TextLabel21.Text = "Refresh config list!"
		TextLabel21.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel21.TextSize = 14
		TextLabel21.TextWrapped = true
		TextLabel21.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel21.LayoutOrder = 2
		TextLabel21.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding23.Parent = TextButton7
		UIPadding23.PaddingLeft = UDim.new(0, 15)
		UIListLayout20.Parent = TextButton7
		UIListLayout20.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout20.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding24.Parent = Frame40
		UIPadding24.PaddingBottom = UDim.new(0, 10)
		UIPadding24.PaddingTop = UDim.new(0, 10)
		UICorner32.CornerRadius = UDim.new(0, 10)
		UICorner32.Parent = Frame40
		ImageLabel8.Name = "ClickIcon"
		ImageLabel8.Parent = Frame40
		ImageLabel8.AnchorPoint = Vector2.new(1, 0.5)
		ImageLabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel8.BackgroundTransparency = 1
		ImageLabel8.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel8.BorderSizePixel = 0
		ImageLabel8.Position = UDim2.new(1, -10, 0.5, 0)
		ImageLabel8.Size = UDim2.new(0, 33, 0, 33)
		ImageLabel8.Image = "rbxassetid://13570069771"
		ImageLabel8.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
		BindableEvent.Event:Connect(function(arg32)
			local tween110 = TweenService:Create(Frame40, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg32].ItemBackgroundColor })
			tween110:Play()
			local tween111 = TweenService:Create(TextLabel20, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg32].ItemTitleColor })
			tween111:Play()
			local tween112 = TweenService:Create(TextLabel21, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg32].ItemDescriptionColor })
			tween112:Play()
			local tween113 = TweenService:Create(ImageLabel8, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg32].ItemElementsTextColor })
			tween113:Play()
		end)
		TextLabel20.Visible = true
		TextLabel21.Visible = true
		Frame40.MouseEnter:Connect(function(arg33)
			local tween114 = TweenService:Create(Frame40, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween114:Play()
		end)
		Frame40.MouseLeave:Connect(function(arg34)
			local tween115 = TweenService:Create(Frame40, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween115:Play()
		end)
		local Frame41 = Instance.new("Frame")
		local TextButton8 = Instance.new("TextButton")
		local TextLabel22 = Instance.new("TextLabel")
		local TextLabel23 = Instance.new("TextLabel")
		local UIPadding25 = Instance.new("UIPadding")
		local UIListLayout21 = Instance.new("UIListLayout")
		local UIPadding26 = Instance.new("UIPadding")
		local UICorner33 = Instance.new("UICorner")
		local ImageLabel9 = Instance.new("ImageLabel")
		Frame41.Name = "Button"
		Frame41.Parent = ScrollingFrame2
		Frame41.Active = true
		Frame41.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame41.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame41.BorderSizePixel = 0
		Frame41.Size = UDim2.new(1, -15, 0, 0)
		Frame41.AutomaticSize = Enum.AutomaticSize.Y
		TextButton8.Name = "ButtonClick"
		TextButton8.Parent = Frame41
		TextButton8.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton8.BackgroundTransparency = 1
		TextButton8.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton8.BorderSizePixel = 0
		TextButton8.Size = UDim2.new(1, 0, 0, 0)
		TextButton8.AutoButtonColor = false
		TextButton8.Font = Enum.Font.SourceSans
		TextButton8.Text = ""
		TextButton8.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton8.TextSize = 14
		TextButton8.AutomaticSize = Enum.AutomaticSize.Y
		TextButton8.MouseButton1Click:Connect(function()
			local json2 = HttpService:JSONEncode({
				{ flag = "UI Keybind", key = "H", type = "KeyBind" },
				{ flag = arg69.Flag, multioption = arg69.MultiOption, selected = {}, type = "Dropdown" },
				{ flag = arg123.Flag, type = "Slider", value = math.floor(math.clamp(arg128, tonumber(tostring(arg123.MinValue)), tonumber(tostring(arg123.MaxValue)))) },
				{ color = tostring(arg62.CurrentColor), flag = arg62.Flag, type = "ColorPicker" },
				{ flag = "ConfigDropdown", multioption = false, selected = {}, type = "Dropdown" },
				{ flag = "ConfigNamer", text = "", type = "TextBox" },
				{ flag = arg142.Flag, status = arg147, type = "Toggle" },
				{ flag = arg55.Flag, status = arg60, type = "CheckBox" },
				{ flag = arg130.Flag, text = arg137, type = "TextBox" },
				{ flag = "ThemePicker", selected = list2, type = "Picker" },
				{ flag = arg88.Flag, key = arg95, type = "KeyBind" },
				{ flag = arg112.Flag, selected = { arg112.List[1] }, type = "Picker" }
			})
			writefile(arg12.Config.FolderPath .. "/" .. tostring(arg12.Config.FileName), json2)
			ScrollingFrame5:GetDescendants()
			ScrollingFrame4:GetDescendants()
		end)
		TextLabel22.Name = "ButtonTitle"
		TextLabel22.Parent = TextButton8
		TextLabel22.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel22.BackgroundTransparency = 1
		TextLabel22.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel22.BorderSizePixel = 0
		TextLabel22.Position = UDim2.new(0, 0, 0.122222051, 0)
		TextLabel22.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel22.Font = Enum.Font.GothamBold
		TextLabel22.Text = "Save Config"
		TextLabel22.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel22.TextSize = 14
		TextLabel22.TextWrapped = true
		TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel22.LayoutOrder = 1
		TextLabel22.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel23.Name = "ButtonDescription"
		TextLabel23.Parent = TextButton8
		TextLabel23.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel23.BackgroundTransparency = 1
		TextLabel23.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel23.BorderSizePixel = 0
		TextLabel23.Position = UDim2.new(0, 0, 0.5, 0)
		TextLabel23.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel23.Font = Enum.Font.Gotham
		TextLabel23.Text = "Save current settings!"
		TextLabel23.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel23.TextSize = 14
		TextLabel23.TextWrapped = true
		TextLabel23.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel23.LayoutOrder = 2
		TextLabel23.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding25.Parent = TextButton8
		UIPadding25.PaddingLeft = UDim.new(0, 15)
		UIListLayout21.Parent = TextButton8
		UIListLayout21.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout21.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding26.Parent = Frame41
		UIPadding26.PaddingBottom = UDim.new(0, 10)
		UIPadding26.PaddingTop = UDim.new(0, 10)
		UICorner33.CornerRadius = UDim.new(0, 10)
		UICorner33.Parent = Frame41
		ImageLabel9.Name = "ClickIcon"
		ImageLabel9.Parent = Frame41
		ImageLabel9.AnchorPoint = Vector2.new(1, 0.5)
		ImageLabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel9.BackgroundTransparency = 1
		ImageLabel9.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel9.BorderSizePixel = 0
		ImageLabel9.Position = UDim2.new(1, -10, 0.5, 0)
		ImageLabel9.Size = UDim2.new(0, 33, 0, 33)
		ImageLabel9.Image = "rbxassetid://13570069771"
		ImageLabel9.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
		BindableEvent.Event:Connect(function(arg35)
			local tween116 = TweenService:Create(Frame41, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg35].ItemBackgroundColor })
			tween116:Play()
			local tween117 = TweenService:Create(TextLabel22, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg35].ItemTitleColor })
			tween117:Play()
			local tween118 = TweenService:Create(TextLabel23, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg35].ItemDescriptionColor })
			tween118:Play()
			local tween119 = TweenService:Create(ImageLabel9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg35].ItemElementsTextColor })
			tween119:Play()
		end)
		TextLabel22.Visible = true
		TextLabel23.Visible = true
		Frame41.MouseEnter:Connect(function(arg36)
			local tween120 = TweenService:Create(Frame41, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween120:Play()
		end)
		Frame41.MouseLeave:Connect(function(arg37)
			local tween121 = TweenService:Create(Frame41, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween121:Play()
		end)
		local Frame42 = Instance.new("Frame")
		local TextButton9 = Instance.new("TextButton")
		local TextLabel24 = Instance.new("TextLabel")
		local TextLabel25 = Instance.new("TextLabel")
		local UIPadding27 = Instance.new("UIPadding")
		local UIListLayout22 = Instance.new("UIListLayout")
		local UIPadding28 = Instance.new("UIPadding")
		local UICorner34 = Instance.new("UICorner")
		local ImageLabel10 = Instance.new("ImageLabel")
		Frame42.Name = "Button"
		Frame42.Parent = ScrollingFrame2
		Frame42.Active = true
		Frame42.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame42.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame42.BorderSizePixel = 0
		Frame42.Size = UDim2.new(1, -15, 0, 0)
		Frame42.AutomaticSize = Enum.AutomaticSize.Y
		TextButton9.Name = "ButtonClick"
		TextButton9.Parent = Frame42
		TextButton9.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton9.BackgroundTransparency = 1
		TextButton9.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton9.BorderSizePixel = 0
		TextButton9.Size = UDim2.new(1, 0, 0, 0)
		TextButton9.AutoButtonColor = false
		TextButton9.Font = Enum.Font.SourceSans
		TextButton9.Text = ""
		TextButton9.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton9.TextSize = 14
		TextButton9.AutomaticSize = Enum.AutomaticSize.Y
		TextButton9.MouseButton1Click:Connect(function()
			warn("[Hawk Lib]: Config file not found.")
		end)
		TextLabel24.Name = "ButtonTitle"
		TextLabel24.Parent = TextButton9
		TextLabel24.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel24.BackgroundTransparency = 1
		TextLabel24.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel24.BorderSizePixel = 0
		TextLabel24.Position = UDim2.new(0, 0, 0.122222051, 0)
		TextLabel24.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel24.Font = Enum.Font.GothamBold
		TextLabel24.Text = "Load Config"
		TextLabel24.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel24.TextSize = 14
		TextLabel24.TextWrapped = true
		TextLabel24.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel24.LayoutOrder = 1
		TextLabel24.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel25.Name = "ButtonDescription"
		TextLabel25.Parent = TextButton9
		TextLabel25.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel25.BackgroundTransparency = 1
		TextLabel25.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel25.BorderSizePixel = 0
		TextLabel25.Position = UDim2.new(0, 0, 0.5, 0)
		TextLabel25.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel25.Font = Enum.Font.Gotham
		TextLabel25.Text = "Load settings from a file!"
		TextLabel25.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel25.TextSize = 14
		TextLabel25.TextWrapped = true
		TextLabel25.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel25.LayoutOrder = 2
		TextLabel25.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding27.Parent = TextButton9
		UIPadding27.PaddingLeft = UDim.new(0, 15)
		UIListLayout22.Parent = TextButton9
		UIListLayout22.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout22.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding28.Parent = Frame42
		UIPadding28.PaddingBottom = UDim.new(0, 10)
		UIPadding28.PaddingTop = UDim.new(0, 10)
		UICorner34.CornerRadius = UDim.new(0, 10)
		UICorner34.Parent = Frame42
		ImageLabel10.Name = "ClickIcon"
		ImageLabel10.Parent = Frame42
		ImageLabel10.AnchorPoint = Vector2.new(1, 0.5)
		ImageLabel10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel10.BackgroundTransparency = 1
		ImageLabel10.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel10.BorderSizePixel = 0
		ImageLabel10.Position = UDim2.new(1, -10, 0.5, 0)
		ImageLabel10.Size = UDim2.new(0, 33, 0, 33)
		ImageLabel10.Image = "rbxassetid://13570069771"
		ImageLabel10.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
		BindableEvent.Event:Connect(function(arg38)
			local tween122 = TweenService:Create(Frame42, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg38].ItemBackgroundColor })
			tween122:Play()
			local tween123 = TweenService:Create(TextLabel24, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg38].ItemTitleColor })
			tween123:Play()
			local tween124 = TweenService:Create(TextLabel25, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg38].ItemDescriptionColor })
			tween124:Play()
			local tween125 = TweenService:Create(ImageLabel10, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg38].ItemElementsTextColor })
			tween125:Play()
		end)
		TextLabel24.Visible = true
		TextLabel25.Visible = true
		Frame42.MouseEnter:Connect(function(arg39)
			local tween126 = TweenService:Create(Frame42, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween126:Play()
		end)
		Frame42.MouseLeave:Connect(function(arg40)
			local tween127 = TweenService:Create(Frame42, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween127:Play()
		end)
		local Frame43 = Instance.new("Frame")
		local TextButton10 = Instance.new("TextButton")
		local TextLabel26 = Instance.new("TextLabel")
		local TextLabel27 = Instance.new("TextLabel")
		local UIPadding29 = Instance.new("UIPadding")
		local UIListLayout23 = Instance.new("UIListLayout")
		local UIPadding30 = Instance.new("UIPadding")
		local UICorner35 = Instance.new("UICorner")
		local ImageLabel11 = Instance.new("ImageLabel")
		Frame43.Name = "Button"
		Frame43.Parent = ScrollingFrame2
		Frame43.Active = true
		Frame43.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame43.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
		Frame43.BorderSizePixel = 0
		Frame43.Size = UDim2.new(1, -15, 0, 0)
		Frame43.AutomaticSize = Enum.AutomaticSize.Y
		TextButton10.Name = "ButtonClick"
		TextButton10.Parent = Frame43
		TextButton10.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton10.BackgroundTransparency = 1
		TextButton10.BorderColor3 = Color3.fromRGB(35, 35, 35)
		TextButton10.BorderSizePixel = 0
		TextButton10.Size = UDim2.new(1, 0, 0, 0)
		TextButton10.AutoButtonColor = false
		TextButton10.Font = Enum.Font.SourceSans
		TextButton10.Text = ""
		TextButton10.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton10.TextSize = 14
		TextButton10.AutomaticSize = Enum.AutomaticSize.Y
		TextButton10.MouseButton1Click:Connect(function()
			warn("[Hawk Lib]: Config file not found.")
			ScrollingFrame5:GetDescendants()
			ScrollingFrame4:GetDescendants()
		end)
		TextLabel26.Name = "ButtonTitle"
		TextLabel26.Parent = TextButton10
		TextLabel26.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel26.BackgroundTransparency = 1
		TextLabel26.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel26.BorderSizePixel = 0
		TextLabel26.Position = UDim2.new(0, 0, 0.122222051, 0)
		TextLabel26.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel26.Font = Enum.Font.GothamBold
		TextLabel26.Text = "Delete Config"
		TextLabel26.TextColor3 = result[arg12.Theme].ItemTitleColor
		TextLabel26.TextSize = 14
		TextLabel26.TextWrapped = true
		TextLabel26.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel26.LayoutOrder = 1
		TextLabel26.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel27.Name = "ButtonDescription"
		TextLabel27.Parent = TextButton10
		TextLabel27.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel27.BackgroundTransparency = 1
		TextLabel27.BorderColor3 = Color3.fromRGB(43, 43, 41)
		TextLabel27.BorderSizePixel = 0
		TextLabel27.Position = UDim2.new(0, 0, 0.5, 0)
		TextLabel27.Size = UDim2.new(0.854911864, 0, 0, 0)
		TextLabel27.Font = Enum.Font.Gotham
		TextLabel27.Text = "Delete a config file."
		TextLabel27.TextColor3 = result[arg12.Theme].ItemDescriptionColor
		TextLabel27.TextSize = 14
		TextLabel27.TextWrapped = true
		TextLabel27.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel27.LayoutOrder = 2
		TextLabel27.AutomaticSize = Enum.AutomaticSize.Y
		UIPadding29.Parent = TextButton10
		UIPadding29.PaddingLeft = UDim.new(0, 15)
		UIListLayout23.Parent = TextButton10
		UIListLayout23.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout23.VerticalAlignment = Enum.VerticalAlignment.Center
		UIPadding30.Parent = Frame43
		UIPadding30.PaddingBottom = UDim.new(0, 10)
		UIPadding30.PaddingTop = UDim.new(0, 10)
		UICorner35.CornerRadius = UDim.new(0, 10)
		UICorner35.Parent = Frame43
		ImageLabel11.Name = "ClickIcon"
		ImageLabel11.Parent = Frame43
		ImageLabel11.AnchorPoint = Vector2.new(1, 0.5)
		ImageLabel11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel11.BackgroundTransparency = 1
		ImageLabel11.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel11.BorderSizePixel = 0
		ImageLabel11.Position = UDim2.new(1, -10, 0.5, 0)
		ImageLabel11.Size = UDim2.new(0, 33, 0, 33)
		ImageLabel11.Image = "rbxassetid://13570069771"
		ImageLabel11.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
		BindableEvent.Event:Connect(function(arg41)
			local tween128 = TweenService:Create(Frame43, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg41].ItemBackgroundColor })
			tween128:Play()
			local tween129 = TweenService:Create(TextLabel26, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg41].ItemTitleColor })
			tween129:Play()
			local tween130 = TweenService:Create(TextLabel27, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg41].ItemDescriptionColor })
			tween130:Play()
			local tween131 = TweenService:Create(ImageLabel11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg41].ItemElementsTextColor })
			tween131:Play()
		end)
		TextLabel26.Visible = true
		TextLabel27.Visible = true
		Frame43.MouseEnter:Connect(function(arg42)
			local tween132 = TweenService:Create(Frame43, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
			tween132:Play()
		end)
		Frame43.MouseLeave:Connect(function(arg43)
			local tween133 = TweenService:Create(Frame43, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
			tween133:Play()
		end)
		return {
			CreateTab = function(arg44, arg45)
				local Frame44 = Instance.new("Frame")
				local UICorner36 = Instance.new("UICorner")
				local TextButton11 = Instance.new("TextButton")
				local TextLabel28 = Instance.new("TextLabel")
				local Frame45 = Instance.new("Frame")
				local UICorner37 = Instance.new("UICorner")
				local UIPadding31 = Instance.new("UIPadding")
				local ScrollingFrame6 = Instance.new("ScrollingFrame")
				local UIListLayout24 = Instance.new("UIListLayout")
				local UIPadding32 = Instance.new("UIPadding")
				Frame44.Name = "TabBtnFrame"
				Frame44.Parent = ScrollingFrame
				Frame44.BackgroundColor3 = result[arg12.Theme].TabBackground
				Frame44.BorderColor3 = result[arg12.Theme].TabBackground
				Frame44.BorderSizePixel = 0
				Frame44.Size = UDim2.new(0, 140, 0, 0)
				Frame44.BackgroundTransparency = 1
				Frame44.AutomaticSize = Enum.AutomaticSize.Y
				Frame44.ClipsDescendants = true
				UICorner36.Parent = Frame44
				TextButton11.Name = "TabButton"
				TextButton11.Parent = Frame44
				TextButton11.BackgroundColor3 = result[arg12.Theme].TabBackground
				TextButton11.BackgroundTransparency = 1
				TextButton11.BorderColor3 = result[arg12.Theme].TabBackground
				TextButton11.BorderSizePixel = 0
				TextButton11.Size = UDim2.new(1, 0, 0, 0)
				TextButton11.Font = Enum.Font.SourceSans
				TextButton11.Text = ""
				TextButton11.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton11.TextSize = 14
				TextButton11.TextTransparency = 1
				TextButton11.AutomaticSize = Enum.AutomaticSize.Y
				TextLabel28.Name = "TabText"
				TextLabel28.Parent = TextButton11
				TextLabel28.BackgroundColor3 = Color3.fromRGB(47, 46, 45)
				TextLabel28.BackgroundTransparency = 1
				TextLabel28.BorderColor3 = Color3.fromRGB(47, 46, 45)
				TextLabel28.BorderSizePixel = 0
				TextLabel28.Font = Enum.Font.Gotham
				TextLabel28.Text = arg45.Title
				TextLabel28.TextColor3 = result[arg12.Theme].TabTextColor
				TextLabel28.TextSize = 15
				TextLabel28.TextWrapped = true
				TextLabel28.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel28.AutomaticSize = Enum.AutomaticSize.Y
				Frame45.Name = "Selected"
				Frame45.Parent = TextButton11
				Frame45.AnchorPoint = Vector2.new(0, 0.5)
				Frame45.BackgroundColor3 = result[arg12.Theme].SelectedColor
				Frame45.BackgroundTransparency = 0.04
				Frame45.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame45.BorderSizePixel = 0
				Frame45.Position = UDim2.new(0, 0, 0.5, 0)
				Frame45.Size = UDim2.new(0, 5, 0, 16)
				Frame45.BackgroundTransparency = 1
				UICorner37.Parent = Frame45
				UIPadding31.Parent = Frame44
				UIPadding31.PaddingBottom = UDim.new(0, 10)
				UIPadding31.PaddingTop = UDim.new(0, 10)
				ScrollingFrame6.Name = "Page"
				ScrollingFrame6.Parent = Frame20
				ScrollingFrame6.Active = true
				ScrollingFrame6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				ScrollingFrame6.BackgroundTransparency = 1
				ScrollingFrame6.BorderColor3 = Color3.fromRGB(25, 25, 25)
				ScrollingFrame6.BorderSizePixel = 0
				ScrollingFrame6.Size = UDim2.new(1, 0, 1, 0)
				ScrollingFrame6.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
				ScrollingFrame6.BottomImage = ""
				ScrollingFrame6.CanvasSize = UDim2.new(0, 0, 0, 300)
				ScrollingFrame6.MidImage = ""
				ScrollingFrame6.ScrollBarThickness = 0
				ScrollingFrame6.TopImage = ""
				ScrollingFrame6.Visible = false
				ScrollingFrame6.AutomaticCanvasSize = Enum.AutomaticSize.Y
				UIListLayout24.Parent = ScrollingFrame6
				UIListLayout24.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout24.Padding = UDim.new(0, 8)
				UIListLayout24.HorizontalAlignment = Enum.HorizontalAlignment.Left
				UIPadding32.Parent = ScrollingFrame6
				UIPadding32.PaddingBottom = UDim.new(0, 10)
				UIPadding32.PaddingLeft = UDim.new(0, 15)
				UIPadding32.PaddingTop = UDim.new(0, 10)
				local ImageLabel12 = Instance.new("ImageLabel")
				ImageLabel12.Name = "BtnIcon"
				ImageLabel12.Parent = TextButton11
				ImageLabel12.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel12.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				ImageLabel12.BackgroundTransparency = 1
				ImageLabel12.BorderColor3 = Color3.fromRGB(43, 43, 43)
				ImageLabel12.BorderSizePixel = 0
				ImageLabel12.Size = UDim2.new(0, 17, 0, 17)
				ImageLabel12.Image = arg45.Icon
				ImageLabel12.ImageTransparency = 0
				ImageLabel12.ImageColor3 = result[arg12.Theme].TabIconColor
				ImageLabel12.Position = UDim2.new(0.07, 0, 0.5, 0)
				TextLabel28.Position = UDim2.new(0.221, 0, 0, 0)
				TextLabel28.Size = UDim2.new(0, 98, 0, 0)
				Frame44.BackgroundTransparency = 0
				Frame45.BackgroundTransparency = 0.04
				ScrollingFrame6.Visible = true
				TextButton11.MouseButton1Click:Connect(function()
				end)
				BindableEvent.Event:Connect(function(arg46)
					local tween134 = TweenService:Create(Frame44, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg46].TabBackground })
					tween134:Play()
					local tween135 = TweenService:Create(TextButton11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg46].TabBackground })
					tween135:Play()
					local tween136 = TweenService:Create(TextLabel28, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg46].TabTextColor })
					tween136:Play()
					local tween137 = TweenService:Create(Frame45, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg46].SelectedColor })
					tween137:Play()
				end)
				return {
					Instance = ScrollingFrame6,
					CreateButton = function(arg47, arg48)
						local Frame46 = Instance.new("Frame")
						local TextButton12 = Instance.new("TextButton")
						local TextLabel29 = Instance.new("TextLabel")
						local TextLabel30 = Instance.new("TextLabel")
						local UIPadding33 = Instance.new("UIPadding")
						local UIListLayout25 = Instance.new("UIListLayout")
						local UIPadding34 = Instance.new("UIPadding")
						local UICorner38 = Instance.new("UICorner")
						local ImageLabel13 = Instance.new("ImageLabel")
						Frame46.Name = "Button"
						Frame46.Parent = arg47.Instance
						Frame46.Active = true
						Frame46.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame46.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame46.BorderSizePixel = 0
						Frame46.Size = UDim2.new(1, -15, 0, 0)
						Frame46.AutomaticSize = Enum.AutomaticSize.Y
						TextButton12.Name = "ButtonClick"
						TextButton12.Parent = Frame46
						TextButton12.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton12.BackgroundTransparency = 1
						TextButton12.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton12.BorderSizePixel = 0
						TextButton12.Size = UDim2.new(1, 0, 0, 0)
						TextButton12.AutoButtonColor = false
						TextButton12.Font = Enum.Font.SourceSans
						TextButton12.Text = ""
						TextButton12.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton12.TextSize = 14
						TextButton12.AutomaticSize = Enum.AutomaticSize.Y
						TextButton12.MouseButton1Click:Connect(function()
							arg48.Callback()
						end)
						TextLabel29.Name = "ButtonTitle"
						TextLabel29.Parent = TextButton12
						TextLabel29.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel29.BackgroundTransparency = 1
						TextLabel29.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel29.BorderSizePixel = 0
						TextLabel29.Position = UDim2.new(0, 0, 0.122222051, 0)
						TextLabel29.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel29.Font = Enum.Font.GothamBold
						TextLabel29.Text = tostring(arg48.Title)
						TextLabel29.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel29.TextSize = 14
						TextLabel29.TextWrapped = true
						TextLabel29.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel29.LayoutOrder = 1
						TextLabel29.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel30.Name = "ButtonDescription"
						TextLabel30.Parent = TextButton12
						TextLabel30.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel30.BackgroundTransparency = 1
						TextLabel30.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel30.BorderSizePixel = 0
						TextLabel30.Position = UDim2.new(0, 0, 0.5, 0)
						TextLabel30.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel30.Font = Enum.Font.Gotham
						TextLabel30.Text = tostring(arg48.Description)
						TextLabel30.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel30.TextSize = 14
						TextLabel30.TextWrapped = true
						TextLabel30.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel30.LayoutOrder = 2
						TextLabel30.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding33.Parent = TextButton12
						UIPadding33.PaddingLeft = UDim.new(0, 15)
						UIListLayout25.Parent = TextButton12
						UIListLayout25.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout25.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding34.Parent = Frame46
						UIPadding34.PaddingBottom = UDim.new(0, 10)
						UIPadding34.PaddingTop = UDim.new(0, 10)
						UICorner38.CornerRadius = UDim.new(0, 10)
						UICorner38.Parent = Frame46
						ImageLabel13.Name = "ClickIcon"
						ImageLabel13.Parent = Frame46
						ImageLabel13.AnchorPoint = Vector2.new(1, 0.5)
						ImageLabel13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel13.BackgroundTransparency = 1
						ImageLabel13.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ImageLabel13.BorderSizePixel = 0
						ImageLabel13.Position = UDim2.new(1, -10, 0.5, 0)
						ImageLabel13.Size = UDim2.new(0, 33, 0, 33)
						ImageLabel13.Image = "rbxassetid://13570069771"
						ImageLabel13.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
						BindableEvent.Event:Connect(function(arg49)
							local tween138 = TweenService:Create(Frame46, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg49].ItemBackgroundColor })
							tween138:Play()
							local tween139 = TweenService:Create(TextLabel29, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg49].ItemTitleColor })
							tween139:Play()
							local tween140 = TweenService:Create(TextLabel30, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg49].ItemDescriptionColor })
							tween140:Play()
							local tween141 = TweenService:Create(ImageLabel13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg49].ItemElementsTextColor })
							tween141:Play()
						end)
						TextLabel29.Visible = true
						TextLabel30.Visible = true
						Frame46.MouseEnter:Connect(function(arg50)
							local tween142 = TweenService:Create(Frame46, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween142:Play()
						end)
						Frame46.MouseLeave:Connect(function(arg51)
							local tween143 = TweenService:Create(Frame46, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween143:Play()
						end)
						return {
							UpdateButton = function(arg52, arg53)
								TextLabel29.Visible = true
								TextLabel30.Visible = true
								TextLabel29.Text = tostring(arg53.NewTitle)
								TextLabel30.Text = tostring(arg53.NewDescription)
							end
						}
					end,
					CreateCheckBox = function(arg54, arg55)
						local Frame47 = Instance.new("Frame")
						local TextButton13 = Instance.new("TextButton")
						local UIListLayout26 = Instance.new("UIListLayout")
						local UIPadding35 = Instance.new("UIPadding")
						local TextLabel31 = Instance.new("TextLabel")
						local TextLabel32 = Instance.new("TextLabel")
						local UIPadding36 = Instance.new("UIPadding")
						local UICorner39 = Instance.new("UICorner")
						local Frame48 = Instance.new("Frame")
						local UICorner40 = Instance.new("UICorner")
						local UIStroke7 = Instance.new("UIStroke")
						local ImageLabel14 = Instance.new("ImageLabel")
						local UICorner41 = Instance.new("UICorner")
						Frame47.Name = "Checkbox"
						Frame47.Parent = arg54.Instance
						Frame47.Active = true
						Frame47.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame47.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame47.BorderSizePixel = 0
						Frame47.Size = UDim2.new(1, -15, 0, 0)
						Frame47.AutomaticSize = Enum.AutomaticSize.Y
						TextButton13.Name = "CheckBoxToggle"
						TextButton13.Parent = Frame47
						TextButton13.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton13.BackgroundTransparency = 1
						TextButton13.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton13.BorderSizePixel = 0
						TextButton13.Size = UDim2.new(1, 0, 0, 0)
						TextButton13.AutoButtonColor = false
						TextButton13.Font = Enum.Font.SourceSans
						TextButton13.Text = ""
						TextButton13.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton13.TextSize = 14
						TextButton13.AutomaticSize = Enum.AutomaticSize.Y
						UIListLayout26.Parent = TextButton13
						UIListLayout26.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout26.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding35.Parent = TextButton13
						UIPadding35.PaddingLeft = UDim.new(0, 15)
						TextLabel31.Name = "CheckBoxTitle"
						TextLabel31.Parent = TextButton13
						TextLabel31.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel31.BackgroundTransparency = 1
						TextLabel31.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel31.BorderSizePixel = 0
						TextLabel31.Position = UDim2.new(8.46417336e-08, 0, 0, 0)
						TextLabel31.Size = UDim2.new(0.880737662, 0, 0, 0)
						TextLabel31.Font = Enum.Font.GothamBold
						TextLabel31.Text = tostring(arg55.Title)
						TextLabel31.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel31.TextSize = 14
						TextLabel31.TextWrapped = true
						TextLabel31.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel31.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel32.Name = "CheckBoxDescription"
						TextLabel32.Parent = TextButton13
						TextLabel32.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel32.BackgroundTransparency = 1
						TextLabel32.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel32.BorderSizePixel = 0
						TextLabel32.Position = UDim2.new(8.46417336e-08, 0, 0.500000238, 0)
						TextLabel32.Size = UDim2.new(0.880737662, 0, 0, 0)
						TextLabel32.Font = Enum.Font.Gotham
						TextLabel32.Text = tostring(arg55.Description)
						TextLabel32.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel32.TextSize = 14
						TextLabel32.TextWrapped = true
						TextLabel32.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel32.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding36.Parent = Frame47
						UIPadding36.PaddingBottom = UDim.new(0, 10)
						UIPadding36.PaddingTop = UDim.new(0, 10)
						UICorner39.CornerRadius = UDim.new(0, 10)
						UICorner39.Parent = Frame47
						Frame48.Name = "ToggleIconer"
						Frame48.Parent = Frame47
						Frame48.AnchorPoint = Vector2.new(1, 0.5)
						Frame48.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame48.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame48.BorderSizePixel = 0
						Frame48.Position = UDim2.new(1, -14, 0.5, 0)
						Frame48.Size = UDim2.new(0, 22, 0, 22)
						UICorner40.CornerRadius = UDim.new(0, 4)
						UICorner40.Parent = Frame48
						UIStroke7.Parent = Frame48
						UIStroke7.Color = result[arg12.Theme].ItemStrokeColor
						UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						ImageLabel14.Name = "done"
						ImageLabel14.Parent = Frame48
						ImageLabel14.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						ImageLabel14.BackgroundTransparency = 1
						ImageLabel14.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						ImageLabel14.Position = UDim2.new(0.0909090936, 0, 0.0909090936, 0)
						ImageLabel14.Size = UDim2.new(0, 18, 0, 18)
						ImageLabel14.ZIndex = 2
						ImageLabel14.Image = "rbxassetid://3926305904"
						ImageLabel14.ImageColor3 = result[arg12.Theme].ItemElementsTextColor
						ImageLabel14.ImageRectOffset = Vector2.new(644, 204)
						ImageLabel14.ImageRectSize = Vector2.new(36, 36)
						ImageLabel14.ImageTransparency = 1
						UICorner41.CornerRadius = UDim.new(0, 4)
						UICorner41.Parent = ImageLabel14
						BindableEvent.Event:Connect(function(arg56)
							local tween144 = TweenService:Create(Frame47, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg56].ItemBackgroundColor })
							tween144:Play()
							local tween145 = TweenService:Create(TextLabel31, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg56].ItemTitleColor })
							tween145:Play()
							local tween146 = TweenService:Create(TextLabel32, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg56].ItemDescriptionColor })
							tween146:Play()
							local tween147 = TweenService:Create(Frame48, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg56].ItemElementsBackgroundColor })
							tween147:Play()
							local tween148 = TweenService:Create(ImageLabel14, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg56].ItemElementsTextColor })
							tween148:Play()
							local tween149 = TweenService:Create(UIStroke7, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg56].ItemStrokeColor })
							tween149:Play()
						end)
						TextLabel31.Visible = true
						TextLabel32.Visible = true
						Frame47.MouseEnter:Connect(function(arg57)
							local tween150 = TweenService:Create(Frame47, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween150:Play()
						end)
						Frame47.MouseLeave:Connect(function(arg58)
							local tween151 = TweenService:Create(Frame47, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween151:Play()
						end)
						TextButton13.MouseButton1Click:Connect(function()
							arg55.Callback(arg55.Status)
						end)
						return {
							SetStatus = function(arg59, arg60)
								arg55.Callback(arg60)
							end
						}
					end,
					CreateColorPicker = function(arg61, arg62)
						local Frame49 = Instance.new("Frame")
						local TextButton14 = Instance.new("TextButton")
						local UIListLayout27 = Instance.new("UIListLayout")
						local UIPadding37 = Instance.new("UIPadding")
						local TextLabel33 = Instance.new("TextLabel")
						local TextLabel34 = Instance.new("TextLabel")
						local UIPadding38 = Instance.new("UIPadding")
						local UICorner42 = Instance.new("UICorner")
						local Frame50 = Instance.new("Frame")
						local UICorner43 = Instance.new("UICorner")
						local Frame51 = Instance.new("Frame")
						local UICorner44 = Instance.new("UICorner")
						local ImageLabel15 = Instance.new("ImageLabel")
						local UICorner45 = Instance.new("UICorner")
						local UIGradient = Instance.new("UIGradient")
						local ImageLabel16 = Instance.new("ImageLabel")
						local ImageLabel17 = Instance.new("ImageLabel")
						local UICorner46 = Instance.new("UICorner")
						local ImageLabel18 = Instance.new("ImageLabel")
						local TextButton15 = Instance.new("TextButton")
						local UICorner47 = Instance.new("UICorner")
						local TextButton16 = Instance.new("TextButton")
						local UICorner48 = Instance.new("UICorner")
						local TextLabel35 = Instance.new("TextLabel")
						local Frame52 = Instance.new("Frame")
						local UICorner49 = Instance.new("UICorner")
						local Frame53 = Instance.new("Frame")
						local UICorner50 = Instance.new("UICorner")
						local Frame54 = Instance.new("Frame")
						local UICorner51 = Instance.new("UICorner")
						Frame49.Name = "Colorpicker"
						Frame49.Parent = arg61.Instance
						Frame49.Active = true
						Frame49.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame49.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame49.BorderSizePixel = 0
						Frame49.Size = UDim2.new(1, -15, 0, 0)
						Frame49.AutomaticSize = Enum.AutomaticSize.Y
						TextButton14.Name = "ColorpickerButton"
						TextButton14.Parent = Frame49
						TextButton14.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton14.BackgroundTransparency = 1
						TextButton14.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton14.BorderSizePixel = 0
						TextButton14.Size = UDim2.new(1, 0, 0, 0)
						TextButton14.AutoButtonColor = false
						TextButton14.Font = Enum.Font.SourceSans
						TextButton14.Text = ""
						TextButton14.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton14.TextSize = 14
						TextButton14.AutomaticSize = Enum.AutomaticSize.Y
						UIListLayout27.Parent = TextButton14
						UIListLayout27.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout27.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding37.Parent = TextButton14
						UIPadding37.PaddingLeft = UDim.new(0, 15)
						TextLabel33.Name = "ColorPickerTitle"
						TextLabel33.Parent = TextButton14
						TextLabel33.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel33.BackgroundTransparency = 1
						TextLabel33.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel33.BorderSizePixel = 0
						TextLabel33.Position = UDim2.new(-8.46417336e-08, 0, 0, 0)
						TextLabel33.Size = UDim2.new(0.797531486, 0, 0, 0)
						TextLabel33.Font = Enum.Font.GothamBold
						TextLabel33.Text = tostring(arg62.Title)
						TextLabel33.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel33.TextSize = 14
						TextLabel33.TextWrapped = true
						TextLabel33.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel33.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel33.LayoutOrder = 1
						TextLabel34.Name = "ColorPickerDescription"
						TextLabel34.Parent = TextButton14
						TextLabel34.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel34.BackgroundTransparency = 1
						TextLabel34.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel34.BorderSizePixel = 0
						TextLabel34.Position = UDim2.new(-8.46417336e-08, 0, 0.500000238, 0)
						TextLabel34.Size = UDim2.new(0.797531486, 0, 0, 0)
						TextLabel34.Font = Enum.Font.Gotham
						TextLabel34.Text = tostring(arg62.Description)
						TextLabel34.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel34.TextSize = 14
						TextLabel34.TextWrapped = true
						TextLabel34.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel34.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel34.LayoutOrder = 2
						UIPadding38.Parent = Frame49
						UIPadding38.PaddingBottom = UDim.new(0, 10)
						UIPadding38.PaddingTop = UDim.new(0, 10)
						UICorner42.CornerRadius = UDim.new(0, 10)
						UICorner42.Parent = Frame49
						Frame50.Name = "Boxcolor"
						Frame50.Parent = Frame49
						Frame50.AnchorPoint = Vector2.new(1, 0.5)
						Frame50.BackgroundColor3 = arg62.CurrentColor
						Frame50.Position = UDim2.new(1, -13, 0.5, 0)
						Frame50.Size = UDim2.new(0, 51, 0, 25)
						UICorner43.CornerRadius = UDim.new(0, 6)
						UICorner43.Name = "BoxcolorCorner"
						UICorner43.Parent = Frame50
						Frame51.Name = "ColorpickerFrame"
						Frame51.Parent = arg61.Instance
						Frame51.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame51.BackgroundTransparency = 0.2
						Frame51.BorderSizePixel = 0
						Frame51.ClipsDescendants = true
						Frame51.Position = UDim2.new(0, 0, 2.46282744, 0)
						Frame51.Size = UDim2.new(1, -15, 0, 0)
						Frame51.Visible = false
						UICorner44.Name = "DropdownFrameCorner"
						UICorner44.Parent = Frame51
						ImageLabel15.Name = "Hue"
						ImageLabel15.Parent = Frame51
						ImageLabel15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel15.Position = UDim2.new(0, 209, 0, 9)
						ImageLabel15.Size = UDim2.new(0, 25, 0, 80)
						UICorner45.CornerRadius = UDim.new(0, 3)
						UICorner45.Name = "HueCorner"
						UICorner45.Parent = ImageLabel15
						UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4)) })
						UIGradient.Rotation = 270
						UIGradient.Name = "HueGradient"
						UIGradient.Parent = ImageLabel15
						ImageLabel16.Name = "HueSelection"
						ImageLabel16.Parent = ImageLabel15
						ImageLabel16.AnchorPoint = Vector2.new(0.5, 0.5)
						ImageLabel16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel16.BackgroundTransparency = 1
						ImageLabel16.Position = UDim2.new(0.479999989, 0, 0, 0)
						ImageLabel16.Size = UDim2.new(0, 18, 0, 18)
						ImageLabel16.Image = "http://www.roblox.com/asset/?id=4805639000"
						ImageLabel17.Name = "Color"
						ImageLabel17.Parent = Frame51
						ImageLabel17.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						ImageLabel17.Position = UDim2.new(0, 9, 0, 9)
						ImageLabel17.Size = UDim2.new(0, 194, 0, 80)
						ImageLabel17.ZIndex = 10
						ImageLabel17.Image = "rbxassetid://4155801252"
						UICorner46.CornerRadius = UDim.new(0, 3)
						UICorner46.Name = "ColorCorner"
						UICorner46.Parent = ImageLabel17
						ImageLabel18.Name = "ColorSelection"
						ImageLabel18.Parent = ImageLabel17
						ImageLabel18.AnchorPoint = Vector2.new(0.5, 0.5)
						ImageLabel18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel18.BackgroundTransparency = 1
						ImageLabel18.Position = UDim2.new(1, 0, 0, 0)
						ImageLabel18.Size = UDim2.new(0, 18, 0, 18)
						ImageLabel18.Image = "http://www.roblox.com/asset/?id=4805639000"
						ImageLabel18.ScaleType = Enum.ScaleType.Fit
						TextButton15.Name = "Confirm"
						TextButton15.Parent = Frame51
						TextButton15.AnchorPoint = Vector2.new(1, 0)
						TextButton15.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
						TextButton15.BackgroundTransparency = 1
						TextButton15.Position = UDim2.new(1, 0, 0.0900000036, 0)
						TextButton15.Size = UDim2.new(0, 145, 0, 27)
						TextButton15.AutoButtonColor = false
						TextButton15.Font = Enum.Font.Gotham
						TextButton15.Text = "Confirm"
						TextButton15.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextButton15.TextSize = 14
						UICorner47.Name = "ButtonCorner"
						UICorner47.Parent = TextButton15
						TextButton16.Name = "RainbowToggle"
						TextButton16.Parent = Frame51
						TextButton16.AnchorPoint = Vector2.new(1, 0)
						TextButton16.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
						TextButton16.BackgroundTransparency = 1
						TextButton16.Position = UDim2.new(1, 0, 0.431324542, 0)
						TextButton16.Size = UDim2.new(0, 145, 0, 27)
						TextButton16.AutoButtonColor = false
						TextButton16.Font = Enum.Font.Gotham
						TextButton16.Text = ""
						TextButton16.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextButton16.TextSize = 14
						UICorner48.Name = "RainbowToggleCorner"
						UICorner48.Parent = TextButton16
						TextLabel35.Name = "RainbowTitle"
						TextLabel35.Parent = TextButton16
						TextLabel35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel35.BackgroundTransparency = 1
						TextLabel35.Position = UDim2.new(0.100000001, 0, 0, 0)
						TextLabel35.Size = UDim2.new(0, 29, 0, 27)
						TextLabel35.Font = Enum.Font.Gotham
						TextLabel35.Text = "Rainbow"
						TextLabel35.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel35.TextSize = 14
						TextLabel35.TextXAlignment = Enum.TextXAlignment.Left
						Frame52.Name = "RainbowToggleFrame"
						Frame52.Parent = TextButton16
						Frame52.BackgroundColor3 = result[arg12.Theme].RainbowToggleOffColor
						Frame52.Position = UDim2.new(0.693000019, 0, 0.142857149, 0)
						Frame52.Size = UDim2.new(0, 36, 0, 19)
						UICorner49.CornerRadius = UDim.new(1, 0)
						UICorner49.Name = "RainbowToggleFrameCorner"
						UICorner49.Parent = Frame52
						Frame53.Name = "RainbowToggleFrameRainbow"
						Frame53.Parent = Frame52
						Frame53.BackgroundColor3 = result[arg12.Theme].RainbowToggleOnColor
						Frame53.BackgroundTransparency = 1
						Frame53.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
						Frame53.Size = UDim2.new(0, 36, 0, 19)
						UICorner50.CornerRadius = UDim.new(1, 0)
						UICorner50.Name = "RainbowToggleFrameRainbowCorner"
						UICorner50.Parent = Frame53
						Frame54.Name = "RainbowToggleDot"
						Frame54.Parent = Frame53
						Frame54.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Frame54.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
						Frame54.Size = UDim2.new(0, 16, 0, 16)
						UICorner51.CornerRadius = UDim.new(1, 0)
						UICorner51.Name = "RainbowToggleDotCorner"
						UICorner51.Parent = Frame54
						Frame49.MouseEnter:Connect(function(arg63)
							local tween152 = TweenService:Create(Frame49, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween152:Play()
						end)
						Frame49.MouseLeave:Connect(function(arg64)
							local tween153 = TweenService:Create(Frame49, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween153:Play()
						end)
						TextLabel33.Visible = true
						TextLabel34.Visible = true
						BindableEvent.Event:Connect(function(arg65)
							local tween154 = TweenService:Create(Frame49, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg65].ItemBackgroundColor })
							tween154:Play()
							local tween155 = TweenService:Create(TextLabel33, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg65].ItemTitleColor })
							tween155:Play()
							local tween156 = TweenService:Create(TextLabel34, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg65].ItemDescriptionColor })
							tween156:Play()
							local tween157 = TweenService:Create(Frame51, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg65].ItemBackgroundColor })
							tween157:Play()
							local tween158 = TweenService:Create(TextButton15, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg65].ItemTitleColor })
							tween158:Play()
							local tween159 = TweenService:Create(TextLabel35, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg65].ItemTitleColor })
							tween159:Play()
							local tween160 = TweenService:Create(Frame52, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg65].RainbowToggleOffColor })
							tween160:Play()
							local tween161 = TweenService:Create(Frame53, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg65].RainbowToggleOnColor })
							tween161:Play()
						end)
						Frame50.BackgroundColor3 = arg62.CurrentColor
						ImageLabel17.BackgroundColor3 = arg62.CurrentColor
						arg62.Callback(arg62.CurrentColor)
						ImageLabel17.InputBegan:Connect(function(input8, gameProcessed8)
						end)
						ImageLabel17.InputChanged:Connect(function(input9, gameProcessed9)
						end)
						ImageLabel17.InputEnded:Connect(function(input10, gameProcessed10)
						end)
						ImageLabel15.InputBegan:Connect(function(input11, gameProcessed11)
						end)
						ImageLabel15.InputChanged:Connect(function(input12, gameProcessed12)
						end)
						ImageLabel15.InputEnded:Connect(function(input13, gameProcessed13)
							ScrollingFrame6.ScrollingEnabled = true
							CoreGui:FindFirstChild("Hawk")
						end)
						TextButton16.MouseButton1Click:Connect(function()
							local tween162 = TweenService:Create(Frame53, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
							tween162:Play()
							local tween163 = TweenService:Create(Frame54, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0.595, -3, 0.289000005, -4) })
							tween163:Play()
							Frame50.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
							ImageLabel17.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
							ImageLabel18.Position = UDim2.new(1, 0, 0, 0)
							ImageLabel16.Position = UDim2.new(0.48, 0, 0, 1)
							arg62.Callback(Color3.fromHSV(0, 1, 1))
							wait()
							Frame50.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
							ImageLabel17.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
							ImageLabel18.Position = UDim2.new(1, 0, 0, 0)
							ImageLabel16.Position = UDim2.new(0.48, 0, 0, 1)
							arg62.Callback(Color3.fromHSV(0, 1, 1))
							wait()
						end)
						TextButton14.MouseButton1Click:Connect(function()
							Frame51.Visible = true
							local tween164 = TweenService:Create(Frame51, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 91) })
							tween164:Play()
							tween164.Completed:Wait()
						end)
						TextButton15.MouseButton1Click:Connect(function()
							local tween165 = TweenService:Create(Frame51, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) })
							tween165:Play()
							tween165.Completed:Wait()
							Frame51.Visible = false
							ScrollingFrame6.ScrollingEnabled = true
						end)
						return {
							SetColor = function(arg66, arg67)
								local result2 = arg67:ToHSV()
								Frame50.BackgroundColor3 = arg67
								ImageLabel17.BackgroundColor3 = Color3.fromHSV(result2, 1, 1)
							end
						}
					end,
					CreateDropdown = function(arg68, arg69)
						local Frame55 = Instance.new("Frame")
						local TextButton17 = Instance.new("TextButton")
						local TextLabel36 = Instance.new("TextLabel")
						local TextLabel37 = Instance.new("TextLabel")
						local UIPadding39 = Instance.new("UIPadding")
						local UIListLayout28 = Instance.new("UIListLayout")
						local UIPadding40 = Instance.new("UIPadding")
						local UICorner52 = Instance.new("UICorner")
						local TextLabel38 = Instance.new("TextLabel")
						local Frame56 = Instance.new("Frame")
						local UICorner53 = Instance.new("UICorner")
						local UIListLayout29 = Instance.new("UIListLayout")
						local UIPadding41 = Instance.new("UIPadding")
						local Frame57 = Instance.new("Frame")
						local UIListLayout30 = Instance.new("UIListLayout")
						local ImageLabel19 = Instance.new("ImageLabel")
						local TextBox4 = Instance.new("TextBox")
						local TextLabel39 = Instance.new("TextLabel")
						local ScrollingFrame7 = Instance.new("ScrollingFrame")
						local UIListLayout31 = Instance.new("UIListLayout")
						local ScrollingFrame8 = Instance.new("ScrollingFrame")
						local UIListLayout32 = Instance.new("UIListLayout")
						Frame55.Name = "Dropdown"
						Frame55.Parent = arg68.Instance
						Frame55.Active = true
						Frame55.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame55.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame55.BorderSizePixel = 0
						Frame55.Size = UDim2.new(1, -15, 0, 0)
						Frame55.AutomaticSize = Enum.AutomaticSize.Y
						TextButton17.Name = "DropdownButton"
						TextButton17.Parent = Frame55
						TextButton17.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton17.BackgroundTransparency = 1
						TextButton17.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton17.BorderSizePixel = 0
						TextButton17.Size = UDim2.new(1, 0, 0, 0)
						TextButton17.AutoButtonColor = false
						TextButton17.Font = Enum.Font.SourceSans
						TextButton17.Text = ""
						TextButton17.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton17.TextSize = 14
						TextButton17.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel36.Name = "DropdownTitle"
						TextLabel36.Parent = TextButton17
						TextLabel36.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel36.BackgroundTransparency = 1
						TextLabel36.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel36.BorderSizePixel = 0
						TextLabel36.Position = UDim2.new(0, 0, 0.122222051, 0)
						TextLabel36.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel36.Font = Enum.Font.GothamBold
						TextLabel36.Text = tostring(arg69.Title)
						TextLabel36.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel36.TextSize = 14
						TextLabel36.TextWrapped = true
						TextLabel36.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel36.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel36.LayoutOrder = 1
						TextLabel37.Name = "DropdownDescription"
						TextLabel37.Parent = TextButton17
						TextLabel37.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel37.BackgroundTransparency = 1
						TextLabel37.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel37.BorderSizePixel = 0
						TextLabel37.Position = UDim2.new(0, 0, 0.5, 0)
						TextLabel37.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel37.Font = Enum.Font.Gotham
						TextLabel37.Text = tostring(arg69.Description)
						TextLabel37.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel37.TextSize = 14
						TextLabel37.TextWrapped = true
						TextLabel37.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel37.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel37.LayoutOrder = 2
						UIPadding39.Parent = TextButton17
						UIPadding39.PaddingLeft = UDim.new(0, 15)
						UIListLayout28.Parent = TextButton17
						UIListLayout28.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout28.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding40.Parent = Frame55
						UIPadding40.PaddingBottom = UDim.new(0, 10)
						UIPadding40.PaddingTop = UDim.new(0, 10)
						UICorner52.CornerRadius = UDim.new(0, 10)
						UICorner52.Parent = Frame55
						TextLabel38.Name = "DropIcon"
						TextLabel38.Parent = Frame55
						TextLabel38.AnchorPoint = Vector2.new(1, 0.5)
						TextLabel38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel38.BackgroundTransparency = 1
						TextLabel38.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextLabel38.BorderSizePixel = 0
						TextLabel38.Position = UDim2.new(1, -10, 0.5, 0)
						TextLabel38.Rotation = 0
						TextLabel38.Size = UDim2.new(0, 26, 0, 24)
						TextLabel38.Text = "+"
						TextLabel38.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel38.TextSize = 22
						Frame56.Name = "DropdownFrame"
						Frame56.Parent = arg68.Instance
						Frame56.Active = true
						Frame56.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame56.BackgroundTransparency = 0.2
						Frame56.BorderColor3 = Color3.fromRGB(35, 35, 35)
						Frame56.BorderSizePixel = 0
						Frame56.Size = UDim2.new(1, -15, 0, 0)
						Frame56.AutomaticSize = Enum.AutomaticSize.None
						Frame56.Visible = false
						UICorner53.CornerRadius = UDim.new(0, 10)
						UICorner53.Parent = Frame56
						UIListLayout29.Parent = Frame56
						UIListLayout29.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout29.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout29.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout29.VerticalAlignment = Enum.VerticalAlignment.Center
						UIListLayout29.Padding = UDim.new(0, 15)
						UIListLayout29.Wraps = true
						UIPadding41.Parent = Frame56
						UIPadding41.PaddingBottom = UDim.new(0, 15)
						UIPadding41.PaddingLeft = UDim.new(0, 15)
						UIPadding41.PaddingRight = UDim.new(0, 15)
						UIPadding41.PaddingTop = UDim.new(0, 15)
						Frame57.Name = "ItemSearcherFrame"
						Frame57.Parent = Frame56
						Frame57.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame57.BackgroundTransparency = 1
						Frame57.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame57.BorderSizePixel = 0
						Frame57.Position = UDim2.new(0, 0, 0, 0)
						Frame57.Size = UDim2.new(0.984, 0, 0.131, 16)
						Frame57.LayoutOrder = 1
						Frame57.AutomaticSize = Enum.AutomaticSize.Y
						UIListLayout30.Parent = Frame57
						UIListLayout30.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout30.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout30.Padding = UDim.new(0, 1)
						UIListLayout30.Wraps = true
						ImageLabel19.Name = "SearchIcon"
						ImageLabel19.Parent = Frame57
						ImageLabel19.BackgroundTransparency = 1
						ImageLabel19.BorderSizePixel = 0
						ImageLabel19.Position = UDim2.new(-0.063000001, 0, 0.0599999987, 0)
						ImageLabel19.Size = UDim2.new(0, 20, 0, 22)
						ImageLabel19.Image = "rbxassetid://118685771787843"
						ImageLabel19.ImageColor3 = result[arg12.Theme].ItemTitleColor
						ImageLabel19.LayoutOrder = 1
						ImageLabel19.ImageTransparency = 1
						TextBox4.Name = "Search"
						TextBox4.Parent = Frame57
						TextBox4.AnchorPoint = Vector2.new(1, 0)
						TextBox4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextBox4.BackgroundTransparency = 1
						TextBox4.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextBox4.BorderSizePixel = 0
						TextBox4.Position = UDim2.new(1, 0, 0.0291970801, 0)
						TextBox4.Size = UDim2.new(0.926606655, 0, 0, 23)
						TextBox4.ClearTextOnFocus = false
						TextBox4.Font = Enum.Font.SourceSans
						TextBox4.PlaceholderColor3 = result[arg12.Theme].ItemTitleColor
						TextBox4.PlaceholderText = "Search Item"
						TextBox4.Text = ""
						TextBox4.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextBox4.TextSize = 18
						TextBox4.TextXAlignment = Enum.TextXAlignment.Left
						TextBox4.LayoutOrder = 2
						TextBox4.TextTransparency = 1
						TextLabel39.Name = "SelectedText"
						TextLabel39.Parent = Frame57
						TextLabel39.Active = true
						TextLabel39.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextLabel39.BackgroundTransparency = 1
						TextLabel39.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextLabel39.BorderSizePixel = 0
						TextLabel39.Position = UDim2.new(8.52235189e-08, 0, 0.421052635, 0)
						TextLabel39.Size = UDim2.new(0, 60, 0, 24)
						TextLabel39.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
						TextLabel39.Text = "Selected: "
						TextLabel39.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel39.TextSize = 15
						TextLabel39.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
						TextLabel39.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel39.LayoutOrder = 3
						TextLabel39.TextTransparency = 1
						ScrollingFrame7.Name = "Selections"
						ScrollingFrame7.Parent = Frame57
						ScrollingFrame7.Active = true
						ScrollingFrame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ScrollingFrame7.BackgroundTransparency = 1
						ScrollingFrame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ScrollingFrame7.BorderSizePixel = 0
						ScrollingFrame7.Position = UDim2.new(0, 0, 0, 0)
						ScrollingFrame7.Size = UDim2.new(1, -61, 0, 33)
						ScrollingFrame7.CanvasSize = UDim2.new(0, 0, 0, 0)
						ScrollingFrame7.ScrollBarThickness = 3
						ScrollingFrame7.LayoutOrder = 4
						ScrollingFrame7.AutomaticCanvasSize = Enum.AutomaticSize.X
						ScrollingFrame7.ScrollBarImageTransparency = 1
						ScrollingFrame7.ClipsDescendants = true
						UIListLayout31.Parent = ScrollingFrame7
						UIListLayout31.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout31.Padding = UDim.new(0, 4)
						UIListLayout31.Wraps = true
						ScrollingFrame8.Name = "DropItemHolder"
						ScrollingFrame8.Parent = Frame56
						ScrollingFrame8.Active = true
						ScrollingFrame8.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
						ScrollingFrame8.BackgroundTransparency = 1
						ScrollingFrame8.BorderColor3 = Color3.fromRGB(32, 32, 32)
						ScrollingFrame8.BorderSizePixel = 0
						ScrollingFrame8.Position = UDim2.new(0, 0, 0.410693318, 0)
						ScrollingFrame8.Size = UDim2.new(1, 0, 0, 72)
						ScrollingFrame8.CanvasSize = UDim2.new(0, 0, 0, 60)
						ScrollingFrame8.ScrollBarThickness = 3
						ScrollingFrame8.LayoutOrder = 2
						ScrollingFrame8.AutomaticCanvasSize = Enum.AutomaticSize.Y
						ScrollingFrame8.ClipsDescendants = true
						ScrollingFrame8.ScrollBarImageTransparency = 1
						UIListLayout32.Parent = ScrollingFrame8
						UIListLayout32.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout32.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout32.Padding = UDim.new(0, 6)
						local changedSignal4 = TextBox4:GetPropertyChangedSignal("Text")
						changedSignal4:Connect(function(arg70)
							ScrollingFrame8:GetDescendants()
							ScrollingFrame8:GetDescendants()
						end)
						BindableEvent.Event:Connect(function(arg71)
							local tween166 = TweenService:Create(Frame55, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg71].ItemBackgroundColor })
							tween166:Play()
							local tween167 = TweenService:Create(TextLabel36, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg71].ItemTitleColor })
							tween167:Play()
							local tween168 = TweenService:Create(TextLabel37, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg71].ItemDescriptionColor })
							tween168:Play()
							local tween169 = TweenService:Create(TextLabel38, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg71].ItemTitleColor })
							tween169:Play()
							local tween170 = TweenService:Create(Frame56, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg71].ItemBackgroundColor })
							tween170:Play()
							local tween171 = TweenService:Create(ImageLabel19, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg71].ItemTitleColor })
							tween171:Play()
							local tween172 = TweenService:Create(TextBox4, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg71].ItemTitleColor })
							tween172:Play()
							TextBox4.PlaceholderColor3 = result[arg71].ItemTitleColor
							local tween173 = TweenService:Create(TextLabel39, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg71].ItemTitleColor })
							tween173:Play()
							ScrollingFrame8:GetChildren()
							ScrollingFrame7:GetChildren()
						end)
						Frame55.MouseEnter:Connect(function(arg72)
							local tween174 = TweenService:Create(Frame55, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween174:Play()
						end)
						Frame55.MouseLeave:Connect(function(arg73)
							local tween175 = TweenService:Create(Frame55, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween175:Play()
						end)
						TextLabel36.Visible = true
						TextLabel37.Visible = true
						TextButton17.MouseButton1Click:Connect(function()
							Frame56.Visible = true
							local tween176 = TweenService:Create(Frame56, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
							tween176:Play()
							local tween177 = TweenService:Create(TextLabel38, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Rotation = 225 })
							tween177:Play()
							task.wait(0.1)
							Frame56:GetDescendants()
							local tween178 = TweenService:Create(ImageLabel19, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 })
							tween178:Play()
							local tween179 = TweenService:Create(TextBox4, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween179:Play()
							local tween180 = TweenService:Create(TextLabel39, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween180:Play()
							local tween181 = TweenService:Create(ScrollingFrame7, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 0 })
							tween181:Play()
							local tween182 = TweenService:Create(ScrollingFrame8, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 0 })
							tween182:Play()
							Frame56.AutomaticSize = Enum.AutomaticSize.Y
						end)
						return {
							Clear = function(arg74, arg75)
								ScrollingFrame8:GetDescendants()
								ScrollingFrame7:GetDescendants()
							end,
							ClearSelections = function(arg76, arg77)
								ScrollingFrame7:GetDescendants()
								ScrollingFrame8:GetDescendants()
							end,
							Refresh = function(arg78, arg79)
								ScrollingFrame8:GetDescendants()
								ScrollingFrame7:GetDescendants()
							end,
							Select = function(arg80, arg81)
							end
						}
					end,
					CreateImage = function(arg82, arg83)
						local Frame58 = Instance.new("Frame")
						local TextButton18 = Instance.new("TextButton")
						local TextLabel40 = Instance.new("TextLabel")
						local TextLabel41 = Instance.new("TextLabel")
						local UIPadding42 = Instance.new("UIPadding")
						local UIListLayout33 = Instance.new("UIListLayout")
						local UIPadding43 = Instance.new("UIPadding")
						local UICorner54 = Instance.new("UICorner")
						local ImageLabel20 = Instance.new("ImageLabel")
						local Frame59 = Instance.new("Frame")
						local UICorner55 = Instance.new("UICorner")
						local ImageLabel21 = Instance.new("ImageLabel")
						local UICorner56 = Instance.new("UICorner")
						local UIStroke8 = Instance.new("UIStroke")
						local UIListLayout34 = Instance.new("UIListLayout")
						local Frame60 = Instance.new("Frame")
						local UIListLayout35 = Instance.new("UIListLayout")
						local TextLabel42 = Instance.new("TextLabel")
						local UIPadding44 = Instance.new("UIPadding")
						local UIPadding45 = Instance.new("UIPadding")
						Frame58.Name = "Image"
						Frame58.Parent = arg82.Instance
						Frame58.Active = true
						Frame58.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame58.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame58.BorderSizePixel = 0
						Frame58.Size = UDim2.new(1, -15, 0, 0)
						Frame58.AutomaticSize = Enum.AutomaticSize.Y
						TextButton18.Name = "ImageButton"
						TextButton18.Parent = Frame58
						TextButton18.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton18.BackgroundTransparency = 1
						TextButton18.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton18.BorderSizePixel = 0
						TextButton18.Size = UDim2.new(1, 0, 0, 0)
						TextButton18.AutoButtonColor = false
						TextButton18.Font = Enum.Font.SourceSans
						TextButton18.Text = ""
						TextButton18.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton18.TextSize = 14
						TextButton18.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel40.Name = "ImageTitle"
						TextLabel40.Parent = TextButton18
						TextLabel40.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel40.BackgroundTransparency = 1
						TextLabel40.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel40.BorderSizePixel = 0
						TextLabel40.Position = UDim2.new(0, 0, 0.122222051, 0)
						TextLabel40.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel40.Font = Enum.Font.GothamBold
						TextLabel40.Text = tostring(arg83.Title)
						TextLabel40.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel40.TextSize = 14
						TextLabel40.TextWrapped = true
						TextLabel40.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel40.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel40.LayoutOrder = 1
						TextLabel41.Name = "ImageDescription"
						TextLabel41.Parent = TextButton18
						TextLabel41.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel41.BackgroundTransparency = 1
						TextLabel41.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel41.BorderSizePixel = 0
						TextLabel41.Position = UDim2.new(0, 0, 0.5, 0)
						TextLabel41.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel41.Font = Enum.Font.Gotham
						TextLabel41.Text = tostring(arg83.Description)
						TextLabel41.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel41.TextSize = 14
						TextLabel41.TextWrapped = true
						TextLabel41.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel41.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel41.LayoutOrder = 2
						UIPadding42.Parent = TextButton18
						UIPadding42.PaddingLeft = UDim.new(0, 15)
						UIListLayout33.Parent = TextButton18
						UIListLayout33.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout33.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding43.Parent = Frame58
						UIPadding43.PaddingBottom = UDim.new(0, 10)
						UIPadding43.PaddingTop = UDim.new(0, 10)
						UICorner54.CornerRadius = UDim.new(0, 10)
						UICorner54.Parent = Frame58
						ImageLabel20.Name = "Arrow"
						ImageLabel20.Parent = Frame58
						ImageLabel20.AnchorPoint = Vector2.new(1, 0.5)
						ImageLabel20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel20.BackgroundTransparency = 1
						ImageLabel20.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ImageLabel20.BorderSizePixel = 0
						ImageLabel20.Position = UDim2.new(1, -14, 0.5, 0)
						ImageLabel20.Size = UDim2.new(0, 26, 0, 27)
						ImageLabel20.Image = "rbxassetid://6034818372"
						ImageLabel20.ImageColor3 = Color3.fromRGB(182, 182, 182)
						Frame59.Name = "ImageFrame"
						Frame59.Parent = arg82.Instance
						Frame59.Active = true
						Frame59.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame59.BackgroundTransparency = 0.2
						Frame59.BorderColor3 = Color3.fromRGB(35, 35, 35)
						Frame59.BorderSizePixel = 0
						Frame59.Size = UDim2.new(1, -15, 0, 0)
						Frame59.AutomaticSize = Enum.AutomaticSize.None
						Frame59.ClipsDescendants = true
						Frame59.Visible = false
						UICorner55.CornerRadius = UDim.new(0, 10)
						UICorner55.Parent = Frame59
						ImageLabel21.Parent = Frame59
						ImageLabel21.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						ImageLabel21.BackgroundTransparency = 1
						ImageLabel21.BorderColor3 = Color3.fromRGB(35, 35, 35)
						ImageLabel21.BorderSizePixel = 0
						ImageLabel21.Position = UDim2.new(0.0239352528, 0, 0.115073025, 0)
						ImageLabel21.Size = UDim2.new(0, 97, 0, 95)
						ImageLabel21.Image = arg83.ImageInfo.ImageId
						ImageLabel21.ImageTransparency = 1
						UICorner56.Parent = ImageLabel21
						UIStroke8.Parent = ImageLabel21
						UIStroke8.Color = arg83.ImageInfo.ImageStrokeColor
						UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						UIStroke8.Transparency = 1
						UIListLayout34.Parent = Frame59
						UIListLayout34.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout34.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout34.VerticalAlignment = Enum.VerticalAlignment.Center
						UIListLayout34.Padding = UDim.new(0, 30)
						Frame60.Name = "ImageListing"
						Frame60.Parent = Frame59
						Frame60.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						Frame60.BackgroundTransparency = 1
						Frame60.BorderColor3 = Color3.fromRGB(35, 35, 35)
						Frame60.BorderSizePixel = 0
						Frame60.Position = UDim2.new(0, 0, 0, 0)
						Frame60.Size = UDim2.new(1, -130, 0.894, 0)
						Frame60.AutomaticSize = Enum.AutomaticSize.Y
						UIListLayout35.Parent = Frame60
						UIListLayout35.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout35.VerticalAlignment = Enum.VerticalAlignment.Center
						TextLabel42.Name = "ButtonTitle"
						TextLabel42.Parent = Frame60
						TextLabel42.Active = true
						TextLabel42.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextLabel42.BackgroundTransparency = 1
						TextLabel42.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextLabel42.BorderSizePixel = 0
						TextLabel42.Size = UDim2.new(1, 0, 0, 17)
						TextLabel42.Font = Enum.Font.GothamBold
						TextLabel42.Text = arg83.ImageInfo.ImageTitle
						TextLabel42.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel42.TextSize = 15
						TextLabel42.TextWrapped = true
						TextLabel42.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel42.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel42.TextTransparency = 1
						for k6, v7 in pairs(arg83.ImageInfo.ImageDescription) do
							local TextLabel43 = Instance.new("TextLabel")
							TextLabel43.Name = "ButtonText"
							TextLabel43.Parent = Frame60
							TextLabel43.Active = true
							TextLabel43.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
							TextLabel43.BackgroundTransparency = 1
							TextLabel43.BorderColor3 = Color3.fromRGB(35, 35, 35)
							TextLabel43.BorderSizePixel = 0
							TextLabel43.Size = UDim2.new(1, 0, 0, 17)
							TextLabel43.Font = Enum.Font.Gotham
							TextLabel43.Text = v7
							TextLabel43.TextColor3 = result[arg12.Theme].ItemDescriptionColor
							TextLabel43.TextSize = 15
							TextLabel43.TextWrapped = true
							TextLabel43.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel43.TextTransparency = 1
							TextLabel43.AutomaticSize = Enum.AutomaticSize.Y
						end
						UIPadding44.Parent = Frame60
						UIPadding44.PaddingRight = UDim.new(0, 10)
						UIPadding45.Parent = Frame59
						UIPadding45.PaddingBottom = UDim.new(0, 10)
						UIPadding45.PaddingLeft = UDim.new(0, 15)
						UIPadding45.PaddingRight = UDim.new(0, 10)
						UIPadding45.PaddingTop = UDim.new(0, 10)
						BindableEvent.Event:Connect(function(arg84)
							local tween183 = TweenService:Create(Frame58, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg84].ItemBackgroundColor })
							tween183:Play()
							local tween184 = TweenService:Create(TextLabel40, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg84].ItemTitleColor })
							tween184:Play()
							local tween185 = TweenService:Create(TextLabel41, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg84].ItemDescriptionColor })
							tween185:Play()
							local tween186 = TweenService:Create(Frame59, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg84].ItemBackgroundColor })
							tween186:Play()
							local tween187 = TweenService:Create(TextLabel42, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg84].ItemTitleColor })
							tween187:Play()
							Frame60:GetChildren()
							local tween188 = TweenService:Create(TextLabel42, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg84].ItemDescriptionColor })
							tween188:Play()
							local tween189 = TweenService:Create(TextLabel43, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg84].ItemDescriptionColor })
							tween189:Play()
						end)
						Frame58.MouseEnter:Connect(function(arg85)
							local tween190 = TweenService:Create(Frame58, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween190:Play()
						end)
						Frame58.MouseLeave:Connect(function(arg86)
							local tween191 = TweenService:Create(Frame58, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween191:Play()
						end)
						TextLabel40.Visible = true
						TextLabel41.Visible = true
						TextButton18.MouseButton1Click:Connect(function()
							Frame59.Visible = true
							local tween192 = TweenService:Create(Frame59, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
							tween192:Play()
							local tween193 = TweenService:Create(UIStroke8, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 0 })
							tween193:Play()
							local tween194 = TweenService:Create(ImageLabel21, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 })
							tween194:Play()
							Frame60:GetChildren()
							local tween195 = TweenService:Create(TextLabel42, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween195:Play()
							local tween196 = TweenService:Create(TextLabel43, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween196:Play()
							task.wait(0.1)
							Frame59.AutomaticSize = Enum.AutomaticSize.Y
						end)
					end,
					CreateKeyBind = function(arg87, arg88)
						local Frame61 = Instance.new("Frame")
						local UIPadding46 = Instance.new("UIPadding")
						local UICorner57 = Instance.new("UICorner")
						local Frame62 = Instance.new("Frame")
						local UICorner58 = Instance.new("UICorner")
						local UIStroke9 = Instance.new("UIStroke")
						local TextButton19 = Instance.new("TextButton")
						local Frame63 = Instance.new("Frame")
						local TextLabel44 = Instance.new("TextLabel")
						local UIPadding47 = Instance.new("UIPadding")
						local TextLabel45 = Instance.new("TextLabel")
						local UIListLayout36 = Instance.new("UIListLayout")
						Frame61.Name = "KeyBind"
						Frame61.Parent = arg87.Instance
						Frame61.Active = true
						Frame61.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame61.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame61.BorderSizePixel = 0
						Frame61.Size = UDim2.new(1, -15, 0, 0)
						Frame61.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding46.Parent = Frame61
						UIPadding46.PaddingBottom = UDim.new(0, 10)
						UIPadding46.PaddingTop = UDim.new(0, 10)
						UICorner57.CornerRadius = UDim.new(0, 10)
						UICorner57.Parent = Frame61
						Frame62.Name = "BindSelection"
						Frame62.Parent = Frame61
						Frame62.AnchorPoint = Vector2.new(1, 0.5)
						Frame62.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame62.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame62.BorderSizePixel = 0
						Frame62.Position = UDim2.new(1, -14, 0.5, 0)
						Frame62.Size = UDim2.new(0, 30, 0, 30)
						Frame62.ZIndex = 3
						UICorner58.CornerRadius = UDim.new(0, 6)
						UICorner58.Parent = Frame62
						UIStroke9.Parent = Frame62
						UIStroke9.Color = result[arg12.Theme].ItemStrokeColor
						UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						TextButton19.Name = "Bind"
						TextButton19.Parent = Frame62
						TextButton19.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						TextButton19.BackgroundTransparency = 1
						TextButton19.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						TextButton19.BorderSizePixel = 0
						TextButton19.AnchorPoint = Vector2.new(0.5, 0.5)
						TextButton19.Position = UDim2.new(0.5, 0, 0.5, 0)
						TextButton19.Size = UDim2.new(0, 30, 0, 30)
						TextButton19.AutoButtonColor = false
						TextButton19.Font = Enum.Font.Gotham
						TextButton19.Text = "..."
						TextButton19.TextColor3 = result[arg12.Theme].ItemElementsTextColor
						TextButton19.TextSize = 16
						TextButton19.AutomaticSize = Enum.AutomaticSize.X
						TextButton19.ZIndex = 3
						Frame63.Name = "KeyBindListing"
						Frame63.Parent = Frame61
						Frame63.Active = true
						Frame63.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame63.BackgroundTransparency = 1
						Frame63.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame63.BorderSizePixel = 0
						Frame63.Size = UDim2.new(0.828, 0, 0, 0)
						Frame63.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel44.Name = "KeyBindTitle"
						TextLabel44.Parent = Frame63
						TextLabel44.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel44.BackgroundTransparency = 1
						TextLabel44.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel44.BorderSizePixel = 0
						TextLabel44.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel44.Font = Enum.Font.GothamBold
						TextLabel44.Text = tostring(arg88.Title)
						TextLabel44.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel44.TextSize = 14
						TextLabel44.TextWrapped = true
						TextLabel44.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel44.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel44.LayoutOrder = 1
						UIPadding47.Parent = Frame63
						UIPadding47.PaddingLeft = UDim.new(0, 15)
						TextLabel45.Name = "KeyBindDescription"
						TextLabel45.Parent = Frame63
						TextLabel45.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel45.BackgroundTransparency = 1
						TextLabel45.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel45.BorderSizePixel = 0
						TextLabel45.Position = UDim2.new(0, 0, 0.0375690758, 0)
						TextLabel45.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel45.Font = Enum.Font.Gotham
						TextLabel45.Text = tostring(arg88.Description)
						TextLabel45.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel45.TextSize = 14
						TextLabel45.TextWrapped = true
						TextLabel45.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel45.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel45.LayoutOrder = 2
						UIListLayout36.Parent = Frame63
						UIListLayout36.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout36.VerticalAlignment = Enum.VerticalAlignment.Center
						Frame62.Size = UDim2.new(0, 50, 0, 30)
						BindableEvent.Event:Connect(function(arg89)
							local tween197 = TweenService:Create(Frame61, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg89].ItemBackgroundColor })
							tween197:Play()
							local tween198 = TweenService:Create(TextLabel44, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg89].ItemTitleColor })
							tween198:Play()
							local tween199 = TweenService:Create(TextLabel45, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg89].ItemDescriptionColor })
							tween199:Play()
							local tween200 = TweenService:Create(Frame62, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg89].ItemElementsBackgroundColor })
							tween200:Play()
							local tween201 = TweenService:Create(TextButton19, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg89].ItemElementsTextColor })
							tween201:Play()
							local tween202 = TweenService:Create(UIStroke9, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg89].ItemStrokeColor })
							tween202:Play()
						end)
						TextLabel44.Visible = true
						TextLabel45.Visible = true
						Frame61.MouseEnter:Connect(function(arg90)
							local tween203 = TweenService:Create(Frame61, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween203:Play()
						end)
						Frame61.MouseLeave:Connect(function(arg91)
							local tween204 = TweenService:Create(Frame61, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween204:Play()
						end)
						TextButton19.Text = arg88.Key.Name
						TextButton19.MouseButton1Click:Connect(function()
							TextButton19.Text = "..."
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
							UserInputService.InputBegan:Wait()
							wait()
						end)
						local connection2 = UserInputService.InputBegan:Connect(function(input14, gameProcessed14)
						end)
						return {
							GetKey = function(arg92, arg93)
								return arg88.Key.Name
							end,
							SetKey = function(arg94, arg95)
								getgenv().KeyFunction = connection2
								TextButton19.Text = arg95
								Frame62.Size = UDim2.new(0, 50, 0, 30)
							end
						}
					end,
					CreateLabel = function(arg96, arg97)
						local Frame64 = Instance.new("Frame")
						local Frame65 = Instance.new("Frame")
						local TextLabel46 = Instance.new("TextLabel")
						local UIPadding48 = Instance.new("UIPadding")
						local TextLabel47 = Instance.new("TextLabel")
						local UIListLayout37 = Instance.new("UIListLayout")
						local UIPadding49 = Instance.new("UIPadding")
						local UICorner59 = Instance.new("UICorner")
						Frame64.Name = "Label"
						Frame64.Parent = arg96.Instance
						Frame64.Active = true
						Frame64.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame64.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame64.BorderSizePixel = 0
						Frame64.Size = UDim2.new(1, -15, 0, 0)
						Frame64.AutomaticSize = Enum.AutomaticSize.Y
						Frame65.Name = "LabelListing"
						Frame65.Parent = Frame64
						Frame65.Active = true
						Frame65.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame65.BackgroundTransparency = 1
						Frame65.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame65.BorderSizePixel = 0
						Frame65.Size = UDim2.new(1, 0, 0, 0)
						Frame65.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel46.Name = "LabelTitle"
						TextLabel46.Parent = Frame65
						TextLabel46.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel46.BackgroundTransparency = 1
						TextLabel46.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel46.BorderSizePixel = 0
						TextLabel46.Size = UDim2.new(0.979059696, 0, 0, 0)
						TextLabel46.Font = Enum.Font.GothamBold
						TextLabel46.Text = tostring(arg97.Title)
						TextLabel46.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel46.TextSize = 14
						TextLabel46.TextWrapped = true
						TextLabel46.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel46.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel46.LayoutOrder = 1
						UIPadding48.Parent = Frame65
						UIPadding48.PaddingLeft = UDim.new(0, 15)
						TextLabel47.Name = "LabelDescription"
						TextLabel47.Parent = Frame65
						TextLabel47.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel47.BackgroundTransparency = 1
						TextLabel47.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel47.BorderSizePixel = 0
						TextLabel47.Size = UDim2.new(0.979059696, 0, 0, 0)
						TextLabel47.Font = Enum.Font.Gotham
						TextLabel47.Text = tostring(arg97.Description)
						TextLabel47.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel47.TextSize = 14
						TextLabel47.TextWrapped = true
						TextLabel47.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel47.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel47.LayoutOrder = 2
						UIListLayout37.Parent = Frame65
						UIListLayout37.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout37.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding49.Parent = Frame64
						UIPadding49.PaddingBottom = UDim.new(0, 10)
						UIPadding49.PaddingTop = UDim.new(0, 10)
						UICorner59.CornerRadius = UDim.new(0, 10)
						UICorner59.Parent = Frame64
						BindableEvent.Event:Connect(function(arg98)
							local tween205 = TweenService:Create(Frame64, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg98].ItemBackgroundColor })
							tween205:Play()
							local tween206 = TweenService:Create(TextLabel46, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg98].ItemTitleColor })
							tween206:Play()
							local tween207 = TweenService:Create(TextLabel47, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg98].ItemDescriptionColor })
							tween207:Play()
						end)
						TextLabel46.Visible = true
						TextLabel47.Visible = true
						Frame64.MouseEnter:Connect(function(arg99)
							local tween208 = TweenService:Create(Frame64, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween208:Play()
						end)
						Frame64.MouseLeave:Connect(function(arg100)
							local tween209 = TweenService:Create(Frame64, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween209:Play()
						end)
						return {
							UpdateLabel = function(arg101, arg102)
								TextLabel46.Visible = true
								TextLabel47.Visible = true
								TextLabel46.Text = tostring(arg102.NewTitle)
								TextLabel47.Text = tostring(arg102.NewDescription)
							end
						}
					end,
					CreateLine = function(arg103, arg104)
						local Frame66 = Instance.new("Frame")
						local UICorner60 = Instance.new("UICorner")
						Frame66.Name = "Line"
						Frame66.Parent = arg103.Instance
						Frame66.BackgroundColor3 = result[arg12.Theme].LineColor
						Frame66.BorderColor3 = Color3.fromRGB(43, 43, 41)
						Frame66.BorderSizePixel = 0
						Frame66.Size = UDim2.new(1, -15, 0, 8)
						UICorner60.Parent = Frame66
						BindableEvent.Event:Connect(function(arg105)
							local tween210 = TweenService:Create(Frame66, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg105].LineColor })
							tween210:Play()
						end)
					end,
					CreatePharagraph = function(arg106, arg107)
						local Frame67 = Instance.new("Frame")
						local Frame68 = Instance.new("Frame")
						local TextLabel48 = Instance.new("TextLabel")
						local UIPadding50 = Instance.new("UIPadding")
						local UIListLayout38 = Instance.new("UIListLayout")
						local UIPadding51 = Instance.new("UIPadding")
						local UICorner61 = Instance.new("UICorner")
						Frame67.Name = "Pharagraph"
						Frame67.Parent = arg106.Instance
						Frame67.Active = true
						Frame67.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame67.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame67.BorderSizePixel = 0
						Frame67.Size = UDim2.new(1, -15, 0, 0)
						Frame67.AutomaticSize = Enum.AutomaticSize.Y
						Frame68.Name = "PharagraphListing"
						Frame68.Parent = Frame67
						Frame68.Active = true
						Frame68.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame68.BackgroundTransparency = 1
						Frame68.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame68.BorderSizePixel = 0
						Frame68.Size = UDim2.new(1, 0, 0, 0)
						Frame68.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel48.Name = "PharagraphTitle"
						TextLabel48.Parent = Frame68
						TextLabel48.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel48.BackgroundTransparency = 1
						TextLabel48.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel48.BorderSizePixel = 0
						TextLabel48.Size = UDim2.new(0.979059696, 0, 0, 0)
						TextLabel48.Font = Enum.Font.GothamBold
						TextLabel48.Text = tostring(arg107.Title)
						TextLabel48.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel48.TextSize = 14
						TextLabel48.TextWrapped = true
						TextLabel48.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel48.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding50.Parent = Frame68
						UIPadding50.PaddingLeft = UDim.new(0, 15)
						UIListLayout38.Parent = Frame68
						UIListLayout38.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout38.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding51.Parent = Frame67
						UIPadding51.PaddingBottom = UDim.new(0, 10)
						UIPadding51.PaddingTop = UDim.new(0, 10)
						UICorner61.CornerRadius = UDim.new(0, 10)
						UICorner61.Parent = Frame67
						for k7, v8 in pairs(arg107.Lines) do
							local TextLabel49 = Instance.new("TextLabel")
							TextLabel49.Name = "PharagraphDescription"
							TextLabel49.Parent = Frame68
							TextLabel49.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
							TextLabel49.BackgroundTransparency = 1
							TextLabel49.BorderColor3 = Color3.fromRGB(43, 43, 41)
							TextLabel49.BorderSizePixel = 0
							TextLabel49.Size = UDim2.new(0.979059696, 0, 0, 0)
							TextLabel49.Font = Enum.Font.Gotham
							TextLabel49.Text = v8
							TextLabel49.TextColor3 = result[arg12.Theme].ItemDescriptionColor
							TextLabel49.TextSize = 14
							TextLabel49.TextWrapped = true
							TextLabel49.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel49.AutomaticSize = Enum.AutomaticSize.Y
						end
						Frame67.MouseEnter:Connect(function(arg108)
							local tween211 = TweenService:Create(Frame67, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween211:Play()
						end)
						Frame67.MouseLeave:Connect(function(arg109)
							local tween212 = TweenService:Create(Frame67, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween212:Play()
						end)
						BindableEvent.Event:Connect(function(arg110)
							local tween213 = TweenService:Create(Frame67, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg110].ItemBackgroundColor })
							tween213:Play()
							local tween214 = TweenService:Create(TextLabel48, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg110].ItemTitleColor })
							tween214:Play()
							Frame68:GetChildren()
							local tween215 = TweenService:Create(TextLabel48, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg110].ItemDescriptionColor })
							tween215:Play()
							local tween216 = TweenService:Create(TextLabel49, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg110].ItemDescriptionColor })
							tween216:Play()
						end)
					end,
					CreatePicker = function(arg111, arg112)
						local Frame69 = Instance.new("Frame")
						local TextButton20 = Instance.new("TextButton")
						local TextLabel50 = Instance.new("TextLabel")
						local TextLabel51 = Instance.new("TextLabel")
						local UIPadding52 = Instance.new("UIPadding")
						local UIListLayout39 = Instance.new("UIListLayout")
						local UIPadding53 = Instance.new("UIPadding")
						local UICorner62 = Instance.new("UICorner")
						local Frame70 = Instance.new("Frame")
						local UICorner63 = Instance.new("UICorner")
						local UIStroke10 = Instance.new("UIStroke")
						local TextButton21 = Instance.new("TextButton")
						local TextLabel52 = Instance.new("TextLabel")
						local UIListLayout40 = Instance.new("UIListLayout")
						local UIPadding54 = Instance.new("UIPadding")
						local Frame71 = Instance.new("Frame")
						local UICorner64 = Instance.new("UICorner")
						local UIListLayout41 = Instance.new("UIListLayout")
						local Frame72 = Instance.new("Frame")
						local TextBox5 = Instance.new("TextBox")
						local ImageLabel22 = Instance.new("ImageLabel")
						local ScrollingFrame9 = Instance.new("ScrollingFrame")
						local UIListLayout42 = Instance.new("UIListLayout")
						local UIPadding55 = Instance.new("UIPadding")
						local UICorner65 = Instance.new("UICorner")
						local UIPadding56 = Instance.new("UIPadding")
						Frame69.Name = "ThemePicker"
						Frame69.Parent = arg111.Instance
						Frame69.Active = true
						Frame69.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame69.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame69.BorderSizePixel = 0
						Frame69.Size = UDim2.new(1, -15, 0, 0)
						Frame69.AutomaticSize = Enum.AutomaticSize.Y
						TextButton20.Name = "ThemePickerButton"
						TextButton20.Parent = Frame69
						TextButton20.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton20.BackgroundTransparency = 1
						TextButton20.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton20.BorderSizePixel = 0
						TextButton20.Size = UDim2.new(1, 0, 0, 0)
						TextButton20.AutoButtonColor = false
						TextButton20.Font = Enum.Font.SourceSans
						TextButton20.Text = ""
						TextButton20.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton20.TextSize = 14
						TextButton20.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel50.Name = "ThemePickerTitle"
						TextLabel50.Parent = TextButton20
						TextLabel50.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel50.BackgroundTransparency = 1
						TextLabel50.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel50.BorderSizePixel = 0
						TextLabel50.Position = UDim2.new(0, 0, 0, 0)
						TextLabel50.Size = UDim2.new(0.612073958, 0, 0, 0)
						TextLabel50.Font = Enum.Font.GothamBold
						TextLabel50.Text = arg112.Title
						TextLabel50.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel50.TextSize = 14
						TextLabel50.TextWrapped = true
						TextLabel50.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel50.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel50.LayoutOrder = 1
						TextLabel51.Name = "ThemePickerDescription"
						TextLabel51.Parent = TextButton20
						TextLabel51.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel51.BackgroundTransparency = 1
						TextLabel51.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel51.BorderSizePixel = 0
						TextLabel51.Position = UDim2.new(0, 0, 0, 0)
						TextLabel51.Size = UDim2.new(0.612073958, 0, 0, 0)
						TextLabel51.Font = Enum.Font.Gotham
						TextLabel51.Text = arg112.Description
						TextLabel51.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel51.TextSize = 14
						TextLabel51.TextWrapped = true
						TextLabel51.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel51.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel51.LayoutOrder = 2
						UIPadding52.Parent = TextButton20
						UIPadding52.PaddingLeft = UDim.new(0, 15)
						UIListLayout39.Parent = TextButton20
						UIListLayout39.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout39.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding53.Parent = Frame69
						UIPadding53.PaddingBottom = UDim.new(0, 10)
						UIPadding53.PaddingTop = UDim.new(0, 10)
						UICorner62.CornerRadius = UDim.new(0, 10)
						UICorner62.Parent = Frame69
						Frame70.Name = "ThemePickerClicker"
						Frame70.Parent = Frame69
						Frame70.AnchorPoint = Vector2.new(1, 0.5)
						Frame70.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame70.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame70.BorderSizePixel = 0
						Frame70.Position = UDim2.new(1, -14, 0.5, 0)
						Frame70.Size = UDim2.new(0, 0, 0, 27)
						Frame70.AutomaticSize = Enum.AutomaticSize.X
						UICorner63.CornerRadius = UDim.new(0, 5)
						UICorner63.Parent = Frame70
						UIStroke10.Parent = Frame70
						UIStroke10.Color = result[arg12.Theme].ItemStrokeColor
						UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						TextButton21.Name = "SelectThemeButton"
						TextButton21.Parent = Frame70
						TextButton21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextButton21.BackgroundTransparency = 1
						TextButton21.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextButton21.BorderSizePixel = 0
						TextButton21.Size = UDim2.new(0, 0, 1, 0)
						TextButton21.Font = Enum.Font.SourceSans
						TextButton21.Text = ""
						TextButton21.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton21.TextSize = 14
						TextButton21.TextTransparency = 1
						TextButton21.AutomaticSize = Enum.AutomaticSize.X
						TextLabel52.Name = "SelectedTheme"
						TextLabel52.Parent = TextButton21
						TextLabel52.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel52.BackgroundTransparency = 1
						TextLabel52.Size = UDim2.new(0, 0, 1, 0)
						TextLabel52.ZIndex = 2
						TextLabel52.Font = Enum.Font.Gotham
						TextLabel52.Text = arg112.List[1]
						TextLabel52.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel52.TextSize = 15
						TextLabel52.TextWrapped = true
						TextLabel52.TextXAlignment = Enum.TextXAlignment.Center
						TextLabel52.LayoutOrder = 1
						TextLabel52.AutomaticSize = Enum.AutomaticSize.X
						UIListLayout40.Parent = TextButton21
						UIListLayout40.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout40.Padding = UDim.new(0, 2)
						UIListLayout40.Wraps = true
						UIPadding54.Parent = Frame70
						UIPadding54.PaddingLeft = UDim.new(0, 10)
						UIPadding54.PaddingRight = UDim.new(0, 10)
						Frame71.Name = "ThemePickerFrame"
						Frame71.Parent = arg111.Instance
						Frame71.Active = true
						Frame71.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame71.BackgroundTransparency = 0.2
						Frame71.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame71.BorderSizePixel = 0
						Frame71.Size = UDim2.new(1, -15, 0, 0)
						Frame71.Visible = false
						Frame71.AutomaticSize = Enum.AutomaticSize.Y
						UICorner64.CornerRadius = UDim.new(0, 10)
						UICorner64.Parent = Frame71
						UIListLayout41.Parent = Frame71
						UIListLayout41.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout41.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout41.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout41.VerticalAlignment = Enum.VerticalAlignment.Center
						UIListLayout41.Padding = UDim.new(0, 30)
						Frame72.Name = "Themes"
						Frame72.Parent = Frame71
						Frame72.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
						Frame72.BackgroundTransparency = 1
						Frame72.BorderColor3 = Color3.fromRGB(38, 38, 38)
						Frame72.BorderSizePixel = 0
						Frame72.Position = UDim2.new(0, 0, 0.55306071, 0)
						Frame72.Size = UDim2.new(1, 0, 1, 0)
						TextBox5.Name = "Search"
						TextBox5.Parent = Frame72
						TextBox5.AnchorPoint = Vector2.new(0, 0)
						TextBox5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextBox5.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextBox5.BorderSizePixel = 0
						TextBox5.Position = UDim2.new(0, 37, 0, -2)
						TextBox5.Size = UDim2.new(0.926606655, 0, 0, 23)
						TextBox5.ClearTextOnFocus = false
						TextBox5.Font = Enum.Font.SourceSans
						TextBox5.PlaceholderColor3 = result[arg12.Theme].ItemTitleColor
						TextBox5.PlaceholderText = arg112.PlaceHolderText
						TextBox5.Text = ""
						TextBox5.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextBox5.TextSize = 18
						TextBox5.TextXAlignment = Enum.TextXAlignment.Left
						TextBox5.BackgroundTransparency = 1
						local changedSignal5 = TextBox5:GetPropertyChangedSignal("Text")
						changedSignal5:Connect(function(arg113)
							ScrollingFrame9:GetDescendants()
							string.lower(v9):find("")
							Frame73.Visible = true
							ScrollingFrame9:GetDescendants()
							Frame73.Visible = true
						end)
						ImageLabel22.Name = "SearchIcon"
						ImageLabel22.Parent = Frame72
						ImageLabel22.BackgroundTransparency = 1
						ImageLabel22.BorderSizePixel = 0
						ImageLabel22.Position = UDim2.new(0, 17, 0, -1)
						ImageLabel22.Size = UDim2.new(0, 20, 0, 22)
						ImageLabel22.Image = "rbxassetid://118685771787843"
						ImageLabel22.ImageColor3 = result[arg12.Theme].ItemTitleColor
						ScrollingFrame9.Name = "ThemeContainer"
						ScrollingFrame9.Parent = Frame72
						ScrollingFrame9.Active = true
						ScrollingFrame9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ScrollingFrame9.BackgroundTransparency = 1
						ScrollingFrame9.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ScrollingFrame9.BorderSizePixel = 0
						ScrollingFrame9.Position = UDim2.new(0, 0, 0, 26)
						ScrollingFrame9.Size = UDim2.new(1, 0, -0.129999995, 100)
						ScrollingFrame9.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
						ScrollingFrame9.ScrollBarThickness = 6
						ScrollingFrame9.CanvasSize = UDim2.new(0, 0, 0, 0)
						ScrollingFrame9.AutomaticCanvasSize = Enum.AutomaticSize.Y
						UIListLayout42.Parent = ScrollingFrame9
						UIListLayout42.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout42.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout42.Padding = UDim.new(0, 5)
						UIPadding55.Parent = ScrollingFrame9
						UIPadding55.PaddingBottom = UDim.new(0, 10)
						UIPadding55.PaddingTop = UDim.new(0, 10)
						UICorner65.Parent = Frame72
						UIPadding56.Parent = Frame72
						UIPadding56.PaddingBottom = UDim.new(0, 15)
						UIPadding56.PaddingLeft = UDim.new(0, 15)
						UIPadding56.PaddingRight = UDim.new(0, 15)
						UIPadding56.PaddingTop = UDim.new(0, 15)
						Frame69.MouseEnter:Connect(function(arg114)
							local tween217 = TweenService:Create(Frame69, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween217:Play()
						end)
						Frame69.MouseLeave:Connect(function(arg115)
							local tween218 = TweenService:Create(Frame69, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween218:Play()
						end)
						TextLabel50.Visible = true
						TextLabel51.Visible = true
						TextButton20.MouseButton1Click:Connect(function()
							Frame71.Visible = true
							local tween219 = TweenService:Create(Frame71, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
							tween219:Play()
							task.wait(0.1)
							Frame71:GetDescendants()
							local tween220 = TweenService:Create(TextBox5, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween220:Play()
							local tween221 = TweenService:Create(ImageLabel22, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ImageTransparency = 0 })
							tween221:Play()
							local tween222 = TweenService:Create(ScrollingFrame9, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 0 })
							tween222:Play()
							local tween223 = TweenService:Create(Frame73, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
							tween223:Play()
							local tween224 = TweenService:Create(TextButton22, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 0 })
							tween224:Play()
							Frame71.AutomaticSize = Enum.AutomaticSize.Y
						end)
						local lastValue2
						for k8, v9 in pairs(arg112.List) do
							local Frame73 = Instance.new("Frame")
							local TextButton22 = Instance.new("TextButton")
							local UICorner66 = Instance.new("UICorner")
							local UICorner67 = Instance.new("UICorner")
							Frame73.Name = "ItemFrame"
							Frame73.Parent = ScrollingFrame9
							Frame73.BackgroundColor3 = result[arg12.Theme].DropdownItemBackground
							Frame73.BorderColor3 = result[arg12.Theme].DropdownItemBackground
							Frame73.BorderSizePixel = 0
							Frame73.Position = UDim2.new(0.107260369, 0, 0, 0)
							Frame73.Size = UDim2.new(0.926217794, 0, 0, 27)
							TextButton22.Name = "ItemButton"
							TextButton22.Parent = Frame73
							TextButton22.BackgroundColor3 = result[arg12.Theme].ItemStrokeColor
							TextButton22.BackgroundTransparency = 1
							TextButton22.BorderColor3 = result[arg12.Theme].ItemStrokeColor
							TextButton22.BorderSizePixel = 0
							TextButton22.Size = UDim2.new(1, 0, 1, 0)
							TextButton22.Font = Enum.Font.Gotham
							TextButton22.Text = v9
							TextButton22.TextColor3 = result[arg12.Theme].DropdownItemText
							TextButton22.TextSize = 14
							TextButton22.TextWrapped = true
							UICorner66.Parent = TextButton22
							UICorner67.CornerRadius = UDim.new(0, 5)
							UICorner67.Parent = Frame73
							TextButton22.MouseButton1Click:Connect(function()
								Frame71.AutomaticSize = Enum.AutomaticSize.None
								Frame71:GetDescendants()
								local tween225 = TweenService:Create(TextBox5, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 })
								tween225:Play()
								local tween226 = TweenService:Create(ImageLabel22, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ImageTransparency = 1 })
								tween226:Play()
								local tween227 = TweenService:Create(ScrollingFrame9, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { ScrollBarImageTransparency = 1 })
								tween227:Play()
								local tween228 = TweenService:Create(Frame73, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 })
								tween228:Play()
								local tween229 = TweenService:Create(TextButton22, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { TextTransparency = 1 })
								tween229:Play()
								task.wait(0.1)
								TextLabel52.Text = v9
								local tween230 = TweenService:Create(Frame71, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 0) })
								tween230:Play()
								task.wait(0.1)
								Frame71.Visible = false
								arg112.Callback(v9)
							end)
							lastValue2 = v9
						end
						BindableEvent.Event:Connect(function(arg116)
							local tween231 = TweenService:Create(Frame69, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg116].ItemBackgroundColor })
							tween231:Play()
							local tween232 = TweenService:Create(TextLabel50, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg116].ItemTitleColor })
							tween232:Play()
							local tween233 = TweenService:Create(TextLabel51, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg116].ItemDescriptionColor })
							tween233:Play()
							local tween234 = TweenService:Create(Frame70, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg116].ItemElementsBackgroundColor })
							tween234:Play()
							local tween235 = TweenService:Create(UIStroke10, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg116].ItemStrokeColor })
							tween235:Play()
							local tween236 = TweenService:Create(TextLabel52, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg116].ItemTitleColor })
							tween236:Play()
							local tween237 = TweenService:Create(Frame71, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg116].ItemBackgroundColor })
							tween237:Play()
							local tween238 = TweenService:Create(ImageLabel22, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { ImageColor3 = result[arg116].ItemTitleColor })
							tween238:Play()
							local tween239 = TweenService:Create(TextBox5, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg116].ItemTitleColor })
							tween239:Play()
							TextBox5.PlaceholderColor3 = result[arg116].ItemTitleColor
							ScrollingFrame9:GetChildren()
							local tween240 = TweenService:Create(Frame73, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg116].DropdownItemBackground })
							tween240:Play()
							Frame73:FindFirstChild("ItemButton")
							local tween241 = TweenService:Create(TextButton22, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg116].DropdownItemText })
							tween241:Play()
						end)
						return {
							Select = function(arg117, arg118)
							end
						}
					end,
					CreateSection = function(arg119, arg120)
						local Frame74 = Instance.new("Frame")
						local UIPadding57 = Instance.new("UIPadding")
						local UICorner68 = Instance.new("UICorner")
						local UIListLayout43 = Instance.new("UIListLayout")
						local TextLabel53 = Instance.new("TextLabel")
						Frame74.Name = "Section"
						Frame74.Parent = arg119.Instance
						Frame74.Active = true
						Frame74.BackgroundColor3 = result[arg12.Theme].SectionBackgroundColor
						Frame74.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame74.BorderSizePixel = 0
						Frame74.Size = UDim2.new(1, -15, 0, 0)
						Frame74.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding57.Parent = Frame74
						UIPadding57.PaddingBottom = UDim.new(0, 10)
						UIPadding57.PaddingLeft = UDim.new(0, 10)
						UIPadding57.PaddingRight = UDim.new(0, 10)
						UIPadding57.PaddingTop = UDim.new(0, 10)
						UICorner68.CornerRadius = UDim.new(0, 10)
						UICorner68.Parent = Frame74
						UIListLayout43.Parent = Frame74
						UIListLayout43.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout43.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout43.Padding = UDim.new(0, 5)
						TextLabel53.Name = "PageTitle"
						TextLabel53.Parent = Frame74
						TextLabel53.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						TextLabel53.BackgroundTransparency = 1
						TextLabel53.BorderColor3 = Color3.fromRGB(36, 36, 36)
						TextLabel53.BorderSizePixel = 0
						TextLabel53.Position = UDim2.new(0.0374999382, 0, 0.158954486, 0)
						TextLabel53.Size = UDim2.new(1, -15, 0, 24)
						TextLabel53.Font = Enum.Font.GothamBold
						TextLabel53.Text = arg120
						TextLabel53.TextColor3 = result[arg12.Theme].ItemElementsTextColor
						TextLabel53.TextSize = 16
						TextLabel53.TextWrapped = true
						TextLabel53.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel53.AutomaticSize = Enum.AutomaticSize.Y
						BindableEvent.Event:Connect(function(arg121)
							local tween242 = TweenService:Create(Frame74, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg121].SectionBackgroundColor })
							tween242:Play()
							local tween243 = TweenService:Create(TextLabel53, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg121].ItemElementsTextColor })
							tween243:Play()
						end)
						return setmetatable({ Instance = Frame74 }, { __index = arg119 })
					end,
					CreateSlider = function(arg122, arg123)
						local Frame75 = Instance.new("Frame")
						local Frame76 = Instance.new("Frame")
						local TextLabel54 = Instance.new("TextLabel")
						local UIPadding58 = Instance.new("UIPadding")
						local TextLabel55 = Instance.new("TextLabel")
						local UIListLayout44 = Instance.new("UIListLayout")
						local UIPadding59 = Instance.new("UIPadding")
						local UICorner69 = Instance.new("UICorner")
						local TextLabel56 = Instance.new("TextLabel")
						Instance.new("UICorner")
						Instance.new("UICorner")
						local CanvasGroup = Instance.new("CanvasGroup")
						local Frame77 = Instance.new("Frame")
						local Frame78 = Instance.new("Frame")
						local UICorner70 = Instance.new("UICorner")
						local TextButton23 = Instance.new("TextButton")
						local UICorner71 = Instance.new("UICorner")
						local UICorner72 = Instance.new("UICorner")
						local UICorner73 = Instance.new("UICorner")
						Frame75.Name = "Slider"
						Frame75.Parent = arg122.Instance
						Frame75.Active = true
						Frame75.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame75.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame75.BorderSizePixel = 0
						Frame75.Size = UDim2.new(1, -15, 0, 0)
						Frame75.AutomaticSize = Enum.AutomaticSize.Y
						Frame76.Name = "SliderListing"
						Frame76.Parent = Frame75
						Frame76.Active = true
						Frame76.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame76.BackgroundTransparency = 1
						Frame76.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame76.BorderSizePixel = 0
						Frame76.Size = UDim2.new(1, 0, 0, 0)
						Frame76.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel54.Name = "SliderTitle"
						TextLabel54.Parent = Frame76
						TextLabel54.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel54.BackgroundTransparency = 1
						TextLabel54.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel54.BorderSizePixel = 0
						TextLabel54.Position = UDim2.new(8.05595732e-08, 0, 0, 0)
						TextLabel54.Size = UDim2.new(0.778733969, 0, 0, 0)
						TextLabel54.Font = Enum.Font.GothamBold
						TextLabel54.Text = tostring(arg123.Title)
						TextLabel54.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel54.TextSize = 14
						TextLabel54.TextWrapped = true
						TextLabel54.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel54.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel54.LayoutOrder = 1
						UIPadding58.Parent = Frame76
						UIPadding58.PaddingLeft = UDim.new(0, 15)
						TextLabel55.Name = "SliderDescription"
						TextLabel55.Parent = Frame76
						TextLabel55.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel55.BackgroundTransparency = 1
						TextLabel55.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel55.BorderSizePixel = 0
						TextLabel55.Position = UDim2.new(-8.05595732e-08, 0, 0.173135817, 0)
						TextLabel55.Size = UDim2.new(0.886489809, 0, 0, 0)
						TextLabel55.Font = Enum.Font.Gotham
						TextLabel55.Text = tostring(arg123.Description)
						TextLabel55.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel55.TextSize = 14
						TextLabel55.TextWrapped = true
						TextLabel55.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel55.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel55.LayoutOrder = 2
						UIListLayout44.Parent = Frame76
						UIListLayout44.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout44.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding59.Parent = Frame75
						UIPadding59.PaddingBottom = UDim.new(0, 10)
						UIPadding59.PaddingTop = UDim.new(0, 10)
						UICorner69.CornerRadius = UDim.new(0, 10)
						UICorner69.Parent = Frame75
						TextLabel56.Name = "Num"
						TextLabel56.Parent = Frame75
						TextLabel56.AnchorPoint = Vector2.new(1, 0)
						TextLabel56.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						TextLabel56.BackgroundTransparency = 1
						TextLabel56.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						TextLabel56.BorderSizePixel = 0
						TextLabel56.Position = UDim2.new(1, -10, -0.0138592934, 0)
						TextLabel56.Size = UDim2.new(0, 66, 0, 17)
						TextLabel56.Font = Enum.Font.GothamBold
						TextLabel56.Text = "0"
						TextLabel56.TextColor3 = result[arg12.Theme].ItemElementsTextColor
						TextLabel56.TextSize = 14
						TextLabel56.TextXAlignment = Enum.TextXAlignment.Right
						UICorner71.CornerRadius = UDim.new(0, 5)
						UICorner71.Parent = TextLabel56
						UICorner72.CornerRadius = UDim.new(0, 5)
						UICorner72.Parent = TextLabel56
						CanvasGroup.Name = "SliderButtonFrame"
						CanvasGroup.Parent = Frame76
						CanvasGroup.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						CanvasGroup.BackgroundTransparency = 1
						CanvasGroup.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						CanvasGroup.BorderSizePixel = 0
						CanvasGroup.Size = UDim2.new(0.963, 0, 0, 31)
						CanvasGroup.LayoutOrder = 3
						Frame77.Name = "SliderFrame"
						Frame77.Parent = CanvasGroup
						Frame77.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame77.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame77.BorderSizePixel = 0
						Frame77.Position = UDim2.new(0, 0, 0.386999995, 0)
						Frame77.Size = UDim2.new(1, 0, 0.591000021, 0)
						Frame78.Name = "InSliderFrame"
						Frame78.Parent = Frame77
						Frame78.BackgroundColor3 = result[arg12.Theme].SliderButtonColor
						Frame78.BorderColor3 = result[arg12.Theme].SliderButtonColor
						Frame78.BorderSizePixel = 0
						Frame78.Size = UDim2.new(0, 7, 1, 0)
						UICorner70.Parent = Frame78
						TextButton23.Name = "SliderButton"
						TextButton23.Parent = Frame77
						TextButton23.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
						TextButton23.BackgroundTransparency = 1
						TextButton23.BorderColor3 = Color3.fromRGB(35, 45, 55)
						TextButton23.BorderSizePixel = 0
						TextButton23.Size = UDim2.new(1, 0, 1, 0)
						TextButton23.Font = Enum.Font.SourceSans
						TextButton23.Text = ""
						TextButton23.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton23.TextSize = 14
						UICorner71.CornerRadius = UDim.new(0, 6)
						UICorner71.Parent = TextButton23
						UICorner72.Parent = Frame77
						UICorner73.Parent = CanvasGroup
						BindableEvent.Event:Connect(function(arg124)
							local tween244 = TweenService:Create(Frame75, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg124].ItemBackgroundColor })
							tween244:Play()
							local tween245 = TweenService:Create(TextLabel54, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg124].ItemTitleColor })
							tween245:Play()
							local tween246 = TweenService:Create(TextLabel55, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg124].ItemDescriptionColor })
							tween246:Play()
							local tween247 = TweenService:Create(TextLabel56, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg124].ItemElementsTextColor })
							tween247:Play()
							local tween248 = TweenService:Create(CanvasGroup, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg124].ItemElementsBackgroundColor })
							tween248:Play()
							local tween249 = TweenService:Create(Frame77, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg124].ItemElementsBackgroundColor })
							tween249:Play()
							local tween250 = TweenService:Create(Frame78, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg124].SliderButtonColor })
							tween250:Play()
						end)
						Frame75.MouseEnter:Connect(function(arg125)
							local tween251 = TweenService:Create(Frame75, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween251:Play()
						end)
						Frame75.MouseLeave:Connect(function(arg126)
							local tween252 = TweenService:Create(Frame75, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween252:Play()
						end)
						TextLabel54.Visible = true
						TextLabel55.Visible = true
						TextButton23.InputBegan:Connect(function(input15, gameProcessed15)
						end)
						UserInputService.InputChanged:Connect(function(input16, gameProcessed16)
						end)
						UserInputService.InputEnded:Connect(function(input17, gameProcessed17)
						end)
						return {
							SetValue = function(arg127, arg128)
								TextLabel56.Text = math.floor(math.clamp(arg128, tonumber(tostring(arg123.MinValue)), tonumber(tostring(arg123.MaxValue))))
								arg123.Callback(math.floor(math.clamp(arg128, tonumber(tostring(arg123.MinValue)), tonumber(tostring(arg123.MaxValue)))))
								Frame78:TweenSize(UDim2.new(0, math.max((((math.floor(math.clamp(arg128, tonumber(tostring(arg123.MinValue)), tonumber(tostring(arg123.MaxValue)))) - tonumber(tostring(arg123.MinValue))) / (tonumber(tostring(arg123.MaxValue)) - tonumber(tostring(arg123.MinValue)))) * 0), 7), 1, 0), "Out", "Quad", 0.09, true)
							end
						}
					end,
					CreateTextBox = function(arg129, arg130)
						local Frame79 = Instance.new("Frame")
						local UIPadding60 = Instance.new("UIPadding")
						local UICorner74 = Instance.new("UICorner")
						local Frame80 = Instance.new("Frame")
						local TextBox6 = Instance.new("TextBox")
						local UICorner75 = Instance.new("UICorner")
						local UICorner76 = Instance.new("UICorner")
						local UIPadding61 = Instance.new("UIPadding")
						local Frame81 = Instance.new("Frame")
						local TextLabel57 = Instance.new("TextLabel")
						local UIPadding62 = Instance.new("UIPadding")
						local TextLabel58 = Instance.new("TextLabel")
						local UIListLayout45 = Instance.new("UIListLayout")
						Frame79.Name = "TextBox"
						Frame79.Parent = arg129.Instance
						Frame79.Active = true
						Frame79.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame79.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame79.BorderSizePixel = 0
						Frame79.Size = UDim2.new(1, -15, 0, 0)
						Frame79.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding60.Parent = Frame79
						UIPadding60.PaddingBottom = UDim.new(0, 10)
						UIPadding60.PaddingTop = UDim.new(0, 10)
						UICorner74.CornerRadius = UDim.new(0, 10)
						UICorner74.Parent = Frame79
						Frame80.Name = "TexttingBoxFrame"
						Frame80.Parent = Frame79
						Frame80.AnchorPoint = Vector2.new(1, 0.5)
						Frame80.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame80.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						Frame80.BorderSizePixel = 0
						Frame80.Position = UDim2.new(1, -14, 0.5, 0)
						Frame80.Size = UDim2.new(0, 0, 0, 27)
						Frame80.AutomaticSize = Enum.AutomaticSize.X
						Frame80.ZIndex = 3
						TextBox6.Name = "TexttingBox"
						TextBox6.Parent = Frame80
						TextBox6.AnchorPoint = Vector2.new(0, 0)
						TextBox6.BackgroundColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						TextBox6.BorderColor3 = result[arg12.Theme].ItemElementsBackgroundColor
						TextBox6.BorderSizePixel = 0
						TextBox6.BackgroundTransparency = 1
						TextBox6.ClipsDescendants = true
						TextBox6.Position = UDim2.new(0, 0, 0, 0)
						TextBox6.Size = UDim2.new(0, 0, 1, 0)
						TextBox6.ClearTextOnFocus = false
						TextBox6.Font = Enum.Font.Gotham
						TextBox6.PlaceholderColor3 = result[arg12.Theme].ItemElementsTextColor
						TextBox6.PlaceholderText = tostring(arg130.PlaceHolderText)
						TextBox6.TextXAlignment = Enum.TextXAlignment.Center
						TextBox6.Text = ""
						TextBox6.TextColor3 = result[arg12.Theme].ItemElementsTextColor
						TextBox6.TextSize = 14
						TextBox6.AutomaticSize = Enum.AutomaticSize.X
						TextBox6.ZIndex = 3
						local changedSignal6 = TextBox6:GetPropertyChangedSignal("Text")
						changedSignal6:Connect(function(arg131)
							Frame80.AutomaticSize = Enum.AutomaticSize.X
							TextBox6.AutomaticSize = Enum.AutomaticSize.X
							Frame80.Size = UDim2.new(0, 0, 0, 27)
							TextBox6.Size = UDim2.new(0, 0, 1, 0)
						end)
						UICorner76.CornerRadius = UDim.new(0, 6)
						UICorner76.Parent = TextBox6
						UICorner75.CornerRadius = UDim.new(0, 6)
						UICorner75.Parent = Frame80
						UIPadding61.Parent = Frame80
						UIPadding61.PaddingLeft = UDim.new(0, 10)
						UIPadding61.PaddingRight = UDim.new(0, 10)
						Frame81.Name = "TextBoxListing"
						Frame81.Parent = Frame79
						Frame81.Active = true
						Frame81.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame81.BackgroundTransparency = 1
						Frame81.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame81.BorderSizePixel = 0
						Frame81.Size = UDim2.new(0.563, 0, 0, 0)
						Frame81.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel57.Name = "TextBoxTitle"
						TextLabel57.Parent = Frame81
						TextLabel57.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel57.BackgroundTransparency = 1
						TextLabel57.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel57.BorderSizePixel = 0
						TextLabel57.Size = UDim2.new(0.659646749, 0, 0, 0)
						TextLabel57.Font = Enum.Font.GothamBold
						TextLabel57.Text = tostring(arg130.Title)
						TextLabel57.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel57.TextSize = 14
						TextLabel57.TextWrapped = true
						TextLabel57.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel57.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel57.LayoutOrder = 1
						UIPadding62.Parent = Frame81
						UIPadding62.PaddingLeft = UDim.new(0, 15)
						TextLabel58.Name = "TextBoxDescription"
						TextLabel58.Parent = Frame81
						TextLabel58.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel58.BackgroundTransparency = 1
						TextLabel58.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel58.BorderSizePixel = 0
						TextLabel58.Position = UDim2.new(0, 0, 0.500000238, 0)
						TextLabel58.Size = UDim2.new(0.659646749, 0, 0, 0)
						TextLabel58.Font = Enum.Font.Gotham
						TextLabel58.Text = tostring(arg130.Description)
						TextLabel58.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel58.TextSize = 14
						TextLabel58.TextWrapped = true
						TextLabel58.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel58.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel58.LayoutOrder = 2
						UIListLayout45.Parent = Frame81
						UIListLayout45.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout45.VerticalAlignment = Enum.VerticalAlignment.Center
						BindableEvent.Event:Connect(function(arg132)
							local tween253 = TweenService:Create(Frame79, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg132].ItemBackgroundColor })
							tween253:Play()
							local tween254 = TweenService:Create(Frame80, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg132].ItemElementsBackgroundColor })
							tween254:Play()
							local tween255 = TweenService:Create(TextLabel57, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg132].ItemTitleColor })
							tween255:Play()
							local tween256 = TweenService:Create(TextLabel58, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg132].ItemDescriptionColor })
							tween256:Play()
							local tween257 = TweenService:Create(TextBox6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg132].ItemElementsTextColor })
							tween257:Play()
							local tween258 = TweenService:Create(TextBox6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { PlaceholderColor3 = result[arg132].ItemElementsTextColor })
							tween258:Play()
						end)
						TextLabel57.Visible = true
						TextLabel58.Visible = true
						Frame79.MouseEnter:Connect(function(arg133)
							local tween259 = TweenService:Create(Frame79, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween259:Play()
						end)
						Frame79.MouseLeave:Connect(function(arg134)
							local tween260 = TweenService:Create(Frame79, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween260:Play()
						end)
						TextBox6.Focused:Connect(function(arg135)
							local tween261 = TweenService:Create(TextBox6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween261:Play()
						end)
						TextBox6.FocusLost:Connect(function(enterPressed2, inputObject2)
							arg130.Callback(arg137)
							local tween262 = TweenService:Create(TextBox6, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemElementsBackgroundColor })
							tween262:Play()
						end)
						return {
							SetText = function(arg136, arg137)
								TextBox6.Text = arg137
								arg130.Callback(arg137)
							end
						}
					end,
					CreateTitle = function(arg138, arg139)
						local TextLabel59 = Instance.new("TextLabel")
						TextLabel59.Name = "PageTitle"
						TextLabel59.Parent = arg138.Instance
						TextLabel59.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						TextLabel59.BackgroundTransparency = 1
						TextLabel59.BorderColor3 = Color3.fromRGB(36, 36, 36)
						TextLabel59.BorderSizePixel = 0
						TextLabel59.Position = UDim2.new(0.0374999382, 0, 0.158954486, 0)
						TextLabel59.Size = UDim2.new(1, -15, 0, 24)
						TextLabel59.Font = Enum.Font.GothamBold
						TextLabel59.Text = arg139
						TextLabel59.TextColor3 = result[arg12.Theme].ItemElementsTextColor
						TextLabel59.TextSize = 16
						TextLabel59.TextWrapped = true
						TextLabel59.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel59.AutomaticSize = Enum.AutomaticSize.Y
						BindableEvent.Event:Connect(function(arg140)
							local tween263 = TweenService:Create(TextLabel59, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg140].ItemElementsTextColor })
							tween263:Play()
						end)
					end,
					CreateToggle = function(arg141, arg142)
						local Frame82 = Instance.new("Frame")
						local TextButton24 = Instance.new("TextButton")
						local UIListLayout46 = Instance.new("UIListLayout")
						local UIPadding63 = Instance.new("UIPadding")
						local TextLabel60 = Instance.new("TextLabel")
						local TextLabel61 = Instance.new("TextLabel")
						local UIPadding64 = Instance.new("UIPadding")
						local UICorner77 = Instance.new("UICorner")
						local Frame83 = Instance.new("Frame")
						local UICorner78 = Instance.new("UICorner")
						local Frame84 = Instance.new("Frame")
						local UICorner79 = Instance.new("UICorner")
						local UIStroke11 = Instance.new("UIStroke")
						Frame82.Name = "Toggle"
						Frame82.Parent = arg141.Instance
						Frame82.Active = true
						Frame82.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame82.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame82.BorderSizePixel = 0
						Frame82.Size = UDim2.new(1, -15, 0, 0)
						Frame82.AutomaticSize = Enum.AutomaticSize.Y
						TextButton24.Name = "ToggleButton"
						TextButton24.Parent = Frame82
						TextButton24.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton24.BackgroundTransparency = 1
						TextButton24.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton24.BorderSizePixel = 0
						TextButton24.Size = UDim2.new(1, 0, 0, 0)
						TextButton24.AutoButtonColor = false
						TextButton24.Font = Enum.Font.SourceSans
						TextButton24.Text = ""
						TextButton24.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton24.TextSize = 14
						TextButton24.AutomaticSize = Enum.AutomaticSize.Y
						UIListLayout46.Parent = TextButton24
						UIListLayout46.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout46.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding63.Parent = TextButton24
						UIPadding63.PaddingLeft = UDim.new(0, 15)
						TextLabel60.Name = "ToggleTitle"
						TextLabel60.Parent = TextButton24
						TextLabel60.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel60.BackgroundTransparency = 1
						TextLabel60.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel60.BorderSizePixel = 0
						TextLabel60.Position = UDim2.new(-8.46417336e-08, 0, 0, 0)
						TextLabel60.Size = UDim2.new(0.797531486, 0, 0, 0)
						TextLabel60.Font = Enum.Font.GothamBold
						TextLabel60.Text = tostring(arg142.Title)
						TextLabel60.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel60.TextSize = 14
						TextLabel60.TextWrapped = true
						TextLabel60.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel60.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel61.Name = "ToggleDescription"
						TextLabel61.Parent = TextButton24
						TextLabel61.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel61.BackgroundTransparency = 1
						TextLabel61.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel61.BorderSizePixel = 0
						TextLabel61.Position = UDim2.new(-8.46417336e-08, 0, 0.500000238, 0)
						TextLabel61.Size = UDim2.new(0.797531486, 0, 0, 0)
						TextLabel61.Font = Enum.Font.Gotham
						TextLabel61.Text = tostring(arg142.Description)
						TextLabel61.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel61.TextSize = 14
						TextLabel61.TextWrapped = true
						TextLabel61.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel61.AutomaticSize = Enum.AutomaticSize.Y
						UIPadding64.Parent = Frame82
						UIPadding64.PaddingBottom = UDim.new(0, 10)
						UIPadding64.PaddingTop = UDim.new(0, 10)
						UICorner77.CornerRadius = UDim.new(0, 10)
						UICorner77.Parent = Frame82
						Frame83.Name = "ToggleFrame"
						Frame83.Parent = Frame82
						Frame83.AnchorPoint = Vector2.new(1, 0.5)
						Frame83.BackgroundColor3 = result[arg12.Theme].ItemHoverColor
						Frame83.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Frame83.BorderSizePixel = 0
						Frame83.Position = UDim2.new(1, -14, 0.5, 0)
						Frame83.Size = UDim2.new(0, 46, 0, 21)
						UICorner78.CornerRadius = UDim.new(99, 99)
						UICorner78.Parent = Frame83
						Frame84.Name = "SlidingToggle"
						Frame84.Parent = Frame83
						Frame84.BackgroundColor3 = result[arg12.Theme].SlidingToggleBefore
						Frame84.BorderColor3 = result[arg12.Theme].SlidingToggleBefore
						Frame84.BorderSizePixel = 0
						Frame84.Position = UDim2.new(0.435, 0, 0, 0)
						Frame84.Size = UDim2.new(0, 20, 0, 21)
						Frame84.AnchorPoint = Vector2.new(1, 0)
						UICorner79.CornerRadius = UDim.new(99, 99)
						UICorner79.Parent = Frame84
						UIStroke11.Parent = Frame83
						UIStroke11.Color = result[arg12.Theme].ToggleStrokeBefore
						UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						TextLabel60.Visible = true
						TextLabel61.Visible = true
						Frame82.MouseEnter:Connect(function(arg143)
							local tween264 = TweenService:Create(Frame82, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemHoverColor })
							tween264:Play()
						end)
						Frame82.MouseLeave:Connect(function(arg144)
							local tween265 = TweenService:Create(Frame82, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg].ItemBackgroundColor })
							tween265:Play()
						end)
						BindableEvent.Event:Connect(function(arg145)
							local tween266 = TweenService:Create(Frame82, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg145].ItemBackgroundColor })
							tween266:Play()
							local tween267 = TweenService:Create(TextLabel60, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg145].ItemTitleColor })
							tween267:Play()
							local tween268 = TweenService:Create(TextLabel61, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg145].ItemDescriptionColor })
							tween268:Play()
							local tween269 = TweenService:Create(Frame83, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg145].ToggleBackgroundAfter })
							tween269:Play()
							local tween270 = TweenService:Create(Frame84, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg145].SlidingToggleAfter })
							tween270:Play()
							local tween271 = TweenService:Create(UIStroke11, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg145].ToggleStrokeAfter })
							tween271:Play()
						end)
						TextButton24.MouseButton1Click:Connect(function()
							arg142.Callback(arg142.Status)
						end)
						return {
							SetStatus = function(arg146, arg147)
								arg142.Callback(arg147)
							end
						}
					end,
					CreateVideo = function(arg148, arg149)
						local Frame85 = Instance.new("Frame")
						local TextButton25 = Instance.new("TextButton")
						local TextLabel62 = Instance.new("TextLabel")
						local TextLabel63 = Instance.new("TextLabel")
						local UIPadding65 = Instance.new("UIPadding")
						local UIListLayout47 = Instance.new("UIListLayout")
						local UIPadding66 = Instance.new("UIPadding")
						local UICorner80 = Instance.new("UICorner")
						local ImageLabel23 = Instance.new("ImageLabel")
						local Frame86 = Instance.new("Frame")
						local UICorner81 = Instance.new("UICorner")
						local UIListLayout48 = Instance.new("UIListLayout")
						local Frame87 = Instance.new("Frame")
						local Frame88 = Instance.new("Frame")
						local UICorner82 = Instance.new("UICorner")
						local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
						local UICorner83 = Instance.new("UICorner")
						local Frame89 = Instance.new("Frame")
						local ImageButton6 = Instance.new("ImageButton")
						local ImageButton7 = Instance.new("ImageButton")
						local ImageButton8 = Instance.new("ImageButton")
						local ImageButton9 = Instance.new("ImageButton")
						local UIListLayout49 = Instance.new("UIListLayout")
						local UICorner84 = Instance.new("UICorner")
						local UIPadding67 = Instance.new("UIPadding")
						local VideoFrame = Instance.new("VideoFrame")
						local UIStroke12 = Instance.new("UIStroke")
						local UICorner85 = Instance.new("UICorner")
						Frame85.Name = "Video"
						Frame85.Parent = arg148.Instance
						Frame85.Active = true
						Frame85.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame85.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame85.BorderSizePixel = 0
						Frame85.Size = UDim2.new(1, -15, 0, 0)
						Frame85.AutomaticSize = Enum.AutomaticSize.Y
						TextButton25.Name = "VideoButton"
						TextButton25.Parent = Frame85
						TextButton25.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						TextButton25.BackgroundTransparency = 1
						TextButton25.BorderColor3 = Color3.fromRGB(35, 35, 35)
						TextButton25.BorderSizePixel = 0
						TextButton25.Size = UDim2.new(1, 0, 0, 0)
						TextButton25.AutoButtonColor = false
						TextButton25.Font = Enum.Font.SourceSans
						TextButton25.Text = ""
						TextButton25.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextButton25.TextSize = 14
						TextButton25.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel62.Name = "VideoTitle"
						TextLabel62.Parent = TextButton25
						TextLabel62.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel62.BackgroundTransparency = 1
						TextLabel62.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel62.BorderSizePixel = 0
						TextLabel62.Position = UDim2.new(0, 0, 0.122222051, 0)
						TextLabel62.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel62.Font = Enum.Font.GothamBold
						TextLabel62.Text = tostring(arg149.Title)
						TextLabel62.TextColor3 = result[arg12.Theme].ItemTitleColor
						TextLabel62.TextSize = 14
						TextLabel62.TextWrapped = true
						TextLabel62.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel62.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel62.LayoutOrder = 1
						TextLabel63.Name = "VideoDescription"
						TextLabel63.Parent = TextButton25
						TextLabel63.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel63.BackgroundTransparency = 1
						TextLabel63.BorderColor3 = Color3.fromRGB(43, 43, 41)
						TextLabel63.BorderSizePixel = 0
						TextLabel63.Position = UDim2.new(0, 0, 0.5, 0)
						TextLabel63.Size = UDim2.new(0.854911864, 0, 0, 0)
						TextLabel63.Font = Enum.Font.Gotham
						TextLabel63.Text = tostring(arg149.Description)
						TextLabel63.TextColor3 = result[arg12.Theme].ItemDescriptionColor
						TextLabel63.TextSize = 14
						TextLabel63.TextWrapped = true
						TextLabel63.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel63.AutomaticSize = Enum.AutomaticSize.Y
						TextLabel63.LayoutOrder = 2
						UIPadding65.Parent = TextButton25
						UIPadding65.PaddingLeft = UDim.new(0, 15)
						UIListLayout47.Parent = TextButton25
						UIListLayout47.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout47.VerticalAlignment = Enum.VerticalAlignment.Center
						UIPadding66.Parent = Frame85
						UIPadding66.PaddingBottom = UDim.new(0, 10)
						UIPadding66.PaddingTop = UDim.new(0, 10)
						UICorner80.CornerRadius = UDim.new(0, 10)
						UICorner80.Parent = Frame85
						ImageLabel23.Name = "Arrow"
						ImageLabel23.Parent = Frame85
						ImageLabel23.AnchorPoint = Vector2.new(1, 0.5)
						ImageLabel23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel23.BackgroundTransparency = 1
						ImageLabel23.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ImageLabel23.BorderSizePixel = 0
						ImageLabel23.Position = UDim2.new(1, -14, 0.5, 0)
						ImageLabel23.Size = UDim2.new(0, 26, 0, 27)
						ImageLabel23.Image = "rbxassetid://6034818372"
						ImageLabel23.ImageColor3 = Color3.fromRGB(182, 182, 182)
						Frame86.Name = "VideoFrame"
						Frame86.Parent = arg148.Instance
						Frame86.Active = true
						Frame86.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame86.BackgroundTransparency = 0
						Frame86.BorderColor3 = Color3.fromRGB(35, 35, 35)
						Frame86.BorderSizePixel = 0
						Frame86.Size = UDim2.new(1, -15, 0, 0)
						Frame86.ClipsDescendants = true
						Frame86.AutomaticSize = Enum.AutomaticSize.None
						Frame86.Visible = false
						UICorner81.CornerRadius = UDim.new(0, 10)
						UICorner81.Parent = Frame86
						UIListLayout48.Parent = Frame86
						UIListLayout48.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout48.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout48.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout48.VerticalAlignment = Enum.VerticalAlignment.Center
						UIListLayout48.Padding = UDim.new(0, 30)
						Frame87.Name = "VideoFrame"
						Frame87.Parent = Frame86
						Frame87.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame87.BackgroundTransparency = 1
						Frame87.BorderColor3 = Color3.fromRGB(33, 33, 33)
						Frame87.BorderSizePixel = 0
						Frame87.Size = UDim2.new(1, 0, 1, 0)
						Frame87.AutomaticSize = Enum.AutomaticSize.Y
						Frame87.ClipsDescendants = true
						VideoFrame.Parent = Frame88
						VideoFrame.BackgroundTransparency = 1
						VideoFrame.Size = UDim2.new(1, 0, 1, 0)
						VideoFrame.Position = UDim2.new(0, 0, 0, 0)
						VideoFrame.Volume = 1
						VideoFrame.TimePosition = 0
						VideoFrame.Looped = true
						VideoFrame.Video = arg149.VideoInfo.VideoId
						UIStroke12.Parent = VideoFrame
						UIStroke12.Color = arg149.VideoInfo.VideoStrokeColor
						UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						UICorner85.Parent = VideoFrame
						Frame88.Name = "VF"
						Frame88.Parent = Frame87
						Frame88.AnchorPoint = Vector2.new(0.5, 0.5)
						Frame88.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
						Frame88.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Frame88.BackgroundTransparency = 1
						Frame88.BorderSizePixel = 0
						Frame88.Position = UDim2.new(0.5, 0, 0.5, 0)
						Frame88.Size = UDim2.new(0.723, 0, 0.953, 0)
						UICorner82.Parent = Frame88
						UIAspectRatioConstraint.Parent = Frame88
						UIAspectRatioConstraint.AspectRatio = 1.778
						UICorner83.CornerRadius = UDim.new(0, 6)
						UICorner83.Parent = Frame87
						Frame89.Name = "VidBtnS"
						Frame89.Parent = Frame87
						Frame89.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
						Frame89.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Frame89.BorderSizePixel = 0
						Frame89.Position = UDim2.new(0.5, 120, 0, 0)
						Frame89.Size = UDim2.new(0, 29, 0, 118)
						ImageButton6.Name = "Start"
						ImageButton6.Parent = Frame89
						ImageButton6.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton6.BackgroundTransparency = 1
						ImageButton6.BorderColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton6.BorderSizePixel = 0
						ImageButton6.Position = UDim2.new(0.206896558, 0, 0.0762711838, 0)
						ImageButton6.Size = UDim2.new(0, 25, 0, 25)
						ImageButton6.Image = "rbxassetid://6026663699"
						ImageButton6.LayoutOrder = 1
						ImageButton6.MouseButton1Click:Connect(function()
							VideoFrame:Play()
						end)
						ImageButton7.Name = "Stop"
						ImageButton7.Parent = Frame89
						ImageButton7.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton7.BackgroundTransparency = 1
						ImageButton7.BorderColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton7.BorderSizePixel = 0
						ImageButton7.Position = UDim2.new(0.206896558, 0, 0.288135588, 0)
						ImageButton7.Size = UDim2.new(0, 25, 0, 25)
						ImageButton7.Image = "rbxassetid://6026681576"
						ImageButton7.LayoutOrder = 2
						ImageButton7.MouseButton1Click:Connect(function()
							VideoFrame:Pause()
						end)
						ImageButton8.Name = "Prev5"
						ImageButton8.Parent = Frame89
						ImageButton8.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton8.BackgroundTransparency = 1
						ImageButton8.BorderColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton8.BorderSizePixel = 0
						ImageButton8.Position = UDim2.new(0.206896558, 0, 0.5, 0)
						ImageButton8.Size = UDim2.new(0, 25, 0, 25)
						ImageButton8.Image = "rbxassetid://6026667011"
						ImageButton8.LayoutOrder = 3
						ImageButton8.MouseButton1Click:Connect(function()
							VideoFrame.TimePosition = -5
						end)
						ImageButton9.Name = "Skip5"
						ImageButton9.Parent = Frame89
						ImageButton9.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton9.BackgroundTransparency = 1
						ImageButton9.BorderColor3 = Color3.fromRGB(33, 33, 33)
						ImageButton9.BorderSizePixel = 0
						ImageButton9.Position = UDim2.new(0.206896558, 0, 0.711864412, 0)
						ImageButton9.Size = UDim2.new(0, 25, 0, 25)
						ImageButton9.Image = "rbxassetid://6026667005"
						ImageButton9.LayoutOrder = 4
						ImageButton9.MouseButton1Click:Connect(function()
							VideoFrame.TimePosition = 0
						end)
						UIListLayout49.Parent = Frame89
						UIListLayout49.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout49.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout49.VerticalAlignment = Enum.VerticalAlignment.Center
						UICorner84.CornerRadius = UDim.new(0, 6)
						UICorner84.Parent = Frame89
						UIPadding67.Parent = Frame86
						UIPadding67.PaddingBottom = UDim.new(0, 15)
						UIPadding67.PaddingLeft = UDim.new(0, 15)
						UIPadding67.PaddingRight = UDim.new(0, 15)
						UIPadding67.PaddingTop = UDim.new(0, 15)
						Frame85.MouseEnter:Connect(function(arg150)
							local tween272 = TweenService:Create(Frame85, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg145].ItemHoverColor })
							tween272:Play()
						end)
						Frame85.MouseLeave:Connect(function(arg151)
							local tween273 = TweenService:Create(Frame85, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg145].ItemBackgroundColor })
							tween273:Play()
						end)
						TextLabel62.Visible = true
						TextLabel63.Visible = true
						BindableEvent.Event:Connect(function(arg152)
							local tween274 = TweenService:Create(Frame85, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg152].ItemBackgroundColor })
							tween274:Play()
							local tween275 = TweenService:Create(TextLabel62, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg152].ItemTitleColor })
							tween275:Play()
							local tween276 = TweenService:Create(TextLabel63, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg152].ItemDescriptionColor })
							tween276:Play()
							local tween277 = TweenService:Create(Frame86, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg152].ItemBackgroundColor })
							tween277:Play()
						end)
						TextButton25.MouseButton1Click:Connect(function()
							Frame86.Visible = true
							local tween278 = TweenService:Create(Frame86, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Size = UDim2.new(1, -15, 0, 100) })
							tween278:Play()
							local tween279 = TweenService:Create(UIStroke12, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = 0 })
							tween279:Play()
							VideoFrame.Visible = true
							Frame86:GetChildren()
							local tween280 = TweenService:Create(Frame87, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
							tween280:Play()
							task.wait(0.1)
							Frame86.AutomaticSize = Enum.AutomaticSize.Y
						end)
					end
				}
			end,
			DeleteConfig = function(arg153, arg154)
				warn("[Hawk Lib]: Config file not found.")
			end,
			LoadConfig = function(arg155, arg156)
				warn("[Hawk Lib]: Config file not found.")
			end,
			SaveConfig = function(arg157, arg158)
				local json = {
					{ flag = "UI Keybind", key = "H", type = "KeyBind" },
					{ flag = arg69.Flag, multioption = arg69.MultiOption, selected = {}, type = "Dropdown" },
					{ flag = arg123.Flag, type = "Slider", value = math.floor(math.clamp(arg128, tonumber(tostring(arg123.MinValue)), tonumber(tostring(arg123.MaxValue)))) },
					{ color = tostring(arg62.CurrentColor), flag = arg62.Flag, type = "ColorPicker" },
					{ flag = "ConfigDropdown", multioption = false, selected = {}, type = "Dropdown" },
					{ flag = "ConfigNamer", text = "", type = "TextBox" },
					{ flag = arg142.Flag, status = arg147, type = "Toggle" },
					{ flag = arg55.Flag, status = arg60, type = "CheckBox" },
					{ flag = arg130.Flag, text = arg137, type = "TextBox" },
					{ flag = "ThemePicker", selected = list2, type = "Picker" },
					{ flag = arg88.Flag, key = arg95, type = "KeyBind" },
					{ flag = arg112.Flag, selected = { arg112.List[1] }, type = "Picker" }
				}
				writefile(arg12.Config.FolderPath .. "/" .. arg158, json)
			end,
			SetTheme = function(arg159, arg160)
				BindableEvent:Fire(arg160)
			end,
			ToggleUI = function(arg161, arg162)
				ScreenGui:GetChildren()
				Frame15.Visible = false
				local Frame90 = Instance.new("Frame")
				local Frame91 = Instance.new("Frame")
				local Frame92 = Instance.new("Frame")
				local ImageLabel24 = Instance.new("ImageLabel")
				local UICorner86 = Instance.new("UICorner")
				local Frame93 = Instance.new("Frame")
				local TextLabel64 = Instance.new("TextLabel")
				local TextLabel65 = Instance.new("TextLabel")
				local UIListLayout50 = Instance.new("UIListLayout")
				local UIPadding68 = Instance.new("UIPadding")
				local UICorner87 = Instance.new("UICorner")
				local UIStroke13 = Instance.new("UIStroke")
				local UIPadding69 = Instance.new("UIPadding")
				local UICorner88 = Instance.new("UICorner")
				Frame90.Name = "NotificationContainer"
				Frame90.Parent = Frame
				Frame90.Active = true
				Frame90.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame90.BackgroundTransparency = 1
				Frame90.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame90.BorderSizePixel = 0
				Frame90.Size = UDim2.new(1, 0, 1, 0)
				Frame90.ClipsDescendants = false
				Frame91.Name = "Notification"
				Frame91.Parent = Frame90
				Frame91.Active = true
				Frame91.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame91.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame91.BorderSizePixel = 0
				Frame91.Position = UDim2.new(1000, 0, 0, 0)
				Frame91.Size = UDim2.new(0, 287, 0, 61)
				Frame91.AutomaticSize = Enum.AutomaticSize.Y
				Frame91.BackgroundTransparency = 0.4
				Frame92.Name = "IconFrame"
				Frame92.Parent = Frame91
				Frame92.AnchorPoint = Vector2.new(0, 0.5)
				Frame92.BackgroundColor3 = Color3.fromRGB(67, 136, 246)
				Frame92.Position = UDim2.new(0.0351664573, 0, 0.5, 0)
				Frame92.Size = UDim2.new(0, 41, 0, 41)
				ImageLabel24.Name = "Icon"
				ImageLabel24.Parent = Frame92
				ImageLabel24.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
				ImageLabel24.BackgroundTransparency = 1
				ImageLabel24.BorderColor3 = Color3.fromRGB(155, 135, 255)
				ImageLabel24.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
				ImageLabel24.Size = UDim2.new(0, 26, 0, 26)
				ImageLabel24.Image = "rbxassetid://10723407389"
				UICorner86.Parent = Frame92
				Frame93.Name = "NotificationListing"
				Frame93.Parent = Frame91
				Frame93.Active = true
				Frame93.BackgroundColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame93.BorderColor3 = result[arg12.Theme].ItemBackgroundColor
				Frame93.BorderSizePixel = 0
				Frame93.Position = UDim2.new(0.202000007, 0, 0, 0)
				Frame93.Size = UDim2.new(0.756097555, 0, 1, 0)
				Frame93.AutomaticSize = Enum.AutomaticSize.Y
				Frame93.BackgroundTransparency = 1
				UIListLayout50.Parent = Frame93
				UIListLayout50.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout50.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout50.FillDirection = Enum.FillDirection.Vertical
				TextLabel64.Name = "NotificationTitle"
				TextLabel64.Parent = Frame93
				TextLabel64.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				TextLabel64.BackgroundTransparency = 1
				TextLabel64.BorderColor3 = Color3.fromRGB(43, 43, 41)
				TextLabel64.BorderSizePixel = 0
				TextLabel64.Size = UDim2.new(0.912857533, 0, 0, 0)
				TextLabel64.Font = Enum.Font.GothamBold
				TextLabel64.Text = "Hawk Lib"
				TextLabel64.TextColor3 = result[arg12.Theme].ItemTitleColor
				TextLabel64.TextSize = 14
				TextLabel64.TextWrapped = true
				TextLabel64.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel64.AutomaticSize = Enum.AutomaticSize.Y
				TextLabel65.Name = "NotificationDescription"
				TextLabel65.Parent = Frame93
				TextLabel65.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				TextLabel65.BackgroundTransparency = 1
				TextLabel65.BorderColor3 = Color3.fromRGB(43, 43, 41)
				TextLabel65.BorderSizePixel = 0
				TextLabel65.Size = UDim2.new(0.912857533, 0, 0, 0)
				TextLabel65.Font = Enum.Font.Gotham
				TextLabel65.Text = "GUI has minimized. Current key is: H"
				TextLabel65.TextColor3 = result[arg12.Theme].ItemDescriptionColor
				TextLabel65.TextSize = 14
				TextLabel65.TextWrapped = true
				TextLabel65.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel65.AutomaticSize = Enum.AutomaticSize.Y
				UIPadding68.Parent = Frame93
				UIPadding68.PaddingBottom = UDim.new(0, 5)
				UIPadding68.PaddingTop = UDim.new(0, 5)
				UICorner87.CornerRadius = UDim.new(0, 10)
				UICorner87.Parent = Frame91
				UIStroke13.Parent = Frame91
				UIStroke13.Color = result[arg12.Theme].NotificationStrokeColor
				UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIPadding69.Parent = Frame91
				UIPadding69.PaddingBottom = UDim.new(0, 10)
				UIPadding69.PaddingTop = UDim.new(0, 10)
				UICorner88.CornerRadius = UDim.new(0, 10)
				UICorner88.Parent = Frame90
				local connection3 = BindableEvent.Event:Connect(function(arg163)
					local tween281 = TweenService:Create(Frame90, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg163].ItemBackgroundColor })
					tween281:Play()
					local tween282 = TweenService:Create(Frame91, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { BackgroundColor3 = result[arg163].ItemBackgroundColor })
					tween282:Play()
					local tween283 = TweenService:Create(TextLabel64, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg163].ItemTitleColor })
					tween283:Play()
					local tween284 = TweenService:Create(TextLabel65, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextColor3 = result[arg163].ItemDescriptionColor })
					tween284:Play()
					local tween285 = TweenService:Create(UIStroke13, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Color = result[arg163].NotificationStrokeColor })
					tween285:Play()
				end)
				task.spawn(function(...)
					Frame90.Size = UDim2.new(0, 0, 0, 0)
					Frame90.ClipsDescendants = true
					Frame91.Position = UDim2.new(3, 0, 0, 0)
					local tween9 = TweenService:Create(Frame90, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 61) })
					tween9:Play()
					task.wait(0.2)
					local tween10 = TweenService:Create(Frame90, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 287, 0, 61) })
					tween10:Play()
					task.wait(0.2)
					local tween11 = TweenService:Create(Frame91, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Position = UDim2.new(0, 0, 0, 0) })
					tween11:Play()
					task.wait(4)
					local tween12 = TweenService:Create(Frame91, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { Position = UDim2.new(3, 0, 0, 0) })
					tween12:Play()
					task.wait(0.2)
					local tween13 = TweenService:Create(Frame90, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 61) })
					tween13:Play()
					task.wait(0.2)
					local tween14 = TweenService:Create(Frame90, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = UDim2.new(0, 0, 0, 0) })
					tween14:Play()
					Frame90:Destroy()
					connection3:Disconnect()
				end)
			end
		}
	end,
	Destroy = function(arg164, arg165)
		ScreenGui:Destroy()
	end,
	ToggleUI = function(arg166, arg167)
		ScreenGui:GetChildren()
	end
}
