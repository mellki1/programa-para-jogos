local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 

local function mudacena()
    local options = {
        effect = "crossFade",
        time = 300
    }
    composer.removeScene( "cena2", true )
    composer.gotoScene("cena1", options)
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local w = display.contentWidth
    local h = display.contentHeight
    local back = display.newRect(sceneGroup, w*.5, h*.5, 500, 500)
    back: setFillColor(0.5,0.8,1)
    
    local imagem = display.newImage(sceneGroup, "Images/bg1.png", w *.5, h *.5)

    local button1= display.newRect(sceneGroup, w *.5, h *.9, 200, 30)
    button1:setFillColor(0, 1, 0)
    button1:addEventListener("tap", mudacena)
    local myText = display.newText(sceneGroup, "Voltar para o Game" ,w *.5, h *.9, native.systemFont, 16)
    myText:setFillColor(0,0,0)
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