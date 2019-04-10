-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local physics = require("physics")
physics.start()
local w = display.contentWidth
local h = display.contentHeight
local fundo = display.newRect(w*.5, h*.5, 320, 480)
fundo:setFillColor(1, 1, 1)

--local bola = display.newCircle(w*.5, h*.5, 25)
--bola:setFillColor(0, 0, 1)

local plane = display.newImageRect("plane.jpg", 75, 75)
plane.myName = "plane"
plane.x = w *.5
plane.y = h *.5

physics.addBody(plane, "dynamic")
physics.setGravity(0,0)

local barreira = display.newRect(300, 200, 50, 200)
barreira:setFillColor(1,0,0)
barreira.myName = "barreira"
physics.addBody(barreira, "static")


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
        end
    elseif e.phase == "ended" then
        passosX = 0
        passosY = 0
    end
end

local function update (e)
    --bola.x = bola.x + passosX
    --bola.y = bola.y + passosY
    plane.x = plane.x + passosX
    plane.y = plane.y + passosY
    --controlar os limites da tela
end

for i=1, #buttons do
    buttons[i]:addEventListener("touch", mover)
end

Runtime:addEventListener("enterFrame", update)

local function colidiu(e)
    --o que fazer quando detectar uma colisão
    if(e.phase == "began") then
        local quad = display.newRect(plane.x+32, plane.y, 20, 20)
        quad:setFillColor(0.6, 0.4, 0)
        print("began: ".. e.object1.myName.." e "..e.object2.myName)
    elseif(e.phase == "ended") then
        print("ended: ".. e.object1.myName.." e "..e.object2.myName)
        
    end
end

Runtime:addEventListener("collision", colidiu)