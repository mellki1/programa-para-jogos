-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--[[local circulo = display.newCircle(50, 50, 50)
circulo:setFillColor(0,1,0)

local function tocarCirculo(event)
    -- body
    if(event.phase == "began") then
        circulo:setFillColor(0,0,1)
    elseif(event.phase == "moved") then
        circulo:setFillColor(1,0,0)
    elseif(event.phase == "ended") then
        circulo:setFillColor(0,1,0)
    end
    --movendo o circulo
    circulo.x = event.x
    circulo.y = event.y
end
circulo:addEventListener("touch", tocarCirculo)]]--

--[[desenhando uma linha
local function desenhaLinha(event)
    if(event.phase == "ended") then
        local linha = display.newLine(event.xStart, event.yStart, event.x, event.y)
        linha.strokeWidth = 5
    end
end

Runtime:addEventListener("touch", desenhaLinha)]]--

local lista = {}
local nums = {}
x = display.contentWidth *.2
y = display.contentHeight *.5
for i=1, 4 do
    lista[i] = display.newRect(x*i, y, 50, 50)
    nums[i] = display.newText(i, lista[i].x, lista[i].y, native.systemFontBold, 32)
    nums[i]:setFillColor(0,0,0)
    lista[i].myName = i
end

local alvo = display.newText("0", display.contentWidth *.5, y - 100, native.systemFontBold, 32)

local function alvoTouch(e)
    alvo.text = e.target.myName
end

for i=1, 4 do
    lista[i]:addEventListener("touch", alvoTouch)
end