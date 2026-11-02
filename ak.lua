-- made by ChiefBlox | Improved & Fixed by Qwen
-- R6 ONLY SCRIPT

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Debris = game:GetService("Debris")
local Workspace = game:GetService("Workspace")

local Player = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local Mouse = Player:GetMouse()

-- === НАСТРОЙКИ ===
local Settings = {
    Range = 1000,
    Spread = 1.5, -- Чуть точнее
    Damage = {25, 50},
    HeadShotDamage = {70, 120},
    Bullets = 1,
    FireRate = 0.1,
    Automatic = true,
    ReloadKey = Enum.KeyCode.R,
    ReloadTime = 2.5,
    AmmoMax = 30,
    SprintSpeed = 25,
    SprintKey = Enum.KeyCode.LeftShift,
    Recoil = math.rad(1.2)
}

-- === СОЗДАНИЕ ИНСТРУМЕНТА И МОДЕЛИ ===
local mas = Instance.new("Model", game:GetService("Lighting"))
local Tool = Instance.new("Tool")
Tool.Name = "AK-47"
Tool.RequiresHandle = false
Tool.Parent = mas

-- ==========================================
-- НАЧАЛО ОРИГИНАЛЬНЫХ ДЕТАЛЕЙ (НЕ ИЗМЕНЕНО)
-- ==========================================
local Part20 = Instance.new("Part")
local BlockMesh21 = Instance.new("BlockMesh")
local Part22 = Instance.new("Part")
local BlockMesh23 = Instance.new("BlockMesh")
local Part24 = Instance.new("Part")
local CylinderMesh25 = Instance.new("CylinderMesh")
local Part26 = Instance.new("Part")
local BlockMesh27 = Instance.new("BlockMesh")
local Part28 = Instance.new("Part")
local BlockMesh29 = Instance.new("BlockMesh")
local Part30 = Instance.new("Part")
local BlockMesh31 = Instance.new("BlockMesh")
local Part32 = Instance.new("Part")
local BlockMesh33 = Instance.new("BlockMesh")
local Sound34 = Instance.new("Sound")
local Sound35 = Instance.new("Sound")
local Sound36 = Instance.new("Sound")
local Sound37 = Instance.new("Sound")
local Sound38 = Instance.new("Sound")
local Sound39 = Instance.new("Sound")
local Part40 = Instance.new("Part")
local CylinderMesh41 = Instance.new("CylinderMesh")
local Part42 = Instance.new("Part")
local BlockMesh43 = Instance.new("BlockMesh")
local Part44 = Instance.new("Part")
local BlockMesh45 = Instance.new("BlockMesh")
local Part46 = Instance.new("Part")
local BlockMesh47 = Instance.new("BlockMesh")
local Part48 = Instance.new("Part")
local Decal49 = Instance.new("Decal")
local CylinderMesh50 = Instance.new("CylinderMesh")
local Part51 = Instance.new("Part")
local BlockMesh52 = Instance.new("BlockMesh")
local Part53 = Instance.new("Part")
local BlockMesh54 = Instance.new("BlockMesh")
local ManualWeld55 = Instance.new("ManualWeld")
local Part56 = Instance.new("Part")
local CylinderMesh57 = Instance.new("CylinderMesh")
local Part58 = Instance.new("Part")
local BlockMesh59 = Instance.new("BlockMesh")
local Part60 = Instance.new("Part")
local BlockMesh61 = Instance.new("BlockMesh")
local Part62 = Instance.new("Part")
local BlockMesh63 = Instance.new("BlockMesh")
local Part64 = Instance.new("Part")
local CylinderMesh65 = Instance.new("CylinderMesh")
local Part66 = Instance.new("Part")
local Decal67 = Instance.new("Decal")
local BlockMesh68 = Instance.new("BlockMesh")
local Part69 = Instance.new("Part")
local BlockMesh70 = Instance.new("BlockMesh")
local Part71 = Instance.new("Part")
local BlockMesh72 = Instance.new("BlockMesh")
local Part73 = Instance.new("Part")
local CylinderMesh74 = Instance.new("CylinderMesh")
local Part75 = Instance.new("Part")
local CylinderMesh76 = Instance.new("CylinderMesh")
local Part77 = Instance.new("Part")
local SpecialMesh78 = Instance.new("SpecialMesh")
local Part79 = Instance.new("Part")
local BlockMesh80 = Instance.new("BlockMesh")
local Part81 = Instance.new("Part")
local CylinderMesh82 = Instance.new("CylinderMesh")
local Part83 = Instance.new("Part")
local BlockMesh84 = Instance.new("BlockMesh")
local Part85 = Instance.new("Part")
local BlockMesh86 = Instance.new("BlockMesh")
local Part87 = Instance.new("Part")
local BlockMesh88 = Instance.new("BlockMesh")
local Part89 = Instance.new("Part")
local BlockMesh90 = Instance.new("BlockMesh")
local Part91 = Instance.new("Part")
local BlockMesh92 = Instance.new("BlockMesh")
local Part93 = Instance.new("Part")
local BlockMesh94 = Instance.new("BlockMesh")
local Part95 = Instance.new("Part")
local BlockMesh96 = Instance.new("BlockMesh")
local Part97 = Instance.new("Part")
local BlockMesh98 = Instance.new("BlockMesh")
local Part99 = Instance.new("Part")
local BlockMesh100 = Instance.new("BlockMesh")
local Part101 = Instance.new("Part")
local BlockMesh102 = Instance.new("BlockMesh")
local Part103 = Instance.new("Part")
local BlockMesh104 = Instance.new("BlockMesh")
local Part105 = Instance.new("Part")
local BlockMesh106 = Instance.new("BlockMesh")
local Part107 = Instance.new("Part")
local Decal108 = Instance.new("Decal")
local BlockMesh109 = Instance.new("BlockMesh")
local Part110 = Instance.new("Part")
local CylinderMesh111 = Instance.new("CylinderMesh")
local Part112 = Instance.new("Part")
local CylinderMesh113 = Instance.new("CylinderMesh")
local Part114 = Instance.new("Part")
local SpecialMesh115 = Instance.new("SpecialMesh")
local Part116 = Instance.new("Part")
local BlockMesh117 = Instance.new("BlockMesh")
local Part118 = Instance.new("Part")
local CylinderMesh119 = Instance.new("CylinderMesh")
local Part120 = Instance.new("Part")
local SpecialMesh121 = Instance.new("SpecialMesh")
local Part122 = Instance.new("Part")
local BlockMesh123 = Instance.new("BlockMesh")
local Part124 = Instance.new("Part")
local CylinderMesh125 = Instance.new("CylinderMesh")
local Part126 = Instance.new("Part")
local CylinderMesh127 = Instance.new("CylinderMesh")
local Part128 = Instance.new("Part")
local BlockMesh129 = Instance.new("BlockMesh")
local Part130 = Instance.new("Part")
local BlockMesh131 = Instance.new("BlockMesh")
local Part132 = Instance.new("Part")
local SpecialMesh133 = Instance.new("SpecialMesh")
local Part134 = Instance.new("Part")
local BlockMesh135 = Instance.new("BlockMesh")
local Part136 = Instance.new("Part")
local SpecialMesh137 = Instance.new("SpecialMesh")
local Part138 = Instance.new("Part")
local BlockMesh139 = Instance.new("BlockMesh")
local Part140 = Instance.new("Part")
local BlockMesh141 = Instance.new("BlockMesh")
local Part142 = Instance.new("Part")
local SpecialMesh143 = Instance.new("SpecialMesh")
local Part144 = Instance.new("Part")
local BlockMesh145 = Instance.new("BlockMesh")
local Part146 = Instance.new("Part")
local BlockMesh147 = Instance.new("BlockMesh")
local Part148 = Instance.new("Part")
local BlockMesh149 = Instance.new("BlockMesh")
local Part150 = Instance.new("Part")
local SpecialMesh151 = Instance.new("SpecialMesh")
local Part152 = Instance.new("Part")
local BlockMesh153 = Instance.new("BlockMesh")
local Part154 = Instance.new("Part")
local SpecialMesh155 = Instance.new("SpecialMesh")
local Part156 = Instance.new("Part")
local BlockMesh157 = Instance.new("BlockMesh")
local Part158 = Instance.new("Part")
local BlockMesh159 = Instance.new("BlockMesh")
local Part160 = Instance.new("Part")
local BlockMesh161 = Instance.new("BlockMesh")
local Part162 = Instance.new("Part")
local BlockMesh163 = Instance.new("BlockMesh")
local Part164 = Instance.new("Part")
local BlockMesh165 = Instance.new("BlockMesh")
local Part166 = Instance.new("Part")
local CylinderMesh167 = Instance.new("CylinderMesh")
local Part168 = Instance.new("Part")
local SpecialMesh169 = Instance.new("SpecialMesh")
local Part170 = Instance.new("Part")
local CylinderMesh171 = Instance.new("CylinderMesh")
local Part172 = Instance.new("Part")
local SpecialMesh173 = Instance.new("SpecialMesh")
local Part174 = Instance.new("Part")
local BlockMesh175 = Instance.new("BlockMesh")
local Part176 = Instance.new("Part")
local BlockMesh177 = Instance.new("BlockMesh")
local Part178 = Instance.new("Part")
local BlockMesh179 = Instance.new("BlockMesh")
local Part180 = Instance.new("Part")
local CylinderMesh181 = Instance.new("CylinderMesh")
local Part182 = Instance.new("Part")
local BlockMesh183 = Instance.new("BlockMesh")
local Part184 = Instance.new("Part")
local SpecialMesh185 = Instance.new("SpecialMesh")
local Part186 = Instance.new("Part")
local SpecialMesh187 = Instance.new("SpecialMesh")
local Part188 = Instance.new("Part")
local BlockMesh189 = Instance.new("BlockMesh")
local Part190 = Instance.new("Part")
local BlockMesh191 = Instance.new("BlockMesh")
local Part192 = Instance.new("Part")
local CylinderMesh193 = Instance.new("CylinderMesh")
local Part194 = Instance.new("Part")
local SpecialMesh195 = Instance.new("SpecialMesh")
local Part196 = Instance.new("Part")
local SpecialMesh197 = Instance.new("SpecialMesh")
local Part198 = Instance.new("Part")
local CylinderMesh199 = Instance.new("CylinderMesh")
local Part200 = Instance.new("Part")
local SpecialMesh201 = Instance.new("SpecialMesh")
local Part202 = Instance.new("Part")
local SpecialMesh203 = Instance.new("SpecialMesh")
local ManualWeld204 = Instance.new("ManualWeld")
local Part205 = Instance.new("Part")
local CylinderMesh206 = Instance.new("CylinderMesh")
local Part207 = Instance.new("Part")
local SpecialMesh208 = Instance.new("SpecialMesh")
local Part209 = Instance.new("Part")
local BlockMesh210 = Instance.new("BlockMesh")
local Part211 = Instance.new("Part")
local BlockMesh212 = Instance.new("BlockMesh")
local Part213 = Instance.new("Part")
local BlockMesh214 = Instance.new("BlockMesh")
local Part215 = Instance.new("Part")
local CylinderMesh216 = Instance.new("CylinderMesh")
local Part217 = Instance.new("Part")
local BlockMesh218 = Instance.new("BlockMesh")
local Part219 = Instance.new("Part")
local CylinderMesh220 = Instance.new("CylinderMesh")
local Part221 = Instance.new("Part")
local CylinderMesh222 = Instance.new("CylinderMesh")
local Part223 = Instance.new("Part")
local CylinderMesh224 = Instance.new("CylinderMesh")
local Part225 = Instance.new("Part")
local BlockMesh226 = Instance.new("BlockMesh")
local Part227 = Instance.new("Part")
local CylinderMesh228 = Instance.new("CylinderMesh")
local Part229 = Instance.new("Part")
local SpecialMesh230 = Instance.new("SpecialMesh")
local Part231 = Instance.new("Part")
local BlockMesh232 = Instance.new("BlockMesh")
local Part233 = Instance.new("Part")
local BlockMesh234 = Instance.new("BlockMesh")
local Part235 = Instance.new("Part")
local SpecialMesh236 = Instance.new("SpecialMesh")
local Part237 = Instance.new("Part")
local BlockMesh238 = Instance.new("BlockMesh")

