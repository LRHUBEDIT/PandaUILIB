# PandaUILIB
Panda auth key system ui lib made by SponsoParNordVpn 
# Images

# 🔌 Installation
To load our lib,run this code
```lua
local KeySystem =
```
To create lib run this
```lua
KeySystem:New({
    Service = 'sponsploits', ---- Service name here,OBLIGATORY
    Name = 'Hub', ----Name on the title, your hub name.

    Description = 'Best hub fr', --- hub description not obligatory
    Logo = 'rbxassetid://here', --- Hub logo , will be on the gui, not obligatory
    Discord = 'discord.gg/ex' --- Discord link , copied to clipboard when button pressed not obligatory
    Callback = function()----What is executed if valid key
       
        print("Callback function executed.")
    end
})
```
# 💯Example
```lua
if debug.info(1, "l") ~= 1 then
    game.Players.LocalPlayer:Kick("Safe dude..")
        while true do end
else
    print("Safe")
end

pcall(game.HttpGet, game, setmetatable({}, {
    __tostring = function()
        game.Players.LocalPlayer:Kick("Http spy detected")
        while true do end
        return ""
    end,
}))

local KeySystem = loadstring(game:HttpGet("https://pastebin.com/raw/zTzks2TL"))()

KeySystem:New({
    Service = 'sponsploits', -- service name
    Name = 'Hub', --- title present
    Callback = function()
       
        print("Callback function executed.")
    end
})
```
