--Arquivo black-sheep.lua
--Autor: Elisson Andrade, 2019

gpio.write(0, gpio.LOW)
gpio.write(1, gpio.LOW)
gpio.write(2, gpio.LOW)
gpio.write(3, gpio.LOW)
gpio.write(4, gpio.LOW)
gpio.write(5, gpio.LOW)
gpio.write(6, gpio.LOW)
gpio.write(7, gpio.LOW)
gpio.write(8, gpio.LOW)

ritmo = 480000

function vermelho4Ciclo(amarelo, verde, branco, tempo, tipo)
    tipo = tipo or 0;
    if(tipo == 0) then
    piscaCiclo({verde[1],0,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,1,1,0,0,0,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,1,1,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],0,0,0,1,1,1,amarelo[4],branco[4]},tempo)
    elseif(tipo == 1) then
    
    piscaCiclo({verde[1],0,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,0,0,0,0,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,0,0,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,1,1,1,1,amarelo[4],branco[4]},tempo)
    elseif(tipo == 2) then
    piscaCiclo({verde[1],1,1,1,1,1,1,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],0,1,1,1,1,0,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],0,0,1,1,0,0,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],0,0,0,0,0,0,amarelo[4],branco[4]},tempo)
    end
end

    nada = {0,0,0,0}

piscaCiclo({3,0,0,0,0,0,0,3,3},400000)
--guitarra sobe
    piscaCiclo({0,1,0,0,0,0,1,0,0},(ritmo*2/3))
    piscaCiclo({0,1,1,0,0,1,1,0,0},(ritmo*2/3))
    piscaCiclo({0,1,1,1,1,1,1,0,0},(ritmo*2/3))
    piscaCiclo({0,1,1,1,1,1,1,1,0},(ritmo*2/3))
    piscaCiclo({1,3,3,3,3,3,3,3,0},(ritmo/3))
--introdução
for i=1,4 do
    for j=1,6 do
        piscaCiclo({3,0,0,0,0,0,0,0,0},ritmo)
    end
    if(i==4) then
        piscaCiclo({3,0,0,0,0,0,0,0,0},ritmo)
        break
    end
    piscaCiclo({3,0,0,0,0,0,0,1,0},ritmo)
    piscaCiclo({3,0,0,0,0,0,0,1,0},ritmo)
end

