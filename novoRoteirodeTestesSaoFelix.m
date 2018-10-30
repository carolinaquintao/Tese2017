
load('WSSaoFelix90-97NovasNuvens.mat','Magnitude');
[c1,c2,SaoFelix9097fase1]=fcm2(Magnitude);
binSaoFelix9097 = ones(size(Magnitude));
binSaoFelix9097(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binSaoFelix9097,[])

binSaoFelix90972 = zeros(size(Magnitude));
binSaoFelix90972(Magnitude > c2) = 1; 
figure,imshow(binSaoFelix90972,[])%ok
save('WSNovoSaoFelix90-97NovasNuvens.mat');
%%
clear
load('WSSaoFelix97-00NovasNuvens.mat','Magnitude');
[c1,c2,SaoFelix9700fase1]=fcm2(Magnitude);
binSaoFelix9700 = ones(size(Magnitude));
binSaoFelix9700(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binSaoFelix9700,[])

binSaoFelix97002 = zeros(size(Magnitude));
binSaoFelix97002(Magnitude > c2) = 1;
figure,imshow(binSaoFelix97002,[])%ok
save('WSNovoSaoFelix97-00NovasNuvens.mat');
%%
clear
load('WSSaoFelix00-11NovasNuvens.mat','Magnitude');
[c1,c2,SaoFelix0011fase1]=fcm2(Magnitude);
binSaoFelix0011 = ones(size(Magnitude));
binSaoFelix0011(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binSaoFelix0011,[])

binSaoFelix00112 = zeros(size(Magnitude));
binSaoFelix00112(Magnitude > c2) = 1;%ok!
figure,imshow(binSaoFelix00112,[])
save('WSNovoSaoFelix00-11NovasNuvens.mat');
