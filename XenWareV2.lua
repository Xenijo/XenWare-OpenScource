
Here my shit code


if game.PlaceId == 7167319176 then

 


        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
        local Utility = loadstring(game:HttpGet("https://raw.githubusercontent.com/Holdigen/Random-Scripts/main/Utility"))()

        local player = game:GetService("Players").LocalPlayer


        function GetCar()
            for i, v in pairs(workspace.Map.Vehicles:GetChildren()) do
                if string.find(v.Name, player.Name) then
                    return v
                end
            end
            return nil
        end

        local CurrentVehicle = GetCar()

        game.RunService.RenderStepped:Connect(function()
            CurrentVehicle = GetCar()
        end)

        _G.AutoFarm1 = false
        _G.AutoFarm2 = false
        _G.AutoFarm3 = false
        _G.AutoFarm4 = false
        _G.AutoRob = false
        _G.AutoGrab = false
        _G.AimKey = false
        _G.OldPos = false
        _G.ATM = false
        _G.FOV = 0
        _G.Prediction = (0.01)

        local Farms = Library:NewWindow("Main")

        local Combat = Farms:NewSection("Combat")

        local Farming = Farms:NewSection("Farming")

        local Tp = Farms:NewSection("Teleports")

        local Player = Farms:NewSection("Player")

        local Misc = Farms:NewSection("Misc")

        local Credits = Farms:NewSection("Credits")

        Farming:CreateToggle(
            "Bodega PickUp Farm",
            function(value)
                if _G.AutoFarm1 == true then
                    print("stop")
                    _G.AutoFarm1 = false
                else
                    print("Start")
                    _G.AutoFarm1 = true

                    local New_CFrame = game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.CFrame
                    local ts = game:GetService("TweenService")
                    local char = game.Players.LocalPlayer.Character

                    local part = char.HumanoidRootPart
                    local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                    local tp = {CFrame = New_CFrame * CFrame.new(2, 0, 0)}
                    local tween = ts:Create(part, ti, tp)
                    tween:Play()
                    tween.Completed:wait()
                    wait(0.5)
                    while _G.AutoFarm1 == true do
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector,
                            math.huge
                        )

                        loadstring(Game:HttpGet("https://pastebin.com/raw/Vq3i2e6V"))()
                        wait(5)
                        loadstring(Game:HttpGet("https://pastebin.com/raw/kxutu6Ny"))()
                        wait(5)
                        loadstring(Game:HttpGet("https://pastebin.com/raw/3RQ1vqcf"))()
                        wait()
                    end
                end
            end
        )

        Farming:CreateToggle(
            "Deliver Farm ",
            function(value)
                if _G.AutoFarm2 == true then
                    print("stop")
                    _G.AutoFarm2 = false
                else
                    print("Start")
                    _G.AutoFarm2 = true
                    while _G.AutoFarm2 == true do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game:GetService("Workspace").Map.Jobs.Deliver.Pickup.Graffiti.CFrame

                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Deliver.Pickup.Graffiti.ClickDetector,
                            math.huge
                        )

                        wait(2)

                        function CheckIfBox()
                            for i, v in pairs(game.workspace.Map.Jobs.Deliver.DropOff:GetChildren()) do
                                if v:FindFirstChildWhichIsA("BillboardGui") then
                                    return v
                                end
                            end
                            return false
                        end

                        local Part = CheckIfBox()
                        if Part then
                            local New_CFrame = Part.CFrame
                            local ts = game:GetService("TweenService")
                            local char = game.Players.LocalPlayer.Character

                            local part = char.HumanoidRootPart
                            local ti = TweenInfo.new(5, Enum.EasingStyle.Linear)
                            local tp = {CFrame = New_CFrame * CFrame.new(0, 0, 0)}
                            local tween = ts:Create(part, ti, tp)
                            tween:Play()
                            tween.Completed:wait()
                        end

                        wait()
                    end
                end
            end
        )

        Farming:CreateToggle(
            "Bartender Farm",
            function(value)
                if _G.AutoFarm4 == true then
                    print("Stop")
                    _G.AutoFarm4 = false
                else
                    print("Start")
                    _G.AutoFarm4 = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.Bottle.CFrame
                    while _G.AutoFarm4 == true do
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        wait()
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                        fireclickdetector(
                            game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector,
                            math.huge
                        )
                    end
                end
            end
        )

        Farming:CreateToggle(
            "In n Out Farm",
            function(value)
                if _G.AutoFarm3 == true then
                    print("stop")
                    _G.AutoFarm3 = false
                else
                    print("Start")
                    _G.AutoFarm3 = true
                    while _G.AutoFarm3 == true do
                        local New_CFrame = game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 1, 2)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()

                        fireproximityprompt(
                            game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt,
                            math.huge
                        )

                        local New_CFrame = game:GetService("Workspace").Map.Jobs.InAndOut.Takeout.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 1, 0)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()
                        wait(5)
                    end
                end
            end
        )

        Farming:CreateToggle(
            "ATM Farm",
            function(value)
                if _G.ATM == true then
                    print("stop")
                    _G.ATM = false
                else
                    print("Start")
                    _G.ATM = true
                    while _G.ATM == true do
                        wait(0.5)

                        local IgnoreParts = {}

                        function CheckIfBox()
                            for i, v in pairs(game:GetService("Workspace").Map.Interactives.ATM:GetChildren()) do
                                if
                                    v:FindFirstChild("PromptAttachment") and
                                        v.PromptAttachment.swipePrompt.ObjectText == "Cooldown Enabled: false"
                                 then
                                    return v
                                end
                            end
                            return false
                        end

                        local Handle = CheckIfBox()
                        if Handle then
                            local part = Handle
                            if part.PromptAttachment.swipePrompt.ObjectText == "Cooldown Enabled: true" then
                                table.insert(IgnoreParts, part)
                            end

                            local plr = game.Players.LocalPlayer
                            local hum = plr.Character.HumanoidRootPart
                            local speed = 300

                            local function tweenTo(Dest_CFrame)
                                local twn =
                                    game:GetService("TweenService"):Create(
                                    hum,
                                    TweenInfo.new(
                                        (Dest_CFrame.p - hum.Position).Magnitude / speed,
                                        Enum.EasingStyle.Linear
                                    ),
                                    {CFrame = Dest_CFrame}
                                )
                                twn:Play()
                                twn.Completed:Wait()
                            end

                            tweenTo(CFrame.new(part.Position) * CFrame.new(0,5,0))

                            wait(0.5)

                            fireproximityprompt(part.PromptAttachment.swipePrompt, math.huge)
                        end
                    end
                end
            end
        )

        Farming:CreateToggle(
            "AutoRob",
            function(value)
                if _G.AutoRob == true then
                    print("stop")
                    _G.AutoRob = false
                else
                    _G.AutoRob = true

                    while _G.AutoRob == true do
                        print("hi")
                        repeat
                            wait()
                        until game:GetService("Workspace").Map.Buildings.Bank.Rob.Init.screen.surface.Enabled == true

                        local IgnoreParts = {}
                        _G.Test = true

                        local New_CFrame = game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 0, -3)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()

                        wait(0.5)
                        fireproximityprompt(
                            game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt,
                            math.huge
                        )

                        local ohString1 = "bank_dealer"
                        local ohString2 = "C4"

                        game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
                        wait(0.2)

                        local ohString1 = "bank_dealer"
                        local ohString2 = "Duffel Bag"

                        game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
                        wait(1)
                        local New_CFrame = game:GetService("Workspace").Map.Buildings.Bank.Rob.Init.screen.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 0, -3)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()
                        wait(0.2)

                        fireclickdetector(
                            game:GetService("Workspace").Map.Buildings.Bank.Rob.Init.screen.ClickDetector,
                            math.huge
                        )
                        repeat
                            wait()
                        until game:GetService("Workspace").Map.Buildings.Bank.Rob.Init.screen.surface.Enabled == false
                        wait(1)
                        game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
                        wait(1)
                        local New_CFrame = game:GetService("Workspace").Map.Buildings.Bank.Rob.vault.door.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 0, -3)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()
                        fireclickdetector(
                            game:GetService("Workspace").Map.Buildings.Bank.Rob.vault.door.ClickDetector,
                            math.huge
                        )
                        wait(1)

                        function CheckIfBox()
                            for i, v in pairs(
                                game:GetService("Workspace").Map.Buildings.Bank.Rob.items.gold:GetChildren()
                            ) do
                                if v:FindFirstChild("Part") and v.Gold.MeshPart.Transparency ~= 1 then
                                    return v
                                end
                            end
                            return false
                        end
                        while _G.Test == true do
                            local Handle = CheckIfBox()
                            if Handle then
                                local part = Handle.Gold.MeshPart
                                if part.transparency == 1 then
                                    table.insert(IgnoreParts, part)
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
                                fireclickdetector(Handle.ClickDetector, math.huge)
                                wait(1)
                                if
                                    game.Players.LocalPlayer.Character["Duffel Bag"].Handle.AmountDisplay.container[
                                        "gold_container"
                                    ].amount.Text == "5/5"
                                 then
                                    _G.Test = false
                                end
                            end
                        end

                        local New_CFrame = game:GetService("Workspace").Map.Buildings.Bank.Rob.Sell.Table.Part.CFrame
                        local ts = game:GetService("TweenService")
                        local char = game.Players.LocalPlayer.Character

                        local part = char.HumanoidRootPart
                        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
                        local tp = {CFrame = New_CFrame * CFrame.new(0, 0, 0)}
                        local tween = ts:Create(part, ti, tp)
                        tween:Play()
                        tween.Completed:wait()
                        wait(0.2)
                        loadstring(Game:HttpGet("https://pastebin.com/raw/b4vVKw3z"))()
                        --fireclickdetector(game:GetService("Workspace").Map.Buildings.Bank.Rob.Sell.ClickDetector,math.huge)
                    end
                end
            end
        )

      

        --Tp Section

        Tp:CreateButton(
            "Jewelry",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(601, 3, -186)
            end
        )

        Tp:CreateButton(
            "Sell",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game:GetService("Workspace").Map.Buildings.Bank.Rob.Sell.Table.Part.CFrame
            end
        )

        Tp:CreateButton(
            "Bank",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game:GetService("Workspace").Map.Buildings.Bank.Rob.Init.screen.CFrame
            end
        )

        --Player Section

        Player:CreateSlider(
            "WalkSpeed",
            0,
            500,
            16,
            false,
            function(value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
                wait()
            end
        )

        Player:CreateButton(
            "Fly{C}",
            function(value)
                fly()
            end
        )

        Player:CreateTextbox(
            "Deposit",
            function(value)
                local ohString1 = "Deposit"
                local ohString2 = value

                game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
            end
        )

        Player:CreateTextbox(
            "Withdraw",
            function(value)
                local ohString1 = "Withdraw"
                local ohString2 = value

                game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
            end
        )

        Player:CreateToggle(
            "GrabGuns/GrabBags",
            function()
                if _G.AutoGrab == true then
                    _G.AutoGrab = false
                else
                    _G.AutoGrab = true
                    while _G.AutoGrab == true do
                        wait(1)
                        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name == "TouchInterest" and v.Parent.Name == "Handle" then
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                            end
                        end
                    end
                end
            end
        )

        Player:CreateButton(
            "Tp To Guns/Bags",
            function()
                function CheckIfBox()
                    for i, v in pairs(game.workspace:GetChildren()) do
                        if v:FindFirstChild("Handle") then
                            return v
                        end
                    end
                    return false
                end
                local Handle = CheckIfBox()
                if Handle then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Handle.Handle.CFrame
                end
            end
        )

        Player:CreateButton(
            "No Name",
            function()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Stats.nameLabel.Text = "..No Name.."
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Stats["display_pic"]:Destroy()
                game:GetService("Workspace").Map.Tags:Destroy()
            end
        )

        Combat:CreateButton(
            "SilentAim",
            function()
                silentaim()
            end
        )

        Combat:CreateTextbox(
            "AimKey",
            function(value)
                _G.AimKey = (value)
            end
        )

        Combat:CreateTextbox(
            "Prediction",
            function(value)
                _G.Prediction = (value)
            end
        )

        Combat:CreateSlider(
            "Fov",
            0,
            500,
            0,
            false,
            function(value)
                _G.FOV = (value)
            end
        )

        Combat:CreateButton(
            "HitBoxExpander",
            function()
                _G.Hitbox = true
                local IgnoreParts2 = {}

                function CheckIfBox()
                    for i, v in pairs(game.workspace:GetChildren()) do
                        if v:FindFirstChild("Head") and v.Head.Transparency ~= 1 then
                            return v
                        end
                    end
                    return false
                end

                while _G.Hitbox == true do
                    wait()
                    local Handle = CheckIfBox()
                    if Handle then
                        local part = Handle.Head
                        if part.transparency == 1 then
                            table.insert(IgnoreParts2, part)
                        end

                        Handle.Head.Transparency = 1
                        print(Handle)
                        Handle.Head.face.Transparency = 1
                        Handle.Head.Size = Vector3.new(5, 5, 5)
                    end
                end
            end
        )

        Combat:CreateButton(
            "Box Esp",
            function(value)
                esp()
            end
        )

        Combat:CreateButton(
            "Tracer Esp",
            function(value)
                tracer()
            end
        )

        Combat:CreateButton(
            "Name Esp",
            function(value)
                Name()
            end
        )

        Combat:CreateButton(
            "BuyArmor",
            function(value)
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                local New_CFrame = game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.CFrame
                local ts = game:GetService("TweenService")
                local char = game.Players.LocalPlayer.Character

                local part = char.HumanoidRootPart
                local ti = TweenInfo.new(3, Enum.EasingStyle.Linear)
                local tp = {CFrame = New_CFrame * CFrame.new(0, 0, -3)}
                local tween = ts:Create(part, ti, tp)
                tween:Play()
                tween.Completed:wait()

                wait(0.5)
                fireproximityprompt(
                    game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt,
                    math.huge
                )

                wait(0.5)
                local ohString1 = "gun_store"
                local ohString2 = "BodyArmor"

                game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
                wait(0.2)
                if _G.OldPos == true then
                    local New_CFrame = OldPos
                    local ts = game:GetService("TweenService")
                    local char = game.Players.LocalPlayer.Character

                    local part = char.HumanoidRootPart
                    local ti = TweenInfo.new(2, Enum.EasingStyle.Linear)
                    local tp = {CFrame = New_CFrame * CFrame.new(0, 0, -3)}
                    local tween = ts:Create(part, ti, tp)
                    tween:Play()
                    tween.Completed:wait()
                end
            end
        )
        Combat:CreateToggle(
            "OldPos",
            function(value)
                if _G.OldPos == true then
                    _G.OldPos = false
                else
                    _G.OldPos = true
                end
            end
        )

        Credits:CreateButton(
            "Made By: ●Xenjio○#9080",
            function()
                setclipboard("●Xenjio○#9080")
            end
        )

        function esp()
            local lplr = game.Players.LocalPlayer
            local camera = game:GetService("Workspace").CurrentCamera
            local CurrentCamera = workspace.CurrentCamera
            local worldToViewportPoint = CurrentCamera.worldToViewportPoint

            local HeadOff = Vector3.new(0, 0.5, 0)
            local LegOff = Vector3.new(0, 3, 0)

            for i, v in pairs(game.Players:GetChildren()) do
                local BoxOutline = Drawing.new("Square")
                BoxOutline.Visible = false
                BoxOutline.Color = Color3.new(0, 0, 0)
                BoxOutline.Thickness = 3
                BoxOutline.Transparency = 1
                BoxOutline.Filled = false

                local Box = Drawing.new("Square")
                Box.Visible = false
                Box.Color = Color3.new(1, 1, 1)
                Box.Thickness = 1
                Box.Transparency = 1
                Box.Filled = false

                function boxesp()
                    game:GetService("RunService").RenderStepped:Connect(
                        function()
                            if
                                v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and
                                    v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                    v ~= lplr and
                                    v.Character.Humanoid.Health > 0
                             then
                                local Vector, onScreen =
                                    camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                                local RootPart = v.Character.HumanoidRootPart
                                local Head = v.Character.Head
                                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                                if onScreen then
                                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                    BoxOutline.Position =
                                        Vector2.new(
                                        RootPosition.X - BoxOutline.Size.X / 2,
                                        RootPosition.Y - BoxOutline.Size.Y / 2
                                    )
                                    BoxOutline.Visible = true

                                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                    Box.Position =
                                        Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                                    Box.Visible = true

                                    if v.TeamColor == lplr.TeamColor then
                                        BoxOutline.Visible = true
                                        Box.Visible = true
                                    else
                                        BoxOutline.Visible = true
                                        Box.Visible = true
                                    end
                                else
                                    BoxOutline.Visible = false
                                    Box.Visible = false
                                end
                            else
                                BoxOutline.Visible = false
                                Box.Visible = false
                            end
                        end
                    )
                end
                coroutine.wrap(boxesp)()
            end

            game.Players.PlayerAdded:Connect(
                function(v)
                    local BoxOutline = Drawing.new("Square")
                    BoxOutline.Visible = false
                    BoxOutline.Color = Color3.new(0, 0, 0)
                    BoxOutline.Thickness = 3
                    BoxOutline.Transparency = 1
                    BoxOutline.Filled = false

                    local Box = Drawing.new("Square")
                    Box.Visible = false
                    Box.Color = Color3.new(1, 1, 1)
                    Box.Thickness = 1
                    Box.Transparency = 1
                    Box.Filled = false

                    function boxesp()
                        game:GetService("RunService").RenderStepped:Connect(
                            function()
                                if
                                    v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and
                                        v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                        v ~= lplr and
                                        v.Character.Humanoid.Health > 0
                                 then
                                    local Vector, onScreen =
                                        camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                                    local RootPart = v.Character.HumanoidRootPart
                                    local Head = v.Character.Head
                                    local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                                    local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                                    local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                                    if onScreen then
                                        BoxOutline.Size =
                                            Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                        BoxOutline.Position =
                                            Vector2.new(
                                            RootPosition.X - BoxOutline.Size.X / 2,
                                            RootPosition.Y - BoxOutline.Size.Y / 2
                                        )
                                        BoxOutline.Visible = true

                                        Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                        Box.Position =
                                            Vector2.new(
                                            RootPosition.X - Box.Size.X / 2,
                                            RootPosition.Y - Box.Size.Y / 2
                                        )
                                        Box.Visible = true

                                        if v.TeamColor == lplr.TeamColor then
                                            BoxOutline.Visible = true
                                            Box.Visible = true
                                        else
                                            BoxOutline.Visible = true
                                            Box.Visible = true
                                        end
                                    else
                                        BoxOutline.Visible = false
                                        Box.Visible = false
                                    end
                                else
                                    BoxOutline.Visible = false
                                    Box.Visible = false
                                end
                            end
                        )
                    end
                    coroutine.wrap(boxesp)()
                end
            )
        end

        function tracer()
            local lplr = game.Players.LocalPlayer
            local camera = game:GetService("Workspace").CurrentCamera
            local CurrentCamera = workspace.CurrentCamera
            local worldToViewportPoint = CurrentCamera.worldToViewportPoint

            _G.TeamCheck = false -- Use True or False to toggle TeamCheck

            for i, v in pairs(game.Players:GetChildren()) do
                local Tracer = Drawing.new("Line")
                Tracer.Visible = false
                Tracer.Color = Color3.new(1, 1, 1)
                Tracer.Thickness = 1
                Tracer.Transparency = 1

                function lineesp()
                    game:GetService("RunService").RenderStepped:Connect(
                        function()
                            if
                                v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and
                                    v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                    v ~= lplr and
                                    v.Character.Humanoid.Health > 0
                             then
                                local Vector, OnScreen =
                                    camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                                if OnScreen then
                                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                                        --//Teammates
                                        Tracer.Visible = false
                                    else
                                        --//Enemies
                                        Tracer.Visible = true
                                    end
                                else
                                    Tracer.Visible = false
                                end
                            else
                                Tracer.Visible = false
                            end
                        end
                    )
                end
                coroutine.wrap(lineesp)()
            end

            game.Players.PlayerAdded:Connect(
                function(v)
                    local Tracer = Drawing.new("Line")
                    Tracer.Visible = false
                    Tracer.Color = Color3.new(1, 1, 1)
                    Tracer.Thickness = 1
                    Tracer.Transparency = 1

                    function lineesp()
                        game:GetService("RunService").RenderStepped:Connect(
                            function()
                                if
                                    v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and
                                        v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                                        v ~= lplr and
                                        v.Character.Humanoid.Health > 0
                                 then
                                    local Vector, OnScreen =
                                        camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                                    if OnScreen then
                                        Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                                        Tracer.To = Vector2.new(Vector.X, Vector.Y)

                                        if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                                            --//Teammates
                                            Tracer.Visible = false
                                        else
                                            --//Enemies
                                            Tracer.Visible = true
                                        end
                                    else
                                        Tracer.Visible = false
                                    end
                                else
                                    Tracer.Visible = false
                                end
                            end
                        )
                    end
                    coroutine.wrap(lineesp)()
                end
            )
        end

        function Name()
            local c = workspace.CurrentCamera
            local ps = game:GetService("Players")
            local lp = ps.LocalPlayer
            local rs = game:GetService("RunService")

            local function esp(p, cr)
                local h = cr:WaitForChild("Humanoid")
                local hrp = cr:WaitForChild("HumanoidRootPart")

                local text = Drawing.new("Text")
                text.Visible = false
                text.Center = true
                text.Outline = true
                text.Font = 2
                text.Color = Color3.fromRGB(255, 255, 255)
                text.Size = 13

                local c1
                local c2
                local c3

                local function dc()
                    text.Visible = false
                    text:Remove()
                    if c1 then
                        c1:Disconnect()
                        c1 = nil
                    end
                    if c2 then
                        c2:Disconnect()
                        c2 = nil
                    end
                    if c3 then
                        c3:Disconnect()
                        c3 = nil
                    end
                end

                c2 =
                    cr.AncestryChanged:Connect(
                    function(_, parent)
                        if not parent then
                            dc()
                        end
                    end
                )

                c3 =
                    h.HealthChanged:Connect(
                    function(v)
                        if (v <= 0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                            dc()
                        end
                    end
                )

                c1 =
                    rs.RenderStepped:Connect(
                    function()
                        local hrp_pos, hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
                        if hrp_onscreen then
                            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
                            text.Text = p.Name
                            text.Visible = true
                        else
                            text.Visible = false
                        end
                    end
                )
            end

            local function p_added(p)
                if p.Character then
                    esp(p, p.Character)
                end
                p.CharacterAdded:Connect(
                    function(cr)
                        esp(p, cr)
                    end
                )
            end

            for i, p in next, ps:GetPlayers() do
                if p ~= lp then
                    p_added(p)
                end
            end

            ps.PlayerAdded:Connect(p_added)
        end

        function fly()
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/Friendlyfireisbad/XenijosScripts/main/Flybypass")
            )()
        end
        local RainbowCar = false
        Misc:CreateToggle("Rainbow Car", function(t)
            RainbowCar = t
            print(RainbowCar, "Rainbow toggle")
        end)

        game:GetService("RunService").Heartbeat:Connect(function()
            if RainbowCar == true then
                pcall(function()
                    for i, v in pairs(CurrentVehicle:GetDescendants()) do
                        if string.find(v.Name:lower(), "color") then
                            v.Color = Color3.fromHSV(tick() % 7.5 / 7.5, 1, 1)
                        end
                    end
                end)
            end
        end)


     

end