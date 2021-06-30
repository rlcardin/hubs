local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("discord library")

local serv = win:Server("Rl", "")

local FEscript = serv:Channel("FE Scripts")

FEscript:Label("FE Script")

FEscript:Button("Fake VR (R6 Only)", function()
DiscordLib:Notification("Notification", "You get fake vr (Work only R6)", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/yWPpG7mq"))()
end)
FEscript:Button("FE Black Hole", function()
DiscordLib:Notification("Notification", "Use the E key to control", "Okay!")
    wait(1)
local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local NetworkAccess = coroutine.create(function()
            settings().Physics.AllowSleep = false
            while game:GetService("RunService").RenderStepped:Wait() do
                for _, Players in next, game:GetService("Players"):GetPlayers() do
                    if Players ~= game:GetService("Players").LocalPlayer then
                        Players.MaximumSimulationRadius = 0 
                        sethiddenproperty(Players, "SimulationRadius", 0) 
                    end 
                end
                game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
                setsimulationradius(math.huge) 
            end 
        end) 
        coroutine.resume(NetworkAccess)
        local function ForcePart(v)
            if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
                Mouse.TargetFilter = v
                for _, x in next, v:GetChildren() do
                    if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                        x:Destroy()
                    end
                end
                if v:FindFirstChild("Attachment") then
                    v:FindFirstChild("Attachment"):Destroy()
                end
                if v:FindFirstChild("AlignPosition") then
                    v:FindFirstChild("AlignPosition"):Destroy()
                end
                if v:FindFirstChild("Torque") then
                    v:FindFirstChild("Torque"):Destroy()
                end
                v.CanCollide = false
                local Torque = Instance.new("Torque", v)
                Torque.Torque = Vector3.new(100000, 100000, 100000)
                local AlignPosition = Instance.new("AlignPosition", v)
                local Attachment2 = Instance.new("Attachment", v)
                Torque.Attachment0 = Attachment2
                AlignPosition.MaxForce = 9999999999999999
                AlignPosition.MaxVelocity = math.huge
                AlignPosition.Responsiveness = 200
                AlignPosition.Attachment0 = Attachment2 
                AlignPosition.Attachment1 = Attachment1
            end
        end
        for _, v in next, game:GetService("Workspace"):GetDescendants() do
            ForcePart(v)
        end
        game:GetService("Workspace").DescendantAdded:Connect(function(v)
            ForcePart(v)
        end)
        UserInputService.InputBegan:Connect(function(Key, Chat)
            if Key.KeyCode == Enum.KeyCode.E and not Chat then
               Updated = Mouse.Hit + Vector3.new(0, 5, 0)
            end
        end)
        spawn(function()
            while game:GetService("RunService").RenderStepped:Wait() do
                Attachment1.WorldCFrame = Updated
            end
        end)
          
    end)

FEscript:Button("FE Kill/Fling", function()
DiscordLib:Notification("Notification", "Kill/Fling Gui", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/Gqfp5kmb"))()
end)

FEscript:Label("FE Animations/Dances")

FEscript:Button("Nullware Hub", function()
DiscordLib:Notification("Notification", "FE Dances/Animations For R6/R15 Avatars", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/KZHGhzPC"))()
end)

FEscript:Button("Energize Remake Gui", function()
DiscordLib:Notification("Notification", "FE Animations GUI For R6/R15 Avatars", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/R1MgDiRX", true))()
end)

FEscript:Button("Free Emotes and Animation Packages (R15)", function()
    DiscordLib:Notification("Notification", "Gui for all animations packages and emotes", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
end)

FEscript:Label("FE Admins")

FEscript:Button("Infinite Yield", function()
    DiscordLib:Notification("Notification", "FE Admin", "Okay!")
    wait(1)
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

FEscript:Button("CMD-X Admin", function()
    DiscordLib:Notification("Notification", "FE Admin", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/FJCxAASq"))()
end)

local FunScripts = serv:Channel("Fun FE")

FunScripts:Label("Fun Scripts")

FunScripts:Button("Ball Spin", function()
    DiscordLib:Notification("Notification", "You enter an invisible ball", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/XxUcV0fg"))()
end)

FunScripts:Button("Carry People", function()
    DiscordLib:Notification("Notification", "Need an item in your hand", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/Bc98Turg"))()
end)

FunScripts:Button("FE Car (R6/Need Avatar item)", function()
    DiscordLib:Notification("Notification", "Need the Eltoria RX750 item for the script to work", "Okay!")
    wait(1)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/MonkoTubeYT/carscript/master/!carscript.lua',true))()
end)

FunScripts:Button("Gravitation Gun", function()
    DiscordLib:Notification("Notification", "Hold things with this item", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/TCAqcbtW"))()
end)

FunScripts:Button("Wall Walk", function()
    DiscordLib:Notification("Notification", "Walk the walls / Press Z to Activate or Deactivate", "Okay!")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/h3guEeKk"))()
end)

FunScripts:Label("Netless Bypass (for FE Animations Scripts)")

FunScripts:Button("Netless Bypass", function()
    DiscordLib:Notification("Notification", "Use in the scripts below", "Okay!")
    loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
end)

FunScripts:Label("FE Animations (Run Netless Bypass first to avoid errors)")

FunScripts:Button("FE Among Us (R6)", function()
    DiscordLib:Notification("Notification", "You become a Among Us", "Okay!")
    loadstring(game:HttpGet("https://pastebin.com/raw/JXUMavf3", true))()
end)

FunScripts:Button("FE Chill (R6)", function()
    DiscordLib:Notification("Notification", "Chill fly Animation", "Okay!")
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/XmHFdTij"))()
end)

FunScripts:Button("FE Chips (R6)", function()
    DiscordLib:Notification("Notification", "Chips Animation", "Okay!")
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/b289ts36"))()
end)

FunScripts:Button("FE Gale (R6)", function()
    DiscordLib:Notification("Notification", "Fight Animation", "Okay!")
    loadstring(game:HttpGet(("https://pastebin.com/raw/PjJNLaFa"), true))()
end)

FunScripts:Button("FE Long Neck (R6)", function()
    DiscordLib:Notification("Notification", "Your legs gets long", "Okay!")
    loadstring(game:HttpGet("https://pastebin.com/raw/WKb9rA6B "))()
end)

FunScripts:Button("FE Memeus (R6)", function()
    DiscordLib:Notification("Notification", "Is a Memeus Animation", "Okay!")
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/2MSTmKBa"))()
end)

FunScripts:Button("FE Neko (R6)", function()
    DiscordLib:Notification("Notification", "Neko Animation", "Okay!")
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/rlcardin/a/main/oi"))()
end)

FunScripts:Button("FE Pyramid (R6)", function()
    DiscordLib:Notification("Notification", "You become a pyramid", "Okay!")
    loadstring(game:HttpGet("https://pastebin.com/raw/62D5UQSC "))()
end)

FunScripts:Button("FE Spider (R6)", function()
    DiscordLib:Notification("Notification", "Spider Transformation", "Okay!")
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/txsk1LJg"))()
end)

FunScripts:Button("FE Smug (R6)", function()
    DiscordLib:Notification("Notification", "Smug Animation", "Okay!")
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/ZuKy7HFF"))()
end)

local OtherScripts = serv:Channel("Others")

local OtherScript = OtherScripts:Slider("Walkspeed", 0, 1000, 400, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
    print(t)
end)
    OtherScripts:Button("Change to Normal Walkspeed", function()
    OtherScript:Change(16)      
end)

local OtherScript = OtherScripts:Slider("Jumppower", 0, 1000, 400, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
    print(t)
end)
    OtherScripts:Button("Change to Normal Jumppower", function()
    OtherScript:Change(50)
end)

OtherScripts:Seperator()

OtherScripts:Button("Rejoin Script", function()
    DiscordLib:Notification("Notification", "Rejoin this server", "Okay!")
    wait(1)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

OtherScripts:Button("CTRL + Click TP", function()
    DiscordLib:Notification("Notification", "Press CTRL and Click", "Okay!")
    loadstring(game:HttpGet("https://pastebin.com/raw/kF3vFUmh"))()
end)

OtherScripts:Button("Alt + Click Destroy", function()
    DiscordLib:Notification("Notification", "Press Alt and Click", "Okay!")
    loadstring(game:HttpGet("https://pastebin.com/raw/du1e3Ax7"))()
end)
