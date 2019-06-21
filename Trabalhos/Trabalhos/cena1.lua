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
local vazio = {}
local i
local cont = 0
local text
local w = display.contentWidth
local h = display.contentHeight


local function compare( a, b )
    return a < b  -- Note "<" as the operator
end

local function embaralha()
    cont = 0
    text.text = "Movimentos: "..cont
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
        r = math.random( 1, 9 )
    end
    print(r)
    q[9].x = x[r]
    q[9].y = y[r]
    vazio[1] = q[3].x
    vazio[2] = q[3].y
    
    print("vazio x:"..vazio[1])
    print("vazio y:"..vazio[2])
end

local function ganhador()
    local options = {
        effect = "zoomOutIn",
        time = 300
    }
    composer.removeScene( "cena1", true )
    composer.gotoScene("cena3", options)
end
local function verificaGanhador()
   if((q[1].x== 58) and (q[1].y == 139) and ( q[2].x == 160) and (q[2].y == 139) and (q[3].x == 262) and (q[3].y == 139) and (q[4].x == 58) and (q[4].y == 240) and (q[5].x == 160) and (q[5].y == 240) and (q[6].x == 262) and (q[6].y == 240) and (q[7].x == 58) and (q[7].y == 341) and (q[8].x == 160) and (q[8].y == 341) and (q[9].x == 262) and (q[9].y == 341 ))then
        return 1
   else
        return 0
   end  
end

local function mostraImagem()
    local options = {
        effect = "zoomOutIn",
        time = 300
    }
    composer.removeScene( "cena1", true )
    composer.gotoScene("cena2", options)
