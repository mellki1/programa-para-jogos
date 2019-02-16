-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--background 
local back = display.newRect(0, 0, 320, 480)
back.anchorX = 0
back.anchorY = 0
back:setFillColor(40/255, 44/255, 53/255)

--menu 1
local quad1 = display.newRect(40, 50, 100, 120)
quad1.anchorX = 0
quad1.anchorY = 0
quad1:setFillColor(226/255, 66/255, 66/255)

local line1 = display.newRect(40, 130, 100, 1)
line1.anchorX = 0
line1.anchorY = 0
line1:setFillColor(189/255, 48/255, 45/255, 0.7)

local menu1 = display.newImage("menu1.png", quad1.x + 50, quad1.y + 45)
local submenu1 = display.newText("DIALER", quad1.x + 50, quad1.y + 100, native.systemFont, 10)


--menu 2
local quad2 = display.newRect(180, 50, 100, 120)
quad2.anchorX = 0
quad2.anchorY = 0
quad2:setFillColor(38/255, 133/255, 213/255)

local line2 = display.newRect(180, 130, 100, 1)
line2.anchorX = 0
line2.anchorY = 0
line2:setFillColor(22/255, 107/255, 178/255, 0.7)

local menu2 = display.newImage("menu2.png", quad2.x + 50, quad2.y + 45)
local submenu2 = display.newText("SMS", quad2.x + 50, quad2.y + 100, native.systemFont, 10)
--menu 3
local quad3 = display.newRect(40, 200, 100, 120)
quad3.anchorX = 0
quad3.anchorY = 0
quad3:setFillColor(161/255, 98/255, 228/255)


local line3 = display.newRect(40, 280, 100, 1)
line3.anchorX = 0
line3.anchorY = 0
line3:setFillColor(117/255, 62/255, 179/255, 0.7)

local menu3 = display.newImage("menu3.png", quad3.x + 50, quad3.y + 45)
local submenu3 = display.newText("CAMERA", quad3.x + 50, quad3.y + 100, native.systemFont, 10)

--menu 4
local quad4 = display.newRect(180, 200, 100, 120)
quad4.anchorX = 0
quad4.anchorY = 0
quad4:setFillColor(52/255, 176/255, 139/255)

local line4 = display.newRect(180, 280, 100, 1)
line4.anchorX = 0
line4.anchorY = 0
line4:setFillColor(19/255, 129/255, 97/255, 0.7)

local menu4 = display.newImage("menu4.png", quad4.x + 50, quad4.y + 45)
local submenu4 = display.newText("EMAIL", quad4.x + 50, quad4.y + 100, native.systemFont, 10)

--menu 5
local quad5 = display.newRect(40, 350, 100, 120)
quad5.anchorX = 0
quad5.anchorY = 0
quad5:setFillColor(236/255, 126/255, 65/255)

local line5 = display.newRect(40, 429, 100, 1)
line5.anchorX = 0
line5.anchorY = 0
line5:setFillColor(179/255, 81/255, 31/255, 0.7)

local menu5 = display.newImage("menu5.png", quad5.x + 50, quad5.y + 45)
local submenu5 = display.newText("SEARCH", quad5.x + 50, quad5.y + 100, native.systemFont, 10)

--menu 6
local quad6 = display.newRect(180, 350, 100, 120)
quad6.anchorX = 0
quad6.anchorY = 0
quad6:setFillColor(177/255, 182/255, 54/255)

local line6 = display.newRect(180, 429, 100, 1)
line6.anchorX = 0
line6.anchorY = 0
line6:setFillColor(124/255, 125/255, 21/255, 0.7)

local menu6 = display.newImage("menu6.png", quad6.x + 50, quad6.y + 45)
local submenu6 = display.newText("APPS", quad6.x + 50, quad6.y + 100, native.systemFont, 10)
