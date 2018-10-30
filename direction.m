function [matrixRadian] = direction(t1matrix,t2matrix,name)%(t1b1,t1b2,t1b3,t1b4,t1b5,t1b7,t2b1,t2b2,t2b3,t2b4,t2b5,t2b7,ano1,ano2)
%matlabpool open
% fazer o 3-d com base no histograma
% x-> magnitude
% y->dircao
% z-> contagem de pixels de determinado valor em magnitude (histograma)
% grafico polar
% NDVI-> fazer a trajetõria do indice de vegetação na área e interpolar para mais anos para saber se os resultados vao bater quando tiver mais imagens
% vegetation disturbance or recovery

[c, r, l] = size(t2matrix);
factor = 1/sqrt(double(l));
sub = 0;
soma = 0;
u = 0;
% 
%  [t1matreflec(:,:,1),t1matreflec(:,:,2),t1matreflec(:,:,3)] = reflectancia(t1b5,t1b4,t1b3,ano1);
% % 
%  [t2matreflec(:,:,1),t2matreflec(:,:,2),t2matreflec(:,:,3)] = reflectancia(t2b5,t2b4,t2b3,ano2);

for i=1:(c/1)%2000:(c/2)%
    u = u+1;
    v = 1;
    for j=1:(r/1)%2000:(r/2)%
        for y=1:l
            %com DN
            aux = double(t2matrix(i,j,y)) - double(t1matrix(i,j,y));
%            aux2 = double(t3matrix(i,j,y)) - double(t2matrix(i,j,y));
            %com reflectancia
           %  aux = double(t2matreflec(i,j,y)) - double(t1matreflec(i,j,y));
            sub = sub + aux;% + aux2;
            soma = soma + (double(aux).*double(aux));%+(double(aux2).*double(aux2));
        end


        sqSoma = sqrt(double(soma));
          if (sub == 0 || sqSoma == 0)
              divSubSqsoma = 0;
          else
            divSubSqsoma = double(sub)/double(sqSoma);
          end
        aux2 = double(factor*divSubSqsoma);

        if (aux2 > 1)
            matrixRadian(u,v) = 0.0;
        elseif (aux2 < -1)
            matrixRadian(u,v) = 180.0;
        else
            angle = acos(aux2);
            matrixRadian(u,v) = double(angle*180/pi);

        end
        soma = 0;
        sub = 0;
        aux = 0;
        aux2 = 0;
         v = v+1;
         angle = 0;
    end
end

% [c l] = size(matrixRadian);
% dire = double(reshape(matrixRadian, [1 c*l]));
% magn = double(reshape(magni, [1 c*l]));
% d1 = dire*pi/180;
% figure
% polar(d1,magn,'.')

%figure
%plotmatrix(dire(1,1:100),magn(1,1:100))
% name = ['DOS_Canaa_direction_'  num2str(ano1) '_'  num2str(ano2) '.tif'];
imwrite(uint8(matrixRadian), name);
% imwrite(uint8(matrixRadian), 'image_direction.jpeg');
