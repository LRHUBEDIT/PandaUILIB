local KeySystem = {}

function KeySystem:New(options)
    local Name = options.Name or 'Hub'
    local Service = options.Service
    local Description = options.Description or 'UI lib made by Sponsoparnordvpn'
    local Discord = options.Discord or 'No discord yet !'
    local Logo = options.Logo or 'http://www.roblox.com/asset/?id=14706974604'
    local Callback = options.Callback or function() end
    local TweenService = game:GetService("TweenService")
    local PandaAuth = loadstring(game:HttpGet(('https://pandadevelopment.net/service_api/PandaBetaLib.lua')))()

    if not Service then
        game.Players.LocalPlayer:Kick("UI has been malformed, please check out docs !")
        return
    end

    local function typewriterEffect(textBox, text, textColor)
        local textLength = #text
        local originalTextColor = textBox.TextColor3
        textBox.Text = ""
        textBox.TextColor3 = textColor

        for i = 1, textLength do
            textBox.Text = string.sub(text, 1, i)
            wait(0.05)
        end

        wait(1)
        textBox.Text = ''
        textBox.TextColor3 = originalTextColor
    end

    local KeySystem = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Border = Instance.new("Frame")
    local Close = Instance.new("ImageButton")
    local UICorner_2 = Instance.new("UICorner")
    local UICorner_3 = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local CustomLogo = Instance.new("ImageButton")
    local UICorner_4 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local DescriptionLabel = Instance.new("TextLabel")
    local KeyHere = Instance.new("TextBox")
    local UICorner_5 = Instance.new("UICorner")
    local DiscordButton = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local GetKeyButton = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local UIGradient_2 = Instance.new("UIGradient")
    local UserInputService = game:GetService("UserInputService")


local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true) -- This is what I changed
end

Main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Main.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Main.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
    KeySystem.Name = "KeySystem"
    KeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = KeySystem
    Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.330232978, 0, 0.343505472, 0)
    Main.Size = UDim2.new(0, 342, 0, 200)

    UICorner.Parent = Main

    Border.Name = "Border"
    Border.Parent = Main
    Border.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    Border.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Border.BorderSizePixel = 0
    Border.Size = UDim2.new(0, 342, 0, 37)

    Close.Name = "Close"
    Close.Parent = Border
    Close.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Close.BackgroundTransparency = 1.000
    Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0.900584817, 0, 0, 0)
    Close.Size = UDim2.new(0, 34, 0, 30)
    Close.Image = 'http://www.roblox.com/asset/?id=14689791480'
    Close.MouseButton1Click:Connect(function()
        local finalPosition = UDim2.new(1, 0, 0.365, -15)
        local Tween = Main:TweenPosition(finalPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
        wait(1)
        Main.Parent:Destroy()
    end)
    UICorner_2.Parent = Close

    UICorner_3.Parent = Border

    Title.Name = "Title"
    Title.Parent = Border
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.207602337, 0, 0, 0)
    Title.Size = UDim2.new(0, 200, 0, 37)
    Title.Font = Enum.Font.Gotham
    Title.Text = Name .. ' : Key System'
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true

    CustomLogo.Name = "CustomLogo"
    CustomLogo.Parent = Border
    CustomLogo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    CustomLogo.BackgroundTransparency = 1.000
    CustomLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CustomLogo.BorderSizePixel = 0
    CustomLogo.Position = UDim2.new(0.0175438598, 0, 0.162162155, 0)
    CustomLogo.Size = UDim2.new(0, 34, 0, 31)
    CustomLogo.Image = Logo

    UICorner_4.Parent = CustomLogo

    UIGradient.Parent = Border

    DescriptionLabel.Name = "DescriptionLabel"
    DescriptionLabel.Parent = Main
    DescriptionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DescriptionLabel.BackgroundTransparency = 1.000
    DescriptionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DescriptionLabel.BorderSizePixel = 0
    DescriptionLabel.Position = UDim2.new(0.0847953185, 0, 0.245000005, 0)
    DescriptionLabel.Size = UDim2.new(0, 284, 0, 21)
    DescriptionLabel.Font = Enum.Font.Gotham
    DescriptionLabel.Text = Description
    DescriptionLabel.TextColor3 = Color3.fromRGB(202, 202, 202)
    DescriptionLabel.TextScaled = true
    DescriptionLabel.TextSize = 14.000
    DescriptionLabel.TextWrapped = true

KeyHere.Name = "KeyHere"
KeyHere.Parent = Main
KeyHere.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
KeyHere.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyHere.BorderSizePixel = 0
KeyHere.Position = UDim2.new(0.0847953185, 0, 0.430000007, 0)
KeyHere.Size = UDim2.new(0, 279, 0, 40)
KeyHere.Font = Enum.Font.SourceSans
KeyHere.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
KeyHere.PlaceholderText = "Enter your key here"
KeyHere.Text = ""
KeyHere.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyHere.TextSize = 14.000
if isfile(Name..'key.txt') and  PandaAuth:ValidateKey(Service, readfile(Name..'key.txt')) then
print("["..Name.."] saved key succesfully validated,loading UI")
        typewriterEffect(KeyHere, "Valid key!", Color3.new(0, 1, 0))
        wait(1)
        local finalPosition = UDim2.new(1, 0, 0.365, -15)
        local Tween = Main:TweenPosition(finalPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
        wait(1)
        Main.Parent:Destroy()
        Callback()
end
KeyHere.FocusLost:Connect(function()
   print("["..Name.."] checking key...")
    if PandaAuth:ValidateKey(Service, KeyHere.Text) then
        print("["..Name.."] key succesfully validated,loading UI")
        writefile(Name..'key.txt',tostring(KeyHere.Text))
        typewriterEffect(KeyHere, "Valid key!", Color3.new(0, 1, 0))
        wait(1)
        local finalPosition = UDim2.new(1, 0, 0.365, -15)
        local Tween = Main:TweenPosition(finalPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
        wait(1)
        Main.Parent:Destroy()
        Callback()
        
    else
        print("["..Name.."] key expired/invalid !")
        typewriterEffect(KeyHere, "Invalid/Expired Key", Color3.new(1, 0, 0))
    end
end)


UICorner_5.Parent = KeyHere

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = Main
DiscordButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
DiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0.0847953185, 0, 0.699999988, 0)
DiscordButton.Size = UDim2.new(0, 129, 0, 37)
DiscordButton.Font = Enum.Font.Gotham
DiscordButton.Text = "Discord"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 20.000
DiscordButton.MouseButton1Click:Connect(function()
    setclipboard(tostring(Discord))
    print("["..Name.."] copied discord")
    typewriterEffect(KeyHere, "Link set to clipboard", Color3.new(0, 1, 0))
end)
UICorner_6.Parent = DiscordButton

GetKeyButton.Name = "GetKeyButton"
GetKeyButton.Parent = Main
GetKeyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GetKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKeyButton.BorderSizePixel = 0
GetKeyButton.Position = UDim2.new(0.517543852, 0, 0.699999988, 0)
GetKeyButton.Size = UDim2.new(0, 129, 0, 37)
GetKeyButton.Font = Enum.Font.Gotham
GetKeyButton.Text = "Get Key"
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyButton.TextSize = 20.000
GetKeyButton.TextWrapped = true
GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard(tostring(PandaAuth:GetLink(Service)))
    print("["..Name.."] copied key link !")
    typewriterEffect(KeyHere, "Link set to clipboard", Color3.new(0, 1, 0))
end)

UICorner_7.Parent = GetKeyButton

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(236, 236, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(236, 236, 236))}
UIGradient_2.Parent = Main
end
return KeySystem;
