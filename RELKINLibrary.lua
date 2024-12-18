
local Lib = {}

local tweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

function Lib:Drag(frame,parent)
	local UIS = game:GetService('UserInputService')
	parent = parent or frame
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(parent, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = parent.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end

function Lib.Window(Title)
	Title = Title or "Ui Library"

local RELKINlibrary = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local PlaceHolder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Navgations = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local Tab1 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Tab2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Controls1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Click = Instance.new("ImageLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Slider = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local Controls2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Button_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Click_2 = Instance.new("ImageLabel")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local Powered = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local TopBar = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Close = Instance.new("ImageButton")
local UICorner_12 = Instance.new("UICorner")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local Name = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
local MainShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")
local mobile = Instance.new("Frame")
local BUTTON = Instance.new("ImageButton")
local UICorner_14 = Instance.new("UICorner")
local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
local BUTTONShadow = Instance.new("ImageLabel")
local mobileShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_21 = Instance.new("UIAspectRatioConstraint")

	--Properties:
local RELKINlibrary = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local PlaceHolder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Navgations = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")
local Tab1 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Tab2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Controls1 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Click = Instance.new("ImageLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Slider = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local Controls2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Button_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Click_2 = Instance.new("ImageLabel")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local Powered = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local TopBar = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Close = Instance.new("ImageButton")
local UICorner_12 = Instance.new("UICorner")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local Name = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
local MainShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")
local mobile = Instance.new("Frame")
local BUTTON = Instance.new("ImageButton")
local UICorner_14 = Instance.new("UICorner")
local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
local BUTTONShadow = Instance.new("ImageLabel")
local mobileShadow = Instance.new("ImageLabel")
local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_21 = Instance.new("UIAspectRatioConstraint")

--Properties:

RELKINlibrary.Name = "RELKIN library"
RELKINlibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RELKINlibrary.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = RELKINlibrary
Main.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.373575211, 0, 0.302615196, 0)
Main.Size = UDim2.new(0.321199149, 0, 0.799999952, 0)
Main.ZIndex = 0

UICorner.Parent = Main

PlaceHolder.Name = "Place Holder"
PlaceHolder.Parent = Main
PlaceHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlaceHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlaceHolder.BorderSizePixel = 0
PlaceHolder.Position = UDim2.new(0, 0, 0.0967412144, 0)
PlaceHolder.Size = UDim2.new(1, 0, 0.900000036, 0)

UICorner_2.Parent = PlaceHolder

UIAspectRatioConstraint.Parent = PlaceHolder
UIAspectRatioConstraint.AspectRatio = 1.333

Navgations.Name = "Navgations"
Navgations.Parent = PlaceHolder
Navgations.Active = true
Navgations.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Navgations.BorderColor3 = Color3.fromRGB(0, 0, 0)
Navgations.BorderSizePixel = 0
Navgations.Position = UDim2.new(-0.00106125372, 0, -0.00223766663, 0)
Navgations.Size = UDim2.new(0.258252025, 0, 1.00223756, 0)
Navgations.ZIndex = 2
Navgations.CanvasSize = UDim2.new(0, 0, 5, 0)
Navgations.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Navgations.ScrollBarThickness = 1
Navgations.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Navgations.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

UICorner_3.Parent = Navgations

Tab1.Name = "Tab 1"
Tab1.Parent = Navgations
Tab1.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Tab1.BackgroundTransparency = 1.000
Tab1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab1.BorderSizePixel = 0
Tab1.Position = UDim2.new(0.0171347726, 0, -0.00111110881, 0)
Tab1.Size = UDim2.new(0, 95, 0, 30)
Tab1.ZIndex = 2
Tab1.Font = Enum.Font.Unknown
Tab1.Text = "Home"
Tab1.TextColor3 = Color3.fromRGB(0, 0, 0)
Tab1.TextScaled = true
Tab1.TextSize = 14.000
Tab1.TextWrapped = true
Tab1.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.Parent = Tab1

UITextSizeConstraint.Parent = Tab1
UITextSizeConstraint.MaxTextSize = 30

UIAspectRatioConstraint_2.Parent = Tab1
UIAspectRatioConstraint_2.AspectRatio = 3.167

Tab2.Name = "Tab 2"
Tab2.Parent = Navgations
Tab2.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Tab2.BackgroundTransparency = 1.000
Tab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab2.BorderSizePixel = 0
Tab2.Position = UDim2.new(0.00666601956, 0, 0.100128509, 0)
Tab2.Size = UDim2.new(0, 95, 0, 30)
Tab2.ZIndex = 2
Tab2.Font = Enum.Font.Unknown
Tab2.Text = "Home"
Tab2.TextColor3 = Color3.fromRGB(0, 0, 0)
Tab2.TextScaled = true
Tab2.TextSize = 14.000
Tab2.TextWrapped = true
Tab2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_5.Parent = Tab2

UITextSizeConstraint_2.Parent = Tab2
UITextSizeConstraint_2.MaxTextSize = 30

UIAspectRatioConstraint_3.Parent = Tab2
UIAspectRatioConstraint_3.AspectRatio = 3.167

UIAspectRatioConstraint_4.Parent = Navgations
UIAspectRatioConstraint_4.AspectRatio = 0.333

Controls1.Name = "Controls1"
Controls1.Parent = PlaceHolder
Controls1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Controls1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Controls1.BorderSizePixel = 0
Controls1.Position = UDim2.new(0.999795973, 0, 1.00140929, 0)
Controls1.Size = UDim2.new(-0.75, 0, -1, 0)
Controls1.Visible = false

UICorner_6.Parent = Controls1

Button.Name = "Button"
Button.Parent = Controls1
Button.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0.997752786, 0, 0.111111112, 0)
Button.Font = Enum.Font.Unknown
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true
Button.TextXAlignment = Enum.TextXAlignment.Left

UICorner_7.Parent = Button

Click.Name = "Click"
Click.Parent = Button
Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Click.BackgroundTransparency = 1.000
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.BorderSizePixel = 0
Click.Position = UDim2.new(0.903153181, 0, 0.200000003, 0)
Click.Size = UDim2.new(0, 30, 0, 30)
Click.Image = "rbxassetid://10734898355"

UIAspectRatioConstraint_5.Parent = Click

UITextSizeConstraint_3.Parent = Button
UITextSizeConstraint_3.MaxTextSize = 50

UIAspectRatioConstraint_6.Parent = Button
UIAspectRatioConstraint_6.AspectRatio = 8.880

UIAspectRatioConstraint_7.Parent = Controls1
UIAspectRatioConstraint_7.AspectRatio = 0.989

Slider.Name = "Slider"
Slider.Parent = Controls1
Slider.Active = true
Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider.BackgroundTransparency = 1.000
Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.591403782, 0, -0.1905635, 0)
Slider.Rotation = 90.000
Slider.Size = UDim2.new(0.0941753089, 0, 0.711770952, 0)
Slider.ZIndex = 2
Slider.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Slider.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-4.50771475, 0, 0.603807867, 0)
TextLabel.Rotation = -90.000
TextLabel.Size = UDim2.new(0, 286, 0, 50)
TextLabel.ZIndex = -1
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Slider"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 44.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_4.Parent = TextLabel
UITextSizeConstraint_4.MaxTextSize = 44

