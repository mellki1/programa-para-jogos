local _M = {} 

--Principais Funcoes do menu
function _M.new()
	--Variaveis

	local director = require("Sources.director")

	local w = display.contentWidth -- representa a largura da tela
	local h = display.contentHeight -- altura da tela

	--Funcoes

	local touchEvent
	local freeMemory
	
	local localGroup = display.newGroup()
    local settingsGroup = display.newGroup()
	
	local background = display.newRect(localGroup, 0, 0, w, h)
	background.x = w * .5
	background.y = h * .5
	        

	local title = display.newImageRect(localGroup, "Images/title.png", 340, 60)
	title.x = w * .5
	title.y = 100
	title:scale(1.1, 3)
	local button = display.newImageRect(localGroup, "Images/button.png", 220, 50 )
	button.x = w *.5 
	button.y = h *.5 
	button.myName = "play"

	local buttonText = display.newText(localGroup, "Quebra Cuca", 0, 0, nil, 30 )
	buttonText:setFillColor(1, 1, 1)
	buttonText.x = button.x
	buttonText.y = button.y

	local button2 = display.newImageRect(localGroup, "Images/button.png", 220, 50 )
	button2.x = w *.5 
	button2.y = button.y + button.height*.5 + 40

	local buttonText2 = display.newText(localGroup, "Space", 0, 0, nil, 30 )
	buttonText2:setFillColor(1, 1, 1)
	buttonText2.x = button2.x
	buttonText2.y = button2.y

	local button3 = display.newImageRect(localGroup, "Images/button.png", 220, 50 )
	button3.x = w *.5 
	button3.y = button2.y + button2.height*.5 + 40

	local buttonText3 = display.newText(localGroup, "Creditos", 0, 0, nil, 30 )
	buttonText3:setFillColor(1, 1, 1)
	buttonText3.x = button3.x
	buttonText3.y = button3.y

	touchEvent = function(event)
		local t = event.target
		if t.myName == "play" then 
			freeMemory()
			director:changeScene("Sources.gameplay")
		end
	end

	freeMemory = function()
		display.remove(localGroup)
		localGroup = nil 
	end

	button:addEventListener("tap", touchEvent )

	return localGroup
end

return _M