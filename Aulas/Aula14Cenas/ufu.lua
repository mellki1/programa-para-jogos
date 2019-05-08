local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
-- função para mudar a cena
local function mudacena()
    local options = {
        effect = "flipFadeOutIn",
        time = 300
    }
    composer.gotoScene("iftm", options)
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

    local bg = display.newRect(w*.5, h*.5, w, h)
    bg:setFillColor(1, 1, 1)
    sceneGroup:insert(bg)
    local options = {
        text = "UFU",
        x =  w *.5,
        y = h *.5,
        font = "Consola",
        fontSize = 50
    }
    
    local texto = display.newText(options)
    texto:setFillColor(0, 1, 0)
    sceneGroup:insert(texto)
    
    local button = display.newRect(w *.5, h *.9, 100, 30)
    button:setFillColor(0, 1, 0)
    button:addEventListener("tap", mudacena)
    sceneGroup:insert(button)
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