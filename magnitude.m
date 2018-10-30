function [newMatrix, direc]= magnitude(t1matrix,t2matrix,ano1,ano2)%(t1b1,t1b2,t1b3,t1b4,t1b5,t1b7,t2b1,t2b2,t2b3,t2b4,t2b5,t2b7,ano1,ano2);

[c, r, l] = size(t2matrix);
u = 0;
% [t1matreflec(:,:,1),t1matreflec(:,:,2),t1matreflec(:,:,3)] = reflectancia(t1b5,t1b4,t1b3,ano1);
% 
% [t2matreflec(:,:,1),t2matreflec(:,:,2),t2matreflec(:,:,3)] = reflectancia(t2b5,t2b4,t2b3,ano2);
newMatrix = [];
for i=1:(c/1)%2000:(c/2)%
    u = u+1;
    v = 1;
    for j=1:(r/1)%2000:(r/2)%      
        soma = 0;
        for y=1:l
             %com DN
            soma = soma + power((double(t2matrix(i,j,y)) - double(t1matrix(i,j,y))),2);  
            %com reflectancia
%              soma = soma + power((double(t2matreflec(i,j,y)) - double(t1matreflec(i,j,y))),2);  

        end
        newMatrix(u,v) = sqrt(double(soma));

        v = v+1;
    end
end
 name = ['DOS_Canaa_magnitude_'  num2str(ano1) '_'  num2str(ano2) '.tif'];
 imwrite(uint8(newMatrix),  name);
 
 name = ['DOS_Canaa_direction_'  num2str(ano1) '_'  num2str(ano2) '.tif'];
 [direc] = direction(t1matrix,t2matrix,name);
 
% imwrite(uint8(newMatrix), name);% 'image_magnitude.jpeg');
end
    