
clear, clc, close all

%%
%calcula magnitude e dire��o
% tempo1(:,:,1) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b1_270.tif');
% tempo1(:,:,2) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b2_270.tif');
% tempo1(:,:,3) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b3_270.tif');
% tempo1(:,:,4) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b4_270.tif');
% tempo1(:,:,5) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b5_270.tif');
% tempo1(:,:,6) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2000b7_270.tif');
% 
% tempo2(:,:,1) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b1_270.tif');
% tempo2(:,:,2) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b2_270.tif');
% tempo2(:,:,3) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b3_270.tif');
% tempo2(:,:,4) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b4_270.tif');
% tempo2(:,:,5) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b5_270.tif');
% tempo2(:,:,6) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelixa_184/clip/SR_2011b7_270.tif');
% 
% [Magnitude, Direcao]= magnitude(tempo1,tempo2,2000,2011);
% clear tempo1 tempo2
% %retira erro
% for i=1:size(Magnitude,1)
%     for j=1:size(Magnitude,2)
%         if Magnitude(i,j) > (1.8e+04)
%             Magnitude(i,j) = 0;
%             Direcao(i,j) = 90;
%         end
%     end
% end
%%
%Identifica n�o mudan�a com fcm
load('Workspace_SaoFelix_2000_2011.mat', 'Magnitude','Direcao');
[ccc1, ccc2] = fcm2(Magnitude);

SC_direction = Direcao;
load('mascaraNuvemSaoFelix.mat','SaoFelix2000','SaoFelix2011')

for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if (Magnitude(i,j) <= (ccc2) || SaoFelixa2000(i,j) == -5555 || SaoFelixa2011(i,j) == -5555)
            SC_direction(i,j) = 90;
        end
    end
end

binFCM = zeros(size(SC_direction));
binFCM(SC_direction~=90) = 1;

se = strel('disk',2);
erodedBW = imerode(binFCM,se);

% figure
% imshow(erodedBW)

SC_direction(erodedBW==0) = 90;
%%
%Classifica com k-means automatico
% [Mlb,Mcenter] = adaptcluster_kmeans(Magnitude);
% SC_direction2 = Direcao;%ones(size(Magnitude));
% 
% for i=1:size(Magnitude,1)
%     for j=1:size(Magnitude,2)
%         if (Magnitude(i,j) <= (Mcenter(1)))
%             SC_direction2(i,j) = 90;
%         end
%     end
% end
% 
% binKmeans = zeros(size(SC_direction2));
% binKmeans(SC_direction2~=90) = 1;
% figure
% imshow(binKmeans)
%%
%carrega mapa de diferen�a
%gerado em geraMapaDiferencaReferencia.m e salvo em save('ws_CIDADE_XXXX_XXXX')
load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
figure
imshow(diffMapa,[])
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
% figure
% imshow(binDiff,[])
binDiff(SaoFelixa2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
binDiff(SaoFelixa2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%

errPSNR = psnr(erodedBW,binDiff)
errMSE = immse(erodedBW,binDiff)
errSIM = ssim(erodedBW,binDiff)

% unique(diffMapa)
%%
[nrows,ncols] = size(SC_direction);
ab = reshape(SC_direction,nrows*ncols,1);
nColors = length(unique(diffMapa));
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
% figure 
% imshow(pixel_labels,[])

save('classificaSaoFelix_2000_2011')
%%
%remapeia os valores para poder fazer a diferen�a entre o mapa e a
%referencia
%SaoFelixa 
% pixel_labels(pixel_labels == 3) = 7;
% pixel_labels(pixel_labels == 2) = 3;
% pixel_labels(pixel_labels == 1) = 0;
% 
% figure 
% imshow(pixel_labels,[])
% 
% %%
% %retira a matriz de confusao
% classificado = reshape(pixel_labels,nrows*ncols,1);
% referencia = reshape(diffMapa,nrows*ncols,1);
% 
% [C,order] = confusionmat(referencia,classificado)
% 
% [table,chi2,p] = crosstab(referencia,classificado)%the chi-square statistic, and its p-value, p, for a test that tbl is independent in each dimension
% 
% dem = sum(abs(cumsum(referencia) - cumsum(classificado)))
% 
% c2em = corr2(referencia,classificado)
% 
% [peaksnr, snr] = psnr_mse_maxerr(classificado,referencia)
% 
% hh = sum(sum(referencia-classificado))
% 
% Mean_Square_Error= MSE(referencia,classificado)
% 
% 
