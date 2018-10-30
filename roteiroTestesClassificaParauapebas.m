%define clusters
load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
h9097 = length(unique(diffMapa))%4 clusters

load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
h9700 = length(unique(diffMapa))%4 clusters

load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
h0011 = length(unique(diffMapa))%4 clusters

clear diffMapa
%% ExpectationMaximization
load('WSParauapebas90-97NovasNuvens.mat','Direcao')
load('WSNovoParauapebas90-97NovasNuvens.mat', 'binParauapebas9097')
%
emDirecao9097 = Direcao;
emDirecao9097(binParauapebas9097==0) = 90;
[maskEM9097,~,~,~]=EMSeg(emDirecao9097,h9097);
save('NovoParauapebasMaskEM9097.mat','maskEM9097');
disp('em 9097')
%%
load('WSParauapebas97-00NovasNuvens.mat','Direcao')
load('WSNovoParauapebas97-00NovasNuvens.mat', 'binParauapebas9700')
%
emDirecao9700 = Direcao;
emDirecao9700(binParauapebas9700==0) = 90;
[maskEM9700,~,~,~]=EMSeg(emDirecao9700,h9700);
save('NovoParauapebasMaskEM9700.mat','maskEM9700');
disp('em 9700')
%%
load('WSParauapebas00-11NovasNuvens.mat','Direcao')
load('WSNovoParauapebas00-11NovasNuvens.mat', 'binParauapebas0011')
%
emDirecao0011 = Direcao;
emDirecao0011(binParauapebas0011==0) = 90;
[maskEM0011,~,~,~]=EMSeg(emDirecao0011,h0011);
save('NovoParauapebasMaskEM0011.mat','maskEM0011');
disp('em 0011')

%%
% FCM
load('WSParauapebas90-97NovasNuvens.mat','Direcao','maskFCM9097')
load('WSNovoParauapebas90-97NovasNuvens.mat', 'binParauapebas9097')
%
emDirecao9097 = Direcao;
emDirecao9097(binParauapebas9097==0) = 90;
[maskFCM9097,~,]=fuzzycmeans(emDirecao9097,h9097,10);
save('NovoParauapebasMaskFCM9097.mat','maskFCM9097');
disp('fcm 9097')
%%
load('WSParauapebas97-00NovasNuvens.mat','Direcao','maskFCM9700')
load('WSNovoParauapebas97-00NovasNuvens.mat', 'binParauapebas9700')
%
emDirecao9700 = Direcao;
emDirecao9700(binParauapebas9700==0) = 90;

[maskFCM9700,~,]=fuzzycmeans(emDirecao9700,h9700,10);
save('NovoParauapebasMaskFCM9700.mat','maskFCM9700');
disp('fcm 9700')
%%
load('WSParauapebas00-11NovasNuvens.mat','Direcao','maskFCM0011')
load('WSNovoParauapebas00-11NovasNuvens.mat', 'binParauapebas0011')
%
emDirecao0011 = Direcao;
emDirecao0011(binParauapebas0011==0) = 90;
[maskFCM0011,~,]=fuzzycmeans(emDirecao0011,h0011,10);
save('NovoParauapebasMaskFCM0011.mat','maskFCM0011');
disp('fcm 0011')
