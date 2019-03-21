-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--http://goo.gl/BQmKUb
-- Your code here
local backgorund
local contador = 1
local placar
local w = display.contentWidth
local h = display.contentHeight
local posicoesX = {}
local posicoesO = {}
local b = {}
local vetor = {}
local cont = 0
local o = 0
local x = 0
local y = 0
local random
local espera1 = 0
local espera2 = 0
--variaveis de erros e acertos
local player = 0
local pc = 0

local function d(event)
    --display
    bac = display.newImage("branco.png", w *.5, h * .5)
    backgorund = display.newImage("jogoDaVelha.png", w *.5, h * .5) --backgorund
    backgorund:scale(0.5,0.5)
    placar = display.newText("Player "..player.." x "..pc.." APP", w *.5, h * .0, native.systemFont, 32)--Placar do game
    placar:setFillColor(0,0,0)

    --Desenhando X
    --linha 1 
    posicoesX[1] = display.newImage("x.png", w *.15, h * .25)
    posicoesX[2] = display.newImage("x.png", w *.5, h * .25)
    posicoesX[3] = display.newImage("x.png", w *.85, h * .25)
    --Linha 2
    posicoesX[4] = display.newImage("x.png", w *.15, h * .5)
    posicoesX[5] = display.newImage("x.png", w *.5, h * .5)
    posicoesX[6] = display.newImage("x.png", w *.85, h * .5)
    --linha 3
    posicoesX[7] = display.newImage("x.png", w *.15, h * .75)
    posicoesX[8] = display.newImage("x.png", w *.5, h * .75)
    posicoesX[9] = display.newImage("x.png", w *.85, h * .75)

    --deixando os X invisiveis
    for i = 1, 9 do
        posicoesX[i].isVisible = false
    end

    --Desenhando O
    --linha 1 
    posicoesO[1] = display.newImage("o.png", w *.15, h * .25)
    posicoesO[2] = display.newImage("o.png", w *.5, h * .25)
    posicoesO[3] = display.newImage("o.png", w *.85, h * .25)
    --Linha 2
    posicoesO[4] = display.newImage("o.png", w *.15, h * .5)
    posicoesO[5] = display.newImage("o.png", w *.5, h * .5)
    posicoesO[6] = display.newImage("o.png", w *.85, h * .5)
    --linha 3
    posicoesO[7] = display.newImage("o.png", w *.15, h * .75)
    posicoesO[8] = display.newImage("o.png", w *.5, h * .75)
    posicoesO[9] = display.newImage("o.png", w *.85, h * .75)
    for i = 1, 9 do
        posicoesO[i].isVisible = false
    end
    --deixando quadro branco
    --linha 1 
    b[1] = display.newImage("b.png", w *.15, h * .25)
    b[2] = display.newImage("b.png", w *.5, h * .25)
    b[3] = display.newImage("b.png", w *.85, h * .25)
    --Linha 2
    b[4] = display.newImage("b.png", w *.15, h * .5)
    b[5] = display.newImage("b.png", w *.5, h * .5)
    b[6] = display.newImage("b.png", w *.85, h * .5)
    --linha 3
    b[7] = display.newImage("b.png", w *.15, h * .75)
    b[8] = display.newImage("b.png", w *.5, h * .75)
    b[9] = display.newImage("b.png", w *.85, h * .75)
    

    for i=1, 9 do
        vetor[i] = ""
        print("vetor["..i.."]")
        print(vetor[i])
    end
    
end

if contador == 1 then
    d()
    --dando nome as posicoes
    for i=1, 9 do
        posicoesX[i].myName = tostring(i)
        posicoesO[i].myName = tostring(i)
        b[i].myName = tostring(i)
    end
    contador = 2
end