end
local function clica(e)
    
    i = tonumber(e.target.myName)

    if((q[3].x == (q[i].x + 102) and q[3].y == q[i].y))then
        q[i].x = q[i].x + 102
        q[3].x = q[3].x - 102
        cont = cont + 1
        text.text = "Movimentos: "..cont
        if(verificaGanhador() == 1)then

        end
    elseif((q[3].x == (q[i].x - 102) and q[3].y == q[i].y))then
        q[i].x = q[i].x - 102
        q[3].x = q[3].x + 102
        cont = cont + 1
        text.text = "Movimentos: "..cont
        if(verificaGanhador() == 1)then

        end
    elseif((q[3].y == (q[i].y + 101) and q[3].x == q[i].x))then
        q[i].y = q[i].y + 101
        q[3].y = q[3].y - 101
        cont = cont + 1
    text.text = "Movimentos: "..cont
    if(verificaGanhador() == 1)then

    end
    elseif((q[3].y == (q[i].y - 101) and q[3].x == q[i].x))then
        q[i].y = q[i].y - 101
        q[3].y = q[3].y + 101
        cont = cont + 1
        text.text = "Movimentos: "..cont
        if(verificaGanhador() == 1)then

        end
    end
    --[[
    if(i == 1 and (q[3].x == (q[1].x + 102) and q[3].y == q[1].y))then
        q[1].x = q[1].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 1 and (q[3].x == (q[1].x - 102) and q[3].y == q[1].y))then
        q[1].x = q[1].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 1 and (q[3].y == (q[1].y + 101) and q[3].x == q[1].x))then
        q[1].y = q[1].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 1 and (q[3].y == (q[1].y - 101) and q[3].x == q[1].x))then
        q[1].y = q[1].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 2 and (q[3].x == (q[2].x + 102) and q[3].y == q[2].y))then
        q[2].x = q[2].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 2 and (q[3].x == (q[2].x - 102) and q[3].y == q[2].y))then
        q[2].x = q[2].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 2 and (q[3].y == (q[2].y + 101) and q[3].x == q[2].x))then
        q[2].y = q[2].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 2 and (q[3].y == (q[2].y - 101) and q[3].x == q[2].x))then
        q[2].y = q[2].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 4 and (q[3].x == (q[4].x + 102)  and q[3].y == q[4].y))then
        q[4].x = q[4].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 4 and (q[3].x == (q[4].x - 102) and q[3].y == q[4].y))then
        q[4].x = q[4].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 4 and (q[3].y == (q[4].y + 101)  and q[3].x == q[4].x))then
        q[4].y = q[4].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 4 and (q[3].y == (q[4].y - 101) and q[3].x == q[4].x))then
        q[4].y = q[4].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 5 and (q[3].x == (q[5].x + 102)  and q[3].y == q[5].y))then
        q[5].x = q[5].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 5 and (q[3].x == (q[5].x - 102) and q[3].y == q[5].y))then
        q[5].x = q[5].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 5 and (q[3].y == (q[5].y + 101)  and q[3].x == q[5].x))then
        q[5].y = q[5].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 5 and (q[3].y == (q[5].y - 101) and q[3].x == q[5].x))then
        q[5].y = q[5].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 6 and (q[3].x == (q[6].x + 102)  and q[3].y == q[6].y))then
        q[6].x = q[6].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 6 and (q[3].x == (q[6].x - 102) and q[3].y == q[6].y))then
        q[6].x = q[6].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 6 and (q[3].y == (q[6].y + 101)  and q[3].x == q[6].x))then
        q[6].y = q[6].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 6 and (q[3].y == (q[6].y - 101) and q[3].x == q[6].x))then
        q[6].y = q[6].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 7 and (q[3].x == (q[7].x + 102)  and q[3].y == q[7].y))then
        q[7].x = q[7].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 7 and (q[3].x == (q[7].x - 102) and q[3].y == q[7].y))then
        q[7].x = q[7].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 7 and (q[3].y == (q[7].y + 101)  and q[3].x == q[7].x))then
        q[7].y = q[7].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 7 and (q[3].y == (q[7].y - 101) and q[3].x == q[7].x))then
        q[7].y = q[7].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 8 and (q[3].x == (q[8].x + 102)  and q[3].y == q[8].y))then
        q[8].x = q[8].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 8 and (q[3].x == (q[8].x - 102) and q[3].y == q[8].y))then
        q[8].x = q[8].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 8 and (q[3].y == (q[8].y + 101)  and q[3].x == q[8].x))then
        q[8].y = q[8].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 8 and (q[3].y == (q[8].y - 101) and q[3].x == q[8].x))then
        q[8].y = q[8].y - 101
        q[3].y = q[3].y + 101
    end

    if(i == 9 and (q[3].x == (q[9].x + 102)  and q[3].y == q[9].y))then
        q[9].x = q[9].x + 102
        q[3].x = q[3].x - 102
    elseif(i == 9 and (q[3].x == (q[9].x - 102) and q[3].y == q[9].y))then
        q[9].x = q[9].x - 102
        q[3].x = q[3].x + 102
    elseif(i == 9 and (q[3].y == (q[9].y + 101)  and q[3].x == q[9].x))then
        q[9].y = q[9].y + 101
        q[3].y = q[3].y - 101
    elseif(i == 9 and (q[3].y == (q[9].y - 101) and q[3].x == q[9].x))then
        q[9].y = q[9].y - 101
        q[3].y = q[3].y + 101
    end
    ]]--
end

function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen


    local back = display.newRect(sceneGroup, w*.5, h*.5, 500, 500)
    back: setFillColor(0.5,0.8,1)
    local back1 = display.newRect(sceneGroup, w*.5, h*.5, 300, 300)
    back1: setFillColor(0,0,0,0.5)

    local contador = display.newRect(sceneGroup, w *.5, h *.1, 200, 30)
    contador:setFillColor(0, 0, 0)
    text = display.newText(sceneGroup, "Movimentos: "..cont,w *.5, h *.1, native.systemFont, 16)

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

    
   
    local button = display.newRect(sceneGroup, w *.2, h *.9, 100, 30)
    button:setFillColor(0, 1, 0)
    button:addEventListener("tap", embaralha)
    local myText = display.newText(sceneGroup, "Reeniciar" ,w *.2, h *.9, native.systemFont, 16)
    myText:setFillColor(0,0,0)

    local button1= display.newRect(sceneGroup, w *.8, h *.9, 100, 30)
    button1:setFillColor(0, 1, 0)
    button1:addEventListener("tap", mostraImagem)
    local myText = display.newText(sceneGroup, "Ver Imagem" ,w *.8, h *.9, native.systemFont, 16)
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