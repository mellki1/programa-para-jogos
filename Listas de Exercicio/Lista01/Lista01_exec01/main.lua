-----------------------------------------------------------------------------------------
--
-- main.lua
--https://docs.google.com/document/d/e/2PACX-1vQg0X_NcBVHqwEIBTj_53Fxvu9JydWWGz27Igw4qkjD-YsKyMamm-sHRBMW-B7neCw_QhHuByrOV7vb/pub
-----------------------------------------------------------------------------------------

-- LISTA 01
--Variaveis de altura e largura
local w = display.contentWidth
local h = display.contentHeight
--nav bar
local navbar = display.newRect(0, 0, 320, 50)
navbar.anchorX = 0
navbar.anchorY = 0
navbar:setFillColor(40/255, 40/255, 40/255)

local titulo = display.newText("Knock", 140, 25, native.systemFontBold, 32)
local titulo2 = display.newText("On", 210, 26, native.systemFont, 32)

--Criando Menu 01
local menu1 = display.newRect(0, 50, 160, 240)
menu1.anchorX = 0
menu1.anchorY = 0
menu1:setFillColor(215/255, 78/255, 77/255)

local quad1 = display.newRect(menu1.x + 80, menu1.y + 100, 30, 30)
local submenu1 = display.newText("Stop the app", menu1.x + 80, menu1.y + 130, native.systemFont, 15)

--Criando Menu 02
local menu2 = display.newRect(160, 50, 160, 240)
menu2.anchorX = 0
menu2.anchorY = 0
menu2:setFillColor(215/255, 122/255, 123/255)

local seethings = display.newImage("seethings.png", menu1.x + 240, menu1.y + 100)
local submenu2 = display.newText("seethings", menu1.x + 240, menu1.y + 130, native.systemFont, 15)

--Criando Menu 03
local menu3 = display.newRect(0, 290, 160, 240)
menu3.anchorX = 0
menu3.anchorY = 0
menu3:setFillColor(13/255, 118/255, 149/255)

local cadeado = display.newImage("cadeadoIcon.png", menu1.x + 80, menu1.y + 350)
local submenu3 = display.newText("Get the pro version!", menu1.x + 80, menu1.y + 375, native.systemFont, 15)

--Criando Menu 04
local menu4 = display.newRect(160, 290, 160, 240)
menu4.anchorX = 0
menu4.anchorY = 0
menu4:setFillColor(65/255, 146/255, 165/255)

local mesage = display.newImage("mesageIcon.png", menu1.x + 240, menu1.y + 350)
local submenu4 = display.newText("Try Floating", menu1.x + 240, menu1.y + 375, native.systemFont, 15)

--[[Menu NAvegação
local navbar2 = display.newRect(0, 480, 320, 50)
navbar2.anchorX = 0
navbar2.anchorY = 0
navbar2:setFillColor(0/255, 0/255, 0/255)
local home = display.newImage("homeIcon.png", menu1.x + 160, menu1.y + 450)
local back = display.newImage("backIcon.png", menu1.x + 80, menu1.y + 450)
local mult = display.newImage("multIcon.png", menu1.x + 240, menu1.y + 450)
--]]