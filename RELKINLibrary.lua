-- RELKINLibrary.lua

local RELKINLibrary = {}
RELKINLibrary.__index = RELKINLibrary

-- Initialize the GUI
function RELKINLibrary.new()
    local self = setmetatable({}, RELKINLibrary)

    -- Create instances and properties
    self.GUI = Instance.new("ScreenGui")
    self.Main = Instance.new("Frame")
    self.Navgations = Instance.new("ScrollingFrame")
    self.Tab1 = Instance.new("TextButton")
    self.Tab2 = Instance.new("TextButton")
    self.TopBar = Instance.new("Frame")
    self.Close = Instance.new("ImageButton")
    self.NameLabel = Instance.new("TextLabel")
    self.Controls = Instance.new("Frame")

    self:setupGUI()
    
    return self
end

-- [Остальной код из библиотеки]

return RELKINLibrary
