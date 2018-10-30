%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%K-means%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude8493')
nColors = 4;%tem que ser 4 pq tem problema de iluminação
[cluster_idx, cluster_center] = kmeans(reshape(Magnitude8493,2539*5404,1),nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels8493 = reshape(cluster_idx,2539,5404);
imshow(pixel_labels8493,[]), title('image labeled by cluster index');

sum(sum(pixel_labels8493==2))/totalRealPixels %8.57


load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude9398')
nColors = 4;%tem que ser 4 pq tem problema de iluminação
[cluster_idx, cluster_center] = kmeans(reshape(Magnitude9398,2539*5404,1),nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels9398 = reshape(cluster_idx,2539,5404);
imshow(pixel_labels9398,[]), title('image labeled by cluster index');

sum(sum(pixel_labels9398==2))/totalRealPixels %5.84

%
load('MagnitudeCorreta.mat', 'nMagnitude9802')
nColors = 3;%tem que ser 4 pq tem problema de iluminação
[cluster_idx, cluster_center] = kmeans(reshape(nMagnitude9802,2539*5404,1),nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels9802 = reshape(cluster_idx,2539,5404);
imshow(pixel_labels9802,[]), title('image labeled by cluster index');

sum(sum(pixel_labels9802==3))/totalRealPixels %11.47

%
load('MagnitudeCorreta.mat', 'nMagnitude0206')
nColors = 3;%tem que ser 4 pq tem problema de iluminação
[cluster_idx, cluster_center] = kmeans(reshape(nMagnitude0206,2539*5404,1),nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels0206 = reshape(cluster_idx,2539,5404);
imshow(pixel_labels0206,[]), title('image labeled by cluster index');

sum(sum(pixel_labels0206==3))/totalRealPixels %11.61

%
load('MagnitudeCorreta.mat', 'nMagnitude0611')
nColors = 2;%tem que ser 4 pq tem problema de iluminação
[cluster_idx, cluster_center] = kmeans(reshape(nMagnitude0611,2539*5404,1),nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels0611 = reshape(cluster_idx,2539,5404);
imshow(pixel_labels0611,[]), title('image labeled by cluster index');

sum(sum(pixel_labels0206==1))/totalRealPixels %13.94

%salvo em resultadoKM8493e9398e0206.mat e resultadoKM9802e0611
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%OTSU%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude8493')
[IDX8493,sep8493] = otsu(Magnitude8493,4);
sum(sum(IDX8493==2))/totalRealPixels %51.53

load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude9398')
[IDX9398,sep9398] = otsu(Magnitude9398,4);
 sum(sum(IDX9398==2))/totalRealPixels %59.04

load('MagnitudeCorreta.mat', 'nMagnitude9802')
[IDX9802,sep9802] = otsu(nMagnitude9802,4);
 sum(sum(IDX9802==3))/totalRealPixels %11.39

load('MagnitudeCorreta.mat', 'nMagnitude0206')
[IDX0206,sep0206] = otsu(nMagnitude0206,4);
 sum(sum(IDX0206==3))/totalRealPixels %11.70

load('MagnitudeCorreta.mat', 'nMagnitude0611')
[IDX0611,sep0611] = otsu(nMagnitude0611,4);
sum(sum(IDX0611==4|IDX0611==3))/totalRealPixels %13.49

%salvo em resultadoOtsu8493e9398e9802e0206e0611.mat
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EM%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[mask8493,mu,v,p]=EMSeg(Magnitude8493,3);
sum(sum(mask8493==2))/totalRealPixels %8.98

[mask9398,mu,v,p]=EMSeg(Magnitude9398,3);
sum(sum(mask9398==2))/totalRealPixels %12.60

[mask9802,mu,v,p]=EMSeg(nMagnitude9802,3);
sum(sum(mask9802==2|mask9802==3))/totalRealPixels %7.26

[mask0206,mu,v,p]=EMSeg(nMagnitude0206,3);
sum(sum(mask0206==2|mask0206==3))/totalRealPixels %6.97

[mask0611,mu,v,p]=EMSeg(nMagnitude0611,3);
sum(sum(mask0611==3))/totalRealPixels %11.87

%salvo em resultadoEM8493e9398e9802e0206e0611.mat

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FCM%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude8493')
% Magnitude8493(Magnitude8493>400) = 0;
[Ifc8493,CI8493] = fuzzycmeans(Magnitude8493,4,5);
[~,b] = max(CI8493);
If8493 = Ifc8493 == b;
sum(If8493(:))/totalRealPixels %9.10

% load('MagnitudeDirecaoCorretas8493e9398e8411.mat', 'Magnitude9398')
[Ifc9398,CI9398] = fuzzycmeans(Magnitude9398,5,5);
[~,b] = max(CI9398);
If9398 = Ifc9398 == b;
sum(If9398(:))/totalRealPixels %5.79

% load('MagnitudeCorreta.mat', 'nMagnitude9802')
[Ifc9802,CI9802] = fuzzycmeans(nMagnitude9802,4,5);
[~,b] = max(CI9802);
If9802 = Ifc9802 == b;
sum(If9802(:))/totalRealPixels %16.19

% load('MagnitudeCorreta.mat', 'nMagnitude0206')
[Ifc0206,CI0206] = fuzzycmeans(nMagnitude0206,5,5);
[~,b] = max(CI0206);
If0206 = (Ifc0206 == 2 | Ifc0206 == 4);
sum(If0206(:))/totalRealPixels %13.33

% load('MagnitudeCorreta.mat', 'nMagnitude0611')
[Ifc0611,CI0611] = fuzzycmeans(nMagnitude0611,5,5);
[~,b] = max(CI0611);
If0611 = Ifc0611 == b;
sum(If0611(:))/totalRealPixels %10.47

%salvo em resultadoFCM8493e9398e9802e0206e0611.mat
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Separa quem classifica%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('MagnitudeDirecaoCorretas8493e9398e8411.mat','Direcao8493')
% kmDirecao8493 = Direcao8493; oDirecao8493 = Direcao8493; 
% fcmDirecao8493 = Direcao8493;emDirecao8493 = Direcao8493;
fcm = ones(size(mask8493));km = ones(size(mask8493));
em = ones(size(mask8493));o = ones(size(mask8493));

fcm(Ifc8493~=3)=0;
fcmDirecao8493  = Direcao8493.*fcm;

em(mask8493~=2)=0;
emDirecao8493  = Direcao8493.*em;

km(pixel_labels8493~=2)=0;
kmDirecao8493  = Direcao8493.*km;

o(IDX8493~=2)=0;
oDirecao8493  = Direcao8493.*o;


% kmDirecao8493(pixel_labels8493~=2) = NaN;
% oDirecao8493(IDX8493~=2) = NaN;
% emDirecao8493(mask8493~=2) = NaN;
% fcmDirecao8493(Ifc8493~=3)=NaN;

%%
load('MagnitudeDirecaoCorretas8493e9398e8411.mat','Direcao9398')
% kmDirecao9398 = Direcao9398; oDirecao9398 = Direcao9398; emDirecao9398 = Direcao9398;
% fcmDirecao9398 = Direcao9398;
fcm = ones(size(mask9398));km = ones(size(mask9398));
em = ones(size(mask9398));o = ones(size(mask9398));

fcm(Ifc9398~=2)=0;
fcmDirecao9398  = Direcao9398.*fcm;

em(mask9398~=2)=0;
emDirecao9398  = Direcao9398.*em;

km(pixel_labels9398~=2)=0;
kmDirecao9398  = Direcao9398.*km;

o(IDX9398~=2)=0;
oDirecao9398  = Direcao9398.*o;

% fcmDirecao9398(Ifc9398~=2) = NaN;
% kmDirecao9398(pixel_labels9398~=2) = NaN;
% oDirecao9398(IDX9398~=2) = NaN;
% emDirecao9398(mask9398~=2) = NaN;
%%
load('DirecaoCorreta.mat', 'Direcao9802')
% kmDirecao9802 = Direcao9802; oDirecao9802 = Direcao9802; emDirecao9802 = Direcao9802;
% fcmDirecao9802 = Direcao9802;
fcm = ones(size(mask9802));km = ones(size(mask9802));
em = ones(size(mask9802));o = ones(size(mask9802));

fcm(Ifc9802~=1)=0;
fcmDirecao9802  = Direcao9802.*fcm;

em(mask9802~=2&mask9802~=3)=0;
emDirecao9802  = Direcao9802.*em;

km(pixel_labels9802~=3)=0;
kmDirecao9802  = Direcao9802.*km;

o(IDX9802~=3)=0;
oDirecao9802  = Direcao9802.*o;
% fcmDirecao9802(Ifc9802~=1) = NaN;
% kmDirecao9802(pixel_labels9802~=3) = NaN;
% oDirecao9802(IDX9802~=3) = NaN;
% emDirecao9802(mask9802~=2&mask9802~=3) = NaN;
%%
load('DirecaoCorreta.mat', 'Direcao0206')
% kmDirecao0206 = Direcao0206; oDirecao0206 = Direcao0206; emDirecao0206 = Direcao0206;
% fcmDirecao0206 = Direcao0206;
fcm = ones(size(mask0206));km = ones(size(mask0206));
em = ones(size(mask0206));o = ones(size(mask0206));

fcm(Ifc0206~=2 & Ifc0206 ~= 4)=0;
fcmDirecao0206  = Direcao0206.*fcm;

em(mask0206~=2&mask0206~=3)=0;
emDirecao0206  = Direcao0206.*em;

km(pixel_labels0206~=3)=0;
kmDirecao0206  = Direcao0206.*km;

o(IDX0206~=3)=0;
oDirecao0206  = Direcao0206.*o;

% fcmDirecao0206(Ifc0206~=2 & Ifc0206 ~= 4) = NaN;
% kmDirecao0206(pixel_labels0206~=3) = NaN;
% oDirecao0206(IDX0206~=3) = NaN;
% emDirecao0206(mask0206~=2&mask0206~=3) = NaN;
%%
load('DirecaoCorreta.mat', 'Direcao0611')
% kmDirecao0611 = Direcao0611; oDirecao0611 = Direcao0611; emDirecao0611 = Direcao0611;
% fcmDirecao0611 = Direcao0611;
fcm = ones(size(mask0611));km = ones(size(mask0611));
em = ones(size(mask0611));o = ones(size(mask0611));

fcm(Ifc0611~=4)=0;
fcmDirecao0611  = Direcao0611.*fcm;

em(mask0611~=3)=0;
emDirecao0611  = Direcao0611.*em;

km(pixel_labels0611~=1)=0;
kmDirecao0611  = Direcao0611.*km;

o(IDX0611~=4)=0;
oDirecao0611  = Direcao0611.*o;
% fcmDirecao0611(Ifc0611~=4) = NaN;
% kmDirecao0611(pixel_labels0611~=1) = NaN;
% oDirecao0611(IDX0611~=4) = NaN;
% emDirecao0611(mask0611~=3) = NaN;


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Classifica%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%define clusters
load('mapasClassificacaoReferencia.mat', 'mudaClassMagnitude8493')
h8493 = length(unique(mudaClassMagnitude8493))%clusters
load('mapasClassificacaoReferencia.mat', 'mudaClassMagnitude9398')
h9398 = length(unique(mudaClassMagnitude9398))%clusters
load('mapasClassificacaoReferencia.mat', 'mudaClassMagnitude9802')
h9802 = length(unique(mudaClassMagnitude9802))%clusters
load('mapasClassificacaoReferencia.mat', 'mudaClassMagnitude0206')
h0206 = length(unique(mudaClassMagnitude0206))%clusters
load('mapasClassificacaoReferencia.mat', 'mudaClassMagnitude0611')
h0611 = length(unique(mudaClassMagnitude0611))%clusters


%% ExpectationMaximization -> ExpectationMaximization
h8493 = 6; h9398 = 6; h9802 = 6; h0206 = 6; h0611 = 5;
emDirecao8493(isnan(emDirecao8493)) = 0;
[maskEMEM8493,muD,vD,pD]=EMSeg(emDirecao8493,h8493);
save('maskEMEM8493.mat','maskEMEM8493');

emDirecao9398(isnan(emDirecao9398)) = 0;
[maskEMEM9398,muD,vD,pD]=EMSeg(emDirecao9398,h9398);
save('maskEMEM9398.mat','maskEMEM9398');

emDirecao9802(isnan(emDirecao9802)) = 0;
[maskEMEM9802,muD,vD,pD]=EMSeg(emDirecao9802,h9802);
save('maskEMEM9802.mat','maskEMEM9802');

emDirecao0206(isnan(emDirecao0206)) = 0;
[maskEMEM0206,muD,vD,pD]=EMSeg(emDirecao0206,h0206);
save('maskEMEM0206.mat','maskEMEM0206');

emDirecao0611(isnan(emDirecao0611)) = 0;
[maskEMEM0611,muD,vD,pD]=EMSeg(emDirecao0611,h0611);
save('maskEMEM0611.mat','maskEMEM0611');
%%
% ExpectationMaximization -> Kmeans
emDirecao8493(isnan(emDirecao8493)) = 0;
[cluster_idx8493, cluster_center8493] = kmeans(reshape(emDirecao8493,2539*5404,1),h8493,'distance','sqEuclidean','Replicates',3);
maskEMKM8493 = reshape(cluster_idx8493,2539,5404);
save('maskEMKM8493.mat','maskEMKM8493');

emDirecao9398(isnan(emDirecao9398)) = 0;
[cluster_idx9398, cluster_center9398] = kmeans(reshape(emDirecao9398,2539*5404,1),h9398,'distance','sqEuclidean','Replicates',3);
maskEMKM9398 = reshape(cluster_idx9398,2539,5404);
save('maskEMKM9398.mat','maskEMKM9398');

emDirecao9802(isnan(emDirecao9802)) = 0;
[cluster_idx9802, cluster_center9802] = kmeans(reshape(emDirecao9802,2539*5404,1),h9802,'distance','sqEuclidean','Replicates',3);
maskEMKM9802 = reshape(cluster_idx9802,2539,5404);
save('maskEMKM9802.mat','maskEMKM9802');

emDirecao0206(isnan(emDirecao0206)) = 0;
[cluster_idx0206, cluster_center0206] = kmeans(reshape(emDirecao0206,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
maskEMKM0206 = reshape(cluster_idx0206,2539,5404);
save('maskEMKM0206.mat','maskEMKM0206');

emDirecao0611(isnan(emDirecao0611)) = 0;
[cluster_idx0611, cluster_center0611] = kmeans(reshape(emDirecao0611,2539*5404,1),h0611,'distance','sqEuclidean','Replicates',3);
maskEMKM0611 = reshape(cluster_idx0611,2539,5404);
save('maskEMKM0611.mat','maskEMKM0611');

% EspectationMaximization -> fcm
emDirecao8493(isnan(emDirecao8493)) = 0;
[maskEMFCM8493,centeremDCT8493] = fuzzycmeans(emDirecao9398, h8493,8);
save('maskEMFCM8493.mat','maskEMFCM8493');

emDirecao9398(isnan(emDirecao9398)) = 0;
[maskEMFCM9398,centeremDCT9398] = fuzzycmeans(emDirecao9398, h9398,8);
save('maskEMFCM9398.mat','maskEMFCM9398');

emDirecao9802(isnan(emDirecao9802)) = 0;
[maskEMFCM9802,centeremDCT9802] = fuzzycmeans(emDirecao9802, h9802,8);
save('maskEMFCM9802.mat','maskEMFCM9802');

emDirecao0206(isnan(emDirecao0206)) = 0;
[maskEMFCM0206,centeremDCT0206] = fuzzycmeans(emDirecao0206, h0206,8);
save('maskEMFCM0206.mat','maskEMFCM0206');

emDirecao0611(isnan(emDirecao0611)) = 0;
[maskEMFCM0611,centeremDCT0611] = fuzzycmeans(emDirecao0611, h0611,8);
save('maskEMFCM0611.mat','maskEMFCM0611');

%% Kmeans -> ExpectationMaximization
kmDirecao8493(isnan(kmDirecao8493)) = 0;
[maskKMEM8493,muD,vD,pD]=EMSeg(kmDirecao8493,h8493);
save('maskKMEM8493.mat','maskKMEM8493')

kmDirecao9398(isnan(kmDirecao9398)) = 0;
[maskKMEM9398,muD,vD,pD]=EMSeg(kmDirecao9398,h9398);
save('maskKMEM9398.mat','maskKMEM9398')

kmDirecao9802(isnan(kmDirecao9802)) = 0;
[maskKMEM9802,muD,vD,pD]=EMSeg(kmDirecao9802,h9802);
save('maskKMEM9802.mat','maskKMEM9802')

kmDirecao0206(isnan(kmDirecao0206)) = 0;
[maskKMEM0206,muD,vD,pD]=EMSeg(kmDirecao0206,h0206);
save('maskKMEM0206.mat','maskKMEM0206')

kmDirecao0611(isnan(kmDirecao0611)) = 0;
[maskKMEM0611,muD,vD,pD]=EMSeg(kmDirecao0611,h0611);
save('maskKMEM0611.mat','maskKMEM0611')

% Kmeans -> Kmeans
kmDirecao8493(isnan(kmDirecao8493)) = 0;
[cluster_idx8493, cluster_center8493] = kmeans(reshape(kmDirecao8493,2539*5404,1),h8493,'distance','sqEuclidean','Replicates',3);
maskKMKM8493 = reshape(cluster_idx8493,2539,5404);
save('maskKMKM8493.mat','maskKMKM8493')

kmDirecao9398(isnan(kmDirecao9398)) = 0;
[cluster_idx9398, cluster_center9398] = kmeans(reshape(kmDirecao9398,2539*5404,1),h9398,'distance','sqEuclidean','Replicates',3);
maskKMKM9398 = reshape(cluster_idx9398,2539,5404);
save('maskKMKM9398.mat','maskKMKM9398')

kmDirecao9802(isnan(kmDirecao9802)) = 0;
[cluster_idx9802, cluster_center9802] = kmeans(reshape(kmDirecao9802,2539*5404,1),h9802,'distance','sqEuclidean','Replicates',3);
maskKMKM9802 = reshape(cluster_idx9802,2539,5404);
save('maskKMKM9802.mat','maskKMKM9802')

kmDirecao0206(isnan(kmDirecao0206)) = 0;
[cluster_idx0206, cluster_center0206] = kmeans(reshape(kmDirecao0206,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
maskKMKM0206 = reshape(cluster_idx0206,2539,5404);
save('maskKMKM0206.mat','maskKMKM0206')

kmDirecao0611(isnan(kmDirecao0611)) = 0;
[cluster_idx0611, cluster_center0611] = kmeans(reshape(kmDirecao0611,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
maskKMKM0611 = reshape(cluster_idx0611,2539,5404);
save('maskKMKM0611.mat','maskKMKM0611')

% kmeans -> fcm
kmDirecao8493(isnan(kmDirecao8493)) = 0;
[maskKMFCM8493,centerkmDCT8493] = fuzzycmeans(kmDirecao9398, h8493,8);
save('maskKMFCM8493.mat','maskKMFCM8493')

kmDirecao9398(isnan(kmDirecao9398)) = 0;
[maskKMFCM9398,centerkmDCT9398] = fuzzycmeans(kmDirecao9398, h9398,8);
save('maskKMFCM9398.mat','maskKMFCM9398')

kmDirecao9802(isnan(kmDirecao9802)) = 0;
[maskKMFCM9802,centerkmDCT9802] = fuzzycmeans(kmDirecao9802, h9802,8);
save('maskKMFCM9802.mat','maskKMFCM9802')

kmDirecao0206(isnan(kmDirecao0206)) = 0;
[maskKMFCM0206,centerkmDCT0206] = fuzzycmeans(kmDirecao0206, h0206,8);
save('maskKMFCM0206.mat','maskKMFCM0206')

kmDirecao0611(isnan(kmDirecao0611)) = 0;
[maskKMFCM0611,centerkmDCT0611] = fuzzycmeans(kmDirecao0611, h0611,8);
save('maskKMFCM0611.mat','maskKMFCM0611')

%% Kmeans -> Isodata
% kmDirecao8493(isnan(kmDirecao8493)) = 0;
% [cluster_idx8493, cluster_center8493] = kmeans(reshape(kmDirecao8493,2539*5404,1),h8493,'distance','sqEuclidean','Replicates',3);
% maskKMIS8493 = reshape(cluster_idx8493,2539,5404);
% 
% kmDirecao9398(isnan(kmDirecao9398)) = 0;
% [cluster_idx9398, cluster_center9398] = kmeans(reshape(kmDirecao9398,2539*5404,1),h9398,'distance','sqEuclidean','Replicates',3);
% maskKMIS9398 = reshape(cluster_idx9398,2539,5404);
% 
% kmDirecao9802(isnan(kmDirecao9802)) = 0;
% [cluster_idx9802, cluster_center9802] = kmeans(reshape(kmDirecao9802,2539*5404,1),h9802,'distance','sqEuclidean','Replicates',3);
% maskKMIS9802 = reshape(cluster_idx9802,2539,5404);
% 
% kmDirecao0206(isnan(kmDirecao0206)) = 0;
% [cluster_idx0206, cluster_center0206] = kmeans(reshape(kmDirecao0206,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
% maskKMIS0206 = reshape(cluster_idx0206,2539,5404);
% 
% kmDirecao0611(isnan(kmDirecao0611)) = 0;
% [cluster_idx0611, cluster_center0611] = kmeans(reshape(kmDirecao0611,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
% maskKMIS0611 = reshape(cluster_idx0611,2539,5404);
% 
% %% ExpectationMaximization -> Isodata
% emDirecao8493(isnan(emDirecao8493)) = 0;
% [cluster_idx8493, cluster_center8493] = kmeans(reshape(emDirecao8493,2539*5404,1),h8493,'distance','sqEuclidean','Replicates',3);
% maskEMIS8493 = reshape(cluster_idx8493,2539,5404);
% 
% emDirecao9398(isnan(emDirecao9398)) = 0;
% [cluster_idx9398, cluster_center9398] = kmeans(reshape(emDirecao9398,2539*5404,1),h9398,'distance','sqEuclidean','Replicates',3);
% maskEMIS9398 = reshape(cluster_idx9398,2539,5404);
% 
% emDirecao9802(isnan(emDirecao9802)) = 0;
% [cluster_idx9802, cluster_center9802] = kmeans(reshape(emDirecao9802,2539*5404,1),h9802,'distance','sqEuclidean','Replicates',3);
% maskEMIS9802 = reshape(cluster_idx9802,2539,5404);
% 
% emDirecao0206(isnan(emDirecao0206)) = 0;
% [cluster_idx0206, cluster_center0206] = kmeans(reshape(emDirecao0206,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
% maskEMIS0206 = reshape(cluster_idx0206,2539,5404);
% 
% emDirecao0611(isnan(emDirecao0611)) = 0;
% [cluster_idx0611, cluster_center0611] = kmeans(reshape(emDirecao0611,2539*5404,1),h0611,'distance','sqEuclidean','Replicates',3);
% maskEMIS0611 = reshape(cluster_idx0611,2539,5404);

% %% kmeans -> dct dissertacao(imagem_filtrada,domain,nuvem,algo,dct_blk,n_regioes,seg_blk)
% kmDirecao8493(isnan(kmDirecao8493)) = 0;
% kmDCT8493 = dissertacao(kmDirecao9398,'gray','false',2,4,h8493,2);
% 
% kmDirecao9398(isnan(kmDirecao9398)) = 0;
% kmDCT9398 = dissertacao(kmDirecao9398,'gray','false',2,4,h9398,2);
% 
% kmDirecao9802(isnan(kmDirecao9802)) = 0;
% kmDCT9802 = dissertacao(kmDirecao9802,'gray','false',2,4,h9802,2);
% 
% kmDirecao0206(isnan(kmDirecao0206)) = 0;
% kmDCT0206 = dissertacao(kmDirecao0206,'gray','false',2,4,h0206,2);
% 
% kmDirecao0611(isnan(kmDirecao0611)) = 0;
% kmDCT0611 = dissertacao(kmDirecao0611,'gray','false',2,4,h0611,2);
% 
% %% EspectationMaximization -> dct
% emDirecao8493(isnan(emDirecao8493)) = 0;
% emDCT8493 = dissertacao(emDirecao9398,'gray','false',2,4,h8493,2);
% 
% emDirecao9398(isnan(emDirecao9398)) = 0;
% emDCT9398 = dissertacao(emDirecao9398,'gray','false',2,4,h9398,2);
% 
% emDirecao9802(isnan(emDirecao9802)) = 0;
% emDCT9802 = dissertacao(emDirecao9802,'gray','false',2,4,h9802,2);
% 
% emDirecao0206(isnan(emDirecao0206)) = 0;
% emDCT0206 = dissertacao(emDirecao0206,'gray','false',2,4,h0206,2);
% 
% emDirecao0611(isnan(emDirecao0611)) = 0;
% emDCT0611 = dissertacao(emDirecao0611,'gray','false',2,4,h0611,2);


%% FCM -> ExpectationMaximization
fcmDirecao8493(isnan(fcmDirecao8493)) = 0;
[maskFCMEM8493,muD,vD,pD]=EMSeg(fcmDirecao8493,h8493);
save('maskFCMEM8493.mat','maskFCMEM8493')

fcmDirecao9398(isnan(fcmDirecao9398)) = 0;
[maskFCMEM9398,muD,vD,pD]=EMSeg(fcmDirecao9398,h9398);
save('maskFCMEM9398.mat','maskFCMEM9398')

fcmDirecao9802(isnan(fcmDirecao9802)) = 0;
[maskFCMEM9802,muD,vD,pD]=EMSeg(fcmDirecao9802,h9802);
save('maskFCMEM9802.mat','maskFCMEM9802')

fcmDirecao0206(isnan(fcmDirecao0206)) = 0;
[maskFCMEM0206,muD,vD,pD]=EMSeg(fcmDirecao0206,h0206);
save('maskFCMEM0206.mat','maskFCMEM0206')

fcmDirecao0611(isnan(fcmDirecao0611)) = 0;
[maskFCMEM0611,muD,vD,pD]=EMSeg(fcmDirecao0611,h0611);
save('maskFCMEM0611.mat','maskFCMEM0611')

% FCM -> Kmeans
fcmDirecao8493(isnan(fcmDirecao8493)) = 0;
[cluster_idx8493, cluster_center8493] = kmeans(reshape(fcmDirecao8493,2539*5404,1),h8493,'distance','sqEuclidean','Replicates',3);
maskFCMKM8493 = reshape(cluster_idx8493,2539,5404);
save('maskFCMKM8493.mat','maskFCMKM8493')

fcmDirecao9398(isnan(fcmDirecao9398)) = 0;
[cluster_idx9398, cluster_center9398] = kmeans(reshape(fcmDirecao9398,2539*5404,1),h9398,'distance','sqEuclidean','Replicates',3);
maskFCMKM9398 = reshape(cluster_idx9398,2539,5404);
save('maskFCMKM9398.mat','maskFCMKM9398')

fcmDirecao9802(isnan(fcmDirecao9802)) = 0;
[cluster_idx9802, cluster_center9802] = kmeans(reshape(fcmDirecao9802,2539*5404,1),h9802,'distance','sqEuclidean','Replicates',3);
maskFCMKM9802 = reshape(cluster_idx9802,2539,5404);
save('maskFCMKM9802.mat','maskFCMKM9802')

fcmDirecao0206(isnan(fcmDirecao0206)) = 0;
[cluster_idx0206, cluster_center0206] = kmeans(reshape(fcmDirecao0206,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
maskFCMKM0206 = reshape(cluster_idx0206,2539,5404);
save('maskFCMKM0206.mat','maskFCMKM0206')

fcmDirecao0611(isnan(fcmDirecao0611)) = 0;
[cluster_idx0611, cluster_center0611] = kmeans(reshape(fcmDirecao0611,2539*5404,1),h0206,'distance','sqEuclidean','Replicates',3);
maskFCMKM0611 = reshape(cluster_idx0611,2539,5404);
save('maskFCMKM0611.mat','maskFCMKM0611')

% FCM -> fcm
fcmDirecao8493(isnan(fcmDirecao8493)) = 0;
[maskFCMFCM8493,centerkmDCT8493] = fuzzycmeans(fcmDirecao9398, h8493,8);
save('maskFCMFCM8493.mat','maskFCMFCM8493')

fcmDirecao9398(isnan(fcmDirecao9398)) = 0;
[maskFCMFCM9398,centerkmDCT9398] = fuzzycmeans(fcmDirecao9398, h9398,8);
save('maskFCMFCM9398.mat','maskFCMFCM9398')

fcmDirecao9802(isnan(fcmDirecao9802)) = 0;
[maskFCMFCM9802,centerkmDCT9802] = fuzzycmeans(fcmDirecao9802, h9802,8);
save('maskFCMFCM9802.mat','maskFCMFCM9802')

fcmDirecao0206(isnan(fcmDirecao0206)) = 0;
[maskFCMFCM0206,centerkmDCT0206] = fuzzycmeans(fcmDirecao0206, h0206,8);
save('maskFCMFCM0206.mat','maskFCMFCM0206')

fcmDirecao0611(isnan(fcmDirecao0611)) = 0;
[maskFCMFCM0611,centerkmDCT0611] = fuzzycmeans(fcmDirecao0611, h0611,8);
save('maskFCMFCM0611.mat','maskFCMFCM0611')
