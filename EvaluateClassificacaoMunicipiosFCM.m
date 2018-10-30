% load('ws_Canaa_1990_1997.mat', 'diffMapa')
% load('NovoCanaaMaskFCM9097.mat')
% maskFCM9097 = double(maskFCM9097);
% % unique(diffMapa)
% % unique(maskFCM9097)
% %  figure, imshow(diffMapa,[])
% %  figure, imshow(maskFCM9097,[])
% %%
% maskFCM9097(maskFCM9097==1) = 0;
% maskFCM9097(maskFCM9097==3) = 4;
% maskFCM9097(maskFCM9097==2) = 3;
% 
% %ok
% %valores para a 'Table I' do artigo
% % errPSNRCanaa(1) = psnr(diffMapa,maskFCM9097)
% % errMSECanaa(1) = immse(diffMapa,maskFCM9097)
% % errSIMCanaa(1) = ssim(diffMapa,maskFCM9097)
% jointEntCanaa(1) = jointEntropy(diffMapa,maskFCM9097)
% % [~,~,nrmseCanaa(1)] = MSE(diffMapa,maskFCM9097)
% %%
% % close all
% % 
% load('ws_Canaa_1997_2000.mat', 'diffMapa')
% load('NovoCanaaMaskFCM9700.mat')
% maskFCM9700 = double(maskFCM9700);
% 
% % unique(diffMapa)
% % unique(maskFCM9700)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9700,[])
% %%
% maskFCM9700(maskFCM9700==1) = 0;
% maskFCM9700(maskFCM9700==2) = 4;
% maskFCM9700(maskFCM9700==3) = 3;
% %ok
% %valores para a 'Table I' do artigo
% % errPSNRCanaa(2) = psnr(diffMapa,maskFCM9700)
% % errMSECanaa(2) = immse(diffMapa,maskFCM9700)
% % errSIMCanaa(2) = ssim(diffMapa,maskFCM9700)
% % jointEntCanaa(2) = jointEntropy(diffMapa,maskFCM9700)
% [~,~,nrmseCanaa(2)] = MSE(diffMapa,maskFCM9700)
% %%
% % 
% % %%
% close all
% % 
% load('ws_Canaa_2000_2011.mat', 'diffMapa')
% load('NovoCanaaMaskFCM0011.mat')
% maskFCM0011 = double(maskFCM0011);
% 
% % unique(diffMapa)
% % unique(maskFCM0011)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM0011,[])
% %%
% maskFCM0011(maskFCM0011==4) = 4;
% maskFCM0011(maskFCM0011==3) = 3;
% maskFCM0011(maskFCM0011==1) = 0;
% maskFCM0011(maskFCM0011==2) = 7;
% %ok
% %valores para a 'Table I' do artigo
% % errPSNRCanaa(3) = psnr(diffMapa,maskFCM0011)
% % errMSECanaa(3) = immse(diffMapa,maskFCM0011)
% % errSIMCanaa(3) = ssim(diffMapa,maskFCM0011)
% % jointEntCanaa(3) = jointEntropy(diffMapa,maskFCM0011)
% [~,~,nrmseCanaa(3)] = MSE(diffMapa,maskFCM0011)

% save('evaluationNovoCanaaDirecaoFCM.mat','errMSECanaa','errPSNRCanaa','errSIMCanaa','jointEntCanaa')
% 
% close all, clear
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%TUCUMA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1 agua
% 2 mina
% 3 solo
% 4 urbano
% 5 vegeta
% 6 vegeta
% 7 agua
% 8 ?
% % 
load('ws_Tucuma_1990_1997.mat', 'diffMapa')
load('NovoTucumaMaskFCM90972.mat')
maskFCM9097 = double(maskFCM9097);
% 
% % unique(diffMapa)
% % unique(maskFCM9097)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9097,[])
% 
% %%
maskFCM9097(maskFCM9097==4) = 8;
maskFCM9097(maskFCM9097==3) = 3;
maskFCM9097(maskFCM9097==1) = 4;
maskFCM9097(maskFCM9097==2) = 0;
% %% ok
% 
% %valores para a 'Table II' do artigo
% errPSNRTucuma(1) = psnr(diffMapa,maskFCM9097)
% errMSETucuma(1) = immse(diffMapa,maskFCM9097)
errSIMTucuma(1) = ssim(diffMapa,maskFCM9097)
jointEntTucuma(1) = jointEntropy(diffMapa,maskFCM9097)
entRef(1) = entropy(diffMapa)
entCla(1) = entropy(maskFCM9097)
[~,~,nrmseTucuma(1)] = MSE(diffMapa,maskFCM9097)
% 
% % 
% %%
% % close all
% % 
% load('ws_Tucuma_1997_2000.mat', 'diffMapa')
% load('NovoTucumaMaskFCM97002.mat')
% maskFCM9700 = double(maskFCM9700);
% % 
% % unique(diffMapa)
% % unique(maskFCM9700)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9700,[])
maskFCM9700(maskFCM9700==3) = 0;
maskFCM9700(maskFCM9700==4) = 3;
maskFCM9700(maskFCM9700==2) = 4;
maskFCM9700(maskFCM9700==1) = 8;
% % %ok
% % %valores para a 'Table I' do artigo
% errPSNRTucuma(2) = psnr(diffMapa,maskFCM9700)
% errMSETucuma(2) = immse(diffMapa,maskFCM9700)
errSIMTucuma(2) = ssim(diffMapa,maskFCM9700)
 jointEntTucuma(2) = jointEntropy(diffMapa,maskFCM9700)
