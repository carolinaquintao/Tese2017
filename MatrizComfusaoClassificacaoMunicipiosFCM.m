load('ws_Canaa_1990_1997.mat', 'diffMapa')
load('NovoCanaaMaskFCM9097.mat')
maskFCM9097 = double(maskFCM9097);
% unique(diffMapa)
% unique(maskFCM9097)
% %
maskFCM9097(maskFCM9097==1) = 0;
maskFCM9097(maskFCM9097==3) = 4;
maskFCM9097(maskFCM9097==2) = 3;

maskFCM9097(maskFCM9097 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9097(maskFCM9097 == 4) = 2;
diffMapa(diffMapa == 4) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9097,1,size(diffMapa,1)*size(diffMapa,2))));

[aCanaa9097,mCanaa9097] = confusion(newDiff,newMask);
1-aCanaa9097
kappa(mCanaa9097)
%%
load('ws_Canaa_1997_2000.mat', 'diffMapa')
load('NovoCanaaMaskFCM9700.mat')
maskFCM9700 = double(maskFCM9700);

% unique(diffMapa)
% unique(maskFCM9700)

maskFCM9700(maskFCM9700==1) = 0;
maskFCM9700(maskFCM9700==2) = 4;
maskFCM9700(maskFCM9700==3) = 3;

maskFCM9700(maskFCM9700 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9700(maskFCM9700 == 4) = 2;
diffMapa(diffMapa == 4) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9700,1,size(diffMapa,1)*size(diffMapa,2))));

[aCanaa9700,mCanaa9700] = confusion(newDiff,newMask);
1-aCanaa9700
kappa(mCanaa9700)
%%
load('ws_Canaa_2000_2011.mat', 'diffMapa')
load('NovoCanaaMaskFCM0011.mat')
maskFCM0011 = double(maskFCM0011);

unique(diffMapa)
unique(maskFCM0011)

maskFCM0011(maskFCM0011==4) = 4;
maskFCM0011(maskFCM0011==3) = 3;
maskFCM0011(maskFCM0011==1) = 0;
maskFCM0011(maskFCM0011==2) = 7;

maskFCM0011(maskFCM0011 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM0011(maskFCM0011 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM0011,1,size(diffMapa,1)*size(diffMapa,2))));

[aCanaa0011,mCanaa0011] = confusion(newDiff,newMask);
1-aCanaa0011
kappa(mCanaa0011)
%% %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%TUCUMA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1 agua
% 2 mina
% 3 solo
% 4 urbano
% 5 vegeta
% 6 vegeta
% 7 agua
% 8 ?

load('ws_Tucuma_1990_1997.mat', 'diffMapa')
load('NovoTucumaMaskFCM90972.mat')
maskFCM9097 = double(maskFCM9097);

% unique(diffMapa)
% unique(maskFCM9097)

maskFCM9097(maskFCM9097==4) = 8;
maskFCM9097(maskFCM9097==3) = 3;
maskFCM9097(maskFCM9097==1) = 4;
maskFCM9097(maskFCM9097==2) = 0;

maskFCM9097(maskFCM9097 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9097(maskFCM9097 == 8) = 2;
diffMapa(diffMapa == 8) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9097,1,size(diffMapa,1)*size(diffMapa,2))));

[aTucuma9097,mTucuma9097] = confusion(newDiff,newMask);
1-aTucuma9097
kappa(mTucuma9097)

%%
load('ws_Tucuma_1997_2000.mat', 'diffMapa')
load('NovoTucumaMaskFCM97002.mat')
maskFCM9700 = double(maskFCM9700);

 unique(diffMapa)
 unique(maskFCM9700)
%
maskFCM9700(maskFCM9700==3) = 0;
maskFCM9700(maskFCM9700==4) = 3;
maskFCM9700(maskFCM9700==2) = 4;
maskFCM9700(maskFCM9700==1) = 8;
%
 unique(diffMapa)
 unique(maskFCM9700)
 
maskFCM9700(maskFCM9700 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9700(maskFCM9700 == 8) = 2;
diffMapa(diffMapa == 8) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9700,1,size(diffMapa,1)*size(diffMapa,2))));

[aTucuma9700,mTucuma9700] = confusion(newDiff,newMask);
kappa(mTucuma9700)

%%
load('ws_Tucuma_2000_2011.mat', 'diffMapa')
load('NovoTucumaMaskFCM00112.mat')
maskFCM0011 = double(maskFCM0011);

unique(diffMapa)
unique(maskFCM0011)

