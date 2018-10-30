%define clusters
load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
h9097 = length(unique(diffMapa))%5 clusters

% load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
% h9700 = length(unique(diffMapa))%5 clusters
% 
% load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
% h0011 = length(unique(diffMapa))%5 clusters

clear diffMapa
%% ExpectationMaximization
% load('WSSaoFelix90-97NovasNuvens.mat','Direcao')
% load('WSNovoSaoFelix90-97NovasNuvens.mat', 'binSaoFelix90972')
% %
% emDirecao9097 = Direcao;
% emDirecao9097(binSaoFelix90972==0) = 90;
% [maskEM9097,~,~,~]=EMSeg(emDirecao9097,h9097);
% save('NovoSaoFelixMaskEM9097.mat','maskEM9097');
% disp('em 9097')
% %%
% load('WSSaoFelix97-00NovasNuvens.mat','Direcao')
% load('WSNovoSaoFelix97-00NovasNuvens.mat', 'binSaoFelix97002')
% %
% emDirecao9700 = Direcao;
% emDirecao9700(binSaoFelix97002==0) = 90;
% [maskEM9700,~,~,~]=EMSeg(emDirecao9700,h9700);
% save('NovoSaoFelixMaskEM9700.mat','maskEM9700');
% disp('em 9700')
% %%
% load('WSSaoFelix00-11NovasNuvens.mat','Direcao')
% load('WSNovoSaoFelix00-11NovasNuvens.mat', 'binSaoFelix00112')
% %
% emDirecao0011 = Direcao;
% emDirecao0011(binSaoFelix00112==0) = 90;
% [maskEM0011,~,~,~]=EMSeg(emDirecao0011,h0011);
% save('NovoSaoFelixMaskEM0011.mat','maskEM0011');
% disp('em 0011')

%%
%xcodeFCM
load('WSSaoFelix90-97NovasNuvens.mat','Direcao','maskFCM9097')
load('WSNovoSaoFelix90-97NovasNuvens.mat', 'binSaoFelix90972')
%
emDirecao9097 = Direcao;
emDirecao9097(binSaoFelix90972==0) = 90;
clear binSaoFelix90972 Direcao
[maskFCM9097,~,]=fuzzycmeans(emDirecao9097,5,10);
save('NovoSaoFelixMaskFCM9097.mat','maskFCM9097');
disp('fcm 9097')
%%
% load('WSSaoFelix97-00NovasNuvens.mat','Direcao','maskFCM9700')
% load('WSNovoSaoFelix97-00NovasNuvens.mat', 'binSaoFelix97002')
% %
% emDirecao9700 = Direcao;
% emDirecao9700(binSaoFelix97002==0) = 90;
% [maskFCM9700,~,]=fuzzycmeans(emDirecao9700,h9700,10);
% save('NovoSaoFelixMaskFCM9700.mat','maskFCM9700');
% disp('fcm 9700')
%%
% load('WSSaoFelix00-11NovasNuvens.mat','Direcao','maskFCM0011')
% load('WSNovoSaoFelix00-11NovasNuvens.mat', 'binSaoFelix00112')
% %
% emDirecao0011 = Direcao;
% emDirecao0011(binSaoFelix00112==0) = 90;
% [maskFCM0011,~,]=fuzzycmeans(emDirecao0011,h0011,10);
% save('NovoSaoFelixMaskFCM0011.mat','maskFCM0011');
% disp('fcm 0011')
