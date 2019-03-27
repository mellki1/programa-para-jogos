-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local w = display.contentWidth
local h = display.contentHeight
local fundo = display.newRect(w*.5, h*.5, 320, 480)
fundo:setFillColor(1, 1, 1)


local sheetData = {
    width = 45,
    height = 63,
    numFrames = 12,
}

local sheet = graphics.newImageSheet("gaara.png", sheetData)

local sequeceData = {
    {name = "paradoBaixo", start = 1, count = 1, time = 0, loopCount = 1},
    {name = "paradoEsquerda", start = 4, count = 1, time = 0, loopCount = 1},
    {name = "paradoDireita", start = 7, count = 1, time = 0, loopCount = 1},
    {name = "paradoCima", start = 10, count = 1, time = 0, loopCount = 1},

    {name = "moveBaixo", start = 2, count = 2, time = 300, loopCount = 0},
    {name = "moveEsquerda", start = 5, count = 2, time = 250, loopCount = 0},
    {name = "moveDireita", start = 8, count = 2, time = 250, loopCount = 0},
    {name = "moveCima", start = 11, count = 2, time = 300, loopCount = 0},
}

local player = display.newSprite(sheet, sequeceData)
player.x = w *.5
player.y = h *.5
player.myName = "player"

player:setSequence("paradoDireita")

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
            player:setSequence("moveCima")
        elseif e.target.myName == "baixo" then
            passosY = 3
            passosX = 0
            player:setSequence("moveBaixo")
        elseif e.target.myName == "direita" then
            passosY = 0
            passosX = 3
            player:setSequence("moveDireita")
        elseif e.target.myName == "esquerda" then
            passosY = 0
            passosX = -3
            player:setSequence("moveEsquerda")
        end
    elseif e.phase == "ended" then
        passosX = 0
        passosY = 0
        if e.target.myName == "cima" then
            player:setSequence("paradoCima")
        elseif e.target.myName == "baixo" then
            player:setSequence("paradoBaixo")
        elseif e.target.myName == "direita" then
            player:setSequence("paradoDireita")
        elseif e.target.myName == "esquerda" then
            player:setSequence("paradoEsquerda")
        end
    end
end

local function update (e)
   player.x = player.x + passosX
   player.y = player.y + passosY
   
    if player.x > (w + 50) then
        player.x = -20
    elseif player.x < -25 then
        player.x = w + 50
    end

    if player.y > (h+50) then
        player.y = -20
    elseif player.y < -25 then
        player.y = h + 50
    end
    player:play()
end

for i=1, #buttons do
    buttons[i]:addEventListener("touch", mover)
end

Runtime:addEventListener("enterFrame", update)