entRef(2) = entropy(diffMapa)
entCla(2) = entropy(maskFCM9700)
[~,~,nrmseTucuma(2)] = MSE(diffMapa,maskFCM9700)
%%
% % 
% % %%
% % close all
% load('ws_Tucuma_2000_2011.mat', 'diffMapa')
% load('NovoTucumaMaskFCM00112.mat')
% maskFCM0011 = double(maskFCM0011);
% % 
% % unique(diffMapa)
% % unique(maskFCM0011)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM0011,[])
% % %%
% maskFCM0011(maskFCM0011==3) = 3;
% maskFCM0011(maskFCM0011==1) = 4;
% maskFCM0011(maskFCM0011==2) = 0;
% % %ok
% % %valores para a 'Table I' do artigo
% % errPSNRTucuma(3) = psnr(diffMapa,maskFCM0011)
% % errMSETucuma(3) = immse(diffMapa,maskFCM0011)
% errSIMTucuma(3) = ssim(diffMapa,maskFCM0011)
%  jointEntTucuma(3) = jointEntropy(diffMapa,maskFCM0011)
% entRef(3) = entropy(diffMapa)
% entCla(3) = entropy(maskFCM0011)
% [~,~,nrmseTucuma(3)] = MSE(diffMapa,maskFCM0011)

