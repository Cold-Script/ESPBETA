local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Cold-Script/ESPBETA/refs/heads/main/Esp.lua"))()
for _,v in game:GetService("Players"):GetPlayers() do
if v.Name == game:GetService("Players").Name then
Library:AddESP(v, v.Name, Color3.new(1), 30, "Te")
end
end
