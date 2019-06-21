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
local vazio
local i
local w = display.contentWidth
local h = display.contentHeight


local function compare( a, b )
    return a < b  -- Note "<" as the operator
end

local function embaralha()
    i = math.random( 1,9)
    q[1].x = x[i]
    q[1].y = y[i]
    print(i)

    local j = math.random( 1,9 )
    while(i == j)do
        j = math.random( 1, 9 )
    end
    print(j)
    q[2].x = x[j]
    q[2].y = y[j]

    local k = math.random( 1,9 )
    while(k == i or k==j)do
        k = math.random( 1, 9 )
    end
    print(k)
    q[3].x = x[k]
    q[3].y = y[k]

    local l = math.random( 1,9 )
    while(l == i or l==j or l == k)do
        l = math.random( 1, 9 )
    end
    print(l)
    q[4].x = x[l]
    q[4].y = y[l]

    local m = math.random( 1,9 )
    while(m == i or m == j or m == k or m == l)do
        m = math.random( 1, 9 )
    end
    print(m)
    q[5].x = x[m]
    q[5].y = y[m]

    local n = math.random( 1,9 )
    while(n == i or n == j or n == k or n == l or n ==m)do
        n = math.random( 1, 9 )
    end
    print(n)
    q[6].x = x[n]
    q[6].y = y[n]

    local o = math.random( 1,9 )
    while(o == i or o == j or o == k or o == l or o ==m or o == n)do
        o = math.random( 1, 9 )
    end
    print(o)
    q[7].x = x[o]
    q[7].y = y[o]

    local p = math.random( 1,9 )
    while(p == i or p == j or p == k or p == l or p == m or p == n or p == o)do
        p = math.random( 1, 9 )
    end
    print(p)
    q[8].x = x[p]
    q[8].y = y[p]

    local r = math.random( 1,9 )
    while(r == i or r == j or r == k or r == l or r == m or r == n or r == o or r == p)do
        q = math.random( 1, 9 )
    end
    print(p)
    q[9].x = x[q]
    q[9].y = y[q]

end



local function clica(e)
    i = tonumber(e.target.myName)
    
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

    x[2] = 160
    y[2] = 139
    
    x[3] = 262
    y[3] = 139

    x[4] = 58
    y[4] = 240
    
    x[5] = 160
    y[5] = 240
    
    x[6] = 262
    y[6] = 240
    
    x[7] = 58
    y[7] = 341
    
    x[8] = 160
    y[8] = 341
    
    x[9] = 262
    y[9] = 341

    q[1] = display.newImage(sceneGroup, "Images/i1.png", x[1], y[1])
    
    q[2]= display.newImage(sceneGroup, "Images/i2.png", x[2], y[2])
    
    q[3] = display.newImage(sceneGroup, "Images/i3.png", x[3], y[3])
    q[3].alpha = 0.6

    q[4] = display.newImage(sceneGroup, "Images/i4.png", x[4], y[4])
    
    q[5] = display.newImage(sceneGroup, "Images/i5.png", x[5], y[5])
   
    q[6] = display.newImage(sceneGroup, "Images/i6.png", x[6], y[6])
   
    q[7] = display.newImage(sceneGroup, "Images/i7.png", x[7], y[7])

    q[8] = display.newImage(sceneGroup, "Images/i8.png", x[8], y[8])
 
    q[9] = display.newImage(sceneGroup, "Images/i9.png", x[9], y[9])

    --dando nome as posicoes
    for i=1, 9 do
        q[i].myName = tostring(i)
    end
    embaralha()
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