% 
% save('evaluationNovoTucumaDirecaoFCM2.mat','errMSETucuma','errPSNRTucuma','errSIMTucuma','jointEntTucuma')
% % 
% close all, clear
% % %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%OURILANDIA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 1 agua
% % 2 mina
% % 3 solo
% % 4 urbano
% % 5 vegeta
% % 6 vegeta
% % 7 agua
% % 8 ?
% load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
% load('NovoOurilandiaMaskFCM9097.mat')
% maskFCM9097 = double(maskFCM9097);
% % 
% % % unique(diffMapa)
% % % unique(maskFCM9097)
% % % figure, imshow(diffMapa,[])
% % % figure, imshow(maskFCM9097,[])
% % 
% % %%
% maskFCM9097(maskFCM9097==1) = 4;
% maskFCM9097(maskFCM9097==2) = 0;
% maskFCM9097(maskFCM9097==3) = 3;
% % %ok
% % %valores para a 'Table II' do artigo
% % errPSNROurilandia(1) = psnr(diffMapa,maskFCM9097)
% % errMSEOurilandia(1) = immse(diffMapa,maskFCM9097)
% % errSIMOurilandia(1) = ssim(diffMapa,maskFCM9097)
% % jointEntOurilandia(1) = jointEntropy(diffMapa,maskFCM9097)
% [~,~,nrmseOurilandia(1)] = MSE(diffMapa,maskFCM9097)
% 
% % 
% % %%
% % close all
% load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
% load('NovoOurilandiaMaskFCM9700.mat')
% maskFCM9700 = double(maskFCM9700);
% % 
% % % unique(diffMapa)
% % % unique(maskFCM9700)
% % % figure, imshow(diffMapa,[])
% % % figure, imshow(maskFCM9700,[])
% % %%
% maskFCM9700(maskFCM9700==4) = 0;
% maskFCM9700(maskFCM9700==3) = 3;
% maskFCM9700(maskFCM9700==1) = 4;
% maskFCM9700(maskFCM9700==2) = 7;
% % %ok
% % %valores para a 'Table I' do artigo
% % errPSNROurilandia(2) = psnr(diffMapa,maskFCM9700)
% % errMSEOurilandia(2) = immse(diffMapa,maskFCM9700)
% % errSIMOurilandia(2) = ssim(diffMapa,maskFCM9700)
% % jointEntOurilandia(2) = jointEntropy(diffMapa,maskFCM9700)
% [~,~,nrmseOurilandia(2)] = MSE(diffMapa,maskFCM9700)
% 
% % 
% % %%
% % close all
% % 
% load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
% load('NovoOurilandiaMaskFCM0011.mat')
% maskFCM0011 = double(maskFCM0011);
% 
% % % unique(diffMapa)
% % % unique(maskFCM0011)
% % % figure, imshow(diffMapa,[])
% % % figure, imshow(maskFCM0011,[])
% % %%
% maskFCM0011(maskFCM0011==1) = 7;
% maskFCM0011(maskFCM0011==3) = 0;
% maskFCM0011(maskFCM0011==4) = 3;
% maskFCM0011(maskFCM0011==2) = 4;
% % 
% % %valores para a 'Table I' do artigo
% % errPSNROurilandia(3) = psnr(diffMapa,maskFCM0011)
% % errMSEOurilandia(3) = immse(diffMapa,maskFCM0011)
% % errSIMOurilandia(3) = ssim(diffMapa,maskFCM0011)
% % jointEntOurilandia(3) = jointEntropy(diffMapa,maskFCM0011)
% [~,~,nrmseOurilandia(3)] = MSE(diffMapa,maskFCM0011)
% 
% % 
% % save('evaluationNovoOurilandiaDirecaoFCM.mat','errMSEOurilandia','errPSNROurilandia','errSIMOurilandia','jointEntOurilandia')
% % 
% % close all,clear
% % %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Parauapebas%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 1 agua
% % 2 mina
% % 3 solo
% % 4 urbano
% % 5 vegeta
% % 6 vegeta
% % 7 cava
% % 8 ?
% % close all
% % 
load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
load('NovoParauapebasMaskFCM9097.mat')
maskFCM9097 = double(maskFCM9097);
% 
% % unique(diffMapa)
% % unique(maskFCM9097)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9097,[])
% 
% %%
maskFCM9097(maskFCM9097==3) = 3;
maskFCM9097(maskFCM9097==1) = 7;
maskFCM9097(maskFCM9097==2) = 0;
maskFCM9097(maskFCM9097==4) = 4;
% 
% %valores para a 'Table I' do artigo
% errPSNRParauapebas(1) = psnr(diffMapa,maskFCM9097)
% errMSEParauapebas(1) = immse(diffMapa,maskFCM9097)
errSIMParauapebas(1) = ssim(diffMapa,maskFCM9097)
jointEntParauapebas(1) = jointEntropy(diffMapa,maskFCM9097)
[~,~,nrmseParauapebas(1)] = MSE(diffMapa,maskFCM9097)
% 
% 
% %%
% close all
% 
load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
load('NovoParauapebasMaskFCM9700.mat')
maskFCM9700 = double(maskFCM9700);
% 
% % unique(diffMapa)
% % unique(maskFCM9700)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9700,[])
% %%
maskFCM9700(maskFCM9700==4) = 5;
maskFCM9700(maskFCM9700==3) = 4;
maskFCM9700(maskFCM9700==5) = 3;
maskFCM9700(maskFCM9700==1) = 0;
maskFCM9700(maskFCM9700==2) = 7;

% %valores para a 'Table I' do artigo
% errPSNRParauapebas(2) = psnr(diffMapa,maskFCM9700)
% errMSEParauapebas(2) = immse(diffMapa,maskFCM9700)
errSIMParauapebas(2) = ssim(diffMapa,maskFCM9700)
jointEntParauapebas(2) = jointEntropy(diffMapa,maskFCM9700)
[~,~,nrmseParauapebas(2)] = MSE(diffMapa,maskFCM9700)
% 
% 
% %%
% close all
% 
load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
load('NovoParauapebasMaskFCM0011.mat')
maskFCM0011 = double(maskFCM0011);
% 
% % unique(diffMapa)
% % unique(maskFCM0011)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM0011,[])
% %%
maskFCM0011(maskFCM0011==4) = 7;
maskFCM0011(maskFCM0011==3) = 4;
maskFCM0011(maskFCM0011==1) = 3;
maskFCM0011(maskFCM0011==2) = 0;

