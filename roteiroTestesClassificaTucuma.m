%define clusters
load('ws_Tucuma_1990_1997.mat', 'diffMapa')
h9097 = length(unique(diffMapa))%4 clusters

load('ws_Tucuma_1997_2000.mat', 'diffMapa')
h9700 = length(unique(diffMapa))%4 clusters

load('ws_Tucuma_2000_2011.mat', 'diffMapa')
h0011 = length(unique(diffMapa))%3 clusters

clear diffMapa
%% ExpectationMaximization
% load('WSTucuma90-97NovasNuvens.mat','Direcao')
% load('WSNovoTucuma90-97NovasNuvens.mat', 'binTucuma90972')
% %
% emDirecao9097 = Direcao;
% emDirecao9097(binTucuma90972==0) = 90;
% [maskEM9097,~,~,~]=EMSeg(emDirecao9097,h9097);
% save('NovoTucumaMaskEM9097.mat','maskEM9097');
% disp('em 9097')
% %%
% load('WSTucuma97-00NovasNuvens.mat','Direcao')
% load('WSNovoTucuma97-00NovasNuvens.mat', 'binTucuma97002')
% %
% emDirecao9700 = Direcao;
% emDirecao9700(binTucuma97002==0) = 90;
% [maskEM9700,~,~,~]=EMSeg(emDirecao9700,h9700);
% save('NovoTucumaMaskEM9700.mat','maskEM9700');
% disp('em 9700')
% %%
% load('WSTucuma00-11NovasNuvens.mat','Direcao')
% load('WSNovoTucuma00-11NovasNuvens.mat', 'binTucuma00112')
% %
% emDirecao0011 = Direcao;
% emDirecao0011(binTucuma00112==0) = 90;
% [maskEM0011,~,~,~]=EMSeg(emDirecao0011,h0011);
% save('NovoTucumaMaskEM0011.mat','maskEM0011');
% disp('em 0011')

%%
% FCM
load('WSTucuma90-97NovasNuvens.mat','Direcao','maskFCM9097')
load('WSNovoTucuma90-97NovasNuvens.mat', 'binTucuma9097')
%
emDirecao9097 = Direcao;
emDirecao9097(binTucuma9097==0) = 90;
[maskFCM9097,~,]=fuzzycmeans(emDirecao9097,h9097,10);
save('NovoTucumaMaskFCM90972.mat','maskFCM9097');
disp('fcm 9097')
%%
load('WSTucuma97-00NovasNuvens.mat','Direcao','maskFCM9700')
load('WSNovoTucuma97-00NovasNuvens.mat', 'binTucuma9700')
%
emDirecao9700 = Direcao;
emDirecao9700(binTucuma9700==0) = 90;
[maskFCM9700,~,]=fuzzycmeans(emDirecao9700,h9700,10);
save('NovoTucumaMaskFCM97002.mat','maskFCM9700');
disp('fcm 9700')
%%
load('WSTucuma00-11NovasNuvens.mat','Direcao','maskFCM0011')
load('WSNovoTucuma00-11NovasNuvens.mat', 'binTucuma0011')
%
emDirecao0011 = Direcao;
emDirecao0011(binTucuma0011==0) = 90;
[maskFCM0011,~,]=fuzzycmeans(emDirecao0011,h0011,10);
save('NovoTucumaMaskFCM00112.mat','maskFCM0011');
disp('fcm 0011')
