% %%%%%%%% DARK OBJECT SUBTRACTION
clf, clear, clc
tempo1(:,:,1) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b1_240.tif');
tempo1(:,:,2) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b2_240.tif');
tempo1(:,:,3) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b3_240.tif');
tempo1(:,:,4) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b4_240.tif');
tempo1(:,:,5) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b5_240.tif');
tempo1(:,:,6) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2000b7_240.tif');

tempo2(:,:,1) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b1_240.tif');
tempo2(:,:,2) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b2_240.tif');
tempo2(:,:,3) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b3_240.tif');
tempo2(:,:,4) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b4_240.tif');
tempo2(:,:,5) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b5_240.tif');
tempo2(:,:,6) = imread('/Users/pma009/Documents/Pessoal/SurfaceReflectance/Parauapebas_240/clip/SR_2011b7_240.tif');

t1 = tempo1;%p1993;
t2 = tempo2;%p2014;
name = 'Workspace_Parauapebas_2000_2011';
[Magnitude, Direcao]= magnitude(t1,t2,2000,2011);
% 
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end

% scatter(reshape(Direcao,size(Magnitude,1)*size(Magnitude,2),1),reshape(Magnitude,size(Magnitude,1)*size(Magnitude,2),1))
% ylabel('Magnitude')
% xlabel('Direção')

% %%%%%% ADAPT K-MEANS SEM NaN
[Mlb,Mcenter] = adaptcluster_kmeans(Magnitude);
%%
%%%%% RETIRA O SETOR SEM MUDANCA SCn = {mag, 0<= dir < T}
SC_magnitude = Magnitude;%ones(size(Magnitude));
SC_direction = Direcao;%ones(size(Magnitude));

for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if (Magnitude(i,j) <= (Mcenter(1)) || Magnitude(i,j) == 0 || (Direcao(i,j) > 89.9999 && Direcao(i,j) <91))%( ((Direcao(i,j)>89.999999 && Direcao(i,j)<91) || Magnitude(i,j) == min(min(Magnitude)) && Direcao(i,j) == min(min(Direcao))))
            SC_magnitude(i,j) = NaN;
            SC_direction(i,j) = NaN;
        end
    end
end
% figure
% scatter(reshape(SC_direction,size(Magnitude,1)*size(Magnitude,2),1),reshape(SC_magnitude,size(Magnitude,1)*size(Magnitude,2),1))
%  ylabel('Magnitude')
%  xlabel('Direção')

%%%%%% K-MEANS MATLAB - MANUAL

theta = double(reshape(SC_direction,size(SC_direction,1)*size(SC_direction,2),1));
rho = double(reshape(SC_magnitude,size(SC_direction,1)*size(SC_direction,2),1));

% [Dlb,Dcenter] = adaptcluster_kmeans(theta(~isnan(theta)));

% nColors = 4;
% [cluster_idx, cluster_center] = kmeans(theta,nColors,'distance','sqEuclidean','Replicates',3);
% pixel_labels = reshape(cluster_idx,size(SC_direction,1),size(SC_direction,2));
% imshow(pixel_labels,[]), title('image labeled by cluster index');
% 
% close all
%%
 X = theta(~isnan(rho)); Y = rho(~isnan(rho));
%  scatter(X,y,'r.')
% hold on
% [n,c] = hist3([y,X]);
% contour(c{1},c{2},n)
 [DlY,DYcenter] = adaptcluster_kmeans(Y);
 [DlX,DXcenter] = adaptcluster_kmeans(X);
 figure
 scatterhist(X,Y,'group',DlY);figure(gcf)
 figure
 scatterhist(X,Y,'group',DlX);figure(gcf)
 
%%
% Anorm = (A - min2(A))/(max2(A) - min2(A));
% rFin1 = t2(:,:,5);
% rFin2 = t2(:,:,4);
% rFin3 = t2(:,:,3);
% 
% rFin1(rFin1==-9999) = NaN;
% rFin2(rFin2==-9999) = NaN;
% rFin3(rFin3==-9999) = NaN;
% 
% fin(:,:,1) = rFin1;
% fin(:,:,2) = rFin2;
% fin(:,:,3) = rFin3;%t2(:,:,5:-1:3);
% fin = ones(size(t2,1),size(t2,2))*255;
% 
% % fin(Direcao <= DXcenter(1)) = 1;
% % fin(Direcao > DXcenter(1) & Direcao <= DXcenter(2) ) = 2;
% % fin(Direcao > DXcenter(2) & Direcao <= DXcenter(3)) = 3;
% % fin(Direcao > DXcenter(3) & Direcao <= DXcenter(4)) = 4;
% % fin(Direcao > DXcenter(4) & Direcao <= DXcenter(5)) = 5;
% % fin(Direcao > DXcenter(5) & Direcao <= DXcenter(6)) = 6;
% % fin(Direcao >  DXcenter(6)) = 7;
% % 
% % imshow(uint8(fin))
% if length(DXcenter) == 6
% fin(Direcao <= DXcenter(1) & Magnitude > DYcenter(1)) = 10;
% fin(Direcao > DXcenter(1) & Direcao <= DXcenter(2) & Magnitude > DYcenter(1)) = 60;
% fin(Direcao > DXcenter(2) & Direcao <= DXcenter(3) & Magnitude > DYcenter(1)) = 120;
% fin(Direcao > DXcenter(3) & Direcao <= DXcenter(4) & Magnitude > DYcenter(1)) = 255;%(ao redor do 90 nao eh nada)
% fin(Direcao > DXcenter(4) & Direcao <= DXcenter(5) & Magnitude > DYcenter(1)) = 160;
% fin(Direcao > DXcenter(5) & Direcao <= DXcenter(6) & Magnitude > DYcenter(1)) = 200;
% fin(Direcao >  DXcenter(6) & Magnitude > DYcenter(1)) = 230;
% elseif length(DXcenter) == 5
%         fin(Direcao <= DXcenter(1) & Magnitude > DYcenter(1)) = 10;
% fin(Direcao > DXcenter(1) & Direcao <= DXcenter(2) & Magnitude > DYcenter(1)) = 60;
% fin(Direcao > DXcenter(2) & Direcao <= DXcenter(3) & Magnitude > DYcenter(1)) = 120;
% fin(Direcao > DXcenter(3) & Direcao <= DXcenter(4) & Magnitude > DYcenter(1)) = 255;%(ao redor do 90 nao eh nada)
% fin(Direcao > DXcenter(4) & Direcao <= DXcenter(5) & Magnitude > DYcenter(1)) = 160;
% fin(Direcao >  DXcenter(5) & Magnitude > DYcenter(1)) = 230;
% elseif length(DXcenter) == 4
%         fin(Direcao <= DXcenter(1) & Magnitude > DYcenter(1)) = 10;
% fin(Direcao > DXcenter(1) & Direcao <= DXcenter(2) & Magnitude > DYcenter(1)) = 60;
% fin(Direcao > DXcenter(2) & Direcao <= DXcenter(3) & Magnitude > DYcenter(1)) = 120;
% fin(Direcao > DXcenter(3) & Direcao <= DXcenter(4) & Magnitude > DYcenter(1)) = 255;%(ao redor do 90 nao eh nada)
% fin(Direcao >  DXcenter(4) & Magnitude > DYcenter(1)) = 230;
% end
% 
% 
% figure
% imshow(fin,[])

save(name)
