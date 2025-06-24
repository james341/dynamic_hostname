-- File: lua/autorun/server/dynamic_hostname.lua

-- List of server titles
local titles = {
    "FNAF-RP | Day&Night | Security Breach!",
    "FNAF-RP | Day&Night | Secret of the Mimic!",
    "FNAF-RP | Day&Night | Security Breach!",
    "FNAF-RP | Five Nights at Freddy's RP | Security Breach!",
    "Five Nights at Freddy's RP | Pac3/Outfitter | Animatronics!",
    "Five Nights at Freddy's RP | Animatronics!",
    "Five Nights at Freddy's RP | Animatronics!",
    "FNAF-RP | Day&Night | Five Nights at Freddy's!",
    "FNAF-RP | Day&Night | Custom Content | Fast Loading",
    "Five Nights at Freddy's RP | Pac3/Outfitter | Animatronics!",
    "Five Nights at Freddy's RP | Custom Content | Fast Loading"
}

-- Change server hostname every 10 seconds
timer.Create("ChangeServerTitle", 10, 0, function()
    local newTitle = titles[math.random(#titles)]
    RunConsoleCommand("hostname", newTitle)
end)