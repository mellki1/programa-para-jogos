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
local x = 0
local y = 0
local fundo = display.newImage("back.png", w *.5, h * .5) 
local placar = display.newText(x, w*.5, h * .7, native.systemFont, 60)
local obstaculo = display.newImageRect("rain.png", 50, 50) 
local song = audio.loadStream( "rain.mp3" )

local backgroundMusicChannel = audio.play( song, { channel=1, loops=-1} )

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

--Adicionando fisica ao jogo
local physics = require("physics") -- importando a libary da fisica
physics.start() -- inicia a libary physics
physics.addBody(obstaculo, "dynamic")
physics.addBody(player, "static", {bounce = 0})


local buttons = {}
buttons[1] = display.newImageRect("seta1.png", 50, 50) --esquerda
buttons[1].x = w *.8
buttons[1].y = h *.8 
buttons[1].myName = "esquerda"

buttons[2] = display.newImageRect("seta1.png", 50, 50) --cima
buttons[2].x = w *.85
buttons[2].y = h *.67
buttons[2].rotation = 90
buttons[2].myName = "cima"

buttons[3] = display.newImageRect("seta1.png", 50, 50) --direita
buttons[3].x = w *.9
buttons[3].y = h *.8
buttons[3].rotation = 180
buttons[3].myName = "direita"

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
    if player.x >= w then
        player.x = w
    elseif player.x <= 0 then
        player.x = 0
    end
    x = x + 1
    if x == 60 then
        y = y + 1
        placar.text = y
        x = 0
    end
    
    if x == 0 then
        obstaculo.x = math.random( 0, 480 )
        obstaculo.y = -5
        obstaculo.isFixedRotation = true
    end

   player:play()
end

for i=1, #buttons do
    buttons[i]:addEventListener("touch", mover)
end

Runtime:addEventListener("enterFrame", update)

local function colidiu(e)
    --o que fazer quando detectar uma colisão
        x = 0
        y = 0
end

Runtime:addEventListener("collision", colidiu)
