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
local x = {}
local y = {}
local b = {}
local i = 0
local o
local w = display.contentWidth
local h = display.contentHeight
local function clica(e)
    i = tonumber(e.target.myName)
    print(i)
    print(q[3].x)
    print(x[1])
    if (((i == 1) and (q[2].x ~= x[2])))then
        q[i].x = x[2]
        q[3].x = x[1]
    elseif(((i == 1) and (q[3].x == x[1])))then
        q[i].x = x[1]
        q[3].x = x[2]
    end
    if ((i == 2) and (q[3].x == x[3]))then
    
        q[i].x = x[3]
        q[3].x = x[2]
    
    elseif (((i == 2) and (q[3].x == x[2])))then
        q[i].x = x[2]
        q[3].x = x[3]
    end
end

function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen


    local back = display.newRect(sceneGroup, w*.5, h*.5, 500, 500)
    back: setFillColor(0.5,0.8,1)
    local back1 = display.newRect(sceneGroup, w*.5, h*.5, 300, 300)
    back1: setFillColor(0,0,0,0.5)

    x[1] = 58
    y[1] = 139
    q[1] = display.newImage(sceneGroup, "Images/i1.png", x[1], y[1])

    x[2] = 160
    y[2] = 139
    q[2]= display.newImage(sceneGroup, "Images/i2.png", x[2], y[2])
    
    x[3] = 262
    y[3] = 139
    q[3] = display.newImage(sceneGroup, "Images/i3.png", x[3], y[3])
    --q[3].alpha = 0.6

    x[4] = 58
    y[4] = 240
    q[4] = display.newImage(sceneGroup, "Images/i4.png",x[4], y[4])
   
    x[5] = 160
    y[5] = 240
    q[5] = display.newImage(sceneGroup, "Images/i5.png", x[5], y[5])

    x[6] = 262
    y[6] = 240
    q[6] = display.newImage(sceneGroup, "Images/i6.png",x[6], y[6])
   
    x[7] = 58
    y[7] = 341
    q[7] = display.newImage(sceneGroup, "Images/i7.png",x[7], y[7])

    x[8] = 160
    y[8] = 341
    q[8] = display.newImage(sceneGroup, "Images/i8.png",x[8], y[8])
 
    x[9] = 262
    y[9] = 341
    q[9] = display.newImage(sceneGroup, "Images/i9.png",x[9], y[9])

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