UIAspectRatioConstraint_8.Parent = TextLabel
UIAspectRatioConstraint_8.AspectRatio = 9.000

UIAspectRatioConstraint_9.Parent = Slider
UIAspectRatioConstraint_9.AspectRatio = 0.131

Controls2.Name = "Controls2"
Controls2.Parent = PlaceHolder
Controls2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Controls2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Controls2.BorderSizePixel = 0
Controls2.Position = UDim2.new(0.256351292, 0, 2.00975975e-07, 0)
Controls2.Size = UDim2.new(0.751880705, 0, 1.002195, 0)

UICorner_8.Parent = Controls2

Button_2.Name = "Button"
Button_2.Parent = Controls2
Button_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0.997752786, 0, 0.111111112, 0)
Button_2.Font = Enum.Font.Unknown
Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_2.TextScaled = true
Button_2.TextSize = 14.000
Button_2.TextWrapped = true
Button_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_9.Parent = Button_2

Click_2.Name = "Click"
Click_2.Parent = Button_2
Click_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Click_2.BackgroundTransparency = 1.000
Click_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click_2.BorderSizePixel = 0
Click_2.Position = UDim2.new(0.903153181, 0, 0.200000003, 0)
Click_2.Size = UDim2.new(0, 30, 0, 30)
Click_2.Image = "rbxassetid://10734898355"

UIAspectRatioConstraint_10.Parent = Click_2

