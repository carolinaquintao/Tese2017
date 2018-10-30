
load('WSParauapebas90-97NovasNuvens.mat','Magnitude');
[c1,c2,Parauapebas9097fase1]=fcm2(Magnitude);
binParauapebas9097 = zeros(size(Magnitude));
binParauapebas9097(Magnitude > c2) = 1; %ok
figure,imshow(binParauapebas9097,[])
save('WSNovoParauapebas90-97NovasNuvens.mat');

load('WSParauapebas97-00NovasNuvens.mat','Magnitude');
[c1,c2,Parauapebas9700fase1]=fcm2(Magnitude);
binParauapebas9700 = zeros(size(Magnitude));
binParauapebas9700(Magnitude > c2) = 1;%ok
figure,imshow(binParauapebas9700,[])
save('WSNovoParauapebas97-00NovasNuvens.mat');

load('WSParauapebas00-11NovasNuvens.mat','Magnitude');
[c1,c2,Parauapebas0011fase1]=fcm2(Magnitude);
binParauapebas0011 = zeros(size(Magnitude));
binParauapebas0011(Magnitude  > c2) = 1;
figure,imshow(binParauapebas0011,[])
save('WSNovoParauapebas00-11NovasNuvens.mat');
