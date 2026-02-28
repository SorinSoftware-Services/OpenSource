-- ts file was generated at discord.gg/25ms

local _LocalPlayer3 = game.Players.LocalPlayer

_LocalPlayer3:GetMouse()

local _workspaceCurrentCamera6 = workspace.CurrentCamera
local _call8 = game:GetService('TweenService')
local _call10 = game:GetService('RunService')

game:GetService('UserInputService')

_G.ToggleKeybind = Enum.KeyCode.Q
_G.TargetPart = 'Head'
_G.ShowFOVCircle = true
_G.HoldToAim = false
_G.AimbotEnabled = false
_G.TeamCheck = false
_G.DeathCheck = false
_G.WallCheck = false
_G.Smoothness = 0.1
_G.FOVRadius = 150
_G.FOVEnabled = true
_G.BlatantMode = false

local _call18 = Instance.new('ScreenGui', _LocalPlayer3:WaitForChild('PlayerGui'))

_call18.Name = 'VolcanoAimbotUI'
_call18.ResetOnSpawn = false
_call18.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

game:GetService('StarterGui'):SetCore('SendNotification', {
    Duration = 6,
    Text = 'Made by Kai Denar | FOV, Smoothness, Blatant Mode, Auto Prediction \u{2014} all ready!',
    Title = '\u{2705} Volcano.lua Loaded',
    Icon = 'rbxassetid://4458901886',
})

local _call26 = Instance.new('TextButton')

_call26.Size = UDim2.new(0, 170, 0, 50)
_call26.Position = UDim2.new(0, 20, 0, 20)
_call26.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_call26.AutoButtonColor = false
_call26.TextColor3 = Color3.fromRGB(255, 255, 255)
_call26.Text = '\u{1f525} Open Volcano Menu'
_call26.Font = Enum.Font.GothamBlack
_call26.TextSize = 16

local _call38 = Instance.new('UIStroke')

_call38.Thickness = 3
_call38.Color = Color3.fromRGB(0, 0, 0)
_call38.Transparency = 0.8
_call38.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call38.Parent = _call26

local _call44 = Instance.new('UIStroke')

_call44.Thickness = 2
_call44.Color = Color3.fromRGB(0, 200, 255)
_call44.Transparency = 0.2
_call44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call44.Parent = _call26
_call26.Parent = _call18

local _call50 = Instance.new('UICorner')

_call50.CornerRadius = UDim.new(0, 10)
_call50.Parent = _call26

local _call54 = Instance.new('UIStroke')

_call54.Color = Color3.fromRGB(255, 255, 255)
_call54.Thickness = 1.5
_call54.Transparency = 0.5
_call54.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call54.Parent = _call26

local _call64 = _call8:Create(_call26, TweenInfo.new(0.2), {
    BackgroundColor3 = Color3.fromRGB(50, 50, 50),
})
local _call70 = _call8:Create(_call26, TweenInfo.new(0.2), {
    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
})

_call26.MouseEnter:Connect(function(_74)
    _call64:Play()
end)
_call26.MouseLeave:Connect(function()
    _call70:Play()
end)

local _call86 = Instance.new('BlurEffect', game:GetService('Lighting'))

_call86.Enabled = false

local _call88 = Instance.new('Frame', _call18)

_call88.Size = UDim2.new(0, 270, 0, 0)
_call88.Position = UDim2.new(0.05, 0, 0.3, 0)
_call88.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
_call88.BorderSizePixel = 0
_call88.Visible = false
_call86.Enabled = false
_call88.ClipsDescendants = false

local _call96 = Instance.new('UICorner')

_call96.CornerRadius = UDim.new(0, 10)
_call96.Parent = _call88

local _call100 = Instance.new('UIStroke')

_call100.Color = Color3.fromRGB(255, 255, 255)
_call100.Thickness = 1.5
_call100.Transparency = 0.5
_call100.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call100.Parent = _call88

local _call106 = Instance.new('UIListLayout', _call88)

_call106.Padding = UDim.new(0, 6)
_call106.HorizontalAlignment = Enum.HorizontalAlignment.Center
_call106.SortOrder = Enum.SortOrder.LayoutOrder