maskFCM0011(maskFCM0011==3) = 3;
maskFCM0011(maskFCM0011==1) = 4;
maskFCM0011(maskFCM0011==2) = 0;

maskFCM0011(maskFCM0011 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM0011(maskFCM0011 == 8) = 2;
diffMapa(diffMapa == 8) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM0011,1,size(diffMapa,1)*size(diffMapa,2))));

[aTucuma9700,mTucuma9700] = confusion(newDiff,newMask);
1-aTucuma9700
kappa(mTucuma9700)


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%OURILANDIA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('ws_Ourilandia_1990_1997.mat', 'diffMapa')
load('NovoOurilandiaMaskFCM9097.mat')
maskFCM9097 = double(maskFCM9097);

unique(diffMapa)
unique(maskFCM9097)


maskFCM9097(maskFCM9097==1) = 4;
maskFCM9097(maskFCM9097==2) = 0;
maskFCM9097(maskFCM9097==3) = 3;

maskFCM9097(maskFCM9097 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9097(maskFCM9097 == 4) = 2;
diffMapa(diffMapa == 4) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9097,1,size(diffMapa,1)*size(diffMapa,2))));

[aOurilandia9097,mOurilandia9097] = confusion(newDiff,newMask);
kappa(mOurilandia9097)
%%
load('ws_Ourilandia_1997_2000.mat', 'diffMapa')
load('NovoOurilandiaMaskFCM9700.mat')
maskFCM9700 = double(maskFCM9700);

unique(diffMapa)
unique(maskFCM9700)

maskFCM9700(maskFCM9700==4) = 0;
maskFCM9700(maskFCM9700==3) = 3;
maskFCM9700(maskFCM9700==1) = 4;
maskFCM9700(maskFCM9700==2) = 7;

maskFCM9700(maskFCM9700 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9700(maskFCM9700 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9700,1,size(diffMapa,1)*size(diffMapa,2))));

[aOurilandia9700,mOurilandia9700] = confusion(newDiff,newMask);
kappa(mOurilandia9700)
%%

load('ws_Ourilandia_2000_2011.mat', 'diffMapa')
load('NovoOurilandiaMaskFCM0011.mat')
maskFCM0011 = double(maskFCM0011);

unique(diffMapa)
unique(maskFCM0011)

maskFCM0011(maskFCM0011==1) = 7;
maskFCM0011(maskFCM0011==3) = 0;
maskFCM0011(maskFCM0011==4) = 3;
maskFCM0011(maskFCM0011==2) = 4;

maskFCM0011(maskFCM0011 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM0011(maskFCM0011 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM0011,1,size(diffMapa,1)*size(diffMapa,2))));

[aOurilandia0011,mOurilandia0011] = confusion(newDiff,newMask);
kappa(mOurilandia0011)
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Parauapebas%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('ws_Parauapebas_1990_1997.mat', 'diffMapa')
load('NovoParauapebasMaskFCM9097.mat')
maskFCM9097 = double(maskFCM9097);

unique(diffMapa)
unique(maskFCM9097)

maskFCM9097(maskFCM9097==3) = 3;
maskFCM9097(maskFCM9097==1) = 7;
maskFCM9097(maskFCM9097==2) = 0;
maskFCM9097(maskFCM9097==4) = 4;


maskFCM9097(maskFCM9097 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9097(maskFCM9097 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9097,1,size(diffMapa,1)*size(diffMapa,2))));

[aParauapebas9097,mParauapebas9097] = confusion(newDiff,newMask);
kappa(mParauapebas9097)
%%
load('ws_Parauapebas_1997_2000.mat', 'diffMapa')
load('NovoParauapebasMaskFCM9700.mat')
maskFCM9700 = double(maskFCM9700);

unique(diffMapa)
unique(maskFCM9700)

maskFCM9700(maskFCM9700==4) = 5;
maskFCM9700(maskFCM9700==3) = 4;
maskFCM9700(maskFCM9700==5) = 3;
maskFCM9700(maskFCM9700==1) = 0;
maskFCM9700(maskFCM9700==2) = 7;


maskFCM9700(maskFCM9700 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM9700(maskFCM9700 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM9700,1,size(diffMapa,1)*size(diffMapa,2))));

[aParauapebas9700,mParauapebas9700] = confusion(newDiff,newMask);
kappa(mParauapebas9700)
%%

load('ws_Parauapebas_2000_2011.mat', 'diffMapa')
load('NovoParauapebasMaskFCM0011.mat')
maskFCM0011 = double(maskFCM0011);

unique(diffMapa)
unique(maskFCM0011)

