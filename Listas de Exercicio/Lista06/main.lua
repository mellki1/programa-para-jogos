-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--http://goo.gl/BQmKUb
-- Your code here
--variaveis para o display
local w = display.contentWidth
local h = display.contentHeight
local background

--display
backgorund = display.newImage("ceu.jpg", w *.5, h * .5) --backgorund
backgorund:scale(1,2)
local plane = display.newImageRect("bird.png", 75, 75)
plane.x = w *.5
plane.y = h *.5

local buttons = {}
buttons[1] = display.newImageRect("seta1.png", 50, 50) --esquerda
buttons[1].x = 220 
buttons[1].y = 400 
buttons[1].myName = "esquerda"
buttons[2] = display.newImageRect("seta1.png", 50, 50) --cima
buttons[2].x = 250 
buttons[2].y = 370
buttons[2].rotation = 90
buttons[2].myName = "cima"
buttons[3] = display.newImageRect("seta1.png", 50, 50) --direita
buttons[3].x = 280 
buttons[3].y = 400
buttons[3].rotation = 180
buttons[3].myName = "direita"
buttons[4] = display.newImageRect("seta1.png", 50, 50) --baixo
buttons[4].x = 250 
buttons[4].y = 430
buttons[4].rotation = -90
buttons[4].myName = "baixo"

local passosY = 0
local passosX = 0
local function mover(e)
    if e.phase == "began" or e.phase == "moved" then
        if e.target.myName == "cima" then
            passosY = -3
            passosX = 0
            plane.rotation = -90
        elseif e.target.myName == "baixo" then
            passosY = 3
            passosX = 0
            plane.rotation = 90
        elseif e.target.myName == "direita" then
            passosY = 0
            passosX = 3
            plane.rotation = 0
        elseif e.target.myName == "esquerda" then
            passosY = 0
            passosX = -3
            plane.rotation = 180
            plane.rotation = 330
        end
    elseif e.phase == "ended" then
        passosX = 0
        passosY = 0
    end
end

local function update (e)
    if((plane.x + passosX) < 286) and ((plane.x + passosX) > 34) then
        plane.x = plane.x + passosX
    else
        passosX = 0
        passosY = 0
    end
        
    if((plane.y + passosY) < 480) and ((plane.y + passosY) > 0) then
        plane.y = plane.y + passosY
    else
        passosX = 0
        passosY = 0
    end
    
    
end

for i=1, #buttons do
    buttons[i]:addEventListener("touch", mover)
end

Runtime:addEventListener("enterFrame", update)