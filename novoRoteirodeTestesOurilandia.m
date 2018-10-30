
load('WSOurilandia90-97NovasNuvens.mat','Magnitude');
[c1,c2,Ourilandia9097fase1]=fcm2(Magnitude);
binOurilandia9097 = ones(size(Magnitude));
binOurilandia9097(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binOurilandia9097,[])

binOurilandia90972 = zeros(size(Magnitude));
binOurilandia90972(Magnitude > c2) = 1; 
figure,imshow(binOurilandia90972,[])%ok
save('WSNovoOurilandia90-97NovasNuvens.mat');

clear
load('WSOurilandia97-00NovasNuvens.mat','Magnitude');
[c1,c2,Ourilandia9700fase1]=fcm2(Magnitude);
binOurilandia9700 = ones(size(Magnitude));
binOurilandia9700(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binOurilandia9700,[])

binOurilandia97002 = zeros(size(Magnitude));
binOurilandia97002(Magnitude > c2) = 1;
figure,imshow(binOurilandia97002,[])%ok!
save('WSNovoOurilandia97-00NovasNuvens.mat');

clear
load('WSOurilandia00-11NovasNuvens.mat','Magnitude');
[c1,c2,Ourilandia0011fase1]=fcm2(Magnitude);
binOurilandia0011 = ones(size(Magnitude));
binOurilandia0011(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binOurilandia0011,[])

binOurilandia00112 = zeros(size(Magnitude));
binOurilandia00112(Magnitude > c2) = 1;
figure,imshow(binOurilandia00112,[])%ok
save('WSNovoOurilandia00-11NovasNuvens.mat');