--funcionalidades
--verificando ganhador do game
local function verificaGanhador(e)

    if(cont % 2 == 0) then
        vetor[e] = "X"
    else
        vetor[e] = "O"
    end
    cont = cont + 1
    for i=1, 9 do
        print(vetor[i])
    end
    
    --possibilidades de vitorias

    --primeira possibilidade de vitoria
    if (string.ends(vetor[1], "X") == true) and (string.ends(vetor[2], "X") == true) and (string.ends(vetor[3], "X") == true) then
        print("primeira possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --timer.performWithDelay(500, dxBranco, 1)
        
    elseif (string.ends(vetor[1], "O") == true) and (string.ends(vetor[2], "O") == true) and (string.ends(vetor[3], "O") == true) then
        print("primeira possibilidade de vitoria para O")
        pc = pc + 1
        cont = 0
        --dxBranco()
    
    --segunda possibilidade de vitoria
    elseif (string.ends(vetor[4], "X") == true) and (string.ends(vetor[5], "X") == true) and (string.ends(vetor[6], "X") == true) then
        print("segunda possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()
    elseif (string.ends(vetor[4], "O") == true) and (string.ends(vetor[5], "O") == true) and (string.ends(vetor[6], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()

    --terceira possibilidade de vitoria
    elseif (string.ends(vetor[7], "X") == true) and (string.ends(vetor[8], "X") == true) and (string.ends(vetor[9], "X") == true) then
        print("terceira possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()
    elseif (string.ends(vetor[7], "O") == true) and (string.ends(vetor[8], "O") == true) and (string.ends(vetor[9], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()

    --quarta possibilidade de vitoria
    elseif (string.ends(vetor[1], "X") == true) and (string.ends(vetor[4], "X") == true) and (string.ends(vetor[7], "X") == true) then
        print("quarta possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()

    elseif (string.ends(vetor[1], "O") == true) and (string.ends(vetor[4], "O") == true) and (string.ends(vetor[7], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()

    --quinta possibilidade de vitoria
    elseif (string.ends(vetor[2], "X") == true) and (string.ends(vetor[5], "X") == true) and (string.ends(vetor[8], "X") == true) then
        print("sexta possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()

    elseif (string.ends(vetor[2], "O") == true) and (string.ends(vetor[5], "O") == true) and (string.ends(vetor[8], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()

    --sexta possibilidade de vitoria
    elseif (string.ends(vetor[3], "X") == true) and (string.ends(vetor[6], "X") == true) and (string.ends(vetor[9], "X") == true) then
        print("sexta possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()

    elseif (string.ends(vetor[3], "O") == true) and (string.ends(vetor[6], "O") == true) and (string.ends(vetor[9], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()
    
    --setima possibilidade de vitoria
    elseif (string.ends(vetor[1], "X") == true) and (string.ends(vetor[5], "X") == true) and (string.ends(vetor[9], "X") == true) then
        print("sexta possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()

    elseif (string.ends(vetor[1], "O") == true) and (string.ends(vetor[5], "O") == true) and (string.ends(vetor[9], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()
    
    --oitava possibilidade de vitoria
    elseif (string.ends(vetor[3], "X") == true) and (string.ends(vetor[5], "X") == true) and (string.ends(vetor[7], "X") == true) then
        print("oitava possibilidade de vitoria para X")
        player = player + 1
        cont = 0
        --dxBranco()

    elseif (string.ends(vetor[3], "O") == true) and (string.ends(vetor[5], "O") == true) and (string.ends(vetor[7], "O") == true) then
        pc = pc + 1
        cont = 0
        --dxBranco()
    end
    print(pc)
end

local function clica(event)
    local pl = player
    local ppc = pc
    o = tonumber(event.target.myName)
    --if(cont % 2 == 0) then
    posicoesX[o].isVisible = true
    b[o].isVisible = false
    verificaGanhador(o)
    --else
    if (pl == player) and (ppc == pc) and (cont < 9) then
        o = math.random( 1, 9 )
        while ((string.ends(vetor[o],"X") == true) or (string.ends(vetor[o], "O") == true)) do
                o = math.random(1, 9)
                print("continuando.....")
        end
        posicoesO[o].isVisible = true
        b[o].isVisible = false
        verificaGanhador(o)
    else
        cont = 0
        for i = 1, 9 do
            b[i].isVisible = true
        end
        d()
    end
    if(ppc < pc) then
        cont = 0
        for i = 1, 9 do
            b[i].isVisible = true
        end
        d()
    end
end

for i=1, 9 do 
    b[i]:addEventListener("tap", clica)
end
