kmDirecao8493(isnan(kmDirecao8493)) = -9999;
kmDirecao9398(isnan(kmDirecao9398)) = -9999;
kmDirecao9802(isnan(kmDirecao9802)) = -9999;
kmDirecao0206(isnan(kmDirecao0206)) = -9999;
kmDirecao0611(isnan(kmDirecao0611)) = -9999;
emDirecao8493(isnan(emDirecao8493)) = -9999;
emDirecao9398(isnan(emDirecao9398)) = -9999;
emDirecao9802(isnan(emDirecao9802)) = -9999;
emDirecao0206(isnan(emDirecao0206)) = -9999;
emDirecao0611(isnan(emDirecao0611)) = -9999;
oDirecao8493(isnan(emDirecao8493)) = -9999;
oDirecao9398(isnan(emDirecao9398)) = -9999;
oDirecao9802(isnan(emDirecao9802)) = -9999;
oDirecao0206(isnan(emDirecao0206)) = -9999;
oDirecao0611(isnan(emDirecao0611)) = -9999;

%em
imshow(emDirecao8493,[]);
saveas(gcf,'emDirecao8493.tif')
close all
imshow(emDirecao9398,[]);
saveas(gcf,'emDirecao93998.tif')
close all

imshow(emDirecao9802,[]);
saveas(gcf,'emDirecao9802.tif')
close all

imshow(emDirecao0206,[]);
saveas(gcf,'emDirecao0206.tif')
close all

imshow(emDirecao0611,[]);
saveas(gcf,'emDirecao0611.tif')
close all

%km
imshow(kmDirecao8493,[]);
saveas(gcf,'kmDirecao8493.tif')
close all
imshow(kmDirecao9398,[]);
saveas(gcf,'kmDirecao93998.tif')
close all

imshow(kmDirecao9802,[]);
saveas(gcf,'kmDirecao9802.tif')
close all

imshow(kmDirecao0206,[]);
saveas(gcf,'kmDirecao0206.tif')
close all

imshow(kmDirecao0611,[]);
saveas(gcf,'kmDirecao0611.tif')
close all
%o
imshow(oDirecao8493,[]);
saveas(gcf,'oDirecao8493.tif')
close all
imshow(oDirecao9398,[]);
saveas(gcf,'oDirecao93998.tif')
close all

imshow(oDirecao9802,[]);
saveas(gcf,'oDirecao9802.tif')
close all

imshow(oDirecao0206,[]);
saveas(gcf,'oDirecao0206.tif')
close all

imshow(oDirecao0611,[]);
saveas(gcf,'oDirecao0611.tif')
%%
%fcm
imshow(fcmDirecao8493,[]);
saveas(gcf,'fcmDirecao8493.tif')

close all

imshow(fcmDirecao9398,[]);
saveas(gcf,'fcmDirecao93998.tif')
close all

imshow(fcmDirecao9802,[]);
saveas(gcf,'fcmDirecao9802.tif')
close all

imshow(fcmDirecao0206,[]);
saveas(gcf,'fcmDirecao0206.tif')
close all

imshow(fcmDirecao0611,[]);
saveas(gcf,'fcmDirecao0611.tif')
close all

%% classe para gerar avaliacao
imshow(mudaClassMagnitude8493,[]);
fig = gcf;
fig.Color = 'black';
fig.InvertHardcopy = 'off';
saveas(gcf,'mudaClassMagnitude8493.png')

close all

imshow(mudaClassMagnitude9398,[]);
fig = gcf;
fig.Color = 'black';
fig.InvertHardcopy = 'off';
saveas(gcf,'mudaClassMagnitude9398.png')
close all

imshow(mudaClassMagnitude9802,[]);
fig = gcf;
fig.Color = 'black';
fig.InvertHardcopy = 'off';
saveas(gcf,'mudaClassMagnitude9802.png')
close all

imshow(mudaClassMagnitude0206,[]);
fig = gcf;
fig.Color = 'black';
fig.InvertHardcopy = 'off';
saveas(gcf,'mudaClassMagnitude0206.png')
close all

imshow(mudaClassMagnitude0611,[]);
fig = gcf;
fig.Color = 'black';
fig.InvertHardcopy = 'off';
saveas(gcf,'mudaClassMagnitude0611.png')
close all


%%salva certo
i = mat2gray(emDirecao0206);
ii = im2uint8(i);
imwrite(i,'imagename.png', 'png');
