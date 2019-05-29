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

local function mudacena4()
    local options = {
        effect = "zoomOutInFadeRotate",
        time = 300
    }
    composer.gotoScene("cena4", options)
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

    -- LISTA 01
    --Variaveis de altura e largura
    --nav bar
    local navbar = display.newRect(0, 0, 320, 50)
    navbar.anchorX = 0
    navbar.anchorY = 0
    navbar:setFillColor(40/255, 40/255, 40/255)
    sceneGroup:insert(navbar)

    local titulo = display.newText("Knock", 140, 25, native.systemFontBold, 32)
    local titulo2 = display.newText("On", 210, 26, native.systemFont, 32)

    sceneGroup:insert(titulo)
    sceneGroup:insert(titulo2)
    --Criando Menu 01
    local menu1 = display.newRect(0, 50, 160, 240)
    menu1.anchorX = 0
    menu1.anchorY = 0
    menu1:setFillColor(215/255, 78/255, 77/255)
    sceneGroup:insert(menu1)

    local quad1 = display.newRect(menu1.x + 80, menu1.y + 100, 30, 30)
    local submenu1 = display.newText("Stop the app", menu1.x + 80, menu1.y + 130, native.systemFont, 15)

    sceneGroup:insert(quad1)
    sceneGroup:insert(submenu1)
    --Criando Menu 02
    local menu2 = display.newRect(160, 50, 160, 240)
    menu2.anchorX = 0
    menu2.anchorY = 0
    menu2:setFillColor(215/255, 122/255, 123/255)
    sceneGroup:insert(menu2)

    local seethings = display.newImage("seethings.png", menu1.x + 240, menu1.y + 100)
    local submenu2 = display.newText("seethings", menu1.x + 240, menu1.y + 130, native.systemFont, 15)

    sceneGroup:insert(seethings)
    sceneGroup:insert(submenu2)

    --Criando Menu 03
    local menu3 = display.newRect(0, 290, 160, 240)
    menu3.anchorX = 0
    menu3.anchorY = 0
    menu3:setFillColor(13/255, 118/255, 149/255)
    sceneGroup:insert(menu3)


    local cadeado = display.newImage("cadeadoIcon.png", menu1.x + 80, menu1.y + 350)
    local submenu3 = display.newText("Get the pro version!", menu1.x + 80, menu1.y + 375, native.systemFont, 15)
    sceneGroup:insert(cadeado)
    sceneGroup:insert(submenu3)

    --Criando Menu 04
    local menu4 = display.newRect(160, 290, 160, 240)
    menu4.anchorX = 0
    menu4.anchorY = 0
    menu4:setFillColor(65/255, 146/255, 165/255)
    sceneGroup:insert(menu4)

    local mesage = display.newImage("mesageIcon.png", menu1.x + 240, menu1.y + 350)
    local submenu4 = display.newText("Try Floating", menu1.x + 240, menu1.y + 375, native.systemFont, 15)
    sceneGroup:insert(mesage)
    sceneGroup:insert(submenu4)



    menu1:addEventListener("tap", mudacena1)
    menu2:addEventListener("tap", mudacena2)
    menu3:addEventListener("tap", mudacena3)
    menu4:addEventListener("tap", mudacena4)
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