% %valores para a 'Table I' do artigo
% errPSNRParauapebas(3) = psnr(diffMapa,maskFCM0011)
% errMSEParauapebas(3) = immse(diffMapa,maskFCM0011)
errSIMParauapebas(3) = ssim(diffMapa,maskFCM0011)
jointEntParauapebas(3) = jointEntropy(diffMapa,maskFCM0011)
[~,~,nrmseParauapebas(3)] = MSE(diffMapa,maskFCM0011)
% 
% % 
% % save('evaluationNovoParauapebasDirecaoFCM.mat','errMSEParauapebas','errPSNRParauapebas','errSIMParauapebas','jointEntParauapebas')
% 
% % close all, clear
% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sao Felix%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 1 agua
% % 2 agua
% % 3 mina
% % 4 solo
% % 5 vegeta
% % 6 vegeta
% % 7 urbano
% % 9 nuvem
% load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
% load('NovoSaoFelixMaskFCM9097.mat')
% maskFCM9097 = double(maskFCM9097);
% 
% % unique(diffMapa)
% % unique(maskFCM9097)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9097,[])
% 
% %%
% maskFCM9097(maskFCM9097==3) = 3;
% maskFCM9097(maskFCM9097==4) = 0;
% maskFCM9097(maskFCM9097==1) = 4;
% maskFCM9097(maskFCM9097==2) = 7;
% maskFCM9097(maskFCM9097==5) = 9;
% %ok
% 
% %valores para a 'Table I' do artigo
% % errPSNRSaoFelix(1) = psnr(diffMapa,maskFCM9097)
% % errMSESaoFelix(1) = immse(diffMapa,maskFCM9097)
% % errSIMSaoFelix(1) = ssim(diffMapa,maskFCM9097)
% % jointEntSaoFelix(1) = jointEntropy(diffMapa,maskFCM9097)
% [~,~,nrmseSaoFelix(1)] = MSE(diffMapa,maskFCM9097)
% 
% %%
% close all
% 
% load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
% load('NovoSaoFelixMaskFCM9700.mat')
% maskFCM9700 = double(maskFCM9700);
% 
% % unique(diffMapa)
% % unique(maskFCM9700)
% % figure, imshow(diffMapa,[])
% % figure, imshow(maskFCM9700,[])
% %%
% maskFCM9700(maskFCM9700==4) = 0;
% maskFCM9700(maskFCM9700==3) = 4;
% maskFCM9700(maskFCM9700==1) = 9;
% maskFCM9700(maskFCM9700==2) = 7;
% maskFCM9700(maskFCM9700==5) = 3;
% 
% %valores para a 'Table I' do artigo
% % errPSNRSaoFelix(2) = psnr(diffMapa,maskFCM9700)
% % errMSESaoFelix(2) = immse(diffMapa,maskFCM9700)
% % errSIMSaoFelix(2) = ssim(diffMapa,maskFCM9700)
% % jointEntSaoFelix(2) = jointEntropy(diffMapa,maskFCM9700)
% [~,~,nrmseSaoFelix(2)] = MSE(diffMapa,maskFCM9700)
% 
 %%
% close all
% 
load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
load('NovoSaoFelixMaskFCM0011.mat')
maskFCM0011 = double(maskFCM0011);

unique(diffMapa)
unique(maskFCM0011)
figure, imshow(diffMapa,[])
figure, imshow(maskFCM0011,[])
%
maskFCM9700(maskFCM0011==4) = 9;
maskFCM0011(maskFCM0011==3) = 4;
maskFCM0011(maskFCM0011==1) = 3;
maskFCM0011(maskFCM0011==5) = 7;
maskFCM0011(maskFCM0011==2) = 0;

% valores para a 'Table I' do artigo
errPSNRSaoFelix(3) = psnr(diffMapa,maskFCM0011)
errMSESaoFelix(3) = immse(diffMapa,maskFCM0011)
errSIMSaoFelix(3) = ssim(diffMapa,maskFCM0011)
jointEntSaoFelix(3) = jointEntropy(diffMapa,maskFCM0011)
[~,~,nrmseSaoFelix(3)] = MSE(diffMapa,maskFCM0011)
% 
% % 
% % save('evaluationNovoSaoFelixDirecaoFCM.mat','errMSESaoFelix','errPSNRSaoFelix','errSIMSaoFelix','jointEntSaoFelix')
% % 
% % close all, clear
