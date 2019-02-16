-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local w = display.contentWidth
local h = display.contentHeight
local numero = math.random(1, 25)

local opcoes = {
    text = numero,
    x = w * .5,
    y = h * .5,
    font = native.systemFont,
    fontSize = 64
}
local moldura = display.newRect(w * .5, h * .5, 100, 100)
local r = math.random( 0, 255)
local g = math.random( 0, 255)
local b = math.random( 0, 255)
moldura:setFillColor(r/255, g/255, b/255)

local texto = display.newText(opcoes)

local botao = display.newRoundedRect(w *.5, h *.9, 150, 50, 12)
botao:setFillColor(1, 1,0)

local function mudarCor(event)
    texto.text = math.random( 1, 50 )
    local r = math.random( 0, 255)
    local g = math.random( 0, 255)
    local b = math.random( 0, 255)
    moldura:setFillColor(r/255, g/255, b/255)
end

botao:addEventListener("tap", mudarCor)

local function mudaBotao(event)
    if event.isShake then
        local r = math.random( 0, 255)
        local g = math.random( 0, 255)
        local b = math.random( 0, 255)
        botao:setFillColor(r/255, g/255, b/255)
    end
end
Runtime:addEventListener("accelerometer", mudaBotao)