_call88.InputBegan:Connect(function(_116)
    local _ = _116.UserInputType == Enum.UserInputType.MouseButton1
    local _ = _116.UserInputType == Enum.UserInputType.Touch
end)
_call88.InputChanged:Connect(function(_128, _128_2, _128_3, _128_4, _128_5, _128_6)
    local _ = _128.UserInputType == Enum.UserInputType.MouseMovement
    local _ = _128.UserInputType == Enum.UserInputType.Touch
end)
_call10.RenderStepped:Connect(function(_140) end)
_call26.MouseButton1Click:Connect(function(_144, _144_2, _144_3, _144_4)
    _call88.Visible = true
    _call86.Enabled = true
    _call88.Size = UDim2.new(0, 0, 0, 0)
    _call88.Position = UDim2.new(0.05, 0, 0.3, 30)
    _call88.BackgroundTransparency = 1
    _call88.Position = UDim2.new(0.05, 0, 0.3, 0)
    _call86.Enabled = true

    local _call162 = _call8:Create(_call88, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.05, 0, 0.3, 0),
        BackgroundTransparency = 0,
        Size = UDim2.new(0, 270, 0, 500),
    })

    _call162:Play()
end)

local _call166 = Instance.new('TextLabel', _call88)

_call166.Size = UDim2.new(1, 0, 0, 40)
_call166.BackgroundTransparency = 1
_call166.Text = '\u{1f3af} Volcano.lua'
_call166.TextColor3 = Color3.fromRGB(0, 200, 255)
_call166.Font = Enum.Font.GothamBold
_call166.TextSize = 22

local _call174 = Instance.new('UICorner')

_call174.CornerRadius = UDim.new(0, 10)
_call174.Parent = _call166

local _call178 = Instance.new('UIStroke')

_call178.Color = Color3.fromRGB(255, 255, 255)
_call178.Thickness = 1.5
_call178.Transparency = 0.5
_call178.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call178.Parent = _call166

local _call184 = Instance.new('TextButton')

_call184.Size = UDim2.new(0.9, 0, 0, 35)
_call184.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_call184.Text = 'Aimbot: OFF'
_call184.TextColor3 = Color3.fromRGB(255, 255, 255)
_call184.Font = Enum.Font.GothamSemibold
_call184.TextSize = 18
_call184.BorderSizePixel = 0

local _call194 = Instance.new('UICorner')

_call194.CornerRadius = UDim.new(0, 10)
_call194.Parent = _call184

local _call198 = Instance.new('UIStroke')

_call198.Color = Color3.fromRGB(255, 255, 255)
_call198.Thickness = 1.5
_call198.Transparency = 0.5
_call198.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call198.Parent = _call184

_call184.MouseButton1Click:Connect(function(_206, _206_2)
    _call184.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    _call184.Text = 'Aimbot: ON'
end)

_call184.Parent = _call88

local _call210 = Instance.new('TextButton')

_call210.Size = UDim2.new(0.9, 0, 0, 35)
_call210.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_call210.Text = 'Team Check: OFF'
_call210.TextColor3 = Color3.fromRGB(255, 255, 255)
_call210.Font = Enum.Font.GothamSemibold
_call210.TextSize = 18
_call210.BorderSizePixel = 0

local _call220 = Instance.new('UICorner')

_call220.CornerRadius = UDim.new(0, 10)
_call220.Parent = _call210

local _call224 = Instance.new('UIStroke')

_call224.Color = Color3.fromRGB(255, 255, 255)
_call224.Thickness = 1.5
_call224.Transparency = 0.5
_call224.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call224.Parent = _call210

_call210.MouseButton1Click:Connect(function(_232, _232_2)
    _call210.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    _call210.Text = 'Team Check: ON'
end)

_call210.Parent = _call88

local _call236 = Instance.new('TextButton')

_call236.Size = UDim2.new(0.9, 0, 0, 35)
_call236.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_call236.Text = 'Death Check: OFF'
_call236.TextColor3 = Color3.fromRGB(255, 255, 255)
_call236.Font = Enum.Font.GothamSemibold
_call236.TextSize = 18
_call236.BorderSizePixel = 0

