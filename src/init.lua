local ThemeManager = require(script.ThemeManager)
local Utility = require(script.Utility)

local Elements = script.Elements
local Window = require(Elements.Window)
local Notification = require(Elements.Notification)

local Library = {
    Theme = ThemeManager,
    Util = Utility,
    Flags = {},
    Unloaded = false
}

Notification:Init(Library)

function Library:Notify(options)
    Notification:Notify(options)
end

function Library:CreateWindow(options)
    return Window.new(options, self)
end

return Library
