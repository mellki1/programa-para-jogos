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
local freeMemory

--Funcoes Principais
function _M.new()
	local localGroup = display.newGroup()
	
	local background = display.newRect(localGroup, 0, 0, w, h)
	background.x = w * .5
	background.y = h * .5
	background:setFillColor(255, 255, 255)         

	local button = display.newImageRect(localGroup, "Images/button.png", 150, 50 )
	button.x = w *.5 
	button.y = h *.5 

	local buttonText = display.newText(localGroup, "Má oee", 0, 0, nil, 30 )
	buttonText.x = button.x
	buttonText.y = button.y

	local test = function()
		freeMemory()
		director:changeScene("Sources.menu")
	end

	timer.performWithDelay(2000, test)

	freeMemory = function()
		display.remove(localGroup)
		localGroup = nil 
	end

	return localGroup
end

return _M