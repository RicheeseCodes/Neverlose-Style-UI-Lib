-- ==========================================
-- MODULAR LIBRARY DEMO
-- ==========================================
-- Make sure the "src" folder is a ModuleScript in Roblox Studio
-- For example, if this script is in StarterGui, and src is a ModuleScript next to it:
local Library = require(script.Parent.src)

local win = Library:CreateWindow({
    Title = "NEVERLOSE MODULAR UI",
    Size = UDim2.new(0, 550, 0, 400)
})

local aimbotTab = win:CreateTab("Aimbot")
local visualsTab = win:CreateTab("Visuals")
local miscTab = win:CreateTab("Misc")

local mainGb = aimbotTab:CreateGroupbox("Main Settings")
mainGb:AddToggle("Enable Aimbot", function(state) 
    print("Aimbot:", state) 
end)

mainGb:AddKeybind("Aimbot Key", Enum.KeyCode.E, function()
    print("Aimbot key pressed!")
end)

mainGb:AddDropdown("Target Part", {"Head", "Torso", "HumanoidRootPart"}, function(val)
    print("Selected Part:", val)
end)

mainGb:AddSlider("Smoothing", 1, 100, function(val) 
    print("Smoothing:", val) 
end)

local espGb = visualsTab:CreateGroupbox("ESP Settings")
espGb:AddToggle("Enable ESP", function(state) end)

espGb:AddColorPicker("Box Color", Color3.fromRGB(0, 185, 255), function(color)
    print("Box Color changed:", color)
end)

espGb:AddColorPicker("Text Color", Color3.new(1, 1, 1), function(color)
    print("Text Color changed:", color)
end)

local settingsGb = miscTab:CreateGroupbox("Config")
settingsGb:AddButton("Save Config", function()
    print("Config Saved!")
end)

return Library
