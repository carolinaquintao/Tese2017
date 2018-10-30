
load('WSTucuma90-97NovasNuvens.mat','Magnitude');
[c1,c2,Tucuma9097fase1]=fcm2(Magnitude);
binTucuma9097 = ones(size(Magnitude));
binTucuma9097(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binTucuma9097,[])

binTucuma90972 = zeros(size(Magnitude));
binTucuma90972(Magnitude > c2) = 1; 
figure,imshow(binTucuma90972,[])%ok
save('WSNovoTucuma90-97NovasNuvens.mat');

clear
load('WSTucuma97-00NovasNuvens.mat','Magnitude');
[c1,c2,Tucuma9700fase1]=fcm2(Magnitude);
binTucuma9700 = ones(size(Magnitude));
binTucuma9700(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binTucuma9700,[])

binTucuma97002 = zeros(size(Magnitude));
binTucuma97002(Magnitude > c2) = 1;
figure,imshow(binTucuma97002,[])%ok!
save('WSNovoTucuma97-00NovasNuvens.mat');

clear
load('WSTucuma00-11NovasNuvens.mat','Magnitude');
[c1,c2,Tucuma0011fase1]=fcm2(Magnitude);
binTucuma0011 = ones(size(Magnitude));
binTucuma0011(Magnitude <= (c1+c2)/2) = 0;
figure,imshow(binTucuma0011,[])

binTucuma00112 = zeros(size(Magnitude));
binTucuma00112(Magnitude > c2) = 1;%ok
figure,imshow(binTucuma00112,[])
save('WSNovoTucuma00-11NovasNuvens.mat');
