repeat wait() until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character do end

coroutine.wrap(function()
	local bb=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()
		bb:ClickButton2(Vector2.new())
	end)
end)()

         local BV = Instance.new('BodyVelocity', game.Workspace)
                    BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    BV.Velocity = Vector3.new(0, 0.1, 0)
                    BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)

local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local container = ""
local speed = 0
local function findClosestPart(container)
    local closestPart
    local closestDistance = math.huge
    if container and container.GetChildren and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local parts = container:GetChildren()


local closestDistance = 500

for _, part in pairs(parts) do
    if part.Name ~= "CollectedCoin" and part.CoinType.Value == "Candy" then
        local humanoidRootPart = player.Character.HumanoidRootPart
        local distance = (part.Position - humanoidRootPart.Position).Magnitude

        if distance < closestDistance then
            closestDistance = distance
            closestPart = part
        else
            part:Destroy()
        end
    else
        part:Destroy()
    end
end

if closestPart then
    local radius = 15
    local playerPosition = player.Character.HumanoidRootPart.Position
    local closestPartPosition = closestPart.Position
    local distanceToClosestPart = (closestPartPosition - playerPosition).Magnitude

    if distanceToClosestPart <= radius then
        speed = 9999999
    else
        speed = 55
    end
end


        return closestPart
    else
        print("Waiting for an update, give it a second...")
        wait(0.1)
        return nil
    end
end

spawn(function()
while true do 
task.wait(5)

local originalText = game:GetService("Players").LocalPlayer.PlayerGui.CrossPlatform.Halloween2023["Event_Main"].Title.Currency.Container.Amount.Text
local cleanedText = originalText:gsub(",", "")
local numberValue = tonumber(cleanedText)
if numberValue and numberValue >= 39000 then
    print("It's more")


    local httpService = game:GetService("HttpService")
    local player = game:GetService("Players").LocalPlayer
    local playerName = player.Name
local amountearned = game:GetService("Players").LocalPlayer.PlayerGui.CrossPlatform.Halloween2023["Event_Main"].Title.Currency.Container.Amount.Text
    local webhookURL = "https://discord.com/api/webhooks/1165997704510459955/KBrhgb7gjJsnFEVIslzJvYJM33SyHjo7bEZJXvbg1tSfD6vig-ecxkJuU-cNbCxkctNM"
    local request = (syn and syn.request) or request or (http and http.request) or http_request
    request({
        Url = webhookURL,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
        },
        Body = httpService:JSONEncode({
            content = "",
            embeds = {
                {
                    title = "blahh blahh blahh",
                    description = playerName,
                    color = 0,
                    fields = {
                        {
                            name = "poopy but",
                            value = amountearned,
                            inline = true,
                        },
                        {
                            name = "Jesus christlers",
                            value = "efwef",
                            inline = true,
                        },
                    },
                },
            },
        }),
    })
local player = game.Players.LocalPlayer

player:Kick("completed")
while true do getgenv() end

    else
    print("It's less")
end
end
end)

spawn(function()
    while true do
        task.wait(0.1)

for _, model in pairs(workspace:GetChildren()) do
    if model:IsA("Model") then
        local checkingforcon = model
        if model:FindFirstChild("CoinContainer") then
       container = model.CoinContainer


        end
    end
end
    end
end)



spawn(function()
    while true do
        task.wait(0.1)
        local closestPart = findClosestPart(container)
        if closestPart then
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

local targetPosition = closestPart.Position
local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
local distance = (targetPosition - humanoidRootPart.Position).Magnitude
local tweenSpeed = speed
local tweenTime = distance / tweenSpeed

local tweenInfo = TweenInfo.new(
    tweenTime,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

local tween = TweenService:Create(
    humanoidRootPart,
    tweenInfo,
    { CFrame = CFrame.new(targetPosition) }
)

tween:Play()
tween.Completed:Wait()

task.wait(0.1)
    humanoidRootPart.CFrame = CFrame.new(targetPosition - Vector3.new(0, 10, 0))
            closestPart:Destroy()
            
        else
            wait(0.1)
        end
    end
end)

spawn(function()
local player = game.Players.LocalPlayer

while true do
    wait(0.1)
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then
            local existingBV = humanoidRootPart:FindFirstChild("BodyVelocity")

            if existingBV then
            else
                local BV = Instance.new('BodyVelocity')
                BV.Velocity = Vector3.new(0, -0.1, 0)
                BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                BV.Name = "BodyVelocity"
                BV.Parent = humanoidRootPart

            end
        end
    end
end

  
    end)
