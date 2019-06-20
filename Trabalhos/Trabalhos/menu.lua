local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
local function mudacena1()
    local options = {
        effect = "zoomOutInFadeRotate",
        time = 300
    }
    composer.gotoScene("cena1", options)
end

local function mudacena2()
    local options = {
        effect = "zoomOutInFadeRotate",
        time = 300
    }
    composer.gotoScene("cena2", options)
end

local function mudacena3()
    local options = {
        effect = "zoomOutInFadeRotate",
        time = 300
    }
    composer.gotoScene("cena3", options)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local w = display.contentWidth -- representa a largura da tela
	local h = display.contentHeight -- altura da tela

	--Funcoes

	local touchEvent
	local freeMemory
	
	local localGroup = display.newGroup()
    local settingsGroup = display.newGroup()
	
	local background = display.newRect(sceneGroup, 0, 0, w, h)
	background.x = w * .5
    background.y = h * .5
	        

	local title = display.newImageRect(sceneGroup, "Images/title.png", 340, 60)
	title.x = w * .5
	title.y = 100
	title:scale(1.1, 3)
	local button = display.newImageRect(sceneGroup, "Images/button.png", 220, 50 )
	button.x = w *.5 
	button.y = h *.5 
    button.myName = "play"


	local buttonText = display.newText(sceneGroup, "Quebra Cuca", 0, 0, nil, 30 )
	buttonText:setFillColor(1, 1, 1)
	buttonText.x = button.x
    buttonText.y = button.y


	local button2 = display.newImageRect(sceneGroup, "Images/button.png", 220, 50 )
	button2.x = w *.5 
    button2.y = button.y + button.height*.5 + 40
    

	local buttonText2 = display.newText(sceneGroup, "Space", 0, 0, nil, 30 )
	buttonText2:setFillColor(1, 1, 1)
	buttonText2.x = button2.x
	buttonText2.y = button2.y

	local button3 = display.newImageRect(sceneGroup, "Images/button.png", 220, 50 )
	button3.x = w *.5 
	button3.y = button2.y + button2.height*.5 + 40

	local buttonText3 = display.newText(sceneGroup, "Creditos", 0, 0, nil, 30 )
	buttonText3:setFillColor(1, 1, 1)
	buttonText3.x = button3.x
	buttonText3.y = button3.y


    button:addEventListener("tap", mudacena1)
    button2:addEventListener("tap", mudacena2)
    button3:addEventListener("tap", mudacena3)

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene