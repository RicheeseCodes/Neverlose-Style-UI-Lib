local ThemeManager = require(script.ThemeManager)
local Utility = require(script.Utility)

local Elements = script.Elements
local Window = require(Elements.Window)

local Library = {
    Theme = ThemeManager,
    Util = Utility
}

function Library:CreateWindow(options)
    return Window.new(options, self)
end

return Library
