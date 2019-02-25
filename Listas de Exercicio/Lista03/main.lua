-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--variaveis randons/resposta facil
local numbersF = {}
local respostaF = {}
local numbersD = {}
local respostaD = {}
local n
local m 
local certaF
local certaD
local function gerarDados()
    
    for i=1, 2 do
        numbersF[i] = math.random( 0, 50 )
    end

    
    for i=1, 4 do
        respostaF[i] = math.random( 0, 100 )
    end

    --variaveis randons/resposta dificil
    
    for i=1, 2 do
        numbersD[i] = math.random( 0, 50 )
    end

    
    for i=1, 4 do
        respostaD[i] = math.random( 0, 2500 )
    end

    --adicionando a resposta certa ao indice aleatorio
    n = math.random( 1, 4 )
    m = math.random( 1, 4 )
    certaF = numbersF[1] + numbersF[2]
    certaD = numbersD[1] * numbersD[2]

    respostaF[n] = certaF
    respostaD[m] = certaD
end

gerarDados()

--variaveis de erros e acertos
local acerto = 0
local erro = 0

--display

--Variaveis necessarias para o display
local w = display.contentWidth
local h = display.contentHeight
local quadrados = {}
local resp = {}


local backgorund = display.newImage("back.jpg", w *.22, h * .30) --backgorund
backgorund:setFillColor(0.3)
local placar = display.newText("Certas "..acerto.." x "..erro.." Erradas", w *.5, h * .1, native.systemFont, 32)--Placar do game


local function tela()
    circle1 = display.newCircle( w *.22, h * .3, 60)
    --Sinal de adicao/mulltiplicacao
    local sinal = display.newText("+", w *.5, h * .3, native.systemFont, 60)
    circle2 = display.newCircle( w *.76, h * .3, 60)

    local number1 = display.newText(numbersF[1], w *.22, h * .3, native.systemFont, 60)
    number1:setFillColor(0, 0, 0)

    local number2 = display.newText(numbersF[2], w *.76, h * .3, native.systemFont, 60)
    number2:setFillColor(0, 0, 0)

    --gerando quadrados como respostas
    for i=1, 4 do
        quadrados[i] = display.newRect(w * (i*2)/10, h *.9, 60, 50)
    end

    for i=1, 4 do
        resp[i] = display.newText(respostaF[i], w * (i*2)/10, h *.9, native.systemFont, 32)
        resp[i]:setFillColor(0, 0, 0)
    end
end
tela()
--Funcionalidades
--Variaveis necessarias para as funcionalidades
local o = 0

--adicionando nome aos quadrados

for i=1, #quadrados do
    quadrados[i].myName = tostring(i)
end

--evento
local function clica(event)

    o = tonumber(event.target.myName) --convertendo os nomes dos quadrados para inteiro
    if respostaF[o] == certaF then
        acerto = acerto + 1
        print("acertos: "..acerto)
    else
        erro = erro + 1
        print("erradas: "..erro)
    end
    if(erro >= 5) then
        backgorund = display.newImage("gameOver.jpg", w *.22, h * .30)
    else
        gerarDados()
        placar.text = ("Certas "..acerto.." x "..erro.." Erradas")
        tela()
    end
end

for i=1, #quadrados do
    quadrados[i]:addEventListener("tap", clica)
end