UITextSizeConstraint_5.Parent = Button_2
UITextSizeConstraint_5.MaxTextSize = 50

UIAspectRatioConstraint_11.Parent = Button_2
UIAspectRatioConstraint_11.AspectRatio = 8.880

UIAspectRatioConstraint_12.Parent = Controls2
UIAspectRatioConstraint_12.AspectRatio = 0.989

Powered.Name = "Powered"
Powered.Parent = Controls2
Powered.BackgroundColor3 = Color3.fromRGB(145, 145, 145)
Powered.BackgroundTransparency = 1.000
Powered.BorderColor3 = Color3.fromRGB(0, 0, 0)
Powered.BorderSizePixel = 0
Powered.Position = UDim2.new(-0.00922007579, 0, 0.171991676, 0)
Powered.Size = UDim2.new(1.00572681, 0, 0.839700222, 9)
Powered.Font = Enum.Font.Unknown
Powered.Text = "Powered by SKWERKIN"
Powered.TextColor3 = Color3.fromRGB(0, 0, 0)
Powered.TextScaled = true
Powered.TextSize = 41.000
Powered.TextWrapped = true

UICorner_10.Parent = Powered

UITextSizeConstraint_6.Parent = Powered
UITextSizeConstraint_6.MaxTextSize = 41

UIAspectRatioConstraint_13.Parent = Powered
UIAspectRatioConstraint_13.AspectRatio = 1.254

UIAspectRatioConstraint_14.Parent = Main
UIAspectRatioConstraint_14.AspectRatio = 1.200

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.fromRGB(37, 63, 136)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.00300000003, 0, -3.01463992e-08, 0)
TopBar.Size = UDim2.new(1, 0, 0.0980000049, 0)

UICorner_11.Parent = TopBar

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.935793936, 0, 0.100000001, 0)
Close.Size = UDim2.new(0.0666666701, 0, 0.816326559, 0)
Close.ZIndex = 2
Close.Image = "rbxassetid://10747384394"

UICorner_12.Parent = Close

UIAspectRatioConstraint_15.Parent = Close
UIAspectRatioConstraint_15.AspectRatio = 1.000

Name.Name = "Name"
Name.Parent = TopBar
Name.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.167270601, 0, -0.0424365923, 0)
Name.Size = UDim2.new(0.608333349, 0, 1.02040815, 0)
Name.ZIndex = 2
Name.Font = Enum.Font.Unknown
Name.Text = "RELKIN"
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 53.000
Name.TextWrapped = true

UICorner_13.Parent = Name

UITextSizeConstraint_7.Parent = Name
UITextSizeConstraint_7.MaxTextSize = 53

UIAspectRatioConstraint_16.Parent = Name
UIAspectRatioConstraint_16.AspectRatio = 7.300

UIAspectRatioConstraint_17.Parent = TopBar
UIAspectRatioConstraint_17.AspectRatio = 12.245

MainShadow.Name = "MainShadow"
MainShadow.Parent = Main
MainShadow.AnchorPoint = Vector2.new(0.5, 0.5)
MainShadow.BackgroundTransparency = 1.000
MainShadow.Position = UDim2.new(0.48960489, 0, 0.490644395, 2)
MainShadow.Size = UDim2.new(1.4810183, 0, 1.58345902, 0)
MainShadow.ZIndex = -1
MainShadow.Image = "rbxassetid://12817494724"
MainShadow.ImageTransparency = 0.500
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(85, 85, 427, 427)

UIAspectRatioConstraint_18.Parent = MainShadow
UIAspectRatioConstraint_18.AspectRatio = 1.125

mobile.Name = "mobile"
mobile.Parent = RELKINlibrary
mobile.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mobile.BorderColor3 = Color3.fromRGB(0, 0, 0)
mobile.BorderSizePixel = 0
mobile.Position = UDim2.new(0, 0, 0.398399949, 0)
mobile.Size = UDim2.new(0.0908059031, 0, 0.123456791, 0)

BUTTON.Name = "BUTTON"
BUTTON.Parent = mobile
BUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BUTTON.BackgroundTransparency = 1.000
BUTTON.BorderColor3 = Color3.fromRGB(0, 0, 0)
BUTTON.BorderSizePixel = 0
BUTTON.Position = UDim2.new(0, 0, -0.00159973139, 0)
BUTTON.Size = UDim2.new(1, 0, 1, 0)
BUTTON.Image = "rbxassetid://10734898355"

