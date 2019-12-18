
function vermelhoCiclo(amarelo, verde, branco, tempo, tipo)
    tipo = tipo or 0;
    if(tipo == 0) then
    piscaCiclo({verde[1],0,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,0,0,0,0,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,0,0,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,1,1,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,1,0,0,1,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],1,0,0,0,0,1,amarelo[6],branco[6]},tempo)
    elseif(tipo == 1) then
    piscaCiclo({verde[1],0,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,0,0,0,0,0,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,0,0,0,0,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,1,0,0,0,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,1,1,1,0,0,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],1,1,1,1,1,0,amarelo[6],branco[6]},tempo)
    elseif(tipo == 2) then
    piscaCiclo({verde[1],1,1,1,1,1,1,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],0,1,1,1,1,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],0,0,1,1,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],0,0,0,1,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],0,0,0,0,1,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],0,0,0,0,0,1,amarelo[6],branco[6]},tempo)
    elseif(tipo == 3) then
    piscaCiclo({verde[1],2,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,2,0,0,0,0,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,2,0,0,0,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,1,2,0,0,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,1,1,1,2,0,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],1,1,1,1,1,2,amarelo[6],branco[6]},tempo)
    elseif(tipo == 4) then
    piscaCiclo({verde[1],3,1,1,1,1,1,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],0,3,1,1,1,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],0,0,3,1,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],0,0,0,3,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],0,0,0,0,3,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],0,0,0,0,0,3,amarelo[6],branco[6]},tempo)
    elseif(tipo == 5) then
    piscaCiclo({verde[1],1,0,0,0,0,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,0,0,0,0,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,0,0,0,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,0,0,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,1,1,0,1,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],1,1,1,1,1,1,amarelo[6],branco[6]},tempo)
    elseif(tipo == 6) then
    piscaCiclo({verde[1],1,1,1,1,1,0,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],0,1,1,1,1,0,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],0,1,1,1,0,0,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],0,0,1,1,0,0,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],0,0,1,0,0,0,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],0,0,0,0,0,0,amarelo[6],branco[6]},tempo)
    elseif(tipo == 7) then
    piscaCiclo({verde[1],2,1,1,1,1,1,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,2,1,1,1,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,2,1,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,1,2,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,1,1,1,2,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],1,1,1,1,1,2,amarelo[6],branco[6]},tempo)
    elseif(tipo == 8) then
    piscaCiclo({verde[1],1,1,1,1,1,2,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,1,1,1,2,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,1,2,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,2,1,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,2,1,1,1,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],2,1,1,1,1,1,amarelo[6],branco[6]},tempo)
    elseif(tipo == 9) then
    piscaCiclo({verde[1],2,1,1,1,1,2,amarelo[1],branco[1]},tempo)
    piscaCiclo({verde[2],1,2,1,1,2,1,amarelo[2],branco[2]},tempo)
    piscaCiclo({verde[3],1,1,2,2,1,1,amarelo[3],branco[3]},tempo)
    piscaCiclo({verde[4],1,1,2,2,1,1,amarelo[4],branco[4]},tempo)
    piscaCiclo({verde[5],1,2,1,1,2,1,amarelo[5],branco[5]},tempo)
    piscaCiclo({verde[6],2,1,1,1,1,2,amarelo[6],branco[6]},tempo)
    end
    
end

function refrao(tipo)
vermelhoCiclo({1,1,1,1,1,1},nada,nada,ritmo,1+tipo)
vermelhoCiclo({3,1,2,0,0,0},nada,nada,ritmo,2+tipo)
vermelhoCiclo({1,1,1,1,3,1},nada,nada,ritmo,1+tipo)
vermelhoCiclo({3,1,2,0,0,0},nada,nada,ritmo,2+tipo)
vermelhoCiclo({1,1,1,1,1,1},nada,nada,ritmo,1+tipo)
vermelhoCiclo({3,1,2,0,0,0},nada,nada,ritmo,2+tipo)
vermelhoCiclo({1,1,1,1,3,1},nada,nada,ritmo,1+tipo)
vermelhoCiclo({3,1,1,1,1,1},nada,nada,ritmo,2+tipo)
vermelhoCiclo({2,1,1,1,1,1},nada,nada,ritmo,1+tipo)
end