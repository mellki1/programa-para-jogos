-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local cont = 0
local date = os.date("*t")

for i, v in pairs(date) do
    print(i, v)
end

print(date.hour)
print("Ituiutaba, "..os.date("%d").." de "..os.date("%B").." de "..os.date("%Y"))

local w = display.contentWidth
local h = display.contentHeight

local bg = display.newImage("r.jpg", w  * .5, h * .5)
bg:scale( 0.25, 0.29 )
local bg1 = display.newImage("r1.jpg", w  * .5, h * .5)
bg1:scale( 0.70, 0.70 )
local bg2 = display.newImage("r2.jpg", w  * .5, h * .5)
bg2:scale( 0.28, 0.29 )

bg1.isVisible = false
bg2.isVisible = false

local ponteiroSegundos = display.newLine(w*.5, h*.5, w*.5, 100)
ponteiroSegundos.strokeWidth = 2
ponteiroSegundos:setStrokeColor( 1, 0, 1 )

local ponteiroMinutos = display.newLine(w*.5, h*.5, w*.5, 100)
ponteiroMinutos.strokeWidth = 2
ponteiroMinutos:setStrokeColor( 1, 1, 0 )

local ponteiroHoras = display.newLine(w*.5, h*.5, w*.5, 150)
ponteiroHoras.strokeWidth = 2
ponteiroHoras:setStrokeColor( 0, 1, 0 )

local function mudabg()
    if cont == 0 then
        cont = cont + 1
    end
    if cont == 1 then
        bg.isVisible = false
        bg1.isVisible = true
        bg2.isVisible = false
        cont = cont + 1
    elseif(cont == 2) then
        bg1.isVisible = false
        bg2.isVisible = true
        cont = 0
    end
end

local button = display.newRect(w *.5, h *.0, 100, 30)
button:setFillColor(0, 1, 0)
button:addEventListener("tap", mudabg)
local function updateRelogio()
    local date = os.date("*t")
    ponteiroSegundos.rotation = date.sec * 6
    ponteiroMinutos.rotation = date.min * 6.1
    ponteiroHoras.rotation = date.hour * 30 + (date.min * .5)
    --
end

updateRelogio()
timer.performWithDelay(1000, updateRelogio, 0)
