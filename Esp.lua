local Library = {}
function Library:AddESP(Child, Name, Color, Size, Title)
local Billboard = Instance.new("BillboardGui", Child)
local Text = Instance.new("TextLabel", Billboard)
local Highlight = Instance.new('Highlight', Child)
local UIStroke = Instance.new("UIStroke", Text)
        Billboard.AlwaysOnTop = true
        Billboard.Size = UDim2.new(0,400,0,100)
        Billboard.Adornee = Child
        Billboard.Name = Title
        Billboard.Active = true
        Text.AnchorPoint = Vector2.new(0.5,0.5)
        Text.BackgroundTransparency = 1
        Text.BackgroundColor3 = Color3.new(0,0,0)
        Text.TextColor3 = Color
        Text.Font = "FredokaOne"
        Text.TextSize = Size
        Text.Text = Name
        Text.TextTransparency = 0
        Text.Visible = true
        Text.Size = UDim2.new(1,0,0,0)
        Text.Position = UDim2.new(0.5,0,0.7,-35)
        UIStroke.Thickness = 0.75
        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Highlight.FillColor = Color
        Highlight.OutlineColor = Color
        Highlight.FillTransparency = 1
        Highlight.OutlineTransparency =  1
        Highlight.Name = Title
task.wait(0.25) --Time Delay : 0.25/s
        game:GetService('TweenService'):Create(Highlight, TweenInfo.new(1), {
        FillTransparency = 0.9,
        OutlineTransparency = 0
        }):Play()
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().RainbowESP then
        Text.TextColor3 = Color3.fromHSV(tick() % 10 / 10, 1, 1)
        Highlight.FillColor = Color3.fromHSV(tick() % 10 / 10, 1, 1)
        Highlight.OutlineColor = Color3.fromHSV(tick() % 10 / 10, 1, 1)
        else
        Text.TextColor3 = Color
        Highlight.FillColor = Color
        Highlight.OutlineColor = Color
end
end)
end)
end
function Library:Delete(name)
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == name then
v:Destroy()
end
end
end
return Library

































