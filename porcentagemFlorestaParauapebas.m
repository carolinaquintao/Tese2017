% load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Parauapebas_2000_2011.mat', 'tempo1')
% load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Parauapebas_2000_2011.mat', 'tempo2')
% 
% load('NovoParauapebasMaskFCM9700.mat')
% maskFCM9700(tempo1(:,:,1)==-9999) = NaN;
% % imshow(maskFCM9700,[])
% 
% load('NovoParauapebasMaskFCM0011.mat')
% maskFCM0011(tempo2(:,:,1)==-9999) = NaN;
% % imshow(maskFCM0011,[])
% 
% % figure,imshow(tempo1(:,:,1),[])
% % figure,imshow(tempo2(:,:,1),[])
% % close all
% 
% totalCena2000 = sum(sum(tempo1(:,:,1)~=-9999));
% totalCena2011 = sum(sum(tempo2(:,:,1)~=-9999));
% 
% % load('mapa_referencia_Parauapebas_2000.mat', 'mapa')
% canga00 = 0;%sum(sum(mapa==2|mapa==7));
% 
% % load('mascaraNuvemParauapebas2.mat', 'Parauapebas2000')
% % load('mascaraNuvemParauapebas2.mat', 'Parauapebas1997')
% nuvem00 = 0;%sum(sum(Parauapebas2000==-5555 | Parauapebas1997 ==-5555));
% 
% clear tempo1 tempo2 mapa
% 
% naoMuda00 = sum(sum(maskFCM9700==1)) - canga00 - nuvem00;
% 
% perc00 = naoMuda00/totalCena2000
% 
% 
% 
% % load('mapa_referencia_Parauapebas_2011.mat', 'mapa')
% canga11 = 0;%sum(sum(mapa==2|mapa==7));
% 
% % load('mascaraNuvemParauapebas2.mat', 'Parauapebas2011')
% nuvem11 = 0;%sum(sum(Parauapebas2000==-5555 | Parauapebas2011 ==-5555));
% 
% 
% clear mapa
% 
% naoMuda11 = sum(sum(maskFCM0011==2)) - canga11 - nuvem11;
% 
% perc11 = naoMuda11/totalCena2011
% 
%%
load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Parauapebas_2000_2011.mat', 'tempo1')
cor1997jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Parauapebas240Referencia/cor1997jpg.jpg');
cor2000jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Parauapebas240Referencia/cor2000jpg.jpg');
cor2011jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Parauapebas240Referencia/cor2011jpg.jpg');
load('NovoParauapebasMaskFCM9097.mat', 'maskFCM9097')
load('NovoParauapebasMaskFCM9700.mat', 'maskFCM9700')
load('NovoParauapebasMaskFCM0011.mat', 'maskFCM0011')


load('mapa_referencia_Parauapebas_1997.mat', 'mapa')

cena = mat2gray(cor1997jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM9097~=2) = 1;%0.84;
% m2(maskFCM9097~=2) = .5;%0.71;
% m3(maskFCM9097~=2) = .2;%0.46;
m1(maskFCM9097==2&mapa==5) = 1;%.19;
m2(maskFCM9097==2&mapa==5) = .5;%.35;
m3(maskFCM9097==2&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor1997 = cat(3, m1,m2,m3);
figure,imshow(mapacor1997,[])

load('mapa_referencia_Parauapebas_2000.mat', 'mapa')

cena = mat2gray(cor2000jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM9700~=1) = 1;%0.84;
% m2(maskFCM9700~=1) = .5;%0.71;
% m3(maskFCM9700~=1) = 0.2;%0.46;
m1(maskFCM9700==1&mapa==5) = 1;%.19;
m2(maskFCM9700==1&mapa==5) = .5;%.35;
m3(maskFCM9700==1&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor2000 = cat(3, m1,m2,m3);
figure,imshow(mapacor2000,[])


load('mapa_referencia_Parauapebas_2011.mat', 'mapa')

cena = mat2gray(cor2011jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM0011~=2) = 1;%0.84;
% m2(maskFCM0011~=2) = .5;%0.71;
% m3(maskFCM0011~=2) = 0.2;%0.46;
m1(maskFCM0011==2&mapa==5) = 1;%.19;
m2(maskFCM0011==2&mapa==5) = .5;%.35;
m3(maskFCM0011==2&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor2011 = cat(3, m1,m2,m3);
figure,imshow(mapacor2011,[])

save('cenasComDestaqueParaFlorestaParauapebas.mat','mapacor1997','mapacor2000','mapacor2011');