local _call246 = Instance.new('UICorner')

_call246.CornerRadius = UDim.new(0, 10)
_call246.Parent = _call236

local _call250 = Instance.new('UIStroke')

_call250.Color = Color3.fromRGB(255, 255, 255)
_call250.Thickness = 1.5
_call250.Transparency = 0.5
_call250.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call250.Parent = _call236

_call236.MouseButton1Click:Connect(function(_258, _258_2)
    _call236.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    _call236.Text = 'Death Check: ON'
end)

_call236.Parent = _call88

local _call262 = Instance.new('TextButton')

_call262.Size = UDim2.new(0.9, 0, 0, 35)
_call262.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_call262.Text = 'Wall Check: OFF'
_call262.TextColor3 = Color3.fromRGB(255, 255, 255)
_call262.Font = Enum.Font.GothamSemibold
_call262.TextSize = 18
_call262.BorderSizePixel = 0

local _call272 = Instance.new('UICorner')

_call272.CornerRadius = UDim.new(0, 10)
_call272.Parent = _call262

local _call276 = Instance.new('UIStroke')

_call276.Color = Color3.fromRGB(255, 255, 255)
_call276.Thickness = 1.5
_call276.Transparency = 0.5
_call276.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call276.Parent = _call262

_call262.MouseButton1Click:Connect(function(_284, _284_2)
    _call262.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    _call262.Text = 'Wall Check: ON'
end)

_call262.Parent = _call88

local _call288 = Instance.new('TextButton')

_call288.Size = UDim2.new(0.9, 0, 0, 35)
_call288.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
_call288.Text = 'FOV Enabled: ON'
_call288.TextColor3 = Color3.fromRGB(255, 255, 255)
_call288.Font = Enum.Font.GothamSemibold
_call288.TextSize = 18
_call288.BorderSizePixel = 0

local _call298 = Instance.new('UICorner')

_call298.CornerRadius = UDim.new(0, 10)
_call298.Parent = _call288

local _call302 = Instance.new('UIStroke')

_call302.Color = Color3.fromRGB(255, 255, 255)
_call302.Thickness = 1.5
_call302.Transparency = 0.5
_call302.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call302.Parent = _call288

_call288.MouseButton1Click:Connect(function(_310, _310_2)
    _call288.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    _call288.Text = 'FOV Enabled: OFF'
end)

_call288.Parent = _call88

local _call314 = Instance.new('TextButton')

_call314.Size = UDim2.new(0.9, 0, 0, 35)
_call314.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_call314.Text = 'Blatant Mode: OFF'
_call314.TextColor3 = Color3.fromRGB(255, 255, 255)
_call314.Font = Enum.Font.GothamSemibold
_call314.TextSize = 18
_call314.BorderSizePixel = 0

local _call324 = Instance.new('UICorner')

_call324.CornerRadius = UDim.new(0, 10)
_call324.Parent = _call314

local _call328 = Instance.new('UIStroke')

_call328.Color = Color3.fromRGB(255, 255, 255)
_call328.Thickness = 1.5
_call328.Transparency = 0.5
_call328.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call328.Parent = _call314

_call314.MouseButton1Click:Connect(function(_336, _336_2)
    _call314.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    _call314.Text = 'Blatant Mode: ON'
end)

_call314.Parent = _call88

_call10:BindToRenderStep('VolcanoAimbot', (Enum.RenderPriority.Camera.Value + 1), function(_345, _345_2, _345_3, _345_4, _345_5)
    Vector2.new((_workspaceCurrentCamera6.ViewportSize.X / 2), (_workspaceCurrentCamera6.ViewportSize.Y / 2))

    for _357, _357_2 in ipairs(game.Players:GetPlayers())do
        local _ = _357_2 == _LocalPlayer3
        local _ = _357_2.Character
        local _ = _357_2.Character:FindFirstChildOfClass('Humanoid').Health

        error('line 1: attempt to compare table <= number')
    end
end)

local _call365 = Drawing.new('Circle')

_call365.Thickness = 2
_call365.Radius = 150
_call365.Filled = false
_call365.Color = Color3.fromRGB(0, 200, 255)
_call365.Visible = false