Part20.Name = "AimPart"
Part20.Parent = Tool
Part20.BrickColor = BrickColor.new("Really red")
Part20.Transparency = 1
Part20.Anchored = true
Part20.FormFactor = Enum.FormFactor.Custom
Part20.Size = Vector3.new(0.277777731, 0.222222224, 0.222222224)
Part20.CFrame = CFrame.new(16.8380165, 2.34158659, -288.340729, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Color = Color3.new(1, 0, 0)
Part20.Position = Vector3.new(16.8380165, 2.34158659, -288.340729)
BlockMesh21.Parent = Part20

Part22.Parent = Tool
Part22.BrickColor = BrickColor.new("Black")
Part22.Rotation = Vector3.new(-1.89999998, 0, -180)
Part22.Anchored = true
Part22.CanCollide = false
Part22.FormFactor = Enum.FormFactor.Custom
Part22.Size = Vector3.new(0.200000003, 0.200000003, 0.275000006)
Part22.CFrame = CFrame.new(16.8364105, 2.31557727, -290.044708, -1, 0, 0, 0, -0.999451458, 0.0331151746, 0, 0.0331151746, 0.999451458)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part22.Position = Vector3.new(16.8364105, 2.31557727, -290.044708)
Part22.Orientation = Vector3.new(-1.89999998, 0, 180)
BlockMesh23.Parent = Part22
BlockMesh23.Scale = Vector3.new(0.425000101, 0.049999997, 1)

Part24.Name = "SmokePart"
Part24.Parent = Tool
Part24.BrickColor = BrickColor.new("Black")
Part24.Transparency = 1
Part24.Rotation = Vector3.new(-90, 0, 0)
Part24.Anchored = true
Part24.FormFactor = Enum.FormFactor.Custom
Part24.Size = Vector3.new(0.200000003, 0.388888896, 0.200000003)
Part24.CFrame = CFrame.new(16.8349438, 2.24659419, -290.819763, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part24.Position = Vector3.new(16.8349438, 2.24659419, -290.819763)
Part24.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh25.Parent = Part24
CylinderMesh25.Scale = Vector3.new(0.944444478, 1, 0.944444478)

Part26.Name = "A1"
Part26.Parent = Tool
Part26.BrickColor = BrickColor.new("Black")
Part26.Rotation = Vector3.new(0, 0, -180)
Part26.Anchored = true
Part26.CanCollide = false
Part26.FormFactor = Enum.FormFactor.Custom
Part26.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part26.CFrame = CFrame.new(16.976408, 2.17557716, -289.88269, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part26.Position = Vector3.new(16.976408, 2.17557716, -289.88269)
Part26.Orientation = Vector3.new(0, 0, 180)
BlockMesh27.Parent = Part26
BlockMesh27.Scale = Vector3.new(0.875, 0.24999994, 0.175000012)

Part28.Name = "A2"
Part28.Parent = Tool
Part28.BrickColor = BrickColor.new("Black")
Part28.Rotation = Vector3.new(0, 0, -180)
Part28.Anchored = true
Part28.CanCollide = false
Part28.FormFactor = Enum.FormFactor.Custom
Part28.Size = Vector3.new(0.200000003, 0.200000003, 0.449999988)
Part28.CFrame = CFrame.new(16.8764095, 2.20057726, -289.674713, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part28.Position = Vector3.new(16.8764095, 2.20057726, -289.674713)
Part28.Orientation = Vector3.new(0, 0, 180)
BlockMesh29.Parent = Part28
BlockMesh29.Scale = Vector3.new(0.150000006, 0.49999994, 1)

Part30.Parent = Tool
Part30.BrickColor = BrickColor.new("CGA brown")
Part30.Rotation = Vector3.new(0, 0, -180)
Part30.Anchored = true
Part30.CanCollide = false
Part30.FormFactor = Enum.FormFactor.Custom
Part30.Size = Vector3.new(0.200000003, 0.200000003, 0.275000006)
Part30.CFrame = CFrame.new(16.8364105, 1.77557695, -288.737701, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Color = Color3.new(0.666667, 0.333333, 0)
Part30.Position = Vector3.new(16.8364105, 1.77557695, -288.737701)
Part30.Orientation = Vector3.new(0, 0, 180)
BlockMesh31.Parent = Part30
BlockMesh31.Scale = Vector3.new(0.825000048, 0.75, 1)

Part32.Name = "Handle"
Part32.Parent = Tool
Part32.BrickColor = BrickColor.new("Black")
Part32.Rotation = Vector3.new(0, 0.00999999978, 0)
Part32.Anchored = true
Part32.CanCollide = false
Part32.FormFactor = Enum.FormFactor.Custom
Part32.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part32.CFrame = CFrame.new(16.8364105, 1.91257691, -289.077698, 1.00000024, 0, 0.000125974417, 7.93443178e-09, 1.00000012, -6.29723218e-05, -0.000125989318, 6.29723072e-05, 1.00000036)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part32.Position = Vector3.new(16.8364105, 1.91257691, -289.077698)
Part32.Orientation = Vector3.new(0, 0.00999999978, 0)
BlockMesh33.Parent = Part32
BlockMesh33.Scale = Vector3.new(0.175000012, 0.625, 0.125)

Sound34.Name = "Empty"
Sound34.Parent = Part32
Sound34.SoundId = "rbxasset://sounds//clickfast.wav"
Sound34.Volume = 1

Sound35.Name = "M1"
Sound35.Parent = Part32
Sound35.Pitch = 0.75
Sound35.SoundId = "rbxassetid://306684229"
Sound35.Volume = 1

Sound36.Name = "M2"
Sound36.Parent = Part32
Sound36.SoundId = "rbxassetid://233931547"
Sound36.Volume = 1

Sound37.Name = "M3"
Sound37.Parent = Part32
Sound37.Pitch = 1.2000000476837
Sound37.SoundId = "rbxassetid://515216492"
Sound37.Volume = 1

Sound38.Name = "Shoot"
Sound38.Parent = Part32
Sound38.SoundId = "rbxassetid://132258172"

Sound39.Name = "M4"
Sound39.Parent = Part32
Sound39.Pitch = 1.2000000476837
Sound39.SoundId = "rbxassetid://515216512"
Sound39.Volume = 1

Part40.Parent = Tool
Part40.BrickColor = BrickColor.new("CGA brown")
Part40.Rotation = Vector3.new(-90, 0, 0)
Part40.Anchored = true
Part40.CanCollide = false
Part40.FormFactor = Enum.FormFactor.Custom
Part40.Size = Vector3.new(0.200000003, 0.570000052, 0.200000003)
Part40.CFrame = CFrame.new(16.7964096, 2.2375772, -290.565704, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Color = Color3.new(0.666667, 0.333333, 0)
Part40.Position = Vector3.new(16.7964096, 2.2375772, -290.565704)
Part40.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh41.Parent = Part40
CylinderMesh41.Scale = Vector3.new(0.37499997, 1, 0.374999851)

Part42.Name = "Mag2"
Part42.Parent = Tool
Part42.BrickColor = BrickColor.new("Black")
Part42.Rotation = Vector3.new(23, 0, 0)
Part42.Anchored = true
Part42.CanCollide = false
Part42.FormFactor = Enum.FormFactor.Custom
Part42.Size = Vector3.new(0.200000003, 0.300000012, 0.375)
Part42.CFrame = CFrame.new(16.8364105, 1.64257693, -289.622711, 1, 0, 0, 0, 0.920504868, -0.390731156, 0, 0.390731156, 0.920504868)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part42.Position = Vector3.new(16.8364105, 1.64257693, -289.622711)
Part42.Orientation = Vector3.new(23, 0, 0)
BlockMesh43.Parent = Part42
BlockMesh43.Scale = Vector3.new(0.699999988, 1, 1)

Part44.Name = "Mag3"
Part44.Parent = Tool
Part44.BrickColor = BrickColor.new("Black")
Part44.Rotation = Vector3.new(38, 0, 0)
Part44.Anchored = true
Part44.CanCollide = false
Part44.FormFactor = Enum.FormFactor.Custom
Part44.Size = Vector3.new(0.200000003, 0.300000012, 0.375)
Part44.CFrame = CFrame.new(16.8364105, 1.42957699, -289.748688, 1, -1.28487216e-07, -5.65306237e-08, 6.64456934e-08, 0.788011432, -0.615661383, 1.23651333e-07, 0.615661383, 0.788011432)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part44.Position = Vector3.new(16.8364105, 1.42957699, -289.748688)
Part44.Orientation = Vector3.new(38, 0, 0)
BlockMesh45.Parent = Part44
BlockMesh45.Scale = Vector3.new(0.699999988, 1, 1)

Part46.Name = "Mag4"
Part46.Parent = Tool
Part46.BrickColor = BrickColor.new("Black")
Part46.Rotation = Vector3.new(53, 0, 0)
Part46.Anchored = true
Part46.CanCollide = false
Part46.FormFactor = Enum.FormFactor.Custom
Part46.Size = Vector3.new(0.200000003, 0.324999988, 0.375)
Part46.CFrame = CFrame.new(16.8364105, 1.24757695, -289.935699, 1, -8.42117487e-08, -4.51465922e-08, 1.46242813e-08, 0.601815701, -0.798635483, 9.44243794e-08, 0.798635483, 0.601815701)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part46.Position = Vector3.new(16.8364105, 1.24757695, -289.935699)
Part46.Orientation = Vector3.new(53, 0, 0)
BlockMesh47.Parent = Part46
BlockMesh47.Scale = Vector3.new(0.699999988, 1, 1)

Part48.Parent = Tool
Part48.BrickColor = BrickColor.new("Black")
Part48.Rotation = Vector3.new(-90, 0, 0)
Part48.Anchored = true
Part48.CanCollide = false
Part48.FormFactor = Enum.FormFactor.Custom
Part48.Size = Vector3.new(0.200000003, 1.39999986, 0.200000003)
Part48.CFrame = CFrame.new(16.8364105, 2.08557701, -291.654694, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part48.Position = Vector3.new(16.8364105, 2.08557701, -291.654694)
Part48.Orientation = Vector3.new(-90, 0, 0)
Decal49.Parent = Part48
Decal49.Texture = "http://www.roblox.com/asset/?id=47760372"
Decal49.Face = Enum.NormalId.Top
CylinderMesh50.Parent = Part48
CylinderMesh50.Scale = Vector3.new(0.3125, 1, 0.3125)

Part51.Parent = Tool
Part51.BrickColor = BrickColor.new("CGA brown")
Part51.Rotation = Vector3.new(0, 0, -180)
Part51.Anchored = true
Part51.CanCollide = false
Part51.FormFactor = Enum.FormFactor.Custom
Part51.Size = Vector3.new(0.200000003, 0.215000004, 0.254999965)
Part51.CFrame = CFrame.new(16.8364105, 2.08257699, -290.15271, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.Color = Color3.new(0.666667, 0.333333, 0)
Part51.Position = Vector3.new(16.8364105, 2.08257699, -290.15271)
Part51.Orientation = Vector3.new(0, 0, 180)
BlockMesh52.Parent = Part51
BlockMesh52.Scale = Vector3.new(0.78275001, 1, 1)

Part53.Parent = Tool
Part53.BrickColor = BrickColor.new("CGA brown")
Part53.Rotation = Vector3.new(0, 0, 180)
Part53.Anchored = true
Part53.CanCollide = false
Part53.FormFactor = Enum.FormFactor.Custom
Part53.Size = Vector3.new(0.200000003, 0.200000003, 0.625)
Part53.CFrame = CFrame.new(16.8364105, 2.04557705, -290.537689, -1, -4.4408921e-16, 4.4408921e-16, 0, -1, 2.98023224e-08, 0, 2.98023224e-08, 1)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.Color = Color3.new(0.666667, 0.333333, 0)
Part53.Position = Vector3.new(16.8364105, 2.04557705, -290.537689)
Part53.Orientation = Vector3.new(0, 0, 180)
BlockMesh54.Parent = Part53
BlockMesh54.Scale = Vector3.new(0.78275001, 0.700000048, 1)

ManualWeld55.Name = "Part-to-SmokePart Strong Joint"
ManualWeld55.Parent = Part53
ManualWeld55.C0 = CFrame.new(0.100000001, -0.100000001, 0.3125, 1, 0, 0, 0, 0, -1, 0, 1, 0)
ManualWeld55.C1 = CFrame.new(-0.0985336304, -0.594573975, -0.101017118, -1, 4.4408921e-16, 4.4408921e-16, 0, -1, 2.98023224e-08, 0, 2.98023224e-08, 1)
ManualWeld55.Part0 = Part53
ManualWeld55.Part1 = Part24

Part56.Parent = Tool
Part56.BrickColor = BrickColor.new("Mid gray")
Part56.Rotation = Vector3.new(90, 0, 0)
Part56.Anchored = true
Part56.CanCollide = false
Part56.FormFactor = Enum.FormFactor.Custom
Part56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part56.CFrame = CFrame.new(16.8364105, 2.34657717, -292.220703, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part56.Position = Vector3.new(16.8364105, 2.34657717, -292.220703)
Part56.Orientation = Vector3.new(90, 0, 0)
CylinderMesh57.Parent = Part56
CylinderMesh57.Scale = Vector3.new(0.049999997, 0.256249994, 0.049999997)

Part58.Parent = Tool
Part58.BrickColor = BrickColor.new("Black")
Part58.Anchored = true
Part58.CanCollide = false
Part58.FormFactor = Enum.FormFactor.Custom
Part58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part58.CFrame = CFrame.new(16.8364105, 2.03857708, -291.465698, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part58.Position = Vector3.new(16.8364105, 2.03857708, -291.465698)
BlockMesh59.Parent = Part58
BlockMesh59.Scale = Vector3.new(0.125, 0.150000006, 0.5)

Part60.Parent = Tool
Part60.BrickColor = BrickColor.new("Black")
Part60.Rotation = Vector3.new(0, 0, -90)
Part60.Anchored = true
Part60.CanCollide = false
Part60.FormFactor = Enum.FormFactor.Custom
Part60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part60.CFrame = CFrame.new(16.7904091, 2.34757733, -292.220703, -6.30170107e-05, 1.0000006, 0, -1.0000006, -6.30170107e-05, 0, 0, 0, 1)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part60.Position = Vector3.new(16.7904091, 2.34757733, -292.220703)
Part60.Orientation = Vector3.new(0, 0, -90)
BlockMesh61.Parent = Part60
BlockMesh61.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part62.Parent = Tool
Part62.BrickColor = BrickColor.new("Black")
Part62.Rotation = Vector3.new(0, 0, 135)
Part62.Anchored = true
Part62.CanCollide = false
Part62.FormFactor = Enum.FormFactor.Custom
Part62.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part62.CFrame = CFrame.new(16.8014088, 2.32057714, -292.220703, -0.707129121, -0.707084537, 0, 0.707084537, -0.707129121, 0, 0, 0, 1)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part62.Position = Vector3.new(16.8014088, 2.32057714, -292.220703)
Part62.Orientation = Vector3.new(0, 0, 135)
BlockMesh63.Parent = Part62
BlockMesh63.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part64.Parent = Tool
Part64.BrickColor = BrickColor.new("Black")
Part64.Rotation = Vector3.new(88.0999985, 0, 90)
Part64.Anchored = true
Part64.CanCollide = false
Part64.FormFactor = Enum.FormFactor.Custom
Part64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part64.CFrame = CFrame.new(16.88941, 2.3165772, -290.091705, 0, -1, 0, 0.0331151746, 0, -0.999451458, 0.999451458, 0, 0.0331151746)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part64.Position = Vector3.new(16.88941, 2.3165772, -290.091705)
Part64.Orientation = Vector3.new(88.0999985, 0, 90)
CylinderMesh65.Parent = Part64
CylinderMesh65.Scale = Vector3.new(0.250000119, 0.325000018, 0.225000024)

Part66.Parent = Tool
Part66.BrickColor = BrickColor.new("Black")
Part66.Rotation = Vector3.new(-1.89999998, 0, -180)
Part66.Anchored = true
Part66.CanCollide = false
Part66.FormFactor = Enum.FormFactor.Custom
Part66.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part66.CFrame = CFrame.new(16.88941, 2.33557725, -289.899689, -1, 0, 0, 0, -0.999451458, 0.0331151746, 0, 0.0331151746, 0.999451458)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part66.Position = Vector3.new(16.88941, 2.33557725, -289.899689)
Part66.Orientation = Vector3.new(-1.89999998, 0, 180)
Decal67.Parent = Part66
Decal67.Texture = "http://www.roblox.com/asset/?id=61019872"
Decal67.Face = Enum.NormalId.Back
BlockMesh68.Parent = Part66
BlockMesh68.Scale = Vector3.new(0.300000101, 0.300000012, 0.075000003)

Part69.Parent = Tool
Part69.BrickColor = BrickColor.new("Black")
Part69.Rotation = Vector3.new(0, 0, 45)
Part69.Anchored = true
Part69.CanCollide = false
Part69.FormFactor = Enum.FormFactor.Custom
Part69.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part69.CFrame = CFrame.new(16.8014088, 2.37557721, -292.220703, 0.707084537, -0.70712918, 0, 0.70712918, 0.707084537, 0, 0, 0, 0.999999881)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part69.Position = Vector3.new(16.8014088, 2.37557721, -292.220703)
Part69.Orientation = Vector3.new(0, 0, 45)
BlockMesh70.Parent = Part69
BlockMesh70.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part71.Parent = Tool
Part71.BrickColor = BrickColor.new("Black")
Part71.Rotation = Vector3.new(90, 0, -180)
Part71.Anchored = true
Part71.CanCollide = false
Part71.FormFactor = Enum.FormFactor.Custom
Part71.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part71.CFrame = CFrame.new(16.8364105, 2.20157719, -292.262695, -1, 0, -0, 0, 0, -1, 0, -1, -0)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part71.Position = Vector3.new(16.8364105, 2.20157719, -292.262695)
Part71.Orientation = Vector3.new(90, 180, 0)
BlockMesh72.Parent = Part71
BlockMesh72.Scale = Vector3.new(0.300000072, 0.124999993, 0.500000119)

Part73.Parent = Tool
Part73.BrickColor = BrickColor.new("Black")
Part73.Rotation = Vector3.new(90, 0, 90)
Part73.Anchored = true
Part73.CanCollide = false
Part73.FormFactor = Enum.FormFactor.Custom
Part73.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part73.CFrame = CFrame.new(16.7864094, 2.2835772, -288.750702, 0, -1, 0, -3.7252903e-09, 0, -0.999999881, 0.999999881, 0, -3.7252903e-09)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part73.Position = Vector3.new(16.7864094, 2.2835772, -288.750702)
Part73.Orientation = Vector3.new(89.9700012, 180, -90)
CylinderMesh74.Parent = Part73
CylinderMesh74.Scale = Vector3.new(0.750000119, 0.0749999806, 0.725000024)

Part75.Parent = Tool
Part75.BrickColor = BrickColor.new("Black")
Part75.Rotation = Vector3.new(88.0999985, 0, 90)
Part75.Anchored = true
Part75.CanCollide = false
Part75.FormFactor = Enum.FormFactor.Custom
Part75.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part75.CFrame = CFrame.new(16.7844105, 2.3165772, -290.091705, 0, -1, 1.02140518e-13, 0.0331144109, -1.02082649e-13, -0.999451458, 0.999451458, 3.43788036e-15, 0.0331144109)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part75.Position = Vector3.new(16.7844105, 2.3165772, -290.091705)
Part75.Orientation = Vector3.new(88.0999985, 0, 90)
CylinderMesh76.Parent = Part75
CylinderMesh76.Scale = Vector3.new(0.250000119, 0.325000018, 0.225000024)

Part77.Parent = Tool
Part77.BrickColor = BrickColor.new("Black")
Part77.Rotation = Vector3.new(-94.5699997, -90, 0)
Part77.Anchored = true
Part77.CanCollide = false
Part77.FormFactor = Enum.FormFactor.Custom
Part77.Size = Vector3.new(0.200000003, 0.450000346, 0.200000003)
Part77.CFrame = CFrame.new(16.8914089, 2.04557705, -289.20871, -0, 0, -1, 0.996814251, -0.079757154, 0, -0.079757154, -0.996814251, 0)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part77.Position = Vector3.new(16.8914089, 2.04557705, -289.20871)
Part77.Orientation = Vector3.new(0, -90, 94.5699997)
SpecialMesh78.Parent = Part77
SpecialMesh78.Scale = Vector3.new(0.574999988, 1, 0.32500428)
SpecialMesh78.MeshType = Enum.MeshType.Torso

Part79.Parent = Tool
Part79.BrickColor = BrickColor.new("CGA brown")
Part79.Rotation = Vector3.new(0, 0, -180)
Part79.Anchored = true
Part79.CanCollide = false
Part79.FormFactor = Enum.FormFactor.Custom
Part79.Size = Vector3.new(0.200000003, 0.200000003, 0.570000052)
Part79.CFrame = CFrame.new(16.8364105, 2.25757718, -290.565704, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.Color = Color3.new(0.666667, 0.333333, 0)
Part79.Position = Vector3.new(16.8364105, 2.25757718, -290.565704)
Part79.Orientation = Vector3.new(0, 0, 180)
BlockMesh80.Parent = Part79
BlockMesh80.Scale = Vector3.new(0.425000042, 0.174999893, 1)

Part81.Parent = Tool
Part81.BrickColor = BrickColor.new("Black")
Part81.Rotation = Vector3.new(90, 0, 90)
Part81.Anchored = true
Part81.CanCollide = false
Part81.FormFactor = Enum.FormFactor.Custom
Part81.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part81.CFrame = CFrame.new(16.8564091, 2.2835772, -288.750702, 0, -1, 0, -3.7252903e-09, 0, -0.999999881, 0.999999881, 0, -3.7252903e-09)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part81.Position = Vector3.new(16.8564091, 2.2835772, -288.750702)
Part81.Orientation = Vector3.new(89.9700012, 180, -90)
CylinderMesh82.Parent = Part81
CylinderMesh82.Scale = Vector3.new(0.212500006, 0.824999928, 0.212500006)

Part83.Parent = Tool
Part83.BrickColor = BrickColor.new("CGA brown")
Part83.Rotation = Vector3.new(0, 0, -180)
Part83.Anchored = true
Part83.CanCollide = false
Part83.FormFactor = Enum.FormFactor.Custom
Part83.Size = Vector3.new(0.200000003, 0.200000003, 0.569999933)
Part83.CFrame = CFrame.new(16.8364105, 2.197577, -290.565704, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.Color = Color3.new(0.666667, 0.333333, 0)
Part83.Position = Vector3.new(16.8364105, 2.197577, -290.565704)
Part83.Orientation = Vector3.new(0, 0, 180)
BlockMesh84.Parent = Part83
BlockMesh84.Scale = Vector3.new(0.774999857, 0.424999893, 1)

Part85.Parent = Tool
Part85.BrickColor = BrickColor.new("Black")
Part85.Rotation = Vector3.new(0, 0, -180)
Part85.Anchored = true
Part85.CanCollide = false
Part85.FormFactor = Enum.FormFactor.Custom
Part85.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part85.CFrame = CFrame.new(16.8364105, 2.21557713, -290.252686, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part85.Position = Vector3.new(16.8364105, 2.21557713, -290.252686)
Part85.Orientation = Vector3.new(0, 0, 180)
BlockMesh86.Parent = Part85
BlockMesh86.Scale = Vector3.new(0.774999857, 0.249999851, 0.274999917)

Part87.Parent = Tool
Part87.BrickColor = BrickColor.new("Black")
Part87.Rotation = Vector3.new(0, 0, -180)
Part87.Anchored = true
Part87.CanCollide = false
Part87.FormFactor = Enum.FormFactor.Custom
Part87.Size = Vector3.new(0.200000003, 0.200000003, 0.435000241)
Part87.CFrame = CFrame.new(16.8344097, 2.18257713, -288.857697, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part87.Position = Vector3.new(16.8344097, 2.18257713, -288.857697)
Part87.Orientation = Vector3.new(0, 0, 180)
BlockMesh88.Parent = Part87
BlockMesh88.Scale = Vector3.new(0.749999702, 0.324999899, 1)

Part89.Parent = Tool
Part89.BrickColor = BrickColor.new("Black")
Part89.Rotation = Vector3.new(0, 0, -180)
Part89.Anchored = true
Part89.CanCollide = false
Part89.FormFactor = Enum.FormFactor.Custom
Part89.Size = Vector3.new(0.200000003, 0.200000003, 0.825000286)
Part89.CFrame = CFrame.new(16.76441, 2.18257713, -289.487701, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part89.BottomSurface = Enum.SurfaceType.Smooth
Part89.TopSurface = Enum.SurfaceType.Smooth
Part89.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part89.Position = Vector3.new(16.76441, 2.18257713, -289.487701)
Part89.Orientation = Vector3.new(0, 0, 180)
BlockMesh90.Parent = Part89
BlockMesh90.Scale = Vector3.new(0.049999997, 0.324999899, 1)

Part91.Parent = Tool
Part91.BrickColor = BrickColor.new("Black")
Part91.Rotation = Vector3.new(-6.83999968, 0, -180)
Part91.Anchored = true
Part91.CanCollide = false
Part91.FormFactor = Enum.FormFactor.Custom
Part91.Size = Vector3.new(0.200000003, 0.200000003, 0.349999994)
Part91.CFrame = CFrame.new(16.9194088, 2.10857725, -289.264709, -1, 0, 0, 0, -0.992889583, 0.119038537, 0, 0.119038537, 0.992889583)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.TopSurface = Enum.SurfaceType.Smooth
Part91.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part91.Position = Vector3.new(16.9194088, 2.10857725, -289.264709)
Part91.Orientation = Vector3.new(-6.83999968, 0, 180)
BlockMesh92.Parent = Part91
BlockMesh92.Scale = Vector3.new(0.0500000045, 0.300000131, 1)

Part93.Parent = Tool
Part93.BrickColor = BrickColor.new("Black")
Part93.Rotation = Vector3.new(0, 0, -180)
Part93.Anchored = true
Part93.CanCollide = false
Part93.FormFactor = Enum.FormFactor.Custom
Part93.Size = Vector3.new(0.200000003, 0.264999926, 0.200000003)
Part93.CFrame = CFrame.new(16.8364105, 2.10857725, -290.877686, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part93.BottomSurface = Enum.SurfaceType.Smooth
Part93.TopSurface = Enum.SurfaceType.Smooth
Part93.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part93.Position = Vector3.new(16.8364105, 2.10857725, -290.877686)
Part93.Orientation = Vector3.new(0, 0, 180)
BlockMesh94.Parent = Part93
BlockMesh94.Scale = Vector3.new(0.774999857, 1, 0.274999917)

Part95.Parent = Tool
Part95.BrickColor = BrickColor.new("Black")
Part95.Rotation = Vector3.new(0, 0, -180)
Part95.Anchored = true
Part95.CanCollide = false
Part95.FormFactor = Enum.FormFactor.Custom
Part95.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part95.CFrame = CFrame.new(16.8364105, 2.25757718, -290.252686, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part95.BottomSurface = Enum.SurfaceType.Smooth
Part95.TopSurface = Enum.SurfaceType.Smooth
Part95.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part95.Position = Vector3.new(16.8364105, 2.25757718, -290.252686)
Part95.Orientation = Vector3.new(0, 0, 180)
BlockMesh96.Parent = Part95
BlockMesh96.Scale = Vector3.new(0.425000042, 0.174999893, 0.274999917)

Part97.Parent = Tool
Part97.BrickColor = BrickColor.new("Black")
Part97.Rotation = Vector3.new(0, 0, -180)
Part97.Anchored = true
Part97.CanCollide = false
Part97.FormFactor = Enum.FormFactor.Custom
Part97.Size = Vector3.new(0.200000003, 0.200000003, 1.12500024)
Part97.CFrame = CFrame.new(16.8364105, 2.29257727, -289.337708, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part97.Position = Vector3.new(16.8364105, 2.29257727, -289.337708)
Part97.Orientation = Vector3.new(0, 0, 180)
BlockMesh98.Parent = Part97
BlockMesh98.Scale = Vector3.new(0.375000089, 0.174999982, 1)

Part99.Parent = Tool
Part99.BrickColor = BrickColor.new("Black")
Part99.Rotation = Vector3.new(0, 0, 120)
Part99.Anchored = true
Part99.CanCollide = false
Part99.FormFactor = Enum.FormFactor.Custom
Part99.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part99.CFrame = CFrame.new(16.8744106, 2.37557721, -292.220703, -0.500036836, -0.866004944, 0, 0.866004944, -0.500036836, 0, 0, 0, 1)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part99.Position = Vector3.new(16.8744106, 2.37557721, -292.220703)
Part99.Orientation = Vector3.new(0, 0, 120)
BlockMesh100.Parent = Part99
BlockMesh100.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part101.Parent = Tool
Part101.BrickColor = BrickColor.new("Black")
Part101.Rotation = Vector3.new(0, 0, -135)
Part101.Anchored = true
Part101.CanCollide = false
Part101.FormFactor = Enum.FormFactor.Custom
Part101.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part101.CFrame = CFrame.new(16.8714104, 2.32057714, -292.220703, -0.70712924, 0.707084715, 0, -0.707084715, -0.70712924, 0, 0, 0, 1)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part101.Position = Vector3.new(16.8714104, 2.32057714, -292.220703)
Part101.Orientation = Vector3.new(0, 0, -135)
BlockMesh102.Parent = Part101
BlockMesh102.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part103.Parent = Tool
Part103.BrickColor = BrickColor.new("Black")
Part103.Rotation = Vector3.new(0, 0, -180)
Part103.Anchored = true
Part103.CanCollide = false
Part103.FormFactor = Enum.FormFactor.Custom
Part103.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part103.CFrame = CFrame.new(16.8364105, 2.32957721, -292.220703, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part103.Position = Vector3.new(16.8364105, 2.32957721, -292.220703)
Part103.Orientation = Vector3.new(0, 0, 180)
BlockMesh104.Parent = Part103
BlockMesh104.Scale = Vector3.new(0.0500000715, 0.175000012, 0.25000006)

Part105.Parent = Tool
Part105.BrickColor = BrickColor.new("Black")
Part105.Rotation = Vector3.new(0, 0, -90)
Part105.Anchored = true
Part105.CanCollide = false
Part105.FormFactor = Enum.FormFactor.Custom
Part105.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part105.CFrame = CFrame.new(16.88241, 2.34757733, -292.220703, -6.30170107e-05, 1.0000006, 0, -1.0000006, -6.30170107e-05, 0, 0, 0, 1)
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part105.Position = Vector3.new(16.88241, 2.34757733, -292.220703)
Part105.Orientation = Vector3.new(0, 0, -90)
BlockMesh106.Parent = Part105
BlockMesh106.Scale = Vector3.new(0.175000042, 0.049999997, 0.55000031)

Part107.Parent = Tool
Part107.BrickColor = BrickColor.new("Black")
Part107.Rotation = Vector3.new(-1.89999998, 0, -180)
Part107.Anchored = true
Part107.CanCollide = false
Part107.FormFactor = Enum.FormFactor.Custom
Part107.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part107.CFrame = CFrame.new(16.7844105, 2.33557725, -289.899689, -1, 0, 0, 0, -0.999451458, 0.0331151746, 0, 0.0331151746, 0.999451458)
Part107.BottomSurface = Enum.SurfaceType.Smooth
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part107.Position = Vector3.new(16.7844105, 2.33557725, -289.899689)
Part107.Orientation = Vector3.new(-1.89999998, 0, 180)
Decal108.Parent = Part107
Decal108.Texture = "http://www.roblox.com/asset/?id=61019872"
Decal108.Face = Enum.NormalId.Back
BlockMesh109.Parent = Part107
BlockMesh109.Scale = Vector3.new(0.300000101, 0.300000012, 0.075000003)

Part110.Parent = Tool
Part110.BrickColor = BrickColor.new("Black")
Part110.Rotation = Vector3.new(-90, 0, 0)
Part110.Anchored = true
Part110.CanCollide = false
Part110.FormFactor = Enum.FormFactor.Custom
Part110.Size = Vector3.new(0.200000003, 1.32499981, 0.200000003)
Part110.CFrame = CFrame.new(16.8364105, 2.02057695, -291.567688, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part110.BottomSurface = Enum.SurfaceType.Smooth
Part110.TopSurface = Enum.SurfaceType.Smooth
Part110.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part110.Position = Vector3.new(16.8364105, 2.02057695, -291.567688)
Part110.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh111.Parent = Part110
CylinderMesh111.Scale = Vector3.new(0.125, 1, 0.125)

Part112.Parent = Tool
Part112.BrickColor = BrickColor.new("Black")
Part112.Rotation = Vector3.new(-90, 0, 0)
Part112.Anchored = true
Part112.CanCollide = false
Part112.FormFactor = Enum.FormFactor.Custom
Part112.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part112.CFrame = CFrame.new(16.7964096, 2.2375772, -290.252686, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part112.BottomSurface = Enum.SurfaceType.Smooth
Part112.TopSurface = Enum.SurfaceType.Smooth
Part112.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part112.Position = Vector3.new(16.7964096, 2.2375772, -290.252686)
Part112.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh113.Parent = Part112
CylinderMesh113.Scale = Vector3.new(0.37499997, 0.274999797, 0.374999851)

Part114.Parent = Tool
Part114.BrickColor = BrickColor.new("Black")
Part114.Rotation = Vector3.new(-90, 0, -180)
Part114.Anchored = true
Part114.CanCollide = false
Part114.FormFactor = Enum.FormFactor.Custom
Part114.Size = Vector3.new(0.200000003, 0.200000003, 0.224999994)
Part114.CFrame = CFrame.new(16.8364105, 2.02557707, -288.562683, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Part114.BottomSurface = Enum.SurfaceType.Smooth
Part114.TopSurface = Enum.SurfaceType.Smooth
Part114.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part114.Position = Vector3.new(16.8364105, 2.02557707, -288.562683)
Part114.Orientation = Vector3.new(-90, -180, 0)
SpecialMesh115.Parent = Part114
SpecialMesh115.Scale = Vector3.new(0.774999797, 0.375, 1)
SpecialMesh115.MeshType = Enum.MeshType.Wedge

Part116.Parent = Tool
Part116.BrickColor = BrickColor.new("Black")
Part116.Rotation = Vector3.new(0, 0, -180)
Part116.Anchored = true
Part116.CanCollide = false
Part116.FormFactor = Enum.FormFactor.Custom
Part116.Size = Vector3.new(0.200000003, 0.200000003, 0.324999988)
Part116.CFrame = CFrame.new(16.8364105, 2.22557712, -290.062683, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part116.BottomSurface = Enum.SurfaceType.Smooth
Part116.TopSurface = Enum.SurfaceType.Smooth
Part116.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part116.Position = Vector3.new(16.8364105, 2.22557712, -290.062683)
Part116.Orientation = Vector3.new(0, 0, 180)
BlockMesh117.Parent = Part116
BlockMesh117.Scale = Vector3.new(0.774999917, 0.75, 1)

Part118.Parent = Tool
Part118.BrickColor = BrickColor.new("Black")
Part118.Rotation = Vector3.new(-90, 0, 0)
Part118.Anchored = true
Part118.CanCollide = false
Part118.FormFactor = Enum.FormFactor.Custom
Part118.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part118.CFrame = CFrame.new(16.8364105, 2.02057695, -292.239685, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part118.BottomSurface = Enum.SurfaceType.Smooth
Part118.TopSurface = Enum.SurfaceType.Smooth
Part118.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part118.Position = Vector3.new(16.8364105, 2.02057695, -292.239685)
Part118.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh119.Parent = Part118
CylinderMesh119.Scale = Vector3.new(0.230000019, 0.499999791, 0.201250017)

Part120.Parent = Tool
Part120.BrickColor = BrickColor.new("Black")
Part120.Anchored = true
Part120.CanCollide = false
Part120.FormFactor = Enum.FormFactor.Custom
Part120.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part120.CFrame = CFrame.new(16.8364105, 2.1355772, -291.567688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part120.BottomSurface = Enum.SurfaceType.Smooth
Part120.TopSurface = Enum.SurfaceType.Smooth
Part120.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part120.Position = Vector3.new(16.8364105, 2.1355772, -291.567688)
SpecialMesh121.Parent = Part120
SpecialMesh121.Scale = Vector3.new(0.250000149, 0.25, 0.625)
SpecialMesh121.MeshType = Enum.MeshType.Wedge

Part122.Parent = Tool
Part122.BrickColor = BrickColor.new("CGA brown")
Part122.Rotation = Vector3.new(0, 0, -180)
Part122.Anchored = true
Part122.CanCollide = false
Part122.FormFactor = Enum.FormFactor.Custom
Part122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part122.CFrame = CFrame.new(16.8364105, 2.1355772, -290.819702, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part122.BottomSurface = Enum.SurfaceType.Smooth
Part122.TopSurface = Enum.SurfaceType.Smooth
Part122.Color = Color3.new(0.666667, 0.333333, 0)
Part122.Position = Vector3.new(16.8364105, 2.1355772, -290.819702)
Part122.Orientation = Vector3.new(0, 0, 180)
BlockMesh123.Parent = Part122
BlockMesh123.Scale = Vector3.new(0.774999857, 0.199999988, 0.299999595)

Part124.Parent = Tool
Part124.BrickColor = BrickColor.new("Black")
Part124.Rotation = Vector3.new(-90, 0, 0)
Part124.Anchored = true
Part124.CanCollide = false
Part124.FormFactor = Enum.FormFactor.Custom
Part124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part124.CFrame = CFrame.new(16.8364105, 2.08557701, -290.929688, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part124.BottomSurface = Enum.SurfaceType.Smooth
Part124.TopSurface = Enum.SurfaceType.Smooth
Part124.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part124.Position = Vector3.new(16.8364105, 2.08557701, -290.929688)
Part124.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh125.Parent = Part124
CylinderMesh125.Scale = Vector3.new(0.5, 0.25, 0.5)

Part126.Parent = Tool
Part126.BrickColor = BrickColor.new("Black")
Part126.Rotation = Vector3.new(-90, 0, 0)
Part126.Anchored = true
Part126.CanCollide = false
Part126.FormFactor = Enum.FormFactor.Custom
Part126.Size = Vector3.new(0.200000003, 0.524999976, 0.200000003)
Part126.CFrame = CFrame.new(16.8364105, 2.20557714, -291.167694, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part126.BottomSurface = Enum.SurfaceType.Smooth
Part126.TopSurface = Enum.SurfaceType.Smooth
Part126.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part126.Position = Vector3.new(16.8364105, 2.20557714, -291.167694)
Part126.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh127.Parent = Part126
CylinderMesh127.Scale = Vector3.new(0.25, 1, 0.25)

Part128.Parent = Tool
Part128.BrickColor = BrickColor.new("CGA brown")
Part128.Rotation = Vector3.new(0, 0, -180)
Part128.Anchored = true
Part128.CanCollide = false
Part128.FormFactor = Enum.FormFactor.Custom
Part128.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part128.CFrame = CFrame.new(16.8364105, 2.1355772, -290.307709, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part128.BottomSurface = Enum.SurfaceType.Smooth
Part128.TopSurface = Enum.SurfaceType.Smooth
Part128.Color = Color3.new(0.666667, 0.333333, 0)
Part128.Position = Vector3.new(16.8364105, 2.1355772, -290.307709)
Part128.Orientation = Vector3.new(0, 0, 180)
BlockMesh129.Parent = Part128
BlockMesh129.Scale = Vector3.new(0.774999857, 0.199999869, 0.274999648)

Part130.Parent = Tool
Part130.BrickColor = BrickColor.new("CGA brown")
Part130.Rotation = Vector3.new(0, 0, -180)
Part130.Anchored = true
Part130.CanCollide = false
Part130.FormFactor = Enum.FormFactor.Custom
Part130.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part130.CFrame = CFrame.new(16.8364105, 2.1355772, -290.562683, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part130.BottomSurface = Enum.SurfaceType.Smooth
Part130.TopSurface = Enum.SurfaceType.Smooth
Part130.Color = Color3.new(0.666667, 0.333333, 0)
Part130.Position = Vector3.new(16.8364105, 2.1355772, -290.562683)
Part130.Orientation = Vector3.new(0, 0, 180)
BlockMesh131.Parent = Part130
BlockMesh131.Scale = Vector3.new(0.774999857, 0.199999988, 0.474999666)

Part132.Parent = Tool
Part132.BrickColor = BrickColor.new("CGA brown")
Part132.Rotation = Vector3.new(-90, 0, -180)
Part132.Anchored = true
Part132.CanCollide = false
Part132.FormFactor = Enum.FormFactor.Custom
Part132.Size = Vector3.new(0.200000003, 0.200000003, 0.575000107)
Part132.CFrame = CFrame.new(16.8364105, 1.73857701, -287.375702, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Part132.BottomSurface = Enum.SurfaceType.Smooth
Part132.TopSurface = Enum.SurfaceType.Smooth
Part132.Color = Color3.new(0.666667, 0.333333, 0)
Part132.Position = Vector3.new(16.8364105, 1.73857701, -287.375702)
Part132.Orientation = Vector3.new(-90, -180, 0)
SpecialMesh133.Parent = Part132
SpecialMesh133.Scale = Vector3.new(0.725000143, 0.25000003, 1)
SpecialMesh133.MeshType = Enum.MeshType.Wedge

Part134.Parent = Tool
Part134.BrickColor = BrickColor.new("Black")
Part134.Rotation = Vector3.new(175, 0, 180)
Part134.Anchored = true
Part134.CanCollide = false
Part134.FormFactor = Enum.FormFactor.Custom
Part134.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part134.CFrame = CFrame.new(16.8364105, 1.74257696, -289.332703, -1, -0, 0, 0, 0.99619472, -0.087155737, 0, -0.087155737, -0.99619472)
Part134.BottomSurface = Enum.SurfaceType.Smooth
Part134.TopSurface = Enum.SurfaceType.Smooth
Part134.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part134.Position = Vector3.new(16.8364105, 1.74257696, -289.332703)
Part134.Orientation = Vector3.new(5, 180, 0)
BlockMesh135.Parent = Part134
BlockMesh135.Scale = Vector3.new(0.675000191, 0.524999976, 0.149999976)

Part136.Parent = Tool
Part136.BrickColor = BrickColor.new("CGA brown")
Part136.Rotation = Vector3.new(0, 0, -180)
Part136.Anchored = true
Part136.CanCollide = false
Part136.FormFactor = Enum.FormFactor.Custom
Part136.Size = Vector3.new(0.200000003, 0.449999988, 1.125)
Part136.CFrame = CFrame.new(16.8364105, 1.67557693, -287.962708, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part136.BottomSurface = Enum.SurfaceType.Smooth
Part136.TopSurface = Enum.SurfaceType.Smooth
Part136.Color = Color3.new(0.666667, 0.333333, 0)
Part136.Position = Vector3.new(16.8364105, 1.67557693, -287.962708)
Part136.Orientation = Vector3.new(0, 0, 180)
SpecialMesh137.Parent = Part136
SpecialMesh137.Scale = Vector3.new(0.725000143, 1, 1)
SpecialMesh137.MeshType = Enum.MeshType.Wedge

Part138.Parent = Tool
Part138.BrickColor = BrickColor.new("Black")
Part138.Rotation = Vector3.new(135, 0, 0)
Part138.Anchored = true
Part138.CanCollide = false
Part138.FormFactor = Enum.FormFactor.Custom
Part138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part138.CFrame = CFrame.new(16.8364105, 1.76057696, -289.24469, 1, 0, 0, 0, -0.707129121, -0.707084537, 0, 0.707084537, -0.707129121)
Part138.BottomSurface = Enum.SurfaceType.Smooth
Part138.TopSurface = Enum.SurfaceType.Smooth
Part138.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part138.Position = Vector3.new(16.8364105, 1.76057696, -289.24469)
Part138.Orientation = Vector3.new(45, 180, 180)
BlockMesh139.Parent = Part138
BlockMesh139.Scale = Vector3.new(0.775000095, 0.625, 0.125)

Part140.Parent = Tool
Part140.BrickColor = BrickColor.new("CGA brown")
Part140.Rotation = Vector3.new(-15, 0, -180)
Part140.Anchored = true
Part140.CanCollide = false
Part140.FormFactor = Enum.FormFactor.Custom
Part140.Size = Vector3.new(0.200000003, 0.524999976, 0.25)
Part140.CFrame = CFrame.new(16.8364105, 1.567577, -288.692688, -1, 0, 0, 0, -0.965928555, 0.258808911, 0, 0.258808911, 0.965928555)
Part140.BottomSurface = Enum.SurfaceType.Smooth
Part140.TopSurface = Enum.SurfaceType.Smooth
Part140.Color = Color3.new(0.666667, 0.333333, 0)
Part140.Position = Vector3.new(16.8364105, 1.567577, -288.692688)
Part140.Orientation = Vector3.new(-15, 0, 180)
BlockMesh141.Parent = Part140
BlockMesh141.Scale = Vector3.new(0.825000048, 1, 1)

Part142.Parent = Tool
Part142.BrickColor = BrickColor.new("CGA brown")
Part142.Rotation = Vector3.new(0, 0, -180)
Part142.Anchored = true
Part142.CanCollide = false
Part142.FormFactor = Enum.FormFactor.Custom
Part142.Size = Vector3.new(0.200000003, 0.200000003, 0.200000018)
Part142.CFrame = CFrame.new(16.8364105, 1.947577, -290.209686, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part142.BottomSurface = Enum.SurfaceType.Smooth
Part142.TopSurface = Enum.SurfaceType.Smooth
Part142.Color = Color3.new(0.666667, 0.333333, 0)
Part142.Position = Vector3.new(16.8364105, 1.947577, -290.209686)
Part142.Orientation = Vector3.new(0, 0, 180)
SpecialMesh143.Parent = Part142
SpecialMesh143.Scale = Vector3.new(0.774999976, 0.274999976, 1)
SpecialMesh143.MeshType = Enum.MeshType.Wedge

Part144.Parent = Tool
Part144.BrickColor = BrickColor.new("CGA brown")
Part144.Rotation = Vector3.new(0, 0, -180)
Part144.Anchored = true
Part144.CanCollide = false
Part144.FormFactor = Enum.FormFactor.Custom
Part144.Size = Vector3.new(0.200000003, 0.200000003, 1.125)
Part144.CFrame = CFrame.new(16.8364105, 1.96357703, -287.962708, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part144.BottomSurface = Enum.SurfaceType.Smooth
Part144.TopSurface = Enum.SurfaceType.Smooth
Part144.Color = Color3.new(0.666667, 0.333333, 0)
Part144.Position = Vector3.new(16.8364105, 1.96357703, -287.962708)
Part144.Orientation = Vector3.new(0, 0, 180)
BlockMesh145.Parent = Part144
BlockMesh145.Scale = Vector3.new(0.725000143, 0.625, 1)

Part146.Parent = Tool
Part146.BrickColor = BrickColor.new("Black")
Part146.Rotation = Vector3.new(30, 0, -180)
Part146.Anchored = true
Part146.CanCollide = false
Part146.FormFactor = Enum.FormFactor.Custom
Part146.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part146.CFrame = CFrame.new(16.8364105, 1.78757703, -289.002686, -1, 0, 0, 0, -0.866035938, -0.499981821, 0, -0.499981821, 0.866035938)
Part146.BottomSurface = Enum.SurfaceType.Smooth
Part146.TopSurface = Enum.SurfaceType.Smooth
Part146.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part146.Position = Vector3.new(16.8364105, 1.78757703, -289.002686)
Part146.Orientation = Vector3.new(30, 0, 180)
BlockMesh147.Parent = Part146
BlockMesh147.Scale = Vector3.new(0.775000095, 0.875, 0.125)

Part148.Parent = Tool
Part148.BrickColor = BrickColor.new("CGA brown")
Part148.Rotation = Vector3.new(0, 0, -180)
Part148.Anchored = true
Part148.CanCollide = false
Part148.FormFactor = Enum.FormFactor.Custom
Part148.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part148.CFrame = CFrame.new(16.8364105, 1.81257701, -288.924713, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part148.BottomSurface = Enum.SurfaceType.Smooth
Part148.TopSurface = Enum.SurfaceType.Smooth
Part148.Color = Color3.new(0.666667, 0.333333, 0)
Part148.Position = Vector3.new(16.8364105, 1.81257701, -288.924713)
Part148.Orientation = Vector3.new(0, 0, 180)
BlockMesh149.Parent = Part148
BlockMesh149.Scale = Vector3.new(0.825000048, 0.375, 0.5)

Part150.Parent = Tool
Part150.BrickColor = BrickColor.new("CGA brown")
Part150.Rotation = Vector3.new(-105, 0, 0)
Part150.Anchored = true
Part150.CanCollide = false
Part150.FormFactor = Enum.FormFactor.Custom
Part150.Size = Vector3.new(0.200000003, 0.200000003, 0.324999988)
Part150.CFrame = CFrame.new(16.8364105, 1.62557697, -288.862701, 1, 0, -0, 0, -0.258808911, 0.965928555, 0, -0.965928555, -0.258808911)
Part150.BottomSurface = Enum.SurfaceType.Smooth
Part150.TopSurface = Enum.SurfaceType.Smooth
Part150.Color = Color3.new(0.666667, 0.333333, 0)
Part150.Position = Vector3.new(16.8364105, 1.62557697, -288.862701)
Part150.Orientation = Vector3.new(-75, -180, 180)
SpecialMesh151.Parent = Part150
SpecialMesh151.Scale = Vector3.new(0.824999928, 0.25, 1)
SpecialMesh151.MeshType = Enum.MeshType.Wedge

Part152.Parent = Tool
Part152.BrickColor = BrickColor.new("Black")
Part152.Rotation = Vector3.new(0, 0, -180)
Part152.Anchored = true
Part152.CanCollide = false
Part152.FormFactor = Enum.FormFactor.Custom
Part152.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part152.CFrame = CFrame.new(16.8364105, 1.88557696, -289.307709, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part152.BottomSurface = Enum.SurfaceType.Smooth
Part152.TopSurface = Enum.SurfaceType.Smooth
Part152.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part152.Position = Vector3.new(16.8364105, 1.88557696, -289.307709)
Part152.Orientation = Vector3.new(0, 0, 180)
BlockMesh153.Parent = Part152
BlockMesh153.Scale = Vector3.new(0.775000095, 0.899999976, 0.450000018)

Part154.Parent = Tool
Part154.BrickColor = BrickColor.new("CGA brown")
Part154.Rotation = Vector3.new(-180, 0, -180)
Part154.Anchored = true
Part154.CanCollide = false
Part154.FormFactor = Enum.FormFactor.Custom
Part154.Size = Vector3.new(0.200000003, 0.200000003, 0.800000072)
Part154.CFrame = CFrame.new(16.8364105, 2.07557702, -287.749695, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part154.BottomSurface = Enum.SurfaceType.Smooth
Part154.TopSurface = Enum.SurfaceType.Smooth
Part154.Color = Color3.new(0.666667, 0.333333, 0)
Part154.Position = Vector3.new(16.8364105, 2.07557702, -287.749695)
Part154.Orientation = Vector3.new(0, 180, 0)
SpecialMesh155.Parent = Part154
SpecialMesh155.Scale = Vector3.new(0.724999964, 0.49999997, 1)
SpecialMesh155.MeshType = Enum.MeshType.Wedge

Part156.Parent = Tool
Part156.BrickColor = BrickColor.new("Black")
Part156.Rotation = Vector3.new(-90, 0, -180)
Part156.Anchored = true
Part156.CanCollide = false
Part156.FormFactor = Enum.FormFactor.Custom
Part156.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part156.CFrame = CFrame.new(16.8364105, 1.71757698, -289.122711, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Part156.BottomSurface = Enum.SurfaceType.Smooth
Part156.TopSurface = Enum.SurfaceType.Smooth
Part156.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part156.Position = Vector3.new(16.8364105, 1.71757698, -289.122711)
Part156.Orientation = Vector3.new(-90, -180, 0)
BlockMesh157.Parent = Part156
BlockMesh157.Scale = Vector3.new(0.775000095, 0.875, 0.125)

Part158.Parent = Tool
Part158.BrickColor = BrickColor.new("Black")
Part158.Rotation = Vector3.new(94.4000015, 0, 180)
Part158.Anchored = true
Part158.CanCollide = false
Part158.FormFactor = Enum.FormFactor.Custom
Part158.Size = Vector3.new(0.200000003, 0.200000003, 0.574999928)
Part158.CFrame = CFrame.new(16.8364105, 1.73857701, -287.363708, -1, -0, 0, 0, 0.0766965002, -0.997054458, 0, -0.997054458, -0.0766965002)
Part158.BottomSurface = Enum.SurfaceType.Smooth
Part158.TopSurface = Enum.SurfaceType.Smooth
Part158.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part158.Position = Vector3.new(16.8364105, 1.73857701, -287.363708)
Part158.Orientation = Vector3.new(85.5999985, 180, 0)
BlockMesh159.Parent = Part158
BlockMesh159.Scale = Vector3.new(0.725000024, 0.125, 1)

Part160.Parent = Tool
Part160.BrickColor = BrickColor.new("CGA brown")
Part160.Rotation = Vector3.new(0, 0, -180)
Part160.Anchored = true
Part160.CanCollide = false
Part160.FormFactor = Enum.FormFactor.Custom
Part160.Size = Vector3.new(0.200000003, 0.200000003, 0.37500003)
Part160.CFrame = CFrame.new(16.8364105, 2.05057693, -288.337708, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part160.BottomSurface = Enum.SurfaceType.Smooth
Part160.TopSurface = Enum.SurfaceType.Smooth
Part160.Color = Color3.new(0.666667, 0.333333, 0)
Part160.Position = Vector3.new(16.8364105, 2.05057693, -288.337708)
Part160.Orientation = Vector3.new(0, 0, 180)
BlockMesh161.Parent = Part160
BlockMesh161.Scale = Vector3.new(0.725000143, 0.25000003, 1)

Part162.Parent = Tool
Part162.BrickColor = BrickColor.new("Black")
Part162.Rotation = Vector3.new(0, 0, -180)
Part162.Anchored = true
Part162.CanCollide = false
Part162.FormFactor = Enum.FormFactor.Custom
Part162.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part162.CFrame = CFrame.new(16.8364105, 2.30257726, -288.727692, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part162.BottomSurface = Enum.SurfaceType.Smooth
Part162.TopSurface = Enum.SurfaceType.Smooth
Part162.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part162.Position = Vector3.new(16.8364105, 2.30257726, -288.727692)
Part162.Orientation = Vector3.new(0, 0, 180)
BlockMesh163.Parent = Part162
BlockMesh163.Scale = Vector3.new(0.225000039, 0.249999911, 0.474999905)

Part164.Parent = Tool
Part164.BrickColor = BrickColor.new("Black")
Part164.Rotation = Vector3.new(0, 0, -180)
Part164.Anchored = true
Part164.CanCollide = false
Part164.FormFactor = Enum.FormFactor.Custom
Part164.Size = Vector3.new(0.200000003, 0.200000003, 0.774999976)
Part164.CFrame = CFrame.new(16.8914089, 2.2375772, -289.062683, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part164.BottomSurface = Enum.SurfaceType.Smooth
Part164.TopSurface = Enum.SurfaceType.Smooth
Part164.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part164.Position = Vector3.new(16.8914089, 2.2375772, -289.062683)
Part164.Orientation = Vector3.new(0, 0, 180)
BlockMesh165.Parent = Part164
BlockMesh165.Scale = Vector3.new(0.0249999985, 0.37499994, 1)

Part166.Parent = Tool
Part166.BrickColor = BrickColor.new("Black")
Part166.Rotation = Vector3.new(-90, 0, 0)
Part166.Anchored = true
Part166.CanCollide = false
Part166.FormFactor = Enum.FormFactor.Custom
Part166.Size = Vector3.new(0.200000003, 0.300000012, 0.200000003)
Part166.CFrame = CFrame.new(16.8364105, 2.08557701, -292.155701, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part166.BottomSurface = Enum.SurfaceType.Smooth
Part166.TopSurface = Enum.SurfaceType.Smooth
Part166.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part166.Position = Vector3.new(16.8364105, 2.08557701, -292.155701)
Part166.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh167.Parent = Part166
CylinderMesh167.Scale = Vector3.new(0.375, 1, 0.375)

Part168.Parent = Tool
Part168.BrickColor = BrickColor.new("Black")
Part168.Rotation = Vector3.new(-180, 0, -180)
Part168.Anchored = true
Part168.CanCollide = false
Part168.FormFactor = Enum.FormFactor.Custom
Part168.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part168.CFrame = CFrame.new(16.8344097, 2.18257713, -288.619659, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part168.BottomSurface = Enum.SurfaceType.Smooth
Part168.TopSurface = Enum.SurfaceType.Smooth
Part168.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part168.Position = Vector3.new(16.8344097, 2.18257713, -288.619659)
Part168.Orientation = Vector3.new(0, 180, 0)
SpecialMesh169.Parent = Part168
SpecialMesh169.Scale = Vector3.new(0.74999994, 0.324999988, 0.199999958)
SpecialMesh169.MeshType = Enum.MeshType.Wedge

Part170.Parent = Tool
Part170.BrickColor = BrickColor.new("Black")
Part170.Rotation = Vector3.new(90, 0, 90)
Part170.Anchored = true
Part170.CanCollide = false
Part170.FormFactor = Enum.FormFactor.Custom
Part170.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part170.CFrame = CFrame.new(16.9044094, 2.2835772, -288.750702, 0, -1, 0, -3.7252903e-09, 0, -0.999999881, 0.999999881, 0, -3.7252903e-09)
Part170.BottomSurface = Enum.SurfaceType.Smooth
Part170.TopSurface = Enum.SurfaceType.Smooth
Part170.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part170.Position = Vector3.new(16.9044094, 2.2835772, -288.750702)
Part170.Orientation = Vector3.new(89.9700012, 180, -90)
CylinderMesh171.Parent = Part170
CylinderMesh171.Scale = Vector3.new(0.550000012, 0.099999994, 0.550000012)

Part172.Parent = Tool
Part172.BrickColor = BrickColor.new("CGA brown")
Part172.Rotation = Vector3.new(-180, 0, -180)
Part172.Anchored = true
Part172.CanCollide = false
Part172.FormFactor = Enum.FormFactor.Custom
Part172.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
Part172.CFrame = CFrame.new(16.8364105, 2.10057688, -288.375702, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part172.BottomSurface = Enum.SurfaceType.Smooth
Part172.TopSurface = Enum.SurfaceType.Smooth
Part172.Color = Color3.new(0.666667, 0.333333, 0)
Part172.Position = Vector3.new(16.8364105, 2.10057688, -288.375702)
Part172.Orientation = Vector3.new(0, 180, 0)
SpecialMesh173.Parent = Part172
SpecialMesh173.Scale = Vector3.new(0.725000143, 0.25000003, 1)
SpecialMesh173.MeshType = Enum.MeshType.Wedge

Part174.Parent = Tool
Part174.BrickColor = BrickColor.new("Black")
Part174.Rotation = Vector3.new(60, 0, -180)
Part174.Anchored = true
Part174.CanCollide = false
Part174.FormFactor = Enum.FormFactor.Custom
Part174.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part174.CFrame = CFrame.new(16.8364105, 2.2065773, -292.120697, -1, 0, 0, 0, -0.500036895, -0.866004944, 0, -0.866004944, 0.500036895)
Part174.BottomSurface = Enum.SurfaceType.Smooth
Part174.TopSurface = Enum.SurfaceType.Smooth
Part174.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part174.Position = Vector3.new(16.8364105, 2.2065773, -292.120697)
Part174.Orientation = Vector3.new(60, 0, 180)
BlockMesh175.Parent = Part174
BlockMesh175.Scale = Vector3.new(0.300000072, 0.124999993, 0.700000226)

Part176.Parent = Tool
Part176.BrickColor = BrickColor.new("Black")
Part176.Anchored = true
Part176.CanCollide = false
Part176.FormFactor = Enum.FormFactor.Custom
Part176.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part176.CFrame = CFrame.new(16.8364105, 2.04257703, -292.239685, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part176.BottomSurface = Enum.SurfaceType.Smooth
Part176.TopSurface = Enum.SurfaceType.Smooth
Part176.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part176.Position = Vector3.new(16.8364105, 2.04257703, -292.239685)
BlockMesh177.Parent = Part176
BlockMesh177.Scale = Vector3.new(0.200000137, 0.200000018, 0.5)

Part178.Parent = Tool
Part178.BrickColor = BrickColor.new("Black")
Part178.Rotation = Vector3.new(0, 0, -180)
Part178.Anchored = true
Part178.CanCollide = false
Part178.FormFactor = Enum.FormFactor.Custom
Part178.Size = Vector3.new(0.200000003, 0.200000003, 0.25000003)
Part178.CFrame = CFrame.new(16.8364105, 2.12157726, -292.179688, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part178.BottomSurface = Enum.SurfaceType.Smooth
Part178.TopSurface = Enum.SurfaceType.Smooth
Part178.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part178.Position = Vector3.new(16.8364105, 2.12157726, -292.179688)
Part178.Orientation = Vector3.new(0, 0, 180)
BlockMesh179.Parent = Part178
BlockMesh179.Scale = Vector3.new(0.300000072, 0.300000012, 1)

Part180.Parent = Tool
Part180.BrickColor = BrickColor.new("Black")
Part180.Rotation = Vector3.new(-90, 0, 90)
Part180.Anchored = true
Part180.CanCollide = false
Part180.FormFactor = Enum.FormFactor.Custom
Part180.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part180.CFrame = CFrame.new(16.8364105, 2.30257726, -290.202698, 0, -1, -2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, -1, 1.77635684e-15, -2.98023224e-08)
Part180.BottomSurface = Enum.SurfaceType.Smooth
Part180.TopSurface = Enum.SurfaceType.Smooth
Part180.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part180.Position = Vector3.new(16.8364105, 2.30257726, -290.202698)
Part180.Orientation = Vector3.new(-90, 90, 0)
CylinderMesh181.Parent = Part180
CylinderMesh181.Scale = Vector3.new(0.224999994, 0.762499988, 0.224999994)

Part182.Parent = Tool
Part182.BrickColor = BrickColor.new("Really black")
Part182.Rotation = Vector3.new(0, 0, -180)
Part182.Anchored = true
Part182.CanCollide = false
Part182.FormFactor = Enum.FormFactor.Custom
Part182.Size = Vector3.new(0.200000003, 0.200000003, 0.825000286)
Part182.CFrame = CFrame.new(16.8764095, 2.20057726, -289.487701, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part182.BottomSurface = Enum.SurfaceType.Smooth
Part182.TopSurface = Enum.SurfaceType.Smooth
Part182.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part182.Position = Vector3.new(16.8764095, 2.20057726, -289.487701)
Part182.Orientation = Vector3.new(0, 0, 180)
BlockMesh183.Parent = Part182
BlockMesh183.Scale = Vector3.new(0.137500003, 0.49999997, 1)

Part184.Parent = Tool
Part184.BrickColor = BrickColor.new("Black")
Part184.Rotation = Vector3.new(0, 0, -180)
Part184.Anchored = true
Part184.CanCollide = false
Part184.FormFactor = Enum.FormFactor.Custom
Part184.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part184.CFrame = CFrame.new(16.8914089, 2.2375772, -289.474701, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part184.BottomSurface = Enum.SurfaceType.Smooth
Part184.TopSurface = Enum.SurfaceType.Smooth
Part184.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part184.Position = Vector3.new(16.8914089, 2.2375772, -289.474701)
Part184.Orientation = Vector3.new(0, 0, 180)
SpecialMesh185.Parent = Part184
SpecialMesh185.Scale = Vector3.new(0.025000006, 0.375, 0.25)
SpecialMesh185.MeshType = Enum.MeshType.Wedge

Part186.Parent = Tool
Part186.BrickColor = BrickColor.new("Black")
Part186.Rotation = Vector3.new(-180, 0, -180)
Part186.Anchored = true
Part186.CanCollide = false
Part186.FormFactor = Enum.FormFactor.Custom
Part186.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part186.CFrame = CFrame.new(16.8364105, 2.28157711, -292.147705, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part186.BottomSurface = Enum.SurfaceType.Smooth
Part186.TopSurface = Enum.SurfaceType.Smooth
Part186.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part186.Position = Vector3.new(16.8364105, 2.28157711, -292.147705)
Part186.Orientation = Vector3.new(0, 180, 0)
SpecialMesh187.Parent = Part186
SpecialMesh187.Scale = Vector3.new(0.300000161, 0.299999982, 0.174999937)
SpecialMesh187.MeshType = Enum.MeshType.Wedge

Part188.Parent = Tool
Part188.BrickColor = BrickColor.new("Black")
Part188.Rotation = Vector3.new(0, 0, -180)
Part188.Anchored = true
Part188.CanCollide = false
Part188.FormFactor = Enum.FormFactor.Custom
Part188.Size = Vector3.new(0.200000003, 0.224999994, 0.200000003)
Part188.CFrame = CFrame.new(16.8364105, 2.02557707, -288.562683, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part188.BottomSurface = Enum.SurfaceType.Smooth
Part188.TopSurface = Enum.SurfaceType.Smooth
Part188.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part188.Position = Vector3.new(16.8364105, 2.02557707, -288.562683)
Part188.Orientation = Vector3.new(0, 0, 180)
BlockMesh189.Parent = Part188
BlockMesh189.Scale = Vector3.new(0.664999902, 1, 0.375)

Part190.Parent = Tool
Part190.BrickColor = BrickColor.new("Black")
Part190.Rotation = Vector3.new(-170.539993, 0, 0)
Part190.Anchored = true
Part190.CanCollide = false
Part190.FormFactor = Enum.FormFactor.Custom
Part190.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
Part190.CFrame = CFrame.new(16.8364105, 2.10857725, -288.407684, 1, 0, -0, 0, -0.986393929, 0.164399043, 0, -0.164399043, -0.986393929)
Part190.BottomSurface = Enum.SurfaceType.Smooth
Part190.TopSurface = Enum.SurfaceType.Smooth
Part190.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part190.Position = Vector3.new(16.8364105, 2.10857725, -288.407684)
Part190.Orientation = Vector3.new(-9.46000004, -180, 180)
BlockMesh191.Parent = Part190
BlockMesh191.Scale = Vector3.new(0.475000113, 0.0249999985, 1)

Part192.Parent = Tool
Part192.BrickColor = BrickColor.new("CGA brown")
Part192.Rotation = Vector3.new(-90, 0, -90)
Part192.Anchored = true
Part192.CanCollide = false
Part192.FormFactor = Enum.FormFactor.Custom
Part192.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part192.CFrame = CFrame.new(16.8364105, 1.9785769, -290.087708, 0, 1, 0, 0, 0, 1, 1, 0, 0)
Part192.BottomSurface = Enum.SurfaceType.Smooth
Part192.TopSurface = Enum.SurfaceType.Smooth
Part192.Color = Color3.new(0.666667, 0.333333, 0)
Part192.Position = Vector3.new(16.8364105, 1.9785769, -290.087708)
Part192.Orientation = Vector3.new(-90, -90, 0)
CylinderMesh193.Parent = Part192
CylinderMesh193.Scale = Vector3.new(0.625000119, 0.774999797, 0.625)

Part194.Parent = Tool
Part194.BrickColor = BrickColor.new("Black")
Part194.Anchored = true
Part194.CanCollide = false
Part194.FormFactor = Enum.FormFactor.Custom
Part194.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part194.CFrame = CFrame.new(16.8364105, 2.18857718, -291.455688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part194.BottomSurface = Enum.SurfaceType.Smooth
Part194.TopSurface = Enum.SurfaceType.Smooth
Part194.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part194.Position = Vector3.new(16.8364105, 2.18857718, -291.455688)
SpecialMesh195.Parent = Part194
SpecialMesh195.Scale = Vector3.new(0.250000149, 0.274999976, 0.5)
SpecialMesh195.MeshType = Enum.MeshType.Wedge

Part196.Parent = Tool
Part196.BrickColor = BrickColor.new("CGA brown")
Part196.Anchored = true
Part196.CanCollide = false
Part196.FormFactor = Enum.FormFactor.Custom
Part196.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part196.CFrame = CFrame.new(16.8364105, 2.10057688, -288.187683, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part196.BottomSurface = Enum.SurfaceType.Smooth
Part196.TopSurface = Enum.SurfaceType.Smooth
Part196.Color = Color3.new(0.666667, 0.333333, 0)
Part196.Position = Vector3.new(16.8364105, 2.10057688, -288.187683)
SpecialMesh197.Parent = Part196
SpecialMesh197.Scale = Vector3.new(0.724999905, 0.25, 0.375)
SpecialMesh197.MeshType = Enum.MeshType.Wedge

Part198.Parent = Tool
Part198.BrickColor = BrickColor.new("Black")
Part198.Rotation = Vector3.new(-90, 0, 0)
Part198.Anchored = true
Part198.CanCollide = false
Part198.FormFactor = Enum.FormFactor.Custom
Part198.Size = Vector3.new(0.200000003, 0.25, 0.200000003)
Part198.CFrame = CFrame.new(16.8364105, 2.08557701, -291.529694, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Part198.BottomSurface = Enum.SurfaceType.Smooth
Part198.TopSurface = Enum.SurfaceType.Smooth
Part198.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part198.Position = Vector3.new(16.8364105, 2.08557701, -291.529694)
Part198.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh199.Parent = Part198
CylinderMesh199.Scale = Vector3.new(0.375, 1, 0.375)

Part200.Parent = Tool
Part200.BrickColor = BrickColor.new("Black")
Part200.Anchored = true
Part200.CanCollide = false
Part200.FormFactor = Enum.FormFactor.Custom
Part200.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part200.CFrame = CFrame.new(16.8364105, 2.34657717, -288.697693, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part200.BottomSurface = Enum.SurfaceType.Smooth
Part200.TopSurface = Enum.SurfaceType.Smooth
Part200.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part200.Position = Vector3.new(16.8364105, 2.34657717, -288.697693)
SpecialMesh201.Parent = Part200
SpecialMesh201.MeshId = "http://www.roblox.com/asset/?id=3270017"
SpecialMesh201.Scale = Vector3.new(0.0399999991, 0.0399999991, 0.075000003)
SpecialMesh201.MeshType = Enum.MeshType.FileMesh

Part202.Parent = Tool
Part202.BrickColor = BrickColor.new("Black")
Part202.Rotation = Vector3.new(-180, 0, -180)
Part202.Anchored = true
Part202.CanCollide = false
Part202.FormFactor = Enum.FormFactor.Custom
Part202.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part202.CFrame = CFrame.new(16.8364105, 2.13757706, -288.562683, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part202.BottomSurface = Enum.SurfaceType.Smooth
Part202.TopSurface = Enum.SurfaceType.Smooth
Part202.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part202.Position = Vector3.new(16.8364105, 2.13757706, -288.562683)
Part202.Orientation = Vector3.new(0, 180, 0)
SpecialMesh203.Parent = Part202
SpecialMesh203.Scale = Vector3.new(0.775000095, 0.125, 0.375)
SpecialMesh203.MeshType = Enum.MeshType.Wedge

ManualWeld204.Name = "Part-to-AimPart Strong Joint"
ManualWeld204.Parent = Part202
ManualWeld204.C0 = CFrame.new(0.100000001, -0.100000001, -0.100000001, -1, 0, 0, 0, 1, 0, 0, 0, -1)
ManualWeld204.C1 = CFrame.new(-0.101606369, -0.304009438, -0.121948242, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld204.Part0 = Part202
ManualWeld204.Part1 = Part20

Part205.Parent = Tool
Part205.BrickColor = BrickColor.new("Black")
Part205.Rotation = Vector3.new(-90, 0, 0)
Part205.Anchored = true
Part205.CanCollide = false
Part205.FormFactor = Enum.FormFactor.Custom
Part205.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part205.CFrame = CFrame.new(16.8764095, 2.2375772, -290.252686, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part205.BottomSurface = Enum.SurfaceType.Smooth
Part205.TopSurface = Enum.SurfaceType.Smooth
Part205.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part205.Position = Vector3.new(16.8764095, 2.2375772, -290.252686)
Part205.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh206.Parent = Part205
CylinderMesh206.Scale = Vector3.new(0.37499997, 0.274999797, 0.374999851)

Part207.Parent = Tool
Part207.BrickColor = BrickColor.new("Black")
Part207.Rotation = Vector3.new(-180, 0, -180)
Part207.Anchored = true
Part207.CanCollide = false
Part207.FormFactor = Enum.FormFactor.Custom
Part207.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part207.CFrame = CFrame.new(16.8364105, 2.2125771, -288.637695, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part207.BottomSurface = Enum.SurfaceType.Smooth
Part207.TopSurface = Enum.SurfaceType.Smooth
Part207.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part207.Position = Vector3.new(16.8364105, 2.2125771, -288.637695)
Part207.Orientation = Vector3.new(0, 180, 0)
SpecialMesh208.Parent = Part207
SpecialMesh208.Scale = Vector3.new(0.574999928, 0.625, 0.375)
SpecialMesh208.MeshType = Enum.MeshType.Wedge

Part209.Parent = Tool
Part209.BrickColor = BrickColor.new("Black")
Part209.Rotation = Vector3.new(0, 0, -180)
Part209.Anchored = true
Part209.CanCollide = false
Part209.FormFactor = Enum.FormFactor.Custom
Part209.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part209.CFrame = CFrame.new(16.8364105, 2.28157711, -292.220703, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part209.BottomSurface = Enum.SurfaceType.Smooth
Part209.TopSurface = Enum.SurfaceType.Smooth
Part209.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part209.Position = Vector3.new(16.8364105, 2.28157711, -292.220703)
Part209.Orientation = Vector3.new(0, 0, 180)
BlockMesh210.Parent = Part209
BlockMesh210.Scale = Vector3.new(0.300000072, 0.300000012, 0.550000072)

Part211.Parent = Tool
Part211.BrickColor = BrickColor.new("Black")
Part211.Rotation = Vector3.new(0, 0, -180)
Part211.Anchored = true
Part211.CanCollide = false
Part211.FormFactor = Enum.FormFactor.Custom
Part211.Size = Vector3.new(0.200000003, 0.200000003, 1.625)
Part211.CFrame = CFrame.new(16.8364105, 2.06357694, -289.412689, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part211.BottomSurface = Enum.SurfaceType.Smooth
Part211.TopSurface = Enum.SurfaceType.Smooth
Part211.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part211.Position = Vector3.new(16.8364105, 2.06357694, -289.412689)
Part211.Orientation = Vector3.new(0, 0, 180)
BlockMesh212.Parent = Part211
BlockMesh212.Scale = Vector3.new(0.774999976, 0.874999821, 1)

Part213.Parent = Tool
Part213.BrickColor = BrickColor.new("Black")
Part213.Rotation = Vector3.new(0, 0, -180)
Part213.Anchored = true
Part213.CanCollide = false
Part213.FormFactor = Enum.FormFactor.Custom
Part213.Size = Vector3.new(0.200000003, 0.200000003, 1.54999995)
Part213.CFrame = CFrame.new(16.8344097, 2.2125771, -289.449677, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part213.BottomSurface = Enum.SurfaceType.Smooth
Part213.TopSurface = Enum.SurfaceType.Smooth
Part213.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part213.Position = Vector3.new(16.8344097, 2.2125771, -289.449677)
Part213.Orientation = Vector3.new(0, 0, 180)
BlockMesh214.Parent = Part213
BlockMesh214.Scale = Vector3.new(0.550000072, 0.62499994, 1)

Part215.Parent = Tool
Part215.BrickColor = BrickColor.new("Black")
Part215.Rotation = Vector3.new(-94.5699997, 0, 90)
Part215.Anchored = true
Part215.CanCollide = false
Part215.FormFactor = Enum.FormFactor.Custom
Part215.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part215.CFrame = CFrame.new(16.9194088, 2.06457686, -288.981689, 0, -1, -2.98023224e-08, -0.0797571838, -2.97073797e-08, 0.996814251, -0.996814251, 2.37695019e-09, -0.0797571838)
Part215.BottomSurface = Enum.SurfaceType.Smooth
Part215.TopSurface = Enum.SurfaceType.Smooth
Part215.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part215.Position = Vector3.new(16.9194088, 2.06457686, -288.981689)
Part215.Orientation = Vector3.new(-85.4300003, -180, -90)
CylinderMesh216.Parent = Part215
CylinderMesh216.Scale = Vector3.new(0.574999928, 0.0500000045, 0.574999988)

Part217.Parent = Tool
Part217.BrickColor = BrickColor.new("Black")
Part217.Anchored = true
Part217.CanCollide = false
Part217.FormFactor = Enum.FormFactor.Custom
Part217.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part217.CFrame = CFrame.new(16.8364105, 2.1355772, -291.455688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part217.BottomSurface = Enum.SurfaceType.Smooth
Part217.TopSurface = Enum.SurfaceType.Smooth
Part217.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part217.Position = Vector3.new(16.8364105, 2.1355772, -291.455688)
BlockMesh218.Parent = Part217
BlockMesh218.Scale = Vector3.new(0.250000149, 0.25, 0.5)

Part219.Parent = Tool
Part219.BrickColor = BrickColor.new("CGA brown")
Part219.Rotation = Vector3.new(-90, 0, 0)
Part219.Anchored = true
Part219.CanCollide = false
Part219.FormFactor = Enum.FormFactor.Custom
Part219.Size = Vector3.new(0.200000003, 0.570000052, 0.200000003)
Part219.CFrame = CFrame.new(16.8764095, 2.2375772, -290.565704, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part219.BottomSurface = Enum.SurfaceType.Smooth
Part219.TopSurface = Enum.SurfaceType.Smooth
Part219.Color = Color3.new(0.666667, 0.333333, 0)
Part219.Position = Vector3.new(16.8764095, 2.2375772, -290.565704)
Part219.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh220.Parent = Part219
CylinderMesh220.Scale = Vector3.new(0.37499997, 1, 0.374999851)

Part221.Parent = Tool
Part221.BrickColor = BrickColor.new("Black")
Part221.Rotation = Vector3.new(-90, 0, 0)
Part221.Anchored = true
Part221.CanCollide = false
Part221.FormFactor = Enum.FormFactor.Custom
Part221.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part221.CFrame = CFrame.new(16.7964096, 2.2375772, -290.877686, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part221.BottomSurface = Enum.SurfaceType.Smooth
Part221.TopSurface = Enum.SurfaceType.Smooth
Part221.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part221.Position = Vector3.new(16.7964096, 2.2375772, -290.877686)
Part221.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh222.Parent = Part221
CylinderMesh222.Scale = Vector3.new(0.37499997, 0.274999797, 0.374999851)

Part223.Parent = Tool
Part223.BrickColor = BrickColor.new("Black")
Part223.Rotation = Vector3.new(-90, 0, 0)
Part223.Anchored = true
Part223.CanCollide = false
Part223.FormFactor = Enum.FormFactor.Custom
Part223.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part223.CFrame = CFrame.new(16.8764095, 2.2375772, -290.877686, 1, 0, 2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 1, 0, -1, -2.98023224e-08)
Part223.BottomSurface = Enum.SurfaceType.Smooth
Part223.TopSurface = Enum.SurfaceType.Smooth
Part223.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part223.Position = Vector3.new(16.8764095, 2.2375772, -290.877686)
Part223.Orientation = Vector3.new(-90, 0, 0)
CylinderMesh224.Parent = Part223
CylinderMesh224.Scale = Vector3.new(0.37499997, 0.274999797, 0.374999851)

Part225.Parent = Tool
Part225.BrickColor = BrickColor.new("Black")
Part225.Rotation = Vector3.new(0, 0, -180)
Part225.Anchored = true
Part225.CanCollide = false
Part225.FormFactor = Enum.FormFactor.Custom
Part225.Size = Vector3.new(0.200000003, 0.200000003, 0.375)
Part225.CFrame = CFrame.new(16.8364105, 1.91257691, -288.787689, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part225.BottomSurface = Enum.SurfaceType.Smooth
Part225.TopSurface = Enum.SurfaceType.Smooth
Part225.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part225.Position = Vector3.new(16.8364105, 1.91257691, -288.787689)
Part225.Orientation = Vector3.new(0, 0, 180)
BlockMesh226.Parent = Part225
BlockMesh226.Scale = Vector3.new(0.775000095, 0.62499994, 1)

Part227.Parent = Tool
Part227.BrickColor = BrickColor.new("Black")
Part227.Rotation = Vector3.new(90, 0, 90)
Part227.Anchored = true
Part227.CanCollide = false
Part227.FormFactor = Enum.FormFactor.Custom
Part227.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part227.CFrame = CFrame.new(16.8864098, 2.2835772, -288.749695, 0, -1, 0, -3.7252903e-09, 0, -0.999999881, 0.999999881, 0, -3.7252903e-09)
Part227.BottomSurface = Enum.SurfaceType.Smooth
Part227.TopSurface = Enum.SurfaceType.Smooth
Part227.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part227.Position = Vector3.new(16.8864098, 2.2835772, -288.749695)
Part227.Orientation = Vector3.new(89.9700012, 180, -90)
CylinderMesh228.Parent = Part227
CylinderMesh228.Scale = Vector3.new(0.750000119, 0.0749999806, 0.725000024)

Part229.Parent = Tool
Part229.BrickColor = BrickColor.new("Black")
Part229.Rotation = Vector3.new(-45, 0, 0)
Part229.Anchored = true
Part229.CanCollide = false
Part229.FormFactor = Enum.FormFactor.Custom
Part229.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part229.CFrame = CFrame.new(16.8364105, 1.83257699, -289.104706, 0.99999994, -0, 0, 0, 0.707129002, 0.707084537, 0, -0.707084537, 0.707129002)
Part229.BottomSurface = Enum.SurfaceType.Smooth
Part229.TopSurface = Enum.SurfaceType.Smooth
Part229.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part229.Position = Vector3.new(16.8364105, 1.83257699, -289.104706)
Part229.Orientation = Vector3.new(-45, 0, 0)
SpecialMesh230.Parent = Part229
SpecialMesh230.Scale = Vector3.new(0.175000161, 0.162499994, 0.412500024)
SpecialMesh230.MeshType = Enum.MeshType.Wedge

Part231.Parent = Tool
Part231.BrickColor = BrickColor.new("Black")
Part231.Rotation = Vector3.new(0, 0, -180)
Part231.Anchored = true
Part231.CanCollide = false
Part231.FormFactor = Enum.FormFactor.Custom
Part231.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part231.CFrame = CFrame.new(16.8364105, 2.25757718, -290.877686, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part231.BottomSurface = Enum.SurfaceType.Smooth
Part231.TopSurface = Enum.SurfaceType.Smooth
Part231.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part231.Position = Vector3.new(16.8364105, 2.25757718, -290.877686)
Part231.Orientation = Vector3.new(0, 0, 180)
BlockMesh232.Parent = Part231
BlockMesh232.Scale = Vector3.new(0.425000042, 0.174999893, 0.274999917)

Part233.Parent = Tool
Part233.BrickColor = BrickColor.new("Black")
Part233.Rotation = Vector3.new(0, 0, -180)
Part233.Anchored = true
Part233.CanCollide = false
Part233.FormFactor = Enum.FormFactor.Custom
Part233.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part233.CFrame = CFrame.new(16.8364105, 2.29557729, -290.195709, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part233.BottomSurface = Enum.SurfaceType.Smooth
Part233.TopSurface = Enum.SurfaceType.Smooth
Part233.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part233.Position = Vector3.new(16.8364105, 2.29557729, -290.195709)
Part233.Orientation = Vector3.new(0, 0, 180)
BlockMesh234.Parent = Part233
BlockMesh234.Scale = Vector3.new(0.674999952, 0.24999994, 0.199999988)

Part235.Parent = Tool
Part235.BrickColor = BrickColor.new("Black")
Part235.Rotation = Vector3.new(0, 0, -180)
Part235.Anchored = true
Part235.CanCollide = false
Part235.FormFactor = Enum.FormFactor.Custom
Part235.Size = Vector3.new(0.200000003, 0.200000003, 1.42499995)
Part235.CFrame = CFrame.new(16.8364105, 1.93857694, -289.312653, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part235.BottomSurface = Enum.SurfaceType.Smooth
Part235.TopSurface = Enum.SurfaceType.Smooth
Part235.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part235.Position = Vector3.new(16.8364105, 1.93857694, -289.312653)
Part235.Orientation = Vector3.new(0, 0, 180)
SpecialMesh236.Parent = Part235
SpecialMesh236.Scale = Vector3.new(0.774999976, 0.375, 1)
SpecialMesh236.MeshType = Enum.MeshType.Wedge

Part237.Name = "Mag"
Part237.Parent = Tool
Part237.BrickColor = BrickColor.new("Black")
Part237.Rotation = Vector3.new(7, 0, 0)
Part237.Anchored = true
Part237.CanCollide = false
Part237.FormFactor = Enum.FormFactor.Custom
Part237.Size = Vector3.new(0.200000003, 0.300000012, 0.375)
Part237.CFrame = CFrame.new(16.8364105, 1.87957692, -289.558685, 1, 0, 0, 0, 0.992546141, -0.121869348, 0, 0.121869348, 0.992546141)
Part237.BottomSurface = Enum.SurfaceType.Smooth
Part237.TopSurface = Enum.SurfaceType.Smooth
Part237.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part237.Position = Vector3.new(16.8364105, 1.87957692, -289.558685)
Part237.Orientation = Vector3.new(7, 0, 0)
BlockMesh238.Parent = Part237
BlockMesh238.Scale = Vector3.new(0.699999988, 1, 1)
-- ==========================================
-- КОНЕЦ ОРИГИНАЛЬНЫХ ДЕТАЛЕЙ
-- ==========================================

-- Звуки попадания
local SoundHitFlesh = Instance.new("Sound")
SoundHitFlesh.Name = "HitFlesh"
SoundHitFlesh.SoundId = "rbxassetid://142082043"
SoundHitFlesh.Volume = 2
SoundHitFlesh.Parent = Part32

local SoundHitWall = Instance.new("Sound")
SoundHitWall.Name = "HitWall"
SoundHitWall.SoundId = "rbxassetid://142082043"
SoundHitWall.Pitch = 0.5
SoundHitWall.Volume = 1
SoundHitWall.Parent = Part32

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GunGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Player.PlayerGui

local AmmoLabel = Instance.new("TextLabel")
AmmoLabel.Size = UDim2.new(0, 200, 0, 50)
AmmoLabel.Position = UDim2.new(1, -220, 1, -70)
AmmoLabel.BackgroundTransparency = 1
AmmoLabel.TextColor3 = Color3.new(1, 1, 1)
AmmoLabel.TextStrokeTransparency = 0.5
AmmoLabel.Font = Enum.Font.SciFi
AmmoLabel.TextScaled = true
AmmoLabel.Parent = ScreenGui

local FireButton = Instance.new("TextButton")
FireButton.Size = UDim2.new(0, 80, 0, 80)
FireButton.Position = UDim2.new(1, -100, 1, -180)
FireButton.BackgroundColor3 = Color3.new(1, 0, 0)
FireButton.BackgroundTransparency = 0.3
FireButton.Text = "FIRE"
FireButton.TextColor3 = Color3.new(1,1,1)
FireButton.Font = Enum.Font.GothamBold
FireButton.TextScaled = true
FireButton.Parent = ScreenGui
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(1, 0)
Corner.Parent = FireButton

-- Переменные состояния
local Ammo = Settings.AmmoMax
local StoredAmmo = math.huge
local Equipped = false
local CanShoot = true
local Reloading = false
local Aiming = false
local Sprinting = false
local MouseHeld = false
local ButtonHeld = false
local Right_Weld, Left_Weld

local function updateGui()
    if Reloading then
        AmmoLabel.Text = "RELOADING..."
    else
        AmmoLabel.Text = tostring(Ammo) .. " / " .. (StoredAmmo == math.huge and "INF" or tostring(StoredAmmo))
    end
end

local function createBlood(position, normal)
    local attachment = Instance.new("Attachment")
    attachment.WorldPosition = position
    local blood = Instance.new("ParticleEmitter")
    blood.Color = ColorSequence.new(Color3.fromRGB(150, 0, 0))
    blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 0)})
    blood.Transparency = NumberSequence.new(0, 1)
    blood.Lifetime = NumberRange.new(0.5, 1)
    blood.Speed = NumberRange.new(5, 10)
    blood.SpreadAngle = Vector2.new(45, 45)
    blood.Rate = 0
    blood.Parent = attachment
    if normal then
        attachment.WorldCFrame = CFrame.lookAt(position, position + normal)
    end
    blood:Emit(math.random(10, 20))
    attachment.Parent = Workspace.Terrain
    Debris:AddItem(attachment, 2)
end

local function applyClientRagdoll(character)
    if character:FindFirstChild("ClientRagdolled") then return end
    local tag = Instance.new("BoolValue", character)
    tag.Name = "ClientRagdolled"
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then humanoid.PlatformStand = true end
    for _, v in pairs(character:GetDescendants()) do
        if v:IsA("Motor6D") then
            v.Enabled = false
            local socket = Instance.new("BallSocketConstraint")
            local a0 = Instance.new("Attachment")
            local a1 = Instance.new("Attachment")
            a0.CFrame = v.C0
            a1.CFrame = v.C1
            a0.Parent = v.Part0
            a1.Parent = v.Part1
            socket.Attachment0 = a0
            socket.Attachment1 = a1
            socket.LimitsEnabled = true
            socket.TwistLimitsEnabled = true
            socket.Parent = v.Part0
            socket:SetAttribute("IsRagdoll", true)
            a0:SetAttribute("IsRagdoll", true)
            a1:SetAttribute("IsRagdoll", true)
        end
    end
end

local function Fire()
    if not CanShoot or Reloading or not Equipped then return end
    if Ammo <= 0 then
        Sound34:Play()
        CanShoot = false
        task.wait(0.5)
        CanShoot = true
        return
    end
    CanShoot = false
    Ammo -= 1
    updateGui()
    Sound38:Play()

    local char = Player.Character
    if not char or not char:FindFirstChild("Head") then CanShoot = true return end
    local CamCF = Camera.CFrame
    Camera.CFrame = CamCF * CFrame.Angles(math.abs(Settings.Recoil), math.random(-1,1)*math.rad(0.5), 0)

    for i = 1, Settings.Bullets do
        local spreadX = math.rad(math.random(-Settings.Spread, Settings.Spread) / 10)
        local spreadY = math.rad(math.random(-Settings.Spread, Settings.Spread) / 10)
        local spreadCF = CFrame.Angles(spreadX, spreadY, 0)
        local origin = char.Head.Position
        local direction = (spreadCF * CFrame.new(origin, Mouse.Hit.p)).LookVector * Settings.Range
        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {char, Camera}
        rayParams.IgnoreWater = true
        local result = Workspace:Raycast(origin, direction, rayParams)

        if result then
            local hitPart = result.Instance
            local hitPos = result.Position
            local hitNormal = result.Normal

            if not hitPart.Parent:FindFirstChild("Humanoid") then
                SoundHitWall:Play()
                local hole = Instance.new("Part")
                hole.Size = Vector3.new(0.1, 0.1, 0.1)
                hole.CFrame = CFrame.new(hitPos, hitPos + hitNormal)
                hole.Anchored = true
                hole.CanCollide = false
                hole.Material = Enum.Material.Neon
                hole.Color = Color3.new(0,0,0)
                hole.Parent = Workspace
                Debris:AddItem(hole, 3)
            end

            local enemyChar = hitPart.Parent
            if enemyChar and enemyChar:FindFirstChild("Humanoid") then
                local enemyHum = enemyChar.Humanoid
                createBlood(hitPos, hitNormal)
                SoundHitFlesh:Play()
                local dmg = math.random(Settings.Damage[1], Settings.Damage[2])
                if hitPart.Name == "Head" then
                    dmg = math.random(Settings.HeadShotDamage[1], Settings.HeadShotDamage[2])
                end
                enemyHum.Health -= dmg
                if enemyHum.Health <= 0 then
                    applyClientRagdoll(enemyChar)
                end
            end
        end
    end
    task.wait(Settings.FireRate)
    CanShoot = true
end

local function Reload()
    if Reloading or not Equipped or Ammo == Settings.AmmoMax or StoredAmmo <= 0 then return end
    Reloading = true
    CanShoot = false
    updateGui()
    Sound35:Play()
    task.wait(Settings.ReloadTime / 4)
    Sound36:Play()
    task.wait(Settings.ReloadTime / 4)
    Sound37:Play()
    task.wait(Settings.ReloadTime / 4)
    Sound39:Play()
    task.wait(Settings.ReloadTime / 4)

    local needed = Settings.AmmoMax - Ammo
    if StoredAmmo < needed then
        Ammo += StoredAmmo
        StoredAmmo = 0
    else
        StoredAmmo -= needed
        Ammo = Settings.AmmoMax
    end
    Reloading = false
    CanShoot = true
    updateGui()
end

local function setupArms()
    local char = Player.Character
    if not char then return end
    local torso = char:FindFirstChild("Torso")
    local head = char:FindFirstChild("Head")
    local rArm = char:FindFirstChild("Right Arm")
    local lArm = char:FindFirstChild("Left Arm")
    if not (torso and head and rArm and lArm) then return end

    local rShoulder = torso:FindFirstChild("Right Shoulder")
    local lShoulder = torso:FindFirstChild("Left Shoulder")
    if rShoulder then rShoulder.Part1 = nil end
    if lShoulder then lShoulder.Part1 = nil end

    Right_Weld = Instance.new("Weld")
    Right_Weld.Part0 = head
    Right_Weld.Part1 = rArm
    Right_Weld.C0 = CFrame.new(0, -1.5, 0)
    Right_Weld.C1 = CFrame.new(-0.75, -0.6, 0.45) * CFrame.Angles(math.rad(-90), math.rad(-16), 0)
    Right_Weld.Parent = torso

    Left_Weld = Instance.new("Weld")
    Left_Weld.Part0 = head
    Left_Weld.Part1 = lArm
    Left_Weld.C0 = CFrame.new(0, -1.5, 0)
    Left_Weld.C1 = CFrame.new(0.4, 0.65, 1.1) * CFrame.Angles(math.rad(320), 0.6, math.rad(-84))
    Left_Weld.Parent = torso
end

local function resetArms()
    local char = Player.Character
    if not char then return end
    local torso = char:FindFirstChild("Torso")
    if not torso then return end
    if Right_Weld then Right_Weld:Destroy() end
    if Left_Weld then Left_Weld:Destroy() end
    local rShoulder = torso:FindFirstChild("Right Shoulder")
    local lShoulder = torso:FindFirstChild("Left Shoulder")
    if rShoulder then rShoulder.Part1 = char:FindFirstChild("Right Arm") end
    if lShoulder then lShoulder.Part1 = char:FindFirstChild("Left Arm") end
end

Tool.Equipped:Connect(function()
    Equipped = true
    setupArms()
    updateGui()
    for _, v in pairs(Tool:GetChildren()) do
        if v:IsA("BasePart") and v ~= Part32 then
            local w = Instance.new("Weld")
            w.Part0 = Part32
            w.Part1 = v
            w.C0 = Part32.CFrame:ToObjectSpace(v.CFrame)
            w.Parent = Part32
        end
    end
    Part32.Anchored = false
end)

Tool.Unequipped:Connect(function()
    Equipped = false
    MouseHeld = false
    ButtonHeld = false
    resetArms()
end)

Mouse.Button1Down:Connect(function()
    if Settings.Automatic then MouseHeld = true else Fire() end
end)
Mouse.Button1Up:Connect(function() MouseHeld = false end)

FireButton.MouseButton1Down:Connect(function()
    if Settings.Automatic then ButtonHeld = true else Fire() end
end)
FireButton.MouseButton1Up:Connect(function() ButtonHeld = false end)

task.spawn(function()
    while true do
        if Equipped and (MouseHeld or ButtonHeld) and CanShoot and not Reloading then
            Fire()
        end
        task.wait(0.01)
    end
end)

UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe or not Equipped then return end
    if input.KeyCode == Settings.ReloadKey then
        Reload()
    elseif input.KeyCode == Settings.SprintKey then
        Sprinting = true
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = Settings.SprintSpeed
        end
    end
end)

UserInputService.InputEnded:Connect(function(input, gpe)
    if input.KeyCode == Settings.SprintKey then
        Sprinting = false
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = 16
        end
    end
end)

Mouse.Button2Down:Connect(function()
    if not Equipped or Reloading then return end
    Aiming = true
    if Right_Weld and Left_Weld then
        Right_Weld.C1 = CFrame.new(-0.3, -0.6, 0.45) * CFrame.Angles(math.rad(-90), math.rad(-16), 0)
        Left_Weld.C1 = CFrame.new(0.6, 0.2, 1.2) * CFrame.Angles(math.rad(320), 0.6, math.rad(-84))
    end
end)

Mouse.Button2Up:Connect(function()
    Aiming = false
    if Right_Weld and Left_Weld then
        Right_Weld.C1 = CFrame.new(-0.75, -0.6, 0.45) * CFrame.Angles(math.rad(-90), math.rad(-16), 0)
        Left_Weld.C1 = CFrame.new(0.4, 0.65, 1.1) * CFrame.Angles(math.rad(320), 0.6, math.rad(-84))
    end
end)

for i,v in pairs(mas:GetChildren()) do
    v.Parent = Player.Backpack
end
mas:Destroy()