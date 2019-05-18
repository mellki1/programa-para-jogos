local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 

local function mudacena()
    local options = {
        effect = "zoomOutInFadeRotate",
        time = 300
    }
    composer.removeScene( "menu", true )
    composer.gotoScene("menu", options)
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
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

    local button = display.newRect(w *.5, h *.9, 100, 30)
    button:setFillColor(0, 1, 0)
    button:addEventListener("tap", mudacena)
    sceneGroup:insert(button)

    updateRelogio()
    timer.performWithDelay(1000, updateRelogio, 0)
    
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