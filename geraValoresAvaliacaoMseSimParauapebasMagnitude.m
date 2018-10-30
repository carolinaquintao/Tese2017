
%é o que foi classificado!!
load('WSNovoParauapebas90-97NovasNuvens.mat','binParauapebas9097')
% figure
% imshow(binParauapebas9097,[])
%
%é a referencia
load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
% load('mascaraNuvemParauapebas2.mat')
% binDiff(Parauapebas1990 == -5555) = 0;
% binDiff(Parauapebas1997 == -5555) = 0;
% figure
% imshow(binDiff,[])
%
%valores para a 'Table I' do artigo
% errPSNR(1) = psnr(binParauapebas9097,binDiff)
% errMSE(1) = immse(binParauapebas9097,binDiff)
errSIM(1) = ssim(binParauapebas9097,binDiff)
% condEnt(1) = condEntropy(binParauapebas9097,binDiff)
% jointEnt(1) = jointEntropy(binParauapebas9097,binDiff)
% normMutialInfo(1) = nmi(binParauapebas9097,binDiff)
% relEnt(1) = relatEntropy(binParauapebas9097,binDiff)
[~,~,nrmseParauapebas(1)] = MSE(binParauapebas9097,binDiff)

%%
load('WSNovoParauapebas97-00NovasNuvens.mat','binParauapebas9700')
% figure
% imshow(binParauapebas9700,[])
%%
load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
% binDiff(Parauapebas1997 == -5555) = 0;
% binDiff(Parauapebas2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(2) = psnr(binParauapebas9700,binDiff)
% errMSE(2) = immse(binParauapebas9700,binDiff)
% errSIM(2) = ssim(binParauapebas9700,binDiff)
% condEnt(2) = condEntropy(binParauapebas9700,binDiff)
% jointEnt(2) = jointEntropy(binParauapebas9700,binDiff)
% normMutialInfo(2) = nmi(binParauapebas9700,binDiff)
% relEnt(2) = relatEntropy(binParauapebas9700,binDiff)
[~,~,nrmseParauapebas(2)] = MSE(binParauapebas9700,binDiff)


%%
load('WSNovoParauapebas00-11NovasNuvens.mat','binParauapebas0011')
% figure
% imshow(binParauapebas0011,[])
%%
load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
% binDiff(Parauapebas2000 == -5555) = 0;
% binDiff(Parauapebas2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(3) = psnr(binParauapebas0011,binDiff)
% errMSE(3) = immse(binParauapebas0011,binDiff)
% errSIM(3) = ssim(binParauapebas0011,binDiff)
% condEnt(3) = condEntropy(binParauapebas0011,binDiff)
% jointEnt(3) = jointEntropy(binParauapebas0011,binDiff)
% normMutialInfo(3) = nmi(binParauapebas0011,binDiff)
% relEnt(3) = relatEntropy(binParauapebas0011,binDiff)
[~,~,nrmseParauapebas(3)] = MSE(binParauapebas0011,binDiff)

% save('evaluationNovoParauapebasMagnitude.mat','errMSE','errPSNR','errSIM','condEnt','jointEnt','normMutialInfo','relEnt')
% 
% close all
% 
