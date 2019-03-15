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
local circle = {}
local resp = {}
local aux = 1
local cs1
local cs2
local numbers
local cont = 0


--variaveis de erros e acertos
local acerto = 0
local erro = 0

--Variaveis necessarias para as funcionalidades
local o = 0
local certaF = 0
local function gerarDados()
    --adicionando a resposta a variavel
    n = math.random( 1, 8 )
    certaF = n
end
gerarDados()
--variaveis de erros e acertos
local acerto = 0
local erro = 0

local function tela()
    --display
    backgorund = display.newImage("goal.jpg", w *.5, h * .5) --backgorund
    placar = display.newText("Player "..acerto.." x "..erro.." APP", w *.5, h * .1, native.systemFont, 32)--Placar do game
    placar:setFillColor(0,0,0)
    for j=1, 4 do
        circle[j] = display.newCircle(w * (j * 3)/15, h *.4, 20)
    end
    aux=1
    for j=5, 8 do
        circle[j] = display.newCircle(w * (aux * 3)/15, h *.6, 20)
        aux = aux + 1
    end
    --adicionando texto aos circulos
    for i=1, 4 do
        cs1 = display.newText(i, w * (i * 3)/15, h *.4, native.systemFont, 24)
        cs1:setFillColor(0, 0, 0)
    end
    aux=1
    for j=5, 8 do
        cs1 = display.newText(j, w * (aux * 3)/15, h *.6, native.systemFont, 24)
        aux = aux + 1
        cs1:setFillColor(0, 0, 0)
    end
end

local function tela2()
    --display
    backgorund = display.newImage("goal.jpg", w *.5, h * .5) --backgorund
    placar = display.newText("Player "..acerto.." x "..erro.." APP", w *.5, h * .1, native.systemFont, 32)--Placar do game
    placar:setFillColor(0,0,0)
    for j=1, 4 do
        circle[j] = display.newCircle(w * (j * 3)/15, h *.4, 20) 
        
    end
   
    aux=1
    for j=5, 8 do
        circle[j] = display.newCircle(w * (aux * 3)/15, h *.6, 20)
        aux = aux + 1
    end

    print(o)
    print(certaF)
    
    circle[o]:setFillColor(1,0,0)
    circle[certaF]:setFillColor(21/255, 231/255, 121/255)
    
    gerarDados()
    --adicionando texto aos circulos
    for i=1, 4 do
        cs1 = display.newText(i, w * (i * 3)/15, h *.4, native.systemFont, 24)
        cs1:setFillColor(0, 0, 0)
    end
    aux=1
    for j=5, 8 do
        cs1 = display.newText(j, w * (aux * 3)/15, h *.6, native.systemFont, 24)
        aux = aux + 1
        cs1:setFillColor(0, 0, 0)
    end
    
end
if cont == 0 then
    tela()
end
--Funcionalidades

--adicionando nome aos quadrados

for i=1, #circle do
    circle[i].myName = tostring(i)
    print("name:"..circle[i].myName)
end

--evento
print("a resposta certa é:"..certaF)
local function clica(event)
    cont = cont + 1
    o = tonumber(event.target.myName)
    if o == certaF then
        acerto = acerto + 1
        print("acertos: "..acerto)
    else
        erro = erro + 1
        print("erradas: "..erro)
    end
    tela2()
end

for i=1, #circle do
    circle[i]:addEventListener("tap", clica)
end
