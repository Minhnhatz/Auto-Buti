function ChangeStatus(txt)
    ScriptTask2:Set({Title="Script Status", Content=txt})
end 

phuoc = 0
phuoc2 = 0
pcall(function() 
    phuoc = tonumber(readfile("autobounty-"..tostring(LocalPlayer))) 
    phuoc2 = tonumber(readfile("autobounty2-"..tostring(LocalPlayer))) 
end)
StartTime  = os.time()
StartBty = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value

game:GetService("RunService").Stepped:Connect(NoStun)
gay = function () 
    a, b = pcall(function() 
    while task.wait() do 
        if LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            else
                game:service("VirtualUser"):CaptureController()
                game:service("VirtualUser"):SetKeyDown("0x65")
                game:service("VirtualUser"):SetKeyUp("0x65")
            end 
        BigHitbox()
        NoStun()
        LocalPlayer.Character:SetAttribute("DashLength", 100)
        if not remilia.Enemy or not remilia.Enemy:IsAlive() or remilia.Enemy:GetHumanoid().Health < 0 then 
            alert("Remilia", "Skip Player Cuz Enemy Doesnt Exists Or Died") 
            FindEnemy() 
        end 
        if (elapsed and elapsed ~= 0 and os.time()-elapsed > 10 and not getsenv(game.ReplicatedStorage.GuideModule)["_G"]["InCombat"]) then 
            alert("Remilia", "Skip Player Cuz Enemy Doesnt Enabled PvP 2 ") 
            FindEnemy()
        end 
        if remilia.Enemy:isV4Enabled() then
            alert("Remilia", "Skip Player Cuz Enemy Is A V4 User")
            FindEnemy()
        end
        if elapsed and elapsed ~= 0 and os.time()-elapsed > 10 and remilia.Enemy and remilia.Enemy.player.Character:GetAttribute("InCombat") == false then 
               FindEnemy() 
        end
        
        if spectate then 
            workspace.CurrentCamera.CameraSubject = remilia.Enemy.player.Character 
            else 
                workspace.CurrentCamera.CameraSubject = LocalPlayer.Character 
        end 
            
        if ScriptTask then 
            ScriptTask:Set({
                Title = "Enemy", 
                Content = [[ Name: ]] .. tostring(remilia.Enemy.player) .. [[
 Health: ]] .. tostring(remilia.Enemy:GetHumanoid().Health) .. " / ".. tostring(remilia.Enemy:GetHumanoid().MaxHealth) ..[[
 Distance: ]] .. tostring(remilia.Enemy:getDistance())
            }) 
        end 
        pcall(function()
        writefile("autobounty-"..tostring(LocalPlayer), tostring((os.time()-StartTime)+phuoc)) 
        writefile("autobounty2-"..tostring(LocalPlayer), tostring((game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value-StartBty+phuoc2) or 0))
        end)
