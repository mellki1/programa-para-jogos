-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


--background do app
local background = display.newRect(0, 0, 320, 480)
background.anchorX = 0
background.anchorY = 0
background:setFillColor(0/255, 0/255, 0/255)

--Quad1
local quad1 = display.newRect(0, 0, 320, 80)
quad1.anchorX = 0
quad1.anchorY = 0
quad1:setFillColor(90/255, 190/255, 57/255)

local txt1 = display.newText("LEO", 120, 10, native.systemFontBold, 50)
txt1.anchorX = 0
txt1.anchorY = 0

--Quad2
local quad2 = display.newRect(0, quad1.y + 80, 320, 80)
quad2.anchorX = 0
quad2.anchorY = 0
quad2:setFillColor(101/255, 206/255, 113/255)


local txt2 = display.newText("LUKAS", 80 , quad2.y + 10, native.systemFontBold, 50)
txt2.anchorX = 0
txt2.anchorY = 0
--Quad3
local quad3 = display.newRect(0, quad2.y + 80, 320, 80)
quad3.anchorX = 0
quad3.anchorY = 0
quad3:setFillColor(65/255, 152/255, 218/255)

local txt3 = display.newText("SERENA", 55 , quad3.y + 10, native.systemFontBold, 50)
txt3.anchorX = 0
txt3.anchorY = 0

--Quad4
local quad4 = display.newRect(0, quad3.y + 80, 320, 80)
quad4.anchorX = 0
quad4.anchorY = 0
quad4:setFillColor(51/255, 73/255, 92/255)

local txt4 = display.newText("MO", 122, quad4.y + 10, native.systemFontBold, 50)
txt4.anchorX = 0
txt4.anchorY = 0
--Quad5
local quad5 = display.newRect(0, quad4.y + 80, 320, 80)
quad5.anchorX = 0
quad5.anchorY = 0
quad5:setFillColor(77/255, 163/255, 255/255)

local txt5 = display.newText("JASON", 65 , quad5.y + 10, native.systemFontBold, 50)
txt5.anchorX = 0
txt5.anchorY = 0
--Quad6             
local quad6 = display.newRect(0, quad5.y + 80, 320, 80)
quad6.anchorX = 0
quad6.anchorY = 0
quad6:setFillColor(242/255, 197/255,73/255)

local txt6 = display.newText("+", 135 , quad6.y + 10, native.systemFontBold, 50)
txt6.anchorX = 0
txt6.anchorY = 0
--Quad7
local quad7 = display.newRect(0, quad6.y + 80, 320, 80)
quad7.anchorX = 0
quad7.anchorY = 0
quad7:setFillColor(155/255, 89/255, 182/255)