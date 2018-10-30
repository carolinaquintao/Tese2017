load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Tucuma_2000_2011.mat', 'tempo1')
load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Tucuma_2000_2011.mat', 'tempo2')
load('NovoTucumaMaskFCM9700.mat')
% imshow(maskFCM9700,[])
load('NovoTucumaMaskFCM00112.mat')
load('mascaraNuvemTucuma2.mat', 'Tucuma2000')
load('mascaraNuvemTucuma2.mat', 'Tucuma1997')

maskFCM9700(tempo1(:,:,1)==-9999) = 0;
maskFCM0011(tempo2(:,:,1)==-9999) = 0;

totalCena2000 = sum(sum(tempo1(:,:,1)~=-9999));
totalCena2011 = sum(sum(tempo2(:,:,1)~=-9999));

%load('mapa_referencia_Tucuma_2000.mat', 'mapa')
canga00 = 0;%sum(sum(mapa==2|mapa==1));
nuvem00 = sum(sum(Tucuma2000==-5555 | Tucuma1997 ==-5555));
load('mapa_referencia_Tucuma_2000.mat', 'mapa')
naoMuda00 = sum(sum(maskFCM9700==3&mapa==5)) - canga00 - nuvem00;
perc00 = naoMuda00/totalCena2000



% load('mapa_referencia_Tucuma_2011.mat', 'mapa')
canga11 = 0;%sum(sum(mapa==2|mapa==3));
load('mascaraNuvemTucuma2.mat', 'Tucuma2011')
nuvem11 = sum(sum(Tucuma2000==-5555 | Tucuma2011 ==-5555));
load('mapa_referencia_Tucuma_2011.mat', 'mapa')
naoMuda11 = sum(sum(maskFCM0011==2&mapa==5)) - canga11 - nuvem11;
perc11 = naoMuda11/totalCena2011


%% gera mapas de comparacao
%cdata é a imagem geradabpelo prodes na pasta de imagens regerencia
% m1 = ones(size(cdata));
% m2 = ones(size(cdata));
% m3 = ones(size(cdata));
% m1(cdata==73) = .19;
% m2(cdata==73) = .35;
% m3(cdata==73) = 0;
% mapaProdes = zeros(592,828,3);
% mapaProdes(:,:,1) = m1;mapaProdes(:,:,2) = m2;mapaProdes(:,:,3) = m3;
% 
% m1 = ones(size(maskFCM0011));
% m2 = ones(size(maskFCM0011));
% m3 = ones(size(maskFCM0011));
% m1(mapa==5) = .19;
% m2(mapa==5) = .35;
% m3(mapa==5) = 0;
% mapaCorReferencia = zeros(1763,2465,3);
% mapaCorReferencia(:,:,1) = m1;mapaCorReferencia(:,:,2) = m2;mapaCorReferencia(:,:,3) = m3;
% 
% m1 = ones(size(maskFCM0011));
% m2 = ones(size(maskFCM0011));
% m3 = ones(size(maskFCM0011));
% m1(maskFCM0011==3) = 0.19;
% m2(maskFCM0011==3) = 0.35;
% m3(maskFCM0011==3) = 0;
% mapaCor2011 = zeros(1763,2465,3);
% mapaCor2011(:,:,1) = m1;
% mapaCor2011(:,:,2) = m2;
% mapaCor2011(:,:,3) = m3;

%%
load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/workspacesAntigo/Workspace_Tucuma_2000_2011.mat', 'tempo1')
cor1997jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Tucuma287Referencia/cor1997jpg.jpg');
cor2000jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Tucuma287Referencia/cor2000jpg.jpg');
cor2011jpg = imread('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/RecorteReferenciaClasses/Tucuma287Referencia/cor2011jpg.jpg');
load('NovoTucumaMaskFCM90972.mat', 'maskFCM9097')
load('NovoTucumaMaskFCM97002.mat', 'maskFCM9700')
load('NovoTucumaMaskFCM00112.mat', 'maskFCM0011')

load('mapa_referencia_Tucuma_1997.mat', 'mapa')
%vegetacao (mapa==5)
%
% m1 = zeros(size(maskFCM9097));
% m2 = zeros(size(maskFCM9097));
% m3 = zeros(size(maskFCM9097));
% 
% m1(maskFCM9097==2&mapa==5) = .19;
% m2(maskFCM9097==2&mapa==5) = .35;
% m3(maskFCM9097==2&mapa==5) = 0;
% % m1(maskFCM9097==2&tempo1(:,:,1)~=-9999) = .19;
% % m2(maskFCM9097==2&tempo1(:,:,1)~=-9999) = .35;
% % m3(maskFCM9097==2&tempo1(:,:,1)~=-9999) = 0;
% 
% cena9097 = cat(3,m1,m2,m3);
% figure,imshow(cena9097,[])

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
%%
load('mapa_referencia_Tucuma_2000.mat', 'mapa')

cena = mat2gray(cor2000jpg)-.2;
m1 = cena(:,:,1);
m2 = cena(:,:,2);
m3 = cena(:,:,3);
% m1(maskFCM9700~=3) = 1;%0.84;
% m2(maskFCM9700~=3) = .5;%0.71;
% m3(maskFCM9700~=3) = 0.2;%0.46;
m1(maskFCM9700==3&mapa==5) = 1;%.19;
m2(maskFCM9700==3&mapa==5) = .5;%.35;
m3(maskFCM9700==3&mapa==5) = .2;%0;
m1(tempo1(:,:,1)==-9999) = 1;%0.84;
m2(tempo1(:,:,1)==-9999) = 1;%0.71;
m3(tempo1(:,:,1)==-9999) = 1;%0.46;
mapacor2000 = cat(3, m1,m2,m3);
figure,imshow(mapacor2000,[])
%%
load('mapa_referencia_Tucuma_2011.mat', 'mapa')

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

save('cenasComDestaqueParaFlorestaTucuma.mat','mapacor1997','mapacor2000','mapacor2011');

