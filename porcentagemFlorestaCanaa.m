% load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Canaa_2000_2011.mat', 'tempo1')
% load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Canaa_2000_2011.mat', 'tempo2')
% 
% load('NovoCanaaMaskFCM9700.mat')
% maskFCM9700(tempo1(:,:,1)==-9999) = NaN;
% % imshow(maskFCM9700,[])
% 
% load('NovoCanaaMaskFCM0011.mat')
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
% load('mapa_referencia_Canaa_2000.mat', 'mapa')
% canga00 = sum(sum(mapa==2));
% 
% load('mascaraNuvemCanaa2.mat', 'Canaa2000')
% load('mascaraNuvemCanaa2.mat', 'Canaa1997')
% nuvem00 = sum(sum(Canaa2000==-5555 | Canaa1997 ==-5555));
% 
% %clear tempo1 tempo2 mapa
% 
% naoMuda00 = sum(sum(maskFCM9700==3&tempo1(:,:,1)~=-9999)) - canga00 - nuvem00;
% 
% perc00 = naoMuda00/totalCena2000
% 
% 
% 
% load('mapa_referencia_Canaa_2011.mat', 'mapa')
% canga11 = sum(sum(mapa==2));
% 
% load('mascaraNuvemCanaa2.mat', 'Canaa2011')
% nuvem11 = sum(sum(Canaa2000==-5555 | Canaa2011 ==-5555));
% 
% 
% clear mapa
% 
% naoMuda11 = sum(sum(maskFCM0011~=1)) - canga11 - nuvem11;
% 
% perc11 = naoMuda11/totalCena2011
% 
%%
load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Canaa_2000_2011.mat', 'tempo1')
cor1997jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Canaa184Referencia/cor1997jpg.jpg');
cor2000jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Canaa184Referencia/cor2000jpg.jpg');
cor2011jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Canaa184Referencia/cor2011jpg.jpg');
load('NovoCanaaMaskFCM9097.mat', 'maskFCM9097')
load('NovoCanaaMaskFCM9700.mat', 'maskFCM9700')
load('NovoCanaaMaskFCM0011.mat', 'maskFCM0011')
%
load('mapa_referencia_Canaa_1997.mat', 'mapa')

cena = mat2gray(cor1997jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM9097~=1) = 1;%0.84;
% m2(maskFCM9097~=1) = .5;%0.71;
% m3(maskFCM9097~=1) = .2;%0.46;
m1(maskFCM9097==1&mapa==5) = 1;%.19;
m2(maskFCM9097==1&mapa==5) = .5;%.35;
m3(maskFCM9097==1&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor1997 = cat(3, m1,m2,m3);
figure,imshow(mapacor1997,[])

load('mapa_referencia_Canaa_2000.mat', 'mapa')

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

load('mapa_referencia_Canaa_2011.mat', 'mapa')

cena = mat2gray(cor2011jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM0011~=1) = 1;%0.84;
% m2(maskFCM0011~=1) = .5;%0.71;
% m3(maskFCM0011~=1) = 0.2;%0.46;
m1(maskFCM0011==1&mapa==5) = 1;%.19;
m2(maskFCM0011==1&mapa==5) = .5;%.35;
m3(maskFCM0011==1&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor2011 = cat(3, m1,m2,m3);
figure,imshow(mapacor2011,[])

save('cenasComDestaqueParaFlorestaCanaa.mat','mapacor1997','mapacor2000','mapacor2011');