UICorner_14.CornerRadius = UDim.new(9999, 9)
UICorner_14.Parent = BUTTON

UIAspectRatioConstraint_19.Parent = BUTTON

BUTTONShadow.Name = "BUTTONShadow"
BUTTONShadow.Parent = BUTTON
BUTTONShadow.AnchorPoint = Vector2.new(0.5, 0.5)
BUTTONShadow.BackgroundTransparency = 1.000
BUTTONShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
BUTTONShadow.Size = UDim2.new(1, 137, 1, 137)
BUTTONShadow.ZIndex = 0
BUTTONShadow.Image = "rbxassetid://12817518992"
BUTTONShadow.ImageTransparency = 0.500
BUTTONShadow.ScaleType = Enum.ScaleType.Slice
BUTTONShadow.SliceCenter = Rect.new(85, 85, 427, 427)

mobileShadow.Name = "mobileShadow"
mobileShadow.Parent = mobile
mobileShadow.AnchorPoint = Vector2.new(0.5, 0.5)
mobileShadow.BackgroundTransparency = 1.000
mobileShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
mobileShadow.Size = UDim2.new(2.9000001, 0, 2.9000001, 0)
mobileShadow.ZIndex = 0
mobileShadow.Image = "rbxassetid://12817467194"
mobileShadow.ImageTransparency = 0.500
mobileShadow.ScaleType = Enum.ScaleType.Slice
mobileShadow.SliceCenter = Rect.new(85, 85, 427, 427)

UIAspectRatioConstraint_20.Parent = mobileShadow

UIAspectRatioConstraint_21.Parent = mobile

-- Scripts:

local function YZDO_fake_script() -- Main.pc supporting 
	local script = Instance.new('LocalScript', Main)

	local frame = script.Parent -- Ссылка на родительский Frame
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	local dragging = false
	local dragStart = nil
	local startPos = nil
	
	-- Функция для начала перетаскивания
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
	
			-- Отслеживаем, когда мышь отпущена
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	-- Функция для перемещения
	game:GetService("RunService").RenderStepped:Connect(function()
		if dragging then
			local deltaX = mouse.X - dragStart.X
			local deltaY = mouse.Y - dragStart.Y
			frame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + deltaX,
				startPos.Y.Scale, startPos.Y.Offset + deltaY
			)
		end
	end)
end
coroutine.wrap(YZDO_fake_script)()
local function ABSM_fake_script() -- Tab1.Invisible 
	local script = Instance.new('LocalScript', Tab1)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Controls1.Visible = false
	end)
end
coroutine.wrap(ABSM_fake_script)()
local function JWKYFOK_fake_script() -- Tab1.Visible 
	local script = Instance.new('LocalScript', Tab1)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Controls2.Visible = true
	end)
end
coroutine.wrap(JWKYFOK_fake_script)()
local function TKVS_fake_script() -- Tab2.Invisible 
	local script = Instance.new('LocalScript', Tab2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Controls1.Visible = true
	end)
end
coroutine.wrap(TKVS_fake_script)()
local function WLHNLO_fake_script() -- Tab2.Visible 
	local script = Instance.new('LocalScript', Tab2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Controls2.Visible = false
	end)
end
coroutine.wrap(WLHNLO_fake_script)()
local function AIWZ_fake_script() -- Button.Click 
	local script = Instance.new('LocalScript', Button)

	script.Parent.MouseButton1Click:Connect(function()
		print("Button Clicked")
	end)
end
coroutine.wrap(AIWZ_fake_script)()
local function DNGHONK_fake_script() -- Button_2.Click 
	local script = Instance.new('LocalScript', Button_2)

	script.Parent.MouseButton1Click:Connect(function()
		print("Button Clicked")
	end)
end
coroutine.wrap(DNGHONK_fake_script)()
local function AMMQF_fake_script() -- Close.Close script 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		-- Удаляем родительский объект (меню)
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(AMMQF_fake_script)()
local function JTNVMVY_fake_script() -- BUTTON.LocalScript 
	local script = Instance.new('LocalScript', BUTTON)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.Main.Visible then
			script.Parent.Parent.Parent.Main.Visible = false  -- Скрываем элемент, если он видим
		else
			script.Parent.Parent.Parent.Main.Visible = true   -- Показываем элемент, если он скрыт
		end
	end)
end
coroutine.wrap(JTNVMVY_fake_script)()
