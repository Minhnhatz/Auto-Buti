_G.Total = 0
_G.Time = 0
loadSettings()
Bounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
Earned = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
Earned2 = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
startTime = tick() - _G.Time
OldTotalEarned = _G.Total 
TotalEarned = _G.Total
function GetAccountElapsedTime(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = math.floor(elapsedTime % 60)
    _G.Time = elapsedTime
    local formattedTime = string.format("%dh:%dm:%ds", hours, minutes, seconds)
    return formattedTime
end
startTime2 = tick()
function GetAccountElapsedTime(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = math.floor(elapsedTime % 60)
    local formattedTime = string.format("%dh:%dm:%ds", hours, minutes, seconds)
    return formattedTime
end
spawn(function()
    while task.wait() do 
        if checktarget() then
            if enemy:DistanceFromCharacter(WaitHRP(lp).Position) <= 30 then
                local skills = getAvailableSkills(getgenv().Setting)
                if skills then
                    equip(skills[3])
                    down(skills[1], skills[2]["Hold Time"])
                end
            end
        end
    end
end)
spawn(function()
    while task.wait() do 
        Current = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
        Earned = Current - Bounty
        TotalEarned = OldTotalEarned + Earned
        _G.Total = TotalEarned
        task.wait(0.5)
        CrentBounty.Text = "Current Bounty: "..tostring(Current).."$"
        BountyEarned.Text = "Bounty Earned: "..tostring(Current).."$"
        TotalBountyEarned.Text = "Total Bounty Earned: "..tostring(TotalEarned).."$"
        CilentTimeElapsed.Text = "Cilent Time Elapsed: "..tostring(GetCilentElapsedTime(startTime2))
        AccountTimeElapsed.Text = "Account Time Elapsed: "..tostring(GetAccountElapsedTime(startTime))
        saveSettings()
        task.wait(0.5)
    end
end)
CamFarm = getgenv().Setting.Misc["Enable Cam Farm"]
if CamFarm == false then
    game.Players.LocalPlayer.CameraMinZoomDistance = 127
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
else
    CamFarm = true
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
    game.Players.LocalPlayer.CameraMaxZoomDistance = 0
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
end
