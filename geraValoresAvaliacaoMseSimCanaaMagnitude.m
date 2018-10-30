
%é o que foi classificado!!
load('WSNovoCanaa90-97NovasNuvens.mat','binCanaa9097')
% figure
% imshow(binCanaa9097,[])
%%
%é a referencia
load('ws_Canaa_1990_1997.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
load('mascaraNuvemCanaa2.mat')
binDiff(Canaa1990 == -5555) = 0;
binDiff(Canaa1997 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(1) = psnr(binCanaa9097,binDiff)
% errMSE(1) = sqrt(immse(binCanaa9097,binDiff))
% errSIM(1) = ssim(binCanaa9097,binDiff)
% condEnt(1) = condEntropy(binCanaa9097,binDiff)
% jointEnt(1) = jointEntropy(binCanaa9097,binDiff)
% normMutialInfo(1) = nmi(binCanaa9097,binDiff)
% relEnt(1) = relatEntropy(binCanaa9097,binDiff)
[~,~,nrmseCanaa(1)] = MSE(binCanaa9097,binDiff)

%%
load('WSNovoCanaa97-00NovasNuvens.mat','binCanaa9700')
% figure
% imshow(binCanaa9700,[])
%%
load('ws_Canaa_1997_2000.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Canaa1997 == -5555) = 0;
binDiff(Canaa2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(2) = psnr(binCanaa9700,binDiff)
% errMSE(2) = sqrt(immse(binCanaa9700,binDiff))
% errSIM(2) = ssim(binCanaa9700,binDiff)
% condEnt(2) = condEntropy(binCanaa9700,binDiff)
% jointEnt(2) = jointEntropy(binCanaa9700,binDiff)
% normMutialInfo(2) = nmi(binCanaa9700,binDiff)
% relEnt(2) = relatEntropy(binCanaa9700,binDiff)
[~,~,nrmseCanaa(2)] = MSE(binCanaa9700,binDiff)


%%
load('WSNovoCanaa00-11NovasNuvens.mat','binCanaa0011')
% figure
% imshow(binCanaa0011,[])
%%
load('ws_Canaa_2000_2011.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Canaa2000 == -5555) = 0;
binDiff(Canaa2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(3) = psnr(binCanaa0011,binDiff)
% errMSE(3) = sqrt(immse(binCanaa0011,binDiff))
% errSIM(3) = ssim(binCanaa0011,binDiff)
% condEnt(3) = condEntropy(binCanaa0011,binDiff)
% jointEnt(3) = jointEntropy(binCanaa0011,binDiff)
% normMutialInfo(3) = nmi(binCanaa0011,binDiff)
% relEnt(3) = relatEntropy(binCanaa0011,binDiff)
[~,~,nrmseCanaa(3)] = MSE(binCanaa0011,binDiff)

% save('evaluationNovoCanaaMagnitude.mat','errMSE','errPSNR','errSIM','condEnt','jointEnt','normMutialInfo','relEnt')

close all

