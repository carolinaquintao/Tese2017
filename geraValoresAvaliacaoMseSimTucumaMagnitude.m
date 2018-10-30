
%é o que foi classificado!!
load('WSNovoTucuma90-97NovasNuvens.mat','binTucuma9097')

%
%é a referencia
load('ws_Tucuma_1990_1997.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
load('mascaraNuvemTucuma2.mat')
binDiff(Tucuma1990 == -5555) = 0;
binDiff(Tucuma1997 == -5555) = 0;

% figure
% imshow(binDiff,[])
% figure
% imshow(diffMapa,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(1) = psnr(binTucuma9097,binDiff)
% errMSE(1) = immse(binTucuma9097,binDiff)
errSIM(1) = ssim(binTucuma9097,binDiff)
% condEnt(1) = condEntropy(binTucuma9097,binDiff)
jointEnt(1) = jointEntropy(binTucuma9097,binDiff)
% normMutialInfo(1) = nmi(binTucuma9097,binDiff)
% relEnt(1) = relatEntropy(binTucuma9097,binDiff)
[~,~,nrmseTucuma(1)] = MSE(binTucuma9097,binDiff)
entRef(1) = entropy(binTucuma9097)
entCla(1) = entropy(binDiff)

%%
load('WSNovoTucuma97-00NovasNuvens.mat','binTucuma9700')
% figure
% imshow(binTucuma9700,[])
%%
load('ws_Tucuma_1997_2000.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Tucuma1997 == -5555) = 0;
binDiff(Tucuma2000 == -5555) = 0;
% figure
% imshow(binDiff,[])
%%
%valores para a 'Table I' do artigo
% errPSNR(2) = psnr(binTucuma9700,binDiff)
% errMSE(2) = immse(binTucuma9700,binDiff)
errSIM(2) = ssim(binTucuma9700,binDiff)
% condEnt(2) = condEntropy(binTucuma9700,binDiff)
jointEnt(2) = jointEntropy(binTucuma9700,binDiff)
% normMutialInfo(2) = nmi(binTucuma9700,binDiff)
% relEnt(2) = relatEntropy(binTucuma9700,binDiff)
[~,~,nrmseTucuma(2)] = MSE(binTucuma9700,binDiff)
entRef(2) = entropy(binTucuma9700)
entCla(2) = entropy(binDiff)

%%
load('WSNovoTucuma00-11NovasNuvens.mat','binTucuma0011')
% figure
% imshow(binTucuma0011,[])
%%
load('ws_Tucuma_2000_2011.mat', 'diffMapa')
binDiff = zeros(size(diffMapa));
binDiff(diffMapa~=0) = 1;
binDiff(Tucuma2000 == -5555) = 0;
binDiff(Tucuma2011 == -5555) = 0;
% figure
% imshow(binDiff,[])

%%
%valores para a 'Table I' do artigo
% errPSNR(3) = psnr(binTucuma0011,binDiff)
% errMSE(3) = immse(binTucuma0011,binDiff)
errSIM(3) = ssim(binTucuma0011,binDiff)
% condEnt(3) = condEntropy(binTucuma0011,binDiff)
jointEnt(3) = jointEntropy(binTucuma0011,binDiff)
% normMutialInfo(3) = nmi(binTucuma0011,binDiff)
% relEnt(3) = relatEntropy(binTucuma0011,binDiff)
[~,~,nrmseTucuma(3)] = MSE(binTucuma0011,binDiff)
entRef(3) = entropy(binTucuma0011)
entCla(3) = entropy(binDiff)
% save('evaluationNovoTucumaMagnitude2.mat','errMSE','errPSNR','errSIM','condEnt','jointEnt','normMutialInfo','relEnt')
% 
% close all

