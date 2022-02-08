-- // Configuration
local MainScriptURL = "https://github.com/w6rIds/d/blob/1b1585c9b7fbefe1db1fc6ec56c97f78ee3e265d/nyce"


-- // Instances
local Loader = Instance.new("ScreenGui")
local Container = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Body = Instance.new("Frame")
local KeyInput = Instance.new("TextBox")
local Done = Instance.new("TextButton")

-- // Set Properties
do
    Loader.Name = "Loader"
    Loader.Parent = game:GetService("CoreGui")
    Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Container.Name = "Container"
    Container.Parent = Loader
    Container.AnchorPoint = Vector2.new(0.5, 0.5)
    Container.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0.5, 0, 0.5, 0)
    Container.Size = UDim2.new(0.200000003, 0, 0.100000001, 0)

    UICorner.Parent = Container

    Title.Name = "Title"
    Title.Parent = Container
    Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 0.25, 0)

    Text.Name = "Text"
    Text.Parent = Title
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderSizePixel = 0
    Text.Size = UDim2.new(1, 0, 1, 0)
    Text.Font = Enum.Font.SourceSansBold
    Text.Text = "LOADER"
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 14.000
    Text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextStrokeTransparency = 0.760

    Body.Name = "Body"
    Body.Parent = Container
    Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Body.BackgroundTransparency = 1.000
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0, 0, 0.25, 0)
    Body.Size = UDim2.new(1, 0, 0.75, 0)

    KeyInput.Name = "KeyInput"
    KeyInput.Parent = Body
    KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
    KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    KeyInput.BorderSizePixel = 0
    KeyInput.Position = UDim2.new(0.5, 0, 0.300000012, 0)
    KeyInput.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
    KeyInput.Font = Enum.Font.SourceSans
    KeyInput.PlaceholderText = "Enter key..."
    KeyInput.Text = ""
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.TextSize = 14.000

    Done.Name = "Done"
    Done.Parent = Body
    Done.AnchorPoint = Vector2.new(0.5, 0.5)
    Done.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Done.BorderSizePixel = 0
    Done.Position = UDim2.new(0.5, 0, 0.699999988, 0)
    Done.Size = UDim2.new(0.600000024, 0, 0.300000012, 0)
    Done.AutoButtonColor = false
    Done.Font = Enum.Font.SourceSans
    Done.Text = "Done"
    Done.TextColor3 = Color3.fromRGB(255, 255, 255)
    Done.TextSize = 14.000
    Done.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Done.TextStrokeTransparency = 0.800
end

-- // See when button pressed
Done.MouseButton1Click:Connect(function()
    -- // Save the variable
    getgenv().XKEY = KeyInput.Text

    -- // Load main script
    loadstring(game:HttpGet(MainScriptURL))()
    
    -- // Remove
    Loader:Destroy()
end)
