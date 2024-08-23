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
            if