for estrofe=1,2 do
    
    --primeira estrofe
    for i=1,2 do
        vermelho4Ciclo({0,1,2,1},nada,nada,ritmo)
        vermelho4Ciclo({2,1,2,1},nada,nada,ritmo)
        vermelho4Ciclo({2,1,2,1},nada,nada,ritmo)
        vermelho4Ciclo(nada,{3,3,3,3},nada,ritmo)
    end
    --entrada dos sintetizadores
    
    for i=1,2 do
        vermelho4Ciclo({0,1,2,1},{0,3,0,3},nada,ritmo)
        vermelho4Ciclo({2,1,2,1},{0,3,0,3},nada,ritmo)
        vermelho4Ciclo({2,1,2,1},{0,3,0,3},nada,ritmo)
        vermelho4Ciclo(nada,{3,3,3,3},nada,ritmo)
    end
    
        piscaCiclo({3,3,3,3,3,3,3,1,0},ritmo)
        
        piscaCiclo({3,1,0,0,0,0,0,3,0},ritmo*2)
        piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
        piscaCiclo({3,1,1,0,0,0,1,3,0},ritmo*2)
        piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
        piscaCiclo({3,1,1,1,0,1,1,3,0},ritmo*2)
        piscaCiclo({3,1,1,1,1,1,1,1,0},ritmo*2)
        piscaCiclo({3,1,1,0,1,1,1,3,0},ritmo*2)
        piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
        piscaCiclo({3,1,0,0,0,1,1,3,0},ritmo*2)
        piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
        piscaCiclo({3,0,0,0,0,0,1,3,0},ritmo*2)
        piscaCiclo({3,0,0,0,0,0,0,1,0},ritmo*2)
        if(estrofe==2) then
            piscaCiclo({3,0,0,0,0,0,0,3,0},ritmo*2)
            piscaCiclo({3,0,0,0,1,1,1,1,0},ritmo*2)
            piscaCiclo({3,1,1,1,1,1,1,1,0},ritmo*2)
            piscaCiclo({3,1,1,0,1,1,1,3,0},ritmo*2)
            piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
            piscaCiclo({3,1,0,0,0,1,1,3,0},ritmo*2)
            piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
            piscaCiclo({3,0,0,0,0,0,1,3,0},ritmo*2)
            piscaCiclo({3,0,0,0,0,0,0,1,0},ritmo*2)
            piscaCiclo({3,1,0,0,0,0,0,3,0},ritmo*2)
            piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
            piscaCiclo({3,1,1,0,0,0,1,3,0},ritmo*2)
            piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
            piscaCiclo({3,1,1,1,0,1,1,3,0},ritmo*2)
            piscaCiclo({3,1,1,1,1,1,1,1,0},ritmo*2)
            piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
        end
        piscaCiclo({3,1,0,0,0,0,1,3,0},ritmo*2)
        piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
        piscaCiclo({3,1,1,1,1,1,1,3,0},ritmo*2)
        piscaCiclo({3,0,0,0,1,1,1,1,0},ritmo*2)
        piscaCiclo({3,0,0,0,0,0,0,0,0},ritmo*2)
    
    for i=1,6 do
        vermelho4Ciclo(nada,{3,3,0,0},nada,ritmo)
    end
        
        
    if(estrofe==2) then
        for i=1,4 do
            vermelho4Ciclo(nada,{3,3,0,0},nada,ritmo)
        end
    end
        piscaCiclo({3,1,0,0,0,0,0,3,0},(ritmo/6)*4)
        piscaCiclo({3,1,0,0,0,0,1,1,0},(ritmo/6)*4)
        piscaCiclo({3,1,1,0,0,0,1,3,0},(ritmo/6)*4)
        piscaCiclo({3,1,1,0,0,1,1,1,0},(ritmo/6)*4)
        piscaCiclo({3,1,1,1,0,1,1,3,0},(ritmo/6)*4)
        piscaCiclo({3,1,1,1,1,1,1,1,0},(ritmo/6)*4)
        if(estrofe==2) then
            break
        end
    for i=1,3 do
        vermelho4Ciclo(nada,{3,3,3,3},nada,ritmo,1+(1-i%2))
    end
    for i=1,3 do
        vermelho4Ciclo(nada,{3,3,3,3},{0,0,0,1},ritmo,1+(i%2))
    end
    for i=1,2 do
        vermelho4Ciclo(nada,{3,3,3,3},{0,1,0,1},ritmo,1+(1-i%2))
    end
end
for i=1,8 do
    vermelho4Ciclo(nada,{3,3,3,3},nada,ritmo,1+(1-i%2))
end

for i=1,8 do
    vermelho4Ciclo(nada,{3,3,3,3},{0,1,0,1},ritmo)
end

piscaCiclo({3,1,0,0,0,0,0,3,0},ritmo*2)
piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
piscaCiclo({3,1,1,0,0,0,1,3,0},ritmo*2)
piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
piscaCiclo({3,1,1,1,0,1,1,3,0},ritmo*2)
piscaCiclo({3,1,1,1,1,1,1,1,0},ritmo*2)
piscaCiclo({3,1,1,0,1,1,1,3,0},ritmo*2)
piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
piscaCiclo({3,1,0,0,0,1,1,3,0},ritmo*2)
piscaCiclo({3,1,0,0,0,0,1,1,0},ritmo*2)
piscaCiclo({3,0,0,0,0,0,1,3,0},ritmo*2)
piscaCiclo({3,0,0,0,0,0,0,1,0},ritmo*2)
piscaCiclo({3,1,0,0,0,0,1,3,0},ritmo*2)
piscaCiclo({3,1,1,0,0,1,1,1,0},ritmo*2)
piscaCiclo({3,1,1,1,1,1,1,3,0},ritmo*2)
piscaCiclo({3,0,0,0,1,1,1,1,0},ritmo*2)
piscaCiclo({3,0,0,0,0,0,0,0,0},ritmo*4)
piscaCiclo({0,0,0,0,0,0,0,0,0},ritmo*2)