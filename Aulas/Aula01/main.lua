-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
--http://goo.gl/BQmKUb

--[[
Comentários em bloco em Lua.
]]--

local texto = display.newText("Hello World", 160, 10, native.systemFont, 32)
local moldura = display.newRect(texto.x, texto.y, 170, 40)
moldura:setFillColor(.48, 0, .6)
texto:toFront()

local w = display.contentWidth
local h = display.contentHeight

local opcoes = {
    text = "Ituiutaba",
    x = w * .5, --50% da tela
    y = h * .9, --60% da tela
    font = native.systemFontBold,
    fontSize = 64
}

local textonovo = display.newText(opcoes)
textonovo:setFillColor(1, 1, 0)

local quadrado1 = display.newRect(w * .5, h * .5, 100, 100)
quadrado1:setFillColor(1, 0, 0)

quadrado2 = display.newRect(w * .5, h * .5, 100, 100)
quadrado2:setFillColor(0, 0, 1, .7)
quadrado2.anchorX = 0
quadrado2.anchorY = 0
local r = 0 
local centro = display.newRect(w * .5, h * .5, 10, 10)

local function rotaciona(e)
    quadrado2:rotate(1)
    quadrado1:rotate(-1)
    if r <= 1 then
        r = r + .001
    else
        r = 0
    end
    quadrado2:setFillColor(0, 0, 1, r)
end

Runtime:addEventListener("enterFrame", rotaciona)