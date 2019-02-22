-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local quadrados = {}

--Variavel de localizacao
local w = display.contentWidth
local h = display.contentHeight

--[[
quadrados[1] = display.newRect(w *.2, h *.5, 50, 50)
quadrados[2] = display.newRect(w *.4, h *.5, 50, 50)
quadrados[3] = display.newRect(w *.6, h *.5, 50, 50)
quadrados[4] = display.newRect(w *.8, h *.5, 50, 50)
]]--

--Cria quadrados
for i=1, 4 do
    quadrados[i] = display.newRect(w * (i*2)/10, h *.5, 50, 50)
end

--adiciona nome aos quadradados
for i=1, #quadrados do
    quadrados[i].myName = tostring(i)
end

local contaTap = 0
local function clica(event)
    print("Nome do objeto: " .. event.target.myName)
    print("Tap x: " .. event.x .. ". Tap y: " .. event.y .. ".")
    print("Quad x: " .. event.target.x .. ". Quad y: " .. event.target.y .. ".")
    print("Quantidade de taps: " .. event.numTaps)
    contaTap = contaTap + 1
    print(contaTap)
    event.target:setFillColor(1, 0, 0)
    if (event.numTaps) == 2 then
        event.target:setFillColor(1, 1, 1)
    end
end

for i=1, #quadrados do
    quadrados[i]:addEventListener("tap", clica)
end