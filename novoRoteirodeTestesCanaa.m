
load('WSCanaa90-97NovasNuvens.mat','Magnitude');
[c1,c2,Canaa9097fase1]=fcm2(Magnitude);
binCanaa9097 = zeros(size(Magnitude));
binCanaa9097(Magnitude > c2) = 1;%ok
figure,imshow(binCanaa9097,[])
save('WSNovoCanaa90-97NovasNuvens.mat');
disp('9097')

load('WSCanaa97-00NovasNuvens.mat','Magnitude');
[c1,c2,Canaa9700fase1]=fcm2(Magnitude);
binCanaa9700 = zeros(size(Magnitude));
binCanaa9700(Magnitude > c2) = 1;%ok
figure,imshow(binCanaa9700,[])
save('WSNovoCanaa97-00NovasNuvens.mat');
disp('9700')

load('WSCanaa00-11NovasNuvens.mat','Magnitude');
[c1,c2,Canaa0011fase1]=fcm2(Magnitude);
binCanaa0011 = zeros(size(Magnitude));
binCanaa0011(Magnitude > c2) = 1;%ok
figure,imshow(binCanaa0011,[])
save('WSNovoCanaa00-11NovasNuvens.mat');
disp('0011')
