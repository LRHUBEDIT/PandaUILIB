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
    Service = 'sponsploits',
    Name = 'Hub',
    Callback = function()
       
        print("Callback function executed.")
    end
})

