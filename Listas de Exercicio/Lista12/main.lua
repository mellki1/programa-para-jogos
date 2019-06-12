-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
--http://goo.gl/BQmKUb

--Variaveis necessarias para o display
local w = display.contentWidth
local h = display.contentHeight
local quad = {}
local resp = {}
local aux = 1
local aux1 = 1
local random
local cont = 0
local dificuldade = 1


--variaveis de erros e acertos
local acerto = 0
local erro = 0

--variaveis de erros e acertos
local acerto = 0
local erro = 0

local function tela()
    --display
    
    placar = display.newText("Player "..acerto.." x "..erro.." APP", w *.5, h * .1, native.systemFont, 32)--Placar do game
    
    aux = 100
    aux1 = 100
    for j=1, 4 do
        if (j < 3) then
            quad[j] = display.newRect(aux, 200, w *.3, h * .2)
            aux = aux + 100
        end
        
        if (j > 2) then
            quad[j] = display.newRect(aux1, 300, w *.3, h * .2)
            aux1 = aux1 + 100
        end
    end
    quad[1]:setFillColor(1,1,0, 0.5)
    quad[2]:setFillColor(0,0,1, 0.5)
    quad[3]:setFillColor(1,0,0, 0.5)
    quad[4]:setFillColor(0,1,0, 0.5)
    placar:setFillColor(0,0.5,0)
end

local function tela2()
   --display
    
   placar = display.newText("Player "..acerto.." x "..erro.." APP", w *.5, h * .1, native.systemFont, 32)--Placar do game
    
   aux = 100
   aux1 = 100
   for j=1, 4 do
       if (j < 3) then
           quad[j] = display.newRect(aux, 200, w *.3, h * .2)
           aux = aux + 100
       end
       
       if (j > 2) then
           quad[j] = display.newRect(aux1, 300, w *.3, h * .2)
           aux1 = aux1 + 100
       end
   end
   quad[1]:setFillColor(1,1,0, 0.5)
   quad[2]:setFillColor(0,0,1, 0.5)
   quad[3]:setFillColor(1,0,0, 0.5)
   quad[4]:setFillColor(0,1,0, 0.5)
   placar:setFillColor(0,0.5,0)
end

local function gerarDados()
    if(dificuldade == 1) then
        random = math.random(1,4)
        quad[1]:setFillColor(1,1,0)
        quad[2]:setFillColor(0,0,1)
        quad[3]:setFillColor(1,0,0)
        quad[4]:setFillColor(0,1,0)             
    end
end
gerarDados()

if cont == 0 then
    tela()
end
--Funcionalidades

--adicionando nome aos quadrados

for i=1, #quad do
    quad[i].myName = tostring(i)
    print("name:"..quad[i].myName)
end

local function clica()

end

for i=1, #quad do
    quad[i]:addEventListener("tap", clica)
end
