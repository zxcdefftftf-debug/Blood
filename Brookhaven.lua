-- GUI ZEBIN Key System & Hub
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- UI Elements
local ScreenGui = Instance.new("ScreenGui", CoreGui)
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Size = UDim2.new(0, 300, 0, 180); KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -90); KeyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

local Input = Instance.new("TextBox", KeyFrame); Input.Size = UDim2.new(0, 260, 0, 40); Input.Position = UDim2.new(0, 20, 0, 30); Input.PlaceholderText = "Введите ключ ZEBIN"
local CheckBtn = Instance.new("TextButton", KeyFrame); CheckBtn.Size = UDim2.new(0, 260, 0, 40); CheckBtn.Position = UDim2.new(0, 20, 0, 90); CheckBtn.Text = "Активировать"

local MainFrame = Instance.new("Frame", ScreenGui); MainFrame.Size = UDim2.new(0, 400, 0, 300); MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150); MainFrame.Visible = false
local OpenBtn = Instance.new("TextButton", ScreenGui); OpenBtn.Size = UDim2.new(0, 50, 0, 50); OpenBtn.Position = UDim2.new(0, 10, 0.5, -25); OpenBtn.Text = "O"

-- Logic
CheckBtn.MouseButton1Click:Connect(function()
    if Input.Text == "ZEBIN" then
        KeyFrame:Destroy()
        print("Привет, ZEBIN")
        MainFrame.Visible = true
    end
end)

local function AddToggle(name, callback)
    local btn = Instance.new("TextButton", MainFrame)
    btn.Size = UDim2.new(0, 360, 0, 40); btn.Text = name
    btn.MouseButton1Click:Connect(callback)
end

AddToggle("ESP (Toggle)", function() -- Добавить логику ESP тут 
end)
AddToggle("Полет (Toggle)", function() -- Добавить логику Flight тут
end)
AddToggle("Быстрый бег (Toggle)", function() Player.Character.Humanoid.WalkSpeed = 100 
end)

local CloseBtn = Instance.new("TextButton", MainFrame); CloseBtn.Text = "X"; CloseBtn.Size = UDim2.new(0, 30, 0, 30); CloseBtn.MouseButton1Click:Connect(function() MainFrame.Visible = false end)
OpenBtn.MouseButton1Click:Connect(function() MainFrame.Visible = true end)
