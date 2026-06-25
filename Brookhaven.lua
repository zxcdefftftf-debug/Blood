-- Brookhaven GUI with Key System (Key: ZEBIN)
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 300, 0, 150)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local Input = Instance.new("TextBox", MainFrame)
Input.Size = UDim2.new(0, 260, 0, 40)
Input.Position = UDim2.new(0, 20, 0, 20)
Input.PlaceholderText = "Введите ключ"

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 260, 0, 40)
Button.Position = UDim2.new(0, 20, 0, 80)
Button.Text = "Проверить"

Button.MouseButton1Click:Connect(function()
    if Input.Text == "ZEBIN" then
        MainFrame:Destroy()
        -- Функционал полета и скорости активирован
        loadstring(game:HttpGet("https://pastebin.com/raw/YOUR_SCRIPT_URL"))() 
    else
        Input.Text = "Ошибка: Неверный ключ"
    end
end)
