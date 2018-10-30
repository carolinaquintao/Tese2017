load('mapa_referencia_Canaa_1.mat')
mapa1 = mapa;
mapa1(mapa1 == 10) = 0;
mapa1(mapa1 == 2) = 0;
mapa1(mapa1 == 5) = 0;
mapa1(mapa1 == 1) = 0;
% 
figure
imshow(mapa1,[])

load('mapa_referencia_Canaa_1997.mat')
mapa2 = mapa;
mapa2(mapa2 == 10) = 0;%nada
mapa2(mapa2 == 2) = 0;%mina
mapa2(mapa2 == 5) = 0;%vegetacao
mapa2(mapa2 == 1) = 0;%agua
figure
imshow(mapa2,[])


g = zeros(size(mapa2));
g = roipoly;
diffMapa = zeros(size(mapa1));
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if mapa1(i,j) == 0 && mapa2(i,j) ~= 0 && g(i,j) == 0
            diffMapa(i,j) = mapa2(i,j);
        end
    end
end

imshow(diffMapa,[])
