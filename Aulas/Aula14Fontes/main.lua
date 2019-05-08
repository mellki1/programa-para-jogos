-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local w = display.contentWidth
local h = display.contentHeight

local options = {
    text = "Melqui",
    x = w*.5,
    y = h*.5,
    font = "Amiri",
    fontSize = 40
}

local texto = display.newText(options)

local systemFonts = native.getFontNames()

local searchString = ""

for i, fontName in ipairs(systemFonts) do
    local j, k = string.find(string.lower(fontName), string.lower( searchString ))

    if (j ~= nil ) then
        print("Font Names = "..tostring(fontName))
    end
end