-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local w = display.contentWidth
local h = display.contentHeight
local fundo = display.newImage("back.png", w *.5, h * .5) 



local sheetData = {
    width = 115,
    height = 110,
    numFrames = 15,
}

local sheet = graphics.newImageSheet("bird.png", sheetData)

local sequeceData = {
    {name = "parado", start = 5, count = 1, time = 0, loopCount = 1},
    {name = "moveDireita", start = 6, count = 9, time = 300, loopCount = 0},

}

local player = display.newSprite(sheet, sequeceData)
player.x = w *.2
player.y = h *.5
player.myName = "player"

player:setSequence("parado")

local buttons = {}
buttons[1] = display.newImageRect("seta1.png", 50, 50) --esquerda
buttons[1].x = w *.8
buttons[1].y = h *.8 
buttons[1].myName = "esquerda"

buttons[2] = display.newImageRect("seta1.png", 50, 50) --direita
buttons[2].x = w *.9
buttons[2].y = h *.8
buttons[2].rotation = 180
buttons[2].myName = "direita"

local passosY = 0
local passosX = 0
local function mover(e)
    if e.phase == "began" or e.phase == "moved" then
        if e.target.myName == "direita" then
            passosY = 0
            passosX = 3
            player.xScale = 1
            player:setSequence("moveDireita")
        elseif e.target.myName == "esquerda" then
            passosY = 0
            passosX = -3
            player.xScale = -1
            player:setSequence("moveDireita")
        end
    elseif e.phase == "ended" then
        passosX = 0
        passosY = 0
        player:setSequence("parado")
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
