%define clusters
load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
h9097 = length(unique(diffMapa))%3 clusters

load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
h9700 = length(unique(diffMapa))%4 clusters

load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
h0011 = length(unique(diffMapa))%4 clusters

clear diffMapa
%% ExpectationMaximization
load('WSOurilandia90-97NovasNuvens.mat','Direcao')
load('WSNovoOurilandia90-97NovasNuvens.mat', 'binOurilandia90972')
%
emDirecao9097 = Direcao;
emDirecao9097(binOurilandia90972==0) = 90;
[maskEM9097,~,~,~]=EMSeg(emDirecao9097,h9097);
save('NovoOurilandiaMaskEM9097.mat','maskEM9097');
disp('em 9097')
%%
load('WSOurilandia97-00NovasNuvens.mat','Direcao')
load('WSNovoOurilandia97-00NovasNuvens.mat', 'binOurilandia97002')
%
emDirecao9700 = Direcao;
emDirecao9700(binOurilandia97002==0) = 90;
[maskEM9700,~,~,~]=EMSeg(emDirecao9700,h9700);
save('NovoOurilandiaMaskEM9700.mat','maskEM9700');
disp('em 9700')
%%
load('WSOurilandia00-11NovasNuvens.mat','Direcao')
load('WSNovoOurilandia00-11NovasNuvens.mat', 'binOurilandia00112')
%
emDirecao0011 = Direcao;
emDirecao0011(binOurilandia00112==0) = 90;
[maskEM0011,~,~,~]=EMSeg(emDirecao0011,h0011);
save('NovoOurilandiaMaskEM0011.mat','maskEM0011');
disp('em 0011')

%%
% FCM
load('WSOurilandia90-97NovasNuvens.mat','Direcao','maskFCM9097')
load('WSNovoOurilandia90-97NovasNuvens.mat', 'binOurilandia90972')
%
emDirecao9097 = Direcao;
emDirecao9097(binOurilandia90972==0) = 90;
[maskFCM9097,~,]=fuzzycmeans(emDirecao9097,h9097,10);
save('NovoOurilandiaMaskFCM9097.mat','maskFCM9097');
disp('fcm 9097')
%%
load('WSOurilandia97-00NovasNuvens.mat','Direcao','maskFCM9700')
load('WSNovoOurilandia97-00NovasNuvens.mat', 'binOurilandia97002')
%
emDirecao9700 = Direcao;
emDirecao9700(binOurilandia97002==0) = 90;
[maskFCM9700,~,]=fuzzycmeans(emDirecao9700,h9700,10);
save('NovoOurilandiaMaskFCM9700.mat','maskFCM9700');
disp('fcm 9700')
%%
load('WSOurilandia00-11NovasNuvens.mat','Direcao','maskFCM0011')
load('WSNovoOurilandia00-11NovasNuvens.mat', 'binOurilandia00112')
%
emDirecao0011 = Direcao;
emDirecao0011(binOurilandia00112==0) = 90;
[maskFCM0011,~,]=fuzzycmeans(emDirecao0011,h0011,10);
save('NovoOurilandiaMaskFCM0011.mat','maskFCM0011');
disp('fcm 0011')
