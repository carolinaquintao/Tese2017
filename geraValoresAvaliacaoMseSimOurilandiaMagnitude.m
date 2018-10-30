
%é o que foi classificado!!
load('WSNovoOurilandia90-97NovasNuvens.mat','binOurilandia90972')
% figure
% imshow(binOurilandia9097,[])
%%
%é a referencia
load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
load('mascaraNuvemOurilandia2.mat')
binDiff(Ourilandia1990 == -5555) = 0;
binDiff(Ourilandia1997 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(1) = psnr(binOurilandia90972,binDiff)
% errMSE(1) = immse(binOurilandia90972,binDiff)
% errSIM(1) = ssim(binOurilandia90972,binDiff)
% condEnt(1) = condEntropy(binOurilandia90972,binDiff)
% jointEnt(1) = jointEntropy(binOurilandia90972,binDiff)
% normMutialInfo(1) = nmi(binOurilandia90972,binDiff)
% relEnt(1) = relatEntropy(binOurilandia90972,binDiff)
[~,~,nrmseOurilandia(1)] = MSE(binOurilandia90972,binDiff)


%%
load('WSNovoOurilandia97-00NovasNuvens.mat','binOurilandia97002')
% figure
% imshow(binOurilandia9700,[])
%%
load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Ourilandia1997 == -5555) = 0;
binDiff(Ourilandia2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(2) = psnr(binOurilandia97002,binDiff)
% errMSE(2) = immse(binOurilandia97002,binDiff)
% errSIM(2) = ssim(binOurilandia97002,binDiff)
% condEnt(2) = condEntropy(binOurilandia97002,binDiff)
% jointEnt(2) = jointEntropy(binOurilandia97002,binDiff)
% normMutialInfo(2) = nmi(binOurilandia97002,binDiff)
% relEnt(2) = relatEntropy(binOurilandia97002,binDiff)
[~,~,nrmseOurilandia(2)] = MSE(binOurilandia97002,binDiff)


%%
load('WSNovoOurilandia00-11NovasNuvens.mat','binOurilandia00112')
% figure
% imshow(binOurilandia0011,[])
%%
load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Ourilandia2000 == -5555) = 0;
binDiff(Ourilandia2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(3) = psnr(binOurilandia00112,binDiff)
% errMSE(3) = immse(binOurilandia00112,binDiff)
% errSIM(3) = ssim(binOurilandia00112,binDiff)
% condEnt(3) = condEntropy(binOurilandia00112,binDiff)
% jointEnt(3) = jointEntropy(binOurilandia00112,binDiff)
% normMutialInfo(3) = nmi(binOurilandia00112,binDiff)
% relEnt(3) = relatEntropy(binOurilandia00112,binDiff)
[~,~,nrmseOurilandia(3)] = MSE(binOurilandia00112,binDiff)

% 
% save('evaluationNovoOurilandiaMagnitude.mat','errMSE','errPSNR','errSIM','condEnt','jointEnt','normMutialInfo','relEnt')
% 
% close all

