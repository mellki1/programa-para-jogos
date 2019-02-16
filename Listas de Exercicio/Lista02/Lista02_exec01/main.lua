-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local w = display.contentWidth
local h = display.contentHeight
local background = display.newRect( w* .5, h*.5, 320, 480)

local botao = display.newRect(w * .5, h *.9, 100, 50)
botao:setFillColor(1, 1, 0)

local function mudaCor(e)
    local r = math.random( 0, 255)
    local g = math.random( 0, 255)
    local b = math.random( 0, 255)
    background:setFillColor(r/255, g/255, b/255)
end

botao:addEventListener("tap", mudaCor)