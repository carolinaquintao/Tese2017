
clear, clc, close all

%%
%calcula magnitude e direção
% tempo1(:,:,1) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b1_270.tif');
% tempo1(:,:,2) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b2_270.tif');
% tempo1(:,:,3) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b3_270.tif');
% tempo1(:,:,4) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b4_270.tif');
% tempo1(:,:,5) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b5_270.tif');
% tempo1(:,:,6) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_1997b7_270.tif');
% 
% tempo2(:,:,1) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b1_270.tif');
% tempo2(:,:,2) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b2_270.tif');
% tempo2(:,:,3) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b3_270.tif');
% tempo2(:,:,4) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b4_270.tif');
% tempo2(:,:,5) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b5_270.tif');
% tempo2(:,:,6) = imread('/Users/pma009/Documents/Pessoal/Codes/ArtigoIEEE/ImagensReflectancia/SaoFelix_184/clip/SR_2000b7_270.tif');
% 
load('mascaraNuvemSaoFelix3.mat','SaoFelix2000','SaoFelix2011')
load('Workspace_SaoFelix_2000_2011.mat', 'tempo1')
load('Workspace_SaoFelix_2000_2011.mat', 'tempo2')
%%se tiver nuvem, tira antes
for i=1:6
    tempo1A = tempo1(:,:,i);
    tempo2A = tempo2(:,:,i);

    tempo1A(SaoFelix2011==-5555 | SaoFelix2000 == -5555) = -9999;
    tempo2A(SaoFelix2011==-5555 | SaoFelix2000 == -5555) = -9999;
    tempo1F(:,:,i) = tempo1A;
    tempo2F(:,:,i) = tempo2A;
end
clear tempo1 tempo1A tempo2 tempo2A SaoFelix2011 SaoFelix2000
[Magnitude, Direcao]= magnitude(tempo1F,tempo2F,2000,2011);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM0011,centers]=fuzzycmeans(Magnitude,2,5);

save('WSSaoFelix00-11NovasNuvens.mat');

%%
%Identifica não mudança com fcm
load('Workspace_SaoFelix_1990_2000.mat', 'Magnitude','Direcao');
[ccc1, ccc2] = fcm2(Magnitude);
%%
load('Workspace_SaoFelix_1990_2000.mat', 'Magnitude','Direcao');
load('ws_SaoFelix_1990_1997.mat', 'ccc1','ccc2');

SC_direction = Direcao;

load('mascaraNuvemSaoFelix2.mat','SaoFelix1997','SaoFelix1990')
%Retira nuvens e define nao mudanças
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if (Magnitude(i,j) < ((ccc1+ccc2)/2)|| SaoFelix1990(i,j) == -5555 || SaoFelix1997(i,j) == -5555)
            SC_direction(i,j) = 90;
        end
    end
end
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
%carrega mapa de diferença
%gerado em geraMapaDiferencaReferencia.m e salvo em save('ws_CIDADE_XXXX_XXXX')
load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
% figure
% imshow(diffMapa,[])
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
% figure
% imshow(binDiff,[])
binDiff(SaoFelix1990 == -5555) = 0;
% figure
% imshow(binDiff,[])
binDiff(SaoFelix1997 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
errPSNR = psnr(binFCM,binDiff)
errMSE = immse(binFCM,binDiff)
errSIM = ssim(binFCM,binDiff)

%%
%classifica por FCM e EM
[nrows,ncols] = size(SC_direction);
ab = reshape(SC_direction,nrows*ncols,1);
nColors = length(unique(diffMapa))+3;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
% figure 
% imshow(pixel_labels,[])
%%
save('classificaSaoFelix_1997_2011')
%%
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
