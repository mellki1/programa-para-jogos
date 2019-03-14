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

--variaveis de erros e acertos
local acerto = 0
local erro = 0

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
tela()
--Funcionalidades
--Variaveis necessarias para as funcionalidades
local o = 0
--adicionando nome aos quadrados

for i=1, #circle do
    circle[i].myName = tostring(i)
    print("name:"..circle[i].myName)
end

--evento
print("a resposta certa é:"..certaF)
local function clica(event)
    o = tonumber(event.target.myName)
    if o == certaF then
        acerto = acerto + 1
        print("acertos: "..acerto)
        circle[o]:setFillColor(1,1,1)
    else
        erro = erro + 1
        print("erradas: "..erro)
    end
    gerarDados()
    tela()
end

for i=1, #circle do
    circle[i]:addEventListener("tap", clica)
end
