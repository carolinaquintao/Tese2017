%define clusters
load('ws_Canaa_1990_1997.mat', 'diffMapa')
h9097 = length(unique(diffMapa))%3 clusters

load('ws_Canaa_1997_2000.mat', 'diffMapa')
h9700 = length(unique(diffMapa))%3 clusters

load('ws_Canaa_2000_2011.mat', 'diffMapa')
h0011 = length(unique(diffMapa))%4 clusters

clear diffMapa
%% ExpectationMaximization
load('WSCanaa90-97NovasNuvens.mat','Direcao')
load('WSNovoCanaa90-97NovasNuvens.mat', 'binCanaa9097')
%
emDirecao9097 = Direcao;
emDirecao9097(binCanaa9097==0) = 90;
[maskEM9097,~,~,~]=EMSeg(emDirecao9097,h9097);
save('NovoCanaaMaskEM9097.mat','maskEM9097');
disp('em 9097')
%%
load('WSCanaa97-00NovasNuvens.mat','Direcao')
load('WSNovoCanaa97-00NovasNuvens.mat', 'binCanaa9700')
%
emDirecao9700 = Direcao;
emDirecao9700(binCanaa9700==0) = 90;
[maskEM9700,~,~,~]=EMSeg(emDirecao9700,h9700);
save('NovoCanaaMaskEM9700.mat','maskEM9700');
disp('em 9700')
%%
load('WSCanaa00-11NovasNuvens.mat','Direcao')
load('WSNovoCanaa00-11NovasNuvens.mat', 'binCanaa0011')
%
emDirecao0011 = Direcao;
emDirecao0011(binCanaa0011==0) = 90;
[maskEM0011,~,~,~]=EMSeg(emDirecao0011,h0011);
save('NovoCanaaMaskEM0011.mat','maskEM0011');
disp('em 0011')

%%
% FCM
load('WSCanaa90-97NovasNuvens.mat','Direcao','maskFCM9097')
load('WSNovoCanaa90-97NovasNuvens.mat', 'binCanaa9097')
%
emDirecao9097 = Direcao;
emDirecao9097(binCanaa9097==0) = 90;
[maskFCM9097,~,]=fuzzycmeans(emDirecao9097,h9097,10);
save('NovoCanaaMaskFCM9097.mat','maskFCM9097');
disp('fcm 9097')
%%
load('WSCanaa97-00NovasNuvens.mat','Direcao','maskFCM9700')
load('WSNovoCanaa97-00NovasNuvens.mat', 'binCanaa9700')
%
emDirecao9700 = Direcao;
emDirecao9700(binCanaa9700==0) = 90;

[maskFCM9700,~,]=fuzzycmeans(emDirecao9700,h9700,10);
save('NovoCanaaMaskFCM9700.mat','maskFCM9700');
disp('fcm 9700')
%%
load('WSCanaa00-11NovasNuvens.mat','Direcao','maskFCM0011')
load('WSNovoCanaa00-11NovasNuvens.mat', 'binCanaa0011')
%
emDirecao0011 = Direcao;
emDirecao0011(binCanaa0011==0) = 90;
[maskFCM0011,~,]=fuzzycmeans(emDirecao0011,h0011,10);
save('NovoCanaaMaskFCM0011.mat','maskFCM0011');
disp('fcm 0011')
