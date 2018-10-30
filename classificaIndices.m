
load('ws_Canaa_1990_1997.mat', 'diffMapa')
load('classificaCanaa_1990_1997','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==4) = 0;
a(a==2) = 3;
a(a==1) = 4;
a(a==5) = 3;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Canaa_1997_2000.mat', 'diffMapa')
load('classificaCanaa_1997_2000','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 4;
a(a==1) = 3;
a(a==5) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Canaa_2000_2011.mat', 'diffMapa')
load('classificaCanaa_2000_2011','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 4;
a(a==1) = 4;
a(a==5) = 4;
a(a==4) = 7;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)


%%
%%
%%
%%

load('ws_Tucuma_1990_1997.mat', 'diffMapa')
load('classificaTucuma_1990_1997','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==1) = 8;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Tucuma_1997_2000.mat', 'diffMapa')
load('classificaTucuma_1997_2000','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==4) = 3;
a(a==2) = 4;
a(a==1) = 8;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Tucuma_2000_2011.mat', 'diffMapa')
load('classificaTucuma_2000_2011','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==1) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)


%%
%%
%%
%%

load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
load('classificaParauapebas_1990_1997','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==1) = 3;
a(a==4) = 7;
a(a==5) = 7;
a(a==2) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
load('classificaParauapebas_1997_2000','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==1) = 4;
a(a==4) = 7;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
load('classificaParauapebas_2000_2011','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==2) = 0;
a(a==4) = 7;
a(a==1) = 4;
a(a==5) = 3;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)


%%
%%
%%
%%

load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
load('classificaOurilandia_1990_1997','SC_direction')
% [a,b] = adaptcluster_kmeans(SC_direction);
[nrows,ncols] = size(SC_direction);
ab = reshape(SC_direction,nrows*ncols,1);
nColors = length(unique(diffMapa))+1;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
a = reshape(cluster_idx,nrows,ncols);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==1) = 3;
a(a==4) = 7;
a(a==5) = 7;
a(a==2) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
load('classificaOurilandia_1997_2000','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==4) = 7;
a(a==5) = 7;
a(a==1) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
load('classificaOurilandia_2000_2011','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==4) = 7;
a(a==5) = 7;
a(a==1) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)


%%
%%
%%
%%

load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
load('classificaSaoFelix_1990_1997','SC_direction')
%%
% [a,b] = adaptcluster_kmeans(SC_direction);
[nrows,ncols] = size(SC_direction);
ab = reshape(SC_direction,nrows*ncols,1);
nColors = length(unique(diffMapa));
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
a = reshape(cluster_idx,nrows,ncols);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
figure
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==1) = 0;
a(a==2) = 3;
a(a==5) = 9;

%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
load('classificaSaoFelix_1997_2000','SC_direction')
% [a,b] = adaptcluster_kmeans(SC_direction);
%% 
[nrows,ncols] = size(SC_direction);
ab = reshape(SC_direction,nrows*ncols,1);
nColors = length(unique(diffMapa));
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
a = reshape(cluster_idx,nrows,ncols);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==1) = 0;
a(a==5) = 3;
a(a==3) = 9;
a(a==2) = 7;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
%%
%%
load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
load('classificaSaoFelix_2000_2011','SC_direction')
[a,b] = adaptcluster_kmeans(SC_direction);
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
%%
imshow(a,[])
figure
imshow(diffMapa,[])
%%
a(a==3) = 0;
a(a==2) = 3;
a(a==4) = 9;
a(a==1) = 4;
%%
errMSE = immse(a,diffMapa)
errSIM = ssim(a,diffMapa)
