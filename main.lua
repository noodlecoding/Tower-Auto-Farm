local Library: any = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow: any = Library:NewWindow("Tower Auto Farm")
local KillingCheats: any = PhantomForcesWindow:NewSection("Tower Options")

local isTeleporting = false  -- Variable to track teleportation status

KillingCheats:CreateButton("나라 스테이지 타워", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local pointFolder = workspace:WaitForChild("PointFolder")

    local points = {}

    for i = 1, 300 do  
        local point = pointFolder:FindFirstChild(tostring(i))
        if point and point:IsA("Part") then
            table.insert(points, point)
        end
    end

    isTeleporting = true  -- Start teleporting

    local function teleportToPoints()
        for _, point in ipairs(points) do
            if not isTeleporting then break end  -- Check if teleporting should stop
            humanoidRootPart.CFrame = point.CFrame
            wait(0)  
        end
    end

    teleportToPoints()
end)

KillingCheats:CreateButton("날로먹는 스테이지 타워", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local pointFolder = workspace:WaitForChild("PointFolder")

    local points = {}

    for i = 1, 5000 do  
        local point = pointFolder:FindFirstChild(tostring(i))
        if point and point:IsA("Part") then
            table.insert(points, point)
        end
    end

    isTeleporting = true  -- Start teleporting

    local function teleportToPoints()
        for _, point in ipairs(points) do
            if not isTeleporting then break end  -- Check if teleporting should stop
            humanoidRootPart.CFrame = point.CFrame
            wait(0)  
        end
    end

    teleportToPoints()
end)

KillingCheats:CreateButton("붕어빵 스테이지 타워", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local pointFolder = workspace:WaitForChild("PointFolder")

    local points = {}

    for i = 1, 1471 do  
        local point = pointFolder:FindFirstChild(tostring(i))
        if point and point:IsA("Part") then
            table.insert(points, point)
        end
    end

    isTeleporting = true  -- Start teleporting

    local function teleportToPoints()
        for _, point in ipairs(points) do
            if not isTeleporting then break end  -- Check if teleporting should stop
            humanoidRootPart.CFrame = point.CFrame
            wait(0)  
        end
    end

    teleportToPoints()
end)

KillingCheats:CreateButton("stop", function()
    print("Teleportation stopped")
    isTeleporting = false  -- Stop teleporting
end)
