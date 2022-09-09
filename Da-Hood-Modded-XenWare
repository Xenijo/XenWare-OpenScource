


local Ui = loadstring(game:HttpGet(""))()--No ui because hold took it away :(
local Window = Ui:Window("XenWareV1", "Da Hood Modded", true,8882202428,1 )



local table1 = {}

local table2 = {}

local Main = Window:Page("Main")

local Label = Main:Label("MainStuff")
Main:Button("Click Me", function()
 Label:Update("Make By: FriendlyFire")
 wait(2)
 Label:Update("MainStuff")
end)

for i, v  in pairs(game:GetService("Workspace").ignored.Shop:GetChildren()) do 

  table.insert(table1,v.Name)
end

for i, v  in pairs(game:GetService("Workspace").Shop.Armor:GetChildren()) do 

  table.insert(table2,v.Name)
end


Main:Button("Inf Jump",function()
    
        local Player = game:GetService'Players'.LocalPlayer;
        local UIS = game:GetService'UserInputService';
         
        _G.JumpHeight = 50;
         
        function Action(Object, Function) if Object ~= nil then Function(Object); end end
         
        UIS.InputBegan:connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
                Action(Player.Character.Humanoid, function(self)
                    if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                        Action(self.Parent.HumanoidRootPart, function(self)
                            self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                        end)
                    end
                end)
            end
        end)
        
  end)

Main:Button("Speed(C)",function()
  loadstring(game:HttpGet(("https://raw.githubusercontent.com/Friendlyfireisbad/SilentAim/main/Speed%20(Not%20my%20)--%20just%20for%20testing"), true))()
end)


Main:Button("AntiStomp", function()
  game.Players.LocalPlayer.Character.UpperTorso:Destroy()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    game.Players.LocalPlayer.Character.Head.NeckRigAttachment:Destroy()
end)



Main:Button("AntiStompV2", function()

  game.Players.LocalPlayer.Character.UpperTorso:Destroy()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.LeftHand:Destroy()
    game.Players.LocalPlayer.Character.RightHand:Destroy()
    game.Players.LocalPlayer.Character.LeftFoot:Destroy()
    game.Players.LocalPlayer.Character.RightFoot:Destroy()
    game.Players.LocalPlayer.Character.Head.NeckRigAttachment:Destroy()
end)



Main:Button("Trash Talk(J)",function()
  player:GetMouse().KeyDown:connect(function(key)
    if key == keybind then 
        event:FireServer(words[math.random(#words)],"All")
        wait(1)
    end
end)
end)


local Aiming = Window:Page("Aiming")




_G.FOV = 0

Aiming:Button("SilentAim", function()
silentaim()
end)

Aiming:Textbox("Keybind", "Enter value", function(value)
    _G.AimKey = value 
end)

Aiming:Textbox("Prediction", "Enter value", function(value)
    _G.Prediction =  (value)
end)


Aiming:Slider("FOV", 0, 1000, 0,  function(value) -- 500 (MaxValue) | 0 (MinValue)
    _G.FOV = (value)
end)




local AutoBuy = Window:Page("AutoBuy")

_G.OldPos = false


local Dropdown = AutoBuy:Dropdown("AutoBuy Guns", table1, function(value)

  local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

  local New_CFrame = game:GetService("Workspace").ignored.Shop[value].Head.CFrame
  local ts = game:GetService("TweenService")
  local char = game.Players.LocalPlayer.Character
  
  local part = char.HumanoidRootPart
  local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
  local tp = {CFrame = New_CFrame * CFrame.new(0, -21, 0)}
  local tween = ts:Create(part, ti, tp)
  tween:Play()
  tween.Completed:wait()
  wait(0.2)
    fireclickdetector(game:GetService("Workspace").Shop.Guns[value].ClickDetector ,math.huge) 
    wait(0.3)
    if _G.OldPos == true then
    New_CFrame = oldpos
    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(10, Enum.EasingStyle.Linear)
    local tp = {CFrame = New_CFrame * CFrame.new(0, 3, 0)}
    local tween = ts:Create(part, ti, tp)
    tween:Play()
    end
end) 

local Dropdown = AutoBuy:Dropdown("AutoBuy Armor", table2, function(value)

  local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

  local New_CFrame = game:GetService("Workspace").Shop.Armor[value].Head.CFrame
  local ts = game:GetService("TweenService")
  local char = game.Players.LocalPlayer.Character
  
  local part = char.HumanoidRootPart
  local ti = TweenInfo.new(6, Enum.EasingStyle.Linear)
  local tp = {CFrame = New_CFrame * CFrame.new(0, 3, 0)}
  local tween = ts:Create(part, ti, tp)
  tween:Play()
  tween.Completed:wait()
  wait(0.2)
    fireclickdetector(game:GetService("Workspace").Shop.Armor[value].ClickDetector ,math.huge) 
    wait(0.3)
    if _G.OldPos == true then
    local New_CFrame = oldpos
    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(6, Enum.EasingStyle.Linear)
    local tp = {CFrame = New_CFrame * CFrame.new(0, 3, 0)}
    local tween = ts:Create(part, ti, tp)
    tween:Play()
    end
end)


AutoBuy:Toggle("OldPos", true, function(v)
  
  if _G.OldPos == true then 
    _G.OldPos = false
  else
    _G.OldPos = true 
  end
 end)




  
  local XenijoToxic =  {
    
    "EZ",
    "GET AIM BRO",
    "XenWareV1 ON TOP",
    "JOIN THE XenWare GANG",
    "AIRSHOOT",
    "Join The XenWare GANG DADDY",
    "GO PLAY AIMLAB",
    "REAL PROS USING XenWareV1",
    "JOIN THE DC: SKT9EUcvaE "
    
}

local player = game.Players.LocalPlayer
local keybind = "j"

local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest

player:GetMouse().KeyDown:connect(function(key)
    if key == keybind then 
        event:FireServer(XenijoToxic[math.random(#XenijoToxic)],"All")
        wait(1)
    end
end)