maskFCM0011(maskFCM0011==4) = 7;
maskFCM0011(maskFCM0011==3) = 4;
maskFCM0011(maskFCM0011==1) = 3;
maskFCM0011(maskFCM0011==2) = 0;


maskFCM0011(maskFCM0011 == 0) = 1;
diffMapa(diffMapa == 0) = 1;
maskFCM0011(maskFCM0011 == 7) = 2;
diffMapa(diffMapa == 7) = 2;


newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
newMask = full(ind2vec(reshape(maskFCM0011,1,size(diffMapa,1)*size(diffMapa,2))));

[aParauapebas0011,mParauapebas0011] = confusion(newDiff,newMask);
kappa(mParauapebas0011)
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sao Felix%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% load('ws_SaoFelix_1990_1997.mat', 'diffMapa')
% load('NovoSaoFelixMaskFCM9097.mat')
% maskFCM9097 = double(maskFCM9097);
% 
% unique(diffMapa)
% unique(maskFCM9097)
% 
% maskFCM9097(maskFCM9097==3) = 3;
% maskFCM9097(maskFCM9097==4) = 0;
% maskFCM9097(maskFCM9097==1) = 4;
% maskFCM9097(maskFCM9097==2) = 7;
% maskFCM9097(maskFCM9097==5) = 9;
% 
% 
% maskFCM9097(maskFCM9097 == 0) = 1;
% diffMapa(diffMapa == 0) = 1;
% maskFCM9097(maskFCM9097 == 7) = 2;
% diffMapa(diffMapa == 7) = 2;
% maskFCM9097(maskFCM9097 == 9) = 5;
% diffMapa(diffMapa == 9) = 5;
% 
% 
% newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
% newMask = full(ind2vec(reshape(maskFCM9097,1,size(diffMapa,1)*size(diffMapa,2))));
% 
% [aSaoFelix9097,mSaoFelix9097] = confusion(newDiff,newMask);
% kappa(mSaoFelix9097)
% 
% %%
% load('ws_SaoFelix_1997_2000.mat', 'diffMapa')
% load('NovoSaoFelixMaskFCM9700.mat')
% maskFCM9700 = double(maskFCM9700);
% 
% unique(diffMapa)
% unique(maskFCM9700)
% 
% maskFCM9700(maskFCM9700==4) = 0;
% maskFCM9700(maskFCM9700==3) = 4;
% maskFCM9700(maskFCM9700==1) = 9;
% maskFCM9700(maskFCM9700==2) = 7;
% maskFCM9700(maskFCM9700==5) = 3;
% 
% 
% maskFCM9700(maskFCM9700 == 0) = 1;
% diffMapa(diffMapa == 0) = 1;
% maskFCM9700(maskFCM9700 == 7) = 2;
% diffMapa(diffMapa == 7) = 2;
% maskFCM9700(maskFCM9700 == 9) = 5;
% diffMapa(diffMapa == 9) = 5;
% 
% 
% newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
% newMask = full(ind2vec(reshape(maskFCM9700,1,size(diffMapa,1)*size(diffMapa,2))));
% 
% [aSaoFelix9700,mSaoFelix9700] = confusion(newDiff,newMask);
% kappa(mSaoFelix9700)
% 
% %%
% load('ws_SaoFelix_2000_2011.mat', 'diffMapa')
% load('NovoSaoFelixMaskFCM0011.mat')
% maskFCM0011 = double(maskFCM0011);
% 
% unique(diffMapa)
% unique(maskFCM0011)
% 
% maskFCM0011(maskFCM0011==4) = 9;
% maskFCM0011(maskFCM0011==3) = 4;
% maskFCM0011(maskFCM0011==1) = 3;
% maskFCM0011(maskFCM0011==5) = 7;
% maskFCM0011(maskFCM0011==2) = 0;
% 
% unique(diffMapa)
% unique(maskFCM0011)
% %%
% maskFCM0011(maskFCM0011 == 0) = 1;
% diffMapa(diffMapa == 0) = 1;
% maskFCM0011(maskFCM0011 == 7) = 2;
% diffMapa(diffMapa == 7) = 2;
% maskFCM0011(maskFCM0011 == 9) = 5;
% diffMapa(diffMapa == 9) = 5;
% 
% 
% newDiff = full(ind2vec(reshape(diffMapa,1,size(diffMapa,1)*size(diffMapa,2))));
% newMask = full(ind2vec(reshape(maskFCM0011,1,size(diffMapa,1)*size(diffMapa,2))));
% 
% [aSaoFelix0011,mSaoFelix0011] = confusion(newDiff,newMask);
% kappa(mSaoFelix0011)
