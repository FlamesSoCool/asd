repeat wait() until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart do end

local pathService = game:GetService("PathfindingService")

local function calculateDistance(point1, point2)
	return (point1.Position - point2.Position).Magnitude
end

game:GetService("RunService").RenderStepped:Connect(function()
	if game.Workspace:FindFirstChild("CoinContainer") then else return end
	if game.Workspace["CoinContainer"]:FindFirstChild("Coin_Server") then else return end
	if game.Players.LocalPlayer.Character.PrimaryPart then else return end
	
	local closestCoin = nil
	local closestDistance = math.huge

	for _, coin in pairs(game.Workspace:FindFirstChild("CoinContainer"):GetChildren()) do
		local coinPart = coin:FindFirstChild("Coin")

		if coinPart and game.Players.LocalPlayer.Character.PrimaryPart then
			local distance = calculateDistance(game.Players.LocalPlayer.Character.PrimaryPart, coinPart)

			if distance < closestDistance then
				closestCoin = coin
				closestDistance = distance
			end
		end
	end
	
	if closestCoin and game.Players.LocalPlayer.Character.PrimaryPart then
		local start = game.Players.LocalPlayer.Character.PrimaryPart
		local End = closestCoin:FindFirstChild("Coin")
		local character = game.Players.LocalPlayer.Character

		local path = pathService:CreatePath({
			AgentRadius = 1,
			AgentHeight = 1,
			AgentWalkableClimb = true,
			AgentCanJump = true,
		})
		
		if End and start then
			path:ComputeAsync(start.Position, End.Position)
			

			local waypoints = path:GetWaypoints()

			if waypoints[4] then
				character.PrimaryPart.CFrame = CFrame.new(waypoints[4].Position)
			elseif waypoints[3] then
				character.PrimaryPart.CFrame = CFrame.new(waypoints[3].Position)
			elseif waypoints[2] then
				character.PrimaryPart.CFrame = CFrame.new(waypoints[2].Position)
			elseif waypoints[1] then
				character.PrimaryPart.CFrame = CFrame.new(waypoints[1].Position)
			end
			
			local distanceCheck = calculateDistance(game.Players.LocalPlayer.Character.PrimaryPart, End)
			
			if distanceCheck < 10 then
				character.PrimaryPart.CFrame = End.CFrame
			end
		else end
	end
end)
