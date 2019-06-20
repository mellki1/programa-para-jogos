local _M = {} 

--Variaveis--------------->

local director = require("Sources.director")

local w = display.contentWidth -- representa a largura da tela
local h = display.contentHeight -- altura da tela

local j = 1

--Imagem
local background

--Funcoes

local touchEvent

--Funcoes Principais
function _M.new()
	local localGroup = display.newGroup()
	
	local q1 = display.newRect(w*.19,h*.30 ,100,100)
	q1: setFillColor(0.1,0.8,0.5)

	local q2 = display.newRect(w*.50,h*.30 ,100,100)
	q2: setFillColor(1,0,0)

	local q3 = display.newRect(w*.81,h*.30 ,100,100)
	q3: setFillColor(1,1,0)

	local q4 = display.newRect(w*.19,h*.50 ,100,100)
	q4: setFillColor(0,1,0)

	local q5 = display.newRect(w*.50,h*.50 ,100,100)
	q5: setFillColor(0.1,0.8,0.5)

	local q6 = display.newRect(w*.81,h*.50 ,100,100)
	q6: setFillColor(1,0,0)

	local q7 = display.newRect(w*.19,h*.70 ,100,100)
	q7: setFillColor(0.1,0.8,0.5)

	local q8 = display.newRect(w*.50,h*.70 ,100,100)
	q8: setFillColor(1,0,0)

	local q9 = display.newRect(w*.81,h*.70 ,100,100)

	return localGroup
end

return _M