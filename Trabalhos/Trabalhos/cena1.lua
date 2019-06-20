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

local q = {}
local x
local w = display.contentWidth
local h = display.contentHeight
local function clica(e)
    i = tonumber(e.target.myName)
    q[i]:setFillColor(0,0,0)
    
end

function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen


    local back = display.newRect(sceneGroup, w*.5, h*.5, 500, 500)
    back: setFillColor(0.5,0.8,1)
    
    q[1] = display.newImage(sceneGroup, "Images/i1.png", w*.18,h*.29 , 100, 100)

    q[2]= display.newImage(sceneGroup, "Images/i2.png", w*.50,h*.29 , 100, 100)
    

    q[3] = display.newRect(sceneGroup, w*.82,h*.29 , 100, 100)
    q[3]:setFillColor(0,0,0)

    q[4] = display.newImage(sceneGroup, "Images/i4.png",w*.18,h*.50 ,100,100)
   

    q[5] = display.newImage(sceneGroup, "Images/i5.png", w*.50,h*.50 ,100,100)


    q[6] = display.newImage(sceneGroup, "Images/i6.png",w*.82,h*.50 ,100,100)
   

    q[7] = display.newImage(sceneGroup, "Images/i7.png",w*.18,h*.71 ,100,100)


    q[8] = display.newImage(sceneGroup, "Images/i8.png",w*.50,h*.71 ,100,100)
 

    q[9] = display.newImage(sceneGroup, "Images/i9.png",w*.82,h*.71 ,100,100)
    x = 3
    --dando nome as posicoes
    for i=1, 9 do
        q[i].myName = tostring(i)
        print(q[i].myName)
    end

    for i=1, 9 do 
        q[i]:addEventListener("tap", clica)
    end

    

    local button = display.newRect(sceneGroup, w *.5, h *.9, 100, 30)
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