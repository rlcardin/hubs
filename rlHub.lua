local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("RL Hub", "DarkTheme")
    local customColors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }

    --Pagina 1 FE SCRIPTS
    local ScritpFE = Window:NewTab("FE Scripts")
    local fee = ScritpFE:NewSection("FE Scripts")
    fee:NewButton("Fake VR (R6 Only)", "Fake VR", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/yWPpG7mq"))()
    end)
    fee:NewButton("FE Black Hole", "Black hole", function()
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
    fee:NewButton("FE Kill/Fling", "Kill/Fling Spin Gui", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Gqfp5kmb"))()
    end)
    --FE Poses and Dances
    local fee = ScritpFE:NewSection("FE Dances/Emotes")
    fee:NewButton("FE Dances (R6/R15)", "R6/R15 Dances", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KZHGhzPC"))()
    end)
    fee:NewButton("FE Poses (R6/R15)", "FE Poses", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/R1MgDiRX", true))()
    end)
    fee:NewButton("Free Emotes and Animation Packages (R15)", "this gui gives free emotes and packages", function()
        loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
    end)
    -- FE Admin
    local fee = ScritpFE:NewSection("FE Admins")
    fee:NewButton("Infinite Yield FE Admin", "FE Admin 2", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)
    fee:NewButton("CMD-X Admin", "FE Admin", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FJCxAASq"))()
    end)

 
    --Pagina 2 Other Scritps
    local others = Window:NewTab("Others Scripts")
    local oth = others:NewSection("Others")
    oth:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    oth:NewSlider("Jumppower", "Mude seu jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    oth:NewButton("Rejoin Script", "Rejoin this server", function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
    end)
    oth:NewButton("Click TP", "Press CTRL and Click", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kF3vFUmh"))()
    end)
    oth:NewButton("Carry People", "Need 1 item or more", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Bc98Turg"))()
    end)

    
    -- UI

    local themeTab = Window:NewTab("UI Settings")
    local themeSection = themeTab:NewSection("Theme")
    local settingsSection = themeTab:NewSection("UI")
    
    settingsSection:NewKeybind("Alterar UI", "Ligue ou deslige o UI", Enum.KeyCode.T , function()
        Library:ToggleUI()
    end)
    
    for theme, color in pairs(customColors) do
        themeSection:NewColorPicker(theme, "Change your "..theme, Color3.fromRGB(255,255,255), function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end
