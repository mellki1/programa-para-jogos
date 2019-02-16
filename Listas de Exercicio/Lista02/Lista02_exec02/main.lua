-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local cont = 0
local quad
local w = display.contentWidth
local h = display.contentHeight


local function gerarQuad()
    
    local x = math.random(0, 320)
    local y = math.random(0, 480)
    local w = math.random(10, 100)
    local h = math.random(10, 100)
    quad = display.newRect(x, y, w, h)
end

local function mudarCor()
    local r = math.random( 0, 255)
    local g = math.random( 0, 255)
    local b = math.random( 0, 255)
    quad:setFillColor(r/255, g/255, b/255)
end

local botao = display.newRoundedRect(w *.5, h *.9, 150, 50, 12)
botao:setFillColor(1, 1,0) 

local function botaoR(event)
    while (cont <= 10) do
        gerarQuad()
        mudarCor()
        cont = cont + 1
    end
    cont = 0
end
 
botao:addEventListener("tap", botaoR)  

