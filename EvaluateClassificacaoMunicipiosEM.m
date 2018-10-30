load('ws_Canaa_1990_1997.mat', 'diffMapa')
load('NovoCanaaMaskEM9097.mat')
% unique(diffMapa)
% unique(maskEM9097)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9097,[])
%%
maskEM9097(maskEM9097==1) = 4;
maskEM9097(maskEM9097==2) = 0;
maskEM9097(maskEM9097==3) = 3;
%ok
%valores para a 'Table I' do artigo
errPSNRCanaa(1) = psnr(diffMapa,maskEM9097)
errMSECanaa(1) = immse(diffMapa,maskEM9097)
errSIMCanaa(1) = ssim(diffMapa,maskEM9097)
jointEntCanaa(1) = jointEntropy(diffMapa,maskEM9097)

%%
close all

load('ws_Canaa_1997_2000.mat', 'diffMapa')
load('NovoCanaaMaskEM9700.mat')
% unique(diffMapa)
% unique(maskEM9700)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9700,[])
%%
maskEM9700(maskEM9700==1) = 4;
maskEM9700(maskEM9700==2) = 0;
maskEM9700(maskEM9700==3) = 3;
%ok
%valores para a 'Table I' do artigo
errPSNRCanaa(2) = psnr(diffMapa,maskEM9700)
errMSECanaa(2) = immse(diffMapa,maskEM9700)
errSIMCanaa(2) = ssim(diffMapa,maskEM9700)
jointEntCanaa(2) = jointEntropy(diffMapa,maskEM9700)

%%
close all

load('ws_Canaa_2000_2011.mat', 'diffMapa')
load('NovoCanaaMaskEM0011.mat')
% unique(diffMapa)
% unique(maskEM0011)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM0011,[])
%%
maskEM0011(maskEM0011==4) = 7;
maskEM0011(maskEM0011==3) = 0;
maskEM0011(maskEM0011==1) = 4;
maskEM0011(maskEM0011==2) = 3;
%ok
%valores para a 'Table I' do artigo
errPSNRCanaa(3) = psnr(diffMapa,maskEM0011)
errMSECanaa(3) = immse(diffMapa,maskEM0011)
errSIMCanaa(3) = ssim(diffMapa,maskEM0011)
jointEntCanaa(3) = jointEntropy(diffMapa,maskEM0011)

save('evaluationNovoCanaaDirecaoEM.mat','errMSECanaa','errPSNRCanaa','errSIMCanaa','jointEntCanaa')

close all, clear
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%TUCUMA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('ws_Tucuma_1990_1997.mat', 'diffMapa')
load('NovoTucumaMaskEM9097.mat')
% unique(diffMapa)
% unique(maskEM9097)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9097,[])

%%
maskEM9097(maskEM9097==3) = 0;
maskEM9097(maskEM9097==1) = 3;
maskEM9097(maskEM9097==4) = 8;
%ok
%valores para a 'Table I' do artigo
errPSNRTucuma(1) = psnr(diffMapa,maskEM9097)
errMSETucuma(1) = immse(diffMapa,maskEM9097)
errSIMTucuma(1) = ssim(diffMapa,maskEM9097)
jointEntTucuma(1) = jointEntropy(diffMapa,maskEM9097)

%%
close all

load('ws_Tucuma_1997_2000.mat', 'diffMapa')
load('NovoTucumaMaskEM9700.mat')
% unique(diffMapa)
% unique(maskEM9700)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9700,[])
%%
maskEM9700(maskEM9700==2) = 8;
maskEM9700(maskEM9700==3) = 0;
maskEM9700(maskEM9700==4) = 3;
maskEM9700(maskEM9700==1) = 4;
%ok
%valores para a 'Table I' do artigo
errPSNRTucuma(2) = psnr(diffMapa,maskEM9700)
errMSETucuma(2) = immse(diffMapa,maskEM9700)
errSIMTucuma(2) = ssim(diffMapa,maskEM9700)
jointEntTucuma(2) = jointEntropy(diffMapa,maskEM9700)

