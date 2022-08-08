local Players = game:GetService("Players")
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local user = game.Players.LocalPlayer
_G.closeBind = Enum.KeyCode.RightShift
_G.chosenColor = Color3.fromRGB(200, 0, 25)

--Main UI
local win = Flux:Window("Toxic Bleach", "Welcome, "..user.Name.."!", _G.chosenColor, _G.closeBind)

--Credits
local tab1 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6022668946")
tab1:Label("GUI Made by malice")
tab1:Label("libUi used was Flux")
tab1:Label("Press RightShift to close/open the GUI")
tab1:Line()
tab1:Button("Notification Test", "Notification System can break commonly, check if it's working", function()
    Flux:Notification("Notification system is working", "Confirm")
end)

local toxicbleach = win:Tab("disabled bleach", "http://www.roblox.com/asset/?id=6022668906")
local data = game.Players.LocalPlayer:WaitForChild("PlayerData")
toxicbleach:Label("QoL Functions")
toxicbleach:Line()
toxicbleach:Button("Use Code", "Uses codes", function()
    local args = {
        [1] = "ExtraFries"
    }
    game:GetService("ReplicatedStorage").Remotes.Code:InvokeServer(unpack(args))

    --Flux:Notification("Currently disabled", "Confirm")
end)
toxicbleach:Button("Hide the White Screen while Meditating", "MOST USEFUL THING (Removes white screen while meditating)", function()
    game.Players.LocalPlayer.PlayerGui.Shared.Meditate.White.BackgroundTransparency = 1
    Flux:Notification("Removed the White Screen, you'll need to use this again when you start meditating", "Confirm")
end)
toxicbleach:Button("Revert White Screen", "idk why would you use this but sure have it", function()
    game.Players.LocalPlayer.PlayerGui.Shared.Meditate.White.BackgroundTransparency = 0
    Flux:Notification("Set your eyes ablaze", "Confirm")
end)
toxicbleach:Button("Give the best settings", "Gives you the best settings for the game", function()
    data.SlashEffects.Value = false
    data.InCombatBars.Value = false
    data.DisableRain.Value = true
    Flux:Notification("Changed the settings", "Confirm")
end)
toxicbleach:Button("Check your Shikai data", "Format will be: [ShikaiType], [SwordName], [Shikai Word]", function()
    local shikaiT = data.ShikaiType.Value
    local shikaiN = data.SwordName.Value
    local shikaiW = data.ShikaiWord.Value
    Flux:Notification(shikaiT..", "..shikaiN..", "..shikaiW, "Confirm")
end)
toxicbleach:Button("Check Spiritual Pressure", "Shows you the value of your SP", function()
    local SP = data.SpiritualPressure.Value
    Flux:Notification("Spiritual Pressure = "..SP, "Confirm")
end)
toxicbleach:Button("Check Zanpakuto Reputation", "Shows you the value of your sword rep", function()
    local SP = data.ZanpakutoRep.Value
    Flux:Notification("Zanpakuto Reputation = "..SP, "Confirm")
end)

local settings = win:Tab("Settings", "http://www.roblox.com/asset/?id=6022668955")
settings:Label("w.i.p")