_call10.RenderStepped:Connect(function(_371, _371_2, _371_3)
    _call365.Visible = false
    _call365.Radius = 150
    _call365.Position = Vector2.new((_workspaceCurrentCamera6.ViewportSize.X / 2), (_workspaceCurrentCamera6.ViewportSize.Y / 2))
end)

local _call381 = Instance.new('TextLabel', _call88)

_call381.Size = UDim2.new(0.9, 0, 0, 20)
_call381.BackgroundTransparency = 1
_call381.TextColor3 = Color3.fromRGB(255, 255, 255)
_call381.Text = 'Smoothness: 0.1'
_call381.Font = Enum.Font.Gotham
_call381.TextSize = 14
_call381.TextXAlignment = Enum.TextXAlignment.Left

local _call391 = Instance.new('TextButton', _call88)

_call391.Size = UDim2.new(0.9, 0, 0, 20)
_call391.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
_call391.Text = ''

local _call397 = Instance.new('UICorner')

_call397.CornerRadius = UDim.new(0, 10)
_call397.Parent = _call391

local _call401 = Instance.new('UIStroke')

_call401.Color = Color3.fromRGB(255, 255, 255)
_call401.Thickness = 1.5
_call401.Transparency = 0.5
_call401.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call401.Parent = _call391

local _call407 = Instance.new('Frame', _call391)

_call407.Size = UDim2.new(0.1, 0, 1, 0)
_call407.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
_call407.BorderSizePixel = 0

local _call413 = Instance.new('UICorner')

_call413.CornerRadius = UDim.new(0, 10)
_call413.Parent = _call407

local _call417 = Instance.new('UIStroke')

_call417.Color = Color3.fromRGB(255, 255, 255)
_call417.Thickness = 1.5
_call417.Transparency = 0.5
_call417.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call417.Parent = _call407

_call391.InputBegan:Connect(function(_425, _425_2, _425_3, _425_4, _425_5, _425_6)
    local _ = _425.UserInputType == Enum.UserInputType.MouseButton1

    error('internal 557: <25ms: infinitelooperror>')
end)
_call391.InputEnded:Connect(function(_434) end)
_call391.InputChanged:Connect(function(_438, _438_2, _438_3) end)

local _call440 = Instance.new('TextLabel', _call88)

_call440.Size = UDim2.new(0.9, 0, 0, 20)
_call440.BackgroundTransparency = 1
_call440.TextColor3 = Color3.fromRGB(255, 255, 255)
_call440.Text = 'FOV Radius: 150'
_call440.Font = Enum.Font.Gotham
_call440.TextSize = 14
_call440.TextXAlignment = Enum.TextXAlignment.Left

local _call450 = Instance.new('TextButton', _call88)

_call450.Size = UDim2.new(0.9, 0, 0, 25)
_call450.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
_call450.Text = ''

local _call456 = Instance.new('UICorner')

_call456.CornerRadius = UDim.new(0, 10)
_call456.Parent = _call450

local _call460 = Instance.new('UIStroke')

_call460.Color = Color3.fromRGB(255, 255, 255)
_call460.Thickness = 1.5
_call460.Transparency = 0.5
_call460.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call460.Parent = _call450

local _call466 = Instance.new('Frame', _call450)

_call466.Size = UDim2.new(0.3, 0, 1, 0)
_call466.BackgroundColor3 = Color3.fromRGB(255, 180, 0)
_call466.BorderSizePixel = 0

local _call472 = Instance.new('UICorner')

_call472.CornerRadius = UDim.new(0, 10)
_call472.Parent = _call466

local _call476 = Instance.new('UIStroke')

_call476.Color = Color3.fromRGB(255, 255, 255)
_call476.Thickness = 1.5
_call476.Transparency = 0.5
_call476.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_call476.Parent = _call466

_call450.InputBegan:Connect(function(_484)
    error('internal 557: <25ms: infinitelooperror>')
end)
_call450.InputEnded:Connect(function(_489, _489_2, _489_3, _489_4, _489_5) end)
_call450.InputChanged:Connect(function(_493, _493_2, _493_3, _493_4) end)
game:GetService('HttpService')
_call10.RenderStepped:Connect(function() end)