%%
close all
load('ws_Tucuma_2000_2011.mat', 'diffMapa')
load('NovoTucumaMaskEM0011.mat')
% unique(diffMapa)
% unique(maskEM0011)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM0011,[])
%%
maskEM0011(maskEM0011==3) = 4;
maskEM0011(maskEM0011==1) = 3;
maskEM0011(maskEM0011==2) = 0;
%ok
%valores para a 'Table I' do artigo
errPSNRTucuma(3) = psnr(diffMapa,maskEM0011)
errMSETucuma(3) = immse(diffMapa,maskEM0011)
errSIMTucuma(3) = ssim(diffMapa,maskEM0011)
jointEntTucuma(3) = jointEntropy(diffMapa,maskEM0011)

save('evaluationNovoTucumaDirecaoEM.mat','errMSETucuma','errPSNRTucuma','errSIMTucuma','jointEntTucuma')

close all, clear
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%OURILANDIA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
load('NovoOurilandiaMaskEM9097.mat')
% unique(diffMapa)
% unique(maskEM9097)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9097,[])

%%
maskEM9097(maskEM9097==1) = 4;
maskEM9097(maskEM9097==2) = 0;
maskEM9097(maskEM9097==3) = 3;
%ok
%valores para a 'Table I' do artigo
errPSNROurilandia(1) = psnr(diffMapa,maskEM9097)
errMSEOurilandia(1) = immse(diffMapa,maskEM9097)
errSIMOurilandia(1) = ssim(diffMapa,maskEM9097)
jointEntOurilandia(1) = jointEntropy(diffMapa,maskEM9097)

%%
close all
load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
load('NovoOurilandiaMaskEM9700.mat')
% unique(diffMapa)
% unique(maskEM9700)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9700,[])
%%
maskEM9700(maskEM9700==3) = 0;
maskEM9700(maskEM9700==1) = 3;
maskEM9700(maskEM9700==2) = 7;
maskEM9700(maskEM9700==4) = 4;
%ok
%valores para a 'Table I' do artigo
errPSNROurilandia(2) = psnr(diffMapa,maskEM9700)
errMSEOurilandia(2) = immse(diffMapa,maskEM9700)
errSIMOurilandia(2) = ssim(diffMapa,maskEM9700)
jointEntOurilandia(2) = jointEntropy(diffMapa,maskEM9700)

%%
close all

load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
load('NovoOurilandiaMaskEM0011.mat')
% unique(diffMapa)
% unique(maskEM0011)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM0011,[])
%%
maskEM0011(maskEM0011==1) = 4;
maskEM0011(maskEM0011==3) = 0;
maskEM0011(maskEM0011==4) = 7;

%valores para a 'Table I' do artigo
errPSNROurilandia(3) = psnr(diffMapa,maskEM0011)
errMSEOurilandia(3) = immse(diffMapa,maskEM0011)
errSIMOurilandia(3) = ssim(diffMapa,maskEM0011)
jointEntOurilandia(3) = jointEntropy(diffMapa,maskEM0011)

save('evaluationNovoOurilandiaDirecaoEM.mat','errMSEOurilandia','errPSNROurilandia','errSIMOurilandia','jointEntOurilandia')

close all,clear
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Parauapebas%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all

load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
load('NovoParauapebasMaskEM9097.mat')
% unique(diffMapa)
% unique(maskEM9097)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9097,[])

%%
maskEM9097(maskEM9097==3) = 0;
maskEM9097(maskEM9097==1) = 3;
maskEM9097(maskEM9097==2) = 7;
maskEM9097(maskEM9097==4) = 4;

%valores para a 'Table I' do artigo
errPSNRParauapebas(1) = psnr(diffMapa,maskEM9097)
errMSEParauapebas(1) = immse(diffMapa,maskEM9097)
errSIMParauapebas(1) = ssim(diffMapa,maskEM9097)
jointEntParauapebas(1) = jointEntropy(diffMapa,maskEM9097)

%%
close all

