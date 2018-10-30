
%é o que foi classificado!!
load('WSNovoSaoFelix90-97NovasNuvens.mat','binSaoFelix90972')
% figure
% imshow(binSaoFelix9097,[])
%%
%é a referencia
load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
load('mascaraNuvemSaoFelix2.mat')
binDiff(SaoFelix1990 == -5555) = 0;
binDiff(SaoFelix1997 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(1) = psnr(binSaoFelix90972,binDiff)
% errMSE(1) = immse(binSaoFelix90972,binDiff)
% errSIM(1) = ssim(binSaoFelix90972,binDiff)
% condEnt(1) = condEntropy(binSaoFelix90972,binDiff)
% jointEnt(1) = jointEntropy(binSaoFelix90972,binDiff)
% normMutialInfo(1) = nmi(binSaoFelix90972,binDiff)
% relEnt(1) = relatEntropy(binSaoFelix90972,binDiff)
[~,~,nrmseSaoFelix(1)] = MSE(binSaoFelix90972,binDiff)


%%
load('WSNovoSaoFelix97-00NovasNuvens.mat','binSaoFelix97002')
% figure
% imshow(binSaoFelix9700,[])
%%
load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(SaoFelix1997 == -5555) = 0;
binDiff(SaoFelix2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(2) = psnr(binSaoFelix97002,binDiff)
% errMSE(2) = immse(binSaoFelix97002,binDiff)
% errSIM(2) = ssim(binSaoFelix97002,binDiff)
% condEnt(2) = condEntropy(binSaoFelix97002,binDiff)
% jointEnt(2) = jointEntropy(binSaoFelix97002,binDiff)
% normMutialInfo(2) = nmi(binSaoFelix97002,binDiff)
% relEnt(2) = relatEntropy(binSaoFelix97002,binDiff)
[~,~,nrmseSaoFelix(2)] = MSE(binSaoFelix97002,binDiff)


%%
load('WSNovoSaoFelix00-11NovasNuvens.mat','binSaoFelix00112')
% figure
% imshow(binSaoFelix0011,[])
%%
load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(SaoFelix2000 == -5555) = 0;
binDiff(SaoFelix2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(3) = psnr(binSaoFelix00112,binDiff)
% errMSE(3) = immse(binSaoFelix00112,binDiff)
% errSIM(3) = ssim(binSaoFelix00112,binDiff)
% condEnt(3) = condEntropy(binSaoFelix00112,binDiff)
% jointEnt(3) = jointEntropy(binSaoFelix00112,binDiff)
% normMutialInfo(3) = nmi(binSaoFelix00112,binDiff)
% relEnt(3) = relatEntropy(binSaoFelix00112,binDiff)
[~,~,nrmseSaoFelix(3)] = MSE(binSaoFelix00112,binDiff)

% 
% save('evaluationNovoSaoFelixMagnitude.mat','errMSE','errPSNR','errSIM','condEnt','jointEnt','normMutialInfo','relEnt')
% 
% close all

