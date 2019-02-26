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


--Variaveis necessarias para o display
local w = display.contentWidth
local h = display.contentHeight
local quadrados = {}
local resp = {}
local placar
local backgorund

--variaveis de erros e acertos
local acerto = 0
local erro = 0

local function gerarDadosF()
    
    for i=1, 2 do
        numbersF[i] = math.random( 0, 50 )
    end

    
    for i=1, 4 do
        respostaF[i] = math.random( 0, 100 )
    end


    --adicionando a resposta certa ao indice aleatorio
    n = math.random( 1, 4 )
    m = math.random( 1, 4 )
    certaF = numbersF[1] + numbersF[2]


    respostaF[n] = certaF
    
end

local function gerarDadosD()
    for i=1, 2 do
        numbersD[i] = math.random( 0, 50 )
    end

    
    for i=1, 4 do
        respostaD[i] = math.random( 0, 2500 )
    end

    --adicionando a resposta certa ao indice aleatorio
    n = math.random( 1, 4 )
    m = math.random( 1, 4 )

    --adicionando a resposta certa ao indice aleatorio
    certaD = numbersD[1] * numbersD[2]
    respostaD[m] = certaD
end

gerarDadosF()



--display





local function tela()

    backgorund = display.newImage("back.jpg", w *.22, h * .30) --backgorund
    backgorund:setFillColor(0.3)
    placar = display.newText("Certas "..acerto.." x "..erro.." Erradas", w *.5, h * .1, native.systemFont, 32)--Placar do game
    circle1 = display.newCircle( w *.22, h * .3, 60)
    --Sinal de adicao/mulltiplicacao
    if (acerto > 5) then
        local sinal = display.newText("X", w *.5, h * .3, native.systemFont, 60)
        circle2 = display.newCircle( w *.76, h * .3, 60)
    
        local number1 = display.newText(numbersD[1], w *.22, h * .3, native.systemFont, 60)
        number1:setFillColor(0, 0, 0)
    
        local number2 = display.newText(numbersD[2], w *.76, h * .3, native.systemFont, 60)
        number2:setFillColor(0, 0, 0)
    
        --gerando quadrados como respostas
        for i=1, 4 do
            quadrados[i] = display.newRect(w * (i*2)/10, h *.9, 60, 50)
        end
    
        for i=1, 4 do
            resp[i] = display.newText(respostaD[i], w * (i*2)/10, h *.9, native.systemFont, 24)
            resp[i]:setFillColor(0, 0, 0)
        end
    else
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
    
end
tela()
--Funcionalidades
--Variaveis necessarias para as funcionalidades
local o = 0

--adicionando nome aos quadrados

for i=1, #quadrados do
    quadrados[i].myName = tostring(i)
end

--eventos

--evento para reeniciar o game
local function reenicia(event)
    print("TO aqui")
    acerto = 0
    erro = 0
    gerarDadosF()
    tela()
end

--evendo para quando clicar na resposta
local function clica(event)
    if(acerto > 5) then
        o = tonumber(event.target.myName) --convertendo os nomes dos quadrados para inteiro
        if respostaD[o] == certaD then
            acerto = acerto + 1
            print("acertos: "..acerto)
        else
            erro = erro + 1
            print("erradas: "..erro)
        end
    else
        o = tonumber(event.target.myName) --convertendo os nomes dos quadrados para inteiro
        if respostaF[o] == certaF then
            acerto = acerto + 1
            print("acertos: "..acerto)
        else
            erro = erro + 1
            print("erradas: "..erro)
        end
    end
    --Verifica se continuara no nivel facil, ir pro dificil ou ira finalizado o game
    if(erro >= 5) then
        backgorund = display.newImageRect("gameOver.png", 320, 570)
        backgorund.x = display.contentCenterX
        backgorund.y = display.contentCenterY
        local botao = display.newRoundedRect(w *.5, h *.7, 200, 50, 12)
        botao:setFillColor(1, 1, 0, 0.5)
        local txt = display.newText("Reeniciar o game", w *.5, h * .7, native.systemFont, 20)--Placar do game
        txt:setFillColor(0,0,0)
        botao:addEventListener("tap", reenicia)
    elseif(acerto > 5) then
        gerarDadosD()
        placar.text = ("Certas "..acerto.." x "..erro.." Erradas")
        tela()
    else
        gerarDadosF()
        placar.text = ("Certas "..acerto.." x "..erro.." Erradas")
        tela()
    end
end

for i=1, #quadrados do
    quadrados[i]:addEventListener("tap", clica)
end