load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
load('NovoParauapebasMaskEM9700.mat')
% unique(diffMapa)
% unique(maskEM9700)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9700,[])
%%
maskEM9700(maskEM9700==3) = 0;
maskEM9700(maskEM9700==1) = 3;
maskEM9700(maskEM9700==2) = 7;
maskEM9700(maskEM9700==4) = 4;

%valores para a 'Table I' do artigo
errPSNRParauapebas(2) = psnr(diffMapa,maskEM9700)
errMSEParauapebas(2) = immse(diffMapa,maskEM9700)
errSIMParauapebas(2) = ssim(diffMapa,maskEM9700)
jointEntParauapebas(2) = jointEntropy(diffMapa,maskEM9700)

%%
close all

load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
load('NovoParauapebasMaskEM0011.mat')
% unique(diffMapa)
% unique(maskEM0011)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM0011,[])
%%
maskEM0011(maskEM0011==3) = 0;
maskEM0011(maskEM0011==1) = 3;
maskEM0011(maskEM0011==4) = 7;
maskEM0011(maskEM0011==2) = 4;

%valores para a 'Table I' do artigo
errPSNRParauapebas(3) = psnr(diffMapa,maskEM0011)
errMSEParauapebas(3) = immse(diffMapa,maskEM0011)
errSIMParauapebas(3) = ssim(diffMapa,maskEM0011)
jointEntParauapebas(3) = jointEntropy(diffMapa,maskEM0011)

save('evaluationNovoParauapebasDirecaoEM.mat','errMSEParauapebas','errPSNRParauapebas','errSIMParauapebas','jointEntParauapebas')

close all, clear
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sao Felix%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
load('NovoSaoFelixMaskEM9097.mat')
% unique(diffMapa)
% unique(maskEM9097)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9097,[])

%%
maskEM9097(maskEM9097==3) = 0;
maskEM9097(maskEM9097==1) = 3;
maskEM9097(maskEM9097==4) = 7;
maskEM9097(maskEM9097==2) = 4;
maskEM9097(maskEM9097==5) = 9;
%ok

%valores para a 'Table I' do artigo
errPSNRSaoFelix(1) = psnr(diffMapa,maskEM9097)
errMSESaoFelix(1) = immse(diffMapa,maskEM9097)
errSIMSaoFelix(1) = ssim(diffMapa,maskEM9097)
jointEntSaoFelix(1) = jointEntropy(diffMapa,maskEM9097)

%%
close all

load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
load('NovoSaoFelixMaskEM9700.mat')
% unique(diffMapa)
% unique(maskEM9700)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM9700,[])
%%
maskEM9700(maskEM9700==3) = 0;
maskEM9700(maskEM9700==4) = 7;
maskEM9700(maskEM9700==1) = 4;
maskEM9700(maskEM9700==2) = 3;
maskEM9700(maskEM9700==5) = 9;

%valores para a 'Table I' do artigo
errPSNRSaoFelix(2) = psnr(diffMapa,maskEM9700)
errMSESaoFelix(2) = immse(diffMapa,maskEM9700)
errSIMSaoFelix(2) = ssim(diffMapa,maskEM9700)
jointEntSaoFelix(2) = jointEntropy(diffMapa,maskEM9700)

%%
close all

load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
load('NovoSaoFelixMaskEM0011.mat')
% unique(diffMapa)
% unique(maskEM0011)
% figure, imshow(diffMapa,[])
% figure, imshow(maskEM0011,[])
%%
maskEM0011(maskEM0011==3) = 0;
maskEM0011(maskEM0011==1) = 4;
maskEM0011(maskEM0011==5) = 7;
maskEM0011(maskEM0011==2) = 3;

%valores para a 'Table I' do artigo
errPSNRSaoFelix(3) = psnr(diffMapa,maskEM0011)
errMSESaoFelix(3) = immse(diffMapa,maskEM0011)
errSIMSaoFelix(3) = ssim(diffMapa,maskEM0011)
jointEntSaoFelix(3) = jointEntropy(diffMapa,maskEM0011)

save('evaluationNovoSaoFelixDirecaoEM.mat','errMSESaoFelix','errPSNRSaoFelix','errSIMSaoFelix','jointEntSaoFelix')

close all, clear
