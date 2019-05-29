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
local clik
local date = os.date("*t")

for i, v in pairs(date) do
    print(i, v)
end

print(date.hour)
print("Ituiutaba, "..os.date("%d").." de "..os.date("%B").." de "..os.date("%Y"))


local w = display.contentWidth
local h = display.contentHeight
local bg
local r1 = "r3.jpg"
local r2 = "r4.jpg"
local r3 = "r5.jpg"


local function mudabg()
    if cont > 2 then
        cont =  0
    end
    cont = cont+1
end

local button = display.newRect(w *.5, h *.0, 100, 30)
button:setFillColor(0, 1, 0)
button:addEventListener("tap", mudabg)
local function updateRelogio()
    local date = os.date("*t")
    if cont == 0 then
        bg = display.newImage("r3.jpg", w  * .5, w * .77)
        bg:scale( 0.9, 0.9 )
        local h = display.newText(date.hour, w*.14,w*.75, native.systemFont, 30)
        local m = display.newText(date.min, w*.51,w*.75, native.systemFont, 30)
        local s = display.newText(date.sec, w*.87,w*.75, native.systemFont, 30)
        
        h:setFillColor(0, 0.5, 1)
        m:setFillColor(0.4, 1, 0.9)
        s:setFillColor(0, 0, 0)
    elseif cont == 1 then
        bg = display.newImage("r4.jpg", w  * .5, w * .77)
        bg:scale( 0.6, 0.7 )
        local h = display.newText(date.hour, w*.13,w*.75, native.systemFont,80)
        local m = display.newText(date.min, w*.65,w*.76, native.systemFont, 28)
        local s = display.newText(date.sec, w*.90,w*.76, native.systemFont, 30)
        
        h:setFillColor(0, 0.5, 1)
        m:setFillColor(0.4, 0.1, 0.9)
        s:setFillColor(0, 0, 0)
    elseif cont == 2 then
        bg = display.newImage("r5.jpg", w  * .5, w * .77)
        bg:scale( 0.6, 0.8 )
        local h = display.newText(date.hour, w*.10,w*.75, native.systemFont, 30)
        local m = display.newText(date.min, w*.51,w*.75, native.systemFont, 30)
        local s = display.newText(date.sec, w*.85,w*.75, native.systemFont, 30)
        
        h:setFillColor(0, 0.5, 1)
        m:setFillColor(0.4, 0.1, 0.9)
        s:setFillColor(1, 1, 1)
    end
    --
end

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