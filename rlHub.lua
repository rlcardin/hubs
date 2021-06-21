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
        loadstring(game:HttpGet("https://pastebin.com/raw/pqYHxPi8"))()
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

    --Pagina 2 Games GUI
    local GUIg = Window:NewTab("Games GUI")
    local gg = GUIg:NewSection("Games GUI")
    
    




    --Pagina 3 Other Scritps
    local others = Window:NewTab("Others Scripts")
    local oth = others:NewSection("Oiii")
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
    local oth = others:NewSection("Natural Disaster Survival")
    oth:NewButton("TP Map", "TP", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122.865555, 47.3999901, 5.38794374, 0.0430620573, 4.57639189e-08, -0.999072373, -1.31363125e-08, 1, 4.52402098e-08, 0.999072373, 1.11759908e-08, 0.0430620573)
    end)
    oth:NewButton("TP Lobby", "TP", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-259.175018, 194.499908, 321.476563, 0.683168054, 4.98186417e-08, -0.730261207, -5.49090409e-08, 1, 1.68522458e-08, 0.730261207, 2.85850259e-08, 0.683168054)
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
