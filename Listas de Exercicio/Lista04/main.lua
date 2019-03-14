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
    n = math.random( 1, 9 )
    certaF = n
end


--display
backgorund = display.newImage("goal.jpg", w *.5, h * .5) --backgorund

for j=1, 4 do
    circle[j] = display.newCircle(w * (j * 3)/15, h *.4, 20)
    circle[j] = display.newCircle(w * (j * 3)/15, h *.6, 20)
    
    
end
--adicionando texto aos circulos
for i=1, 4 do
    cs1 = display.newText(i, w * (i * 3)/15, h *.4, native.systemFont, 24)
    cs1:setFillColor(0, 0, 0)
end

for j=5, 8 do
    cs1 = display.newText(j, w * (aux * 3)/15, h *.6, native.systemFont, 24)
    aux = aux + 1
    cs1:setFillColor(0, 0, 0)
end


--Funcionalidades
--Variaveis necessarias para as funcionalidades
local o = 0
--adicionando nome aos quadrados

for i=1, #circle do
    circle[i].myName = tostring(i)
end

--evento
local function clica(event)
    o = tonumber(event.target.myName)
    if respostaF[o] == certaF then
        acerto = acerto + 1
        print("acertos: "..acerto)
    else
        erro = erro + 1
        print("erradas: "..erro)
    end
    gerarDados()
end