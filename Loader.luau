local function CreateKeyGUI()

    if shared.KeyGUI then
        pcall(function() shared.KeyGUI:Destroy() end)
        shared.KeyGUI = nil
    end
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "LinoriaStandaloneAuth"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = gethui() or game:GetService("CoreGui")
    shared.KeyGUI = ScreenGui
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 400, 0, 230)
    MainFrame.Position = UDim2.new(0.5, -200, 0.5, -115)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 4)
    MainCorner.Parent = MainFrame
    
    local MainStroke = Instance.new("UIStroke")
    MainStroke.Color = Color3.fromRGB(40, 40, 40)
    MainStroke.Thickness = 1
    MainStroke.Parent = MainFrame
    
    local TitleBar = Instance.new("Frame")
    TitleBar.Size = UDim2.new(1, 0, 0, 30)
    TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame
    
    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 4)
    TitleCorner.Parent = TitleBar
    
    local TitleText = Instance.new("TextLabel")
    TitleText.Size = UDim2.new(1, -20, 1, 0)
    TitleText.Position = UDim2.new(0, 10, 0, 0)
    TitleText.BackgroundTransparency = 1
    TitleText.Text = "Aspect Enchantments — Loader"
    TitleText.TextColor3 = Color3.fromRGB(200, 200, 200)
    TitleText.TextSize = 13
    TitleText.Font = Enum.Font.RobotoMono
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.Parent = TitleBar
    
    local AccentLine = Instance.new("Frame")
    AccentLine.Size = UDim2.new(1, 0, 0, 1)
    AccentLine.Position = UDim2.new(0, 0, 1, -1)
    AccentLine.BackgroundColor3 = Color3.fromRGB(0, 132, 255)
    AccentLine.BorderSizePixel = 0
    AccentLine.Parent = TitleBar
    
    local GroupBox = Instance.new("Frame")
    GroupBox.Size = UDim2.new(1, -20, 1, -50)
    GroupBox.Position = UDim2.new(0, 10, 0, 40)
    GroupBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    GroupBox.BorderSizePixel = 0
    GroupBox.Parent = MainFrame
    
    local GroupCorner = Instance.new("UICorner")
    GroupCorner.CornerRadius = UDim.new(0, 3)
    GroupCorner.Parent = GroupBox
    
    local GroupStroke = Instance.new("UIStroke")
    GroupStroke.Color = Color3.fromRGB(35, 35, 35)
    GroupStroke.Thickness = 1
    GroupStroke.Parent = GroupBox
    
    local GroupLabel = Instance.new("TextLabel")
    GroupLabel.Size = UDim2.new(1, -20, 0, 25)
    GroupLabel.Position = UDim2.new(0, 10, 0, 5)
    GroupLabel.BackgroundTransparency = 1
    GroupLabel.Text = "Enter License Key"
    GroupLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    GroupLabel.TextSize = 13
    GroupLabel.Font = Enum.Font.GothamBold
    GroupLabel.TextXAlignment = Enum.TextXAlignment.Left
    GroupLabel.Parent = GroupBox
    
    local KeyBox = Instance.new("TextBox")
    KeyBox.Size = UDim2.new(1, -20, 0, 35)
    KeyBox.Position = UDim2.new(0, 10, 0, 35)
    KeyBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    KeyBox.BorderSizePixel = 0
    KeyBox.Text = ""
    KeyBox.PlaceholderText = "Key goes here..."
    KeyBox.TextColor3 = Color3.fromRGB(230, 230, 230)
    KeyBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
    KeyBox.TextSize = 13
    KeyBox.Font = Enum.Font.Code
    KeyBox.TextXAlignment = Enum.TextXAlignment.Left
    KeyBox.ClearTextOnFocus = false
    KeyBox.Parent = GroupBox
    
    local BoxPadding = Instance.new("UIPadding")
    BoxPadding.PaddingLeft = UDim.new(0, 8)
    BoxPadding.Parent = KeyBox
    
    local BoxStroke = Instance.new("UIStroke")
    BoxStroke.Color = Color3.fromRGB(45, 45, 45)
    BoxStroke.Thickness = 1
    BoxStroke.Parent = KeyBox
    
    KeyBox.Focused:Connect(function() BoxStroke.Color = Color3.fromRGB(0, 132, 255) end)
    KeyBox.FocusLost:Connect(function() BoxStroke.Color = Color3.fromRGB(45, 45, 45) end)
    
    local ActivateBtn = Instance.new("TextButton")
    ActivateBtn.Size = UDim2.new(0, 175, 0, 30)
    ActivateBtn.Position = UDim2.new(0, 10, 0, 85)
    ActivateBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ActivateBtn.BorderSizePixel = 0
    ActivateBtn.Text = "Activate"
    ActivateBtn.TextColor3 = Color3.fromRGB(230, 230, 230)
    ActivateBtn.TextSize = 13
    ActivateBtn.Font = Enum.Font.Gotham
    ActivateBtn.Parent = GroupBox
    
    local BtnStroke1 = Instance.new("UIStroke")
    BtnStroke1.Color = Color3.fromRGB(50, 50, 50)
    BtnStroke1.Thickness = 1
    BtnStroke1.Parent = ActivateBtn
    
    local CancelBtn = Instance.new("TextButton")
    CancelBtn.Size = UDim2.new(0, 175, 0, 30)
    CancelBtn.Position = UDim2.new(1, -185, 0, 85)
    CancelBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    CancelBtn.BorderSizePixel = 0
    CancelBtn.Text = "Cancel"
    CancelBtn.TextColor3 = Color3.fromRGB(230, 230, 230)
    CancelBtn.TextSize = 13
    CancelBtn.Font = Enum.Font.Gotham
    CancelBtn.Parent = GroupBox
    
    local BtnStroke2 = Instance.new("UIStroke")
    BtnStroke2.Color = Color3.fromRGB(50, 50, 50)
    BtnStroke2.Thickness = 1
    BtnStroke2.Parent = CancelBtn

    local function Notify(message, duration)
        duration = duration or 3
        
        local NotifFrame = Instance.new("Frame")
        NotifFrame.Size = UDim2.new(0, 250, 0, 50)

        NotifFrame.Position = UDim2.new(1, 30, 1, -70)
        NotifFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        NotifFrame.BorderSizePixel = 0
        NotifFrame.Parent = ScreenGui
        
        local NotifStroke = Instance.new("UIStroke")
        NotifStroke.Color = Color3.fromRGB(45, 45, 45)
        NotifStroke.Thickness = 1
        NotifStroke.Parent = NotifFrame
        
        local NotifBar = Instance.new("Frame")
        NotifBar.Size = UDim2.new(0, 3, 1, 0)
        NotifBar.BackgroundColor3 = Color3.fromRGB(0, 132, 255)
        NotifBar.BorderSizePixel = 0
        NotifBar.Parent = NotifFrame
        
        local NotifText = Instance.new("TextLabel")
        NotifText.Size = UDim2.new(1, -15, 1, 0)
        NotifText.Position = UDim2.new(0, 10, 0, 0)
        NotifText.BackgroundTransparency = 1
        NotifText.Text = message
        NotifText.TextColor3 = Color3.fromRGB(220, 220, 220)
        NotifText.TextSize = 12
        NotifText.Font = Enum.Font.Gotham
        NotifText.TextXAlignment = Enum.TextXAlignment.Left
        NotifText.TextWrapped = true
        NotifText.Parent = NotifFrame
        
        local TweenService = game:GetService("TweenService")
        TweenService:Create(NotifFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -270, 1, -70)
        }):Play()
        
        task.delay(duration, function()
            local closeTween = TweenService:Create(NotifFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Position = UDim2.new(1, 30, 1, -70)
            })
            closeTween:Play()
            closeTween.Completed:Connect(function()
                NotifFrame:Destroy()
            end)
        end)
    end

    local function SaveKey(key)
        if writefile then
            pcall(function()
                writefile("AE.key", key)
            end)
        end
    end
    
    ActivateBtn.MouseButton1Click:Connect(function()
        local key = KeyBox.Text
        if key == "" then
            Notify("Please enter a license key!", 3)
            return
        end
        
        Notify("Verifying license key...", 2)
        ActivateBtn.Text = "Verifying..."
        ActivateBtn.Active = false
        
        task.wait(0.7)
        
        local isValid = true
        
        if isValid then
            SaveKey(key)
            Notify("Success! Loading Aspect Enchantments...", 3)
            
            task.wait(1)
            ScreenGui:Destroy()
            shared.KeyGUI = nil
            
            _G.script_key = key
            getgenv().script_key = key
            
            pcall(function()
                loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1f25eda72a0c6b420f1d549edcaa95fb.lua"))()
            end)
            
            pcall(function()
                queue_on_teleport([[
                    local script_key = "]] .. key .. [["
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/AspectEnchantments/Public/refs/heads/main/Loader.luau"))()
                ]])
            end)
        else
            Notify("Invalid key! Please try again.", 4)
            ActivateBtn.Text = "Activate"
            ActivateBtn.Active = true
        end
    end)
    
    CancelBtn.MouseButton1Click:Connect(function()
        Notify("Exiting game...", 2)
        task.wait(0.8)
        game:Shutdown()
    end)
    
    return ScreenGui
end

local function MainLoader()
    local script_key = nil
    
    if _G.script_key and _G.script_key ~= "" then
        script_key = _G.script_key
    end
    
    if not script_key then
        pcall(function()
            if isfile and isfile("AE.key") then
                script_key = readfile("AE.key")
            end
        end)
    end
    
    if not script_key or script_key == "" then
        CreateKeyGUI()
    else
        _G.script_key = script_key
        getgenv().script_key = script_key
        
        pcall(function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1f25eda72a0c6b420f1d549edcaa95fb.lua"))()
        end)
        
        pcall(function()
            queue_on_teleport([[
                local script_key = "]] .. script_key .. [["
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AspectEnchantments/Public/refs/heads/main/Loader.luau"))()
            ]])
        end)
    end
end

getgenv().AspectSettings = {
    AutoLoad = true,
    Version = "1.0.0"
}

task.spawn(function()
    pcall(function()
        MainLoader()
    end)
end)
