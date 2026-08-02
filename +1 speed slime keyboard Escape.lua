local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()


--Auto wins part
local part = Instance.new("Part")
part.Name = "Wins"
part.Position = Vector3.new(1322.142578125, 200.96302795410156, -4760.3662109375) 
part.Parent = game.workspace.GiveWins
part.CanCollide = false
part.CanTouch = false
part.Anchored = true
part.Transparency = 1

--Auto win world 2
local part2 = Instance.new("Part")
part2.Name = "Wins"
part2.Position = Vector3.new(-1340.9051513671875, 250.28146362304688, 6438.05810546875) 
part2.Parent = workspace.GiveWins
part2.CanCollide = false
part2.CanTouch = false
part2.Anchored = true
part2.Transparency = 1

--auto speed part
local part1 = Instance.new("Part")
part1.Name = "Speed"
part1.Position = Vector3.new(37.65513610839844, 5.38100004196167, -25.313636779785156)
part1.CanCollide = false
part1.CanTouch = false
part1.Anchored = true
part1.Transparency = 1
part1.Parent = workspace.Treadmills
-------------
--Enige iets what nie nie a button of enige Elemnt is nie moet my die WindUI kom
local Window = WindUI:CreateWindow({
    Title = "+1 speed slime Keyboard Escape",
    Icon = "star",
    Theme = "Emerald",

    ToggleKey = Enum.KeyCode.RightShift,


User = {
    Enabled   = true,
    Anonymous = false,          -- show "Anonymous" instead of real name
    Callback  = function()      -- called when the user clicks the panel
        print("user clicked")
    end,
}

})

    local world1Tab = Window:Tab({
    Title = "world 1",
    Icon = "globe"
})

world1Tab:Toggle({
    Title = "Auto Wins",
    Default = false,

    Callback = function(value)
        Auto_Wins = value
        while Auto_Wins do
            local player = game.Players.LocalPlayer
local character = player.character
local hrp = character:FindFirstChild("HumanoidRootPart")
task.wait(1)
--teleport
hrp.CFrame = part.CFrame
        task.wait(1)
        end
    end,
})

world1Tab:Toggle({
    Title = "Auto Hatch",
    Default = false,

    Callback = function(value)
             AutoEgg = value
       while AutoEgg do
        local Event = game:GetService("ReplicatedStorage").Events.OpenEgg
local Result = table.pack(Event:InvokeServer(
    "legendary_egg"
))
task.wait(1)
end
    end,
})

local World2Tab = Window:Tab({
    Title = "world 2",
    Icon = "globe"
})

World2Tab:Toggle({
    Title = "Auto Wins",
    Default = false,

    Callback = function(value)
              AutoWins = value
       while AutoWins do
local player = game.Players.LocalPlayer
local character = player.character
local hrp = character:FindFirstChild("HumanoidRootPart")
task.wait(1)
--teleport
hrp.CFrame = part2.CFrame
task.wait(1)
       end
    end,
})

World2Tab:Toggle({
    Title = "Auto Hatch",
    Default = false,

    Callback = function(value)
               AutoEgg = value
       while AutoEgg do
 local Event = game:GetService("ReplicatedStorage").Events.OpenEgg
local Result = table.pack(Event:InvokeServer(
    "alien_egg"
))
task.wait(1)
       end
    end,
})

local OverallTab = Window:Tab({
    Title = "Overall",
    Icon = "layout-dashboard"
})

OverallTab:Toggle({
    Title = "Auto Rebirth",
    Default = false,

    Callback = function(value)
               AutoRebirt = value
       while AutoRebirt do
    local Event = game:GetService("ReplicatedStorage").Events.RequestRebirth
    local Result = table.pack(Event:InvokeServer())
task.wait(1)
       end
    end,
})

WindUI:Notify({
  Title = "Welocome",
  Content = "Thx for using my script im a new dev if you find any bugs let me know",
})

-- Edit the floating open button at any time after creation
Window:EditOpenButton({
    Title   = "Open Hub",
    Enabled = true,
    Scale   = 0.6,
})
