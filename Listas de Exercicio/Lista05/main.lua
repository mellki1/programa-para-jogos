-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--http://goo.gl/BQmKUb
-- Your code here
local backgorund
local placar
local w = display.contentWidth
local h = display.contentHeight
local posicoesX = {}
local posicoesO = {}
local b = {}
verificaX = {4}
verificaO = {}
local cont = 0
local contX = 1
local contO = 0
local o = 0
local g
--variaveis de erros e acertos
local acerto = 0
local erro = 0


--display
bac = display.newImage("branco.png", w *.5, h * .5)
backgorund = display.newImage("jogoDaVelha.png", w *.5, h * .5) --backgorund
backgorund:scale(0.5,0.5)
placar = display.newText("Player "..acerto.." x "..erro.." APP", w *.5, h * .0, native.systemFont, 32)--Placar do game
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
for i = 1, 9 do
    posicoesO[i].isVisible = false
end


--dando nome as posicoes
for i=1, 9 do
    posicoesX[i].myName = tostring(i)
    posicoesO[i].myName = tostring(i)
    b[i].myName = tostring(i)
    print("nameB:"..b[i].myName)
end
--colocando vetor em ordem
local function compare( a, b )
    return a < b  -- Note "<" as the operator
end
--verificando ganhador do game
local function verificaGanhador()

    --primeira possibilidade de vitoria
    
    --segunda possibilidade de vitoria
  

    --terceira possibilidade de vitoria
    
    --quarta possibilidade de vitoria
   
    --quinta possibilidade de vitoria
 

    --sexta possibilidade de vitoria
      
    
    --setima possibilidade de vitoria
    
    --oitava possibilidade de vitoria
    
end

local function clica(event)
    o = tonumber(event.target.myName)
    if(cont % 2 == 0) then
        posicoesX[o].isVisible = true
        verificaX[contX] = o
        print("X marcado em:"..verificaX[contX])
        contX = contX + 1
        b[o].isVisible = false
        table.sort( verificaX, compare )
        print( table.concat( verificaX, ", " ) )
        verificaGanhador()
    else
        posicoesO[o].isVisible = true
        verificaO[contO] = o
        print("O marcado em:"..verificaO[contO])
        contO = contO + 1
        b[o].isVisible = false
    end
    cont = cont + 1

    if cont == 9 then
        
         
    end
end


for i=1, 9 do 
    b[i]:addEventListener("tap", clica)
end

 

