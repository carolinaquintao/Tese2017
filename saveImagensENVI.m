%em
% emDirecao8493(emDirecao8493==90) = 0;
emDirecao8493(mudaClassMagnitude8493==0) = 255;
i = mat2gray(emDirecao8493);
imwrite(i,'emDirecao8493.tif', 'tif');

% emDirecao9398(emDirecao9398==90) = NaN;
emDirecao9398(mudaClassMagnitude9398==0) = 255;
i = mat2gray(emDirecao9398);
imwrite(i,'emDirecao9398.tif', 'tif');

% emDirecao9802(emDirecao9802==90) = NaN;
emDirecao9802(mudaClassMagnitude9802==0) = 255;
i = mat2gray(emDirecao9802);
imwrite(i,'emDirecao9802.tif', 'tif');

% emDirecao0206(emDirecao0206==90) = NaN;
emDirecao0206(mudaClassMagnitude0206==0) = 255;
i = mat2gray(emDirecao0206);
imwrite(i,'emDirecao0206.tif', 'tif');

% emDirecao0611(emDirecao0611==90) = NaN;
emDirecao0611(mudaClassMagnitude0611==0) = 255;
i = mat2gray(emDirecao0611);
imwrite(i,'emDirecao0611.tif', 'tif');

%km
% kmDirecao8493(kmDirecao8493==90) = NaN;
kmDirecao8493(mudaClassMagnitude8493==0) = 255;
i = mat2gray(kmDirecao8493);
imwrite(i,'kmDirecao8493.tif', 'tif');

% kmDirecao9398(kmDirecao9398==90) = NaN;
kmDirecao9398(mudaClassMagnitude9398==0) = 255;
i = mat2gray(kmDirecao9398);
imwrite(i,'kmDirecao9398.tif', 'tif');

% kmDirecao9802(kmDirecao9802==90) = NaN;
kmDirecao9802(mudaClassMagnitude9802==0) = 255;
i = mat2gray(kmDirecao9802);
imwrite(i,'kmDirecao9802.tif', 'tif');

% kmDirecao0206(kmDirecao0206==90) = NaN;
kmDirecao0206(mudaClassMagnitude0206==0) = 255;
i = mat2gray(kmDirecao0206);
imwrite(i,'kmDirecao0206.tif', 'tif');

% kmDirecao0611(kmDirecao0611==90) = NaN;
kmDirecao0611(mudaClassMagnitude0611==0) = 255;
i = mat2gray(kmDirecao0611);
imwrite(i,'kmDirecao0611.tif', 'tif');

%o
% oDirecao8493(oDirecao8493==90) = NaN;
oDirecao8493(mudaClassMagnitude8493==0) = 255;
i = mat2gray(oDirecao8493);
imwrite(i,'oDirecao8493.tif', 'tif');

% oDirecao9398(oDirecao9398==90) = NaN;
oDirecao9398(mudaClassMagnitude9398==0) = 255;
i = mat2gray(oDirecao9398);
imwrite(i,'oDirecao9398.tif', 'tif');

% oDirecao9802(oDirecao9802==90) = NaN;
oDirecao9802(mudaClassMagnitude9802==0) = 255;
i = mat2gray(oDirecao9802);
imwrite(i,'oDirecao9802.tif', 'tif');

% oDirecao0206(oDirecao0206==90) = NaN;
oDirecao0206(mudaClassMagnitude0206==0) = 255;
i = mat2gray(oDirecao0206);
imwrite(i,'oDirecao0206.tif', 'tif');

% oDirecao0611(oDirecao0611==90) = NaN;
oDirecao0611(mudaClassMagnitude0611==0) = 255;
i = mat2gray(oDirecao0611);
imwrite(i,'oDirecao0611.tif', 'tif');

%fcm
% fcmDirecao8493(fcmDirecao8493==90) = NaN;
fcmDirecao8493(mudaClassMagnitude8493==0) = 255;
i = mat2gray(fcmDirecao8493);
imwrite(i,'fcmDirecao8493.tif', 'tif');

% fcmDirecao9398(fcmDirecao9398==90) = NaN;
fcmDirecao9398(mudaClassMagnitude9398==0) = 255;
i = mat2gray(fcmDirecao9398);
imwrite(i,'fcmDirecao9398.tif', 'tif');

% fcmDirecao9802(fcmDirecao9802==90) = NaN;
fcmDirecao9802(mudaClassMagnitude9802==0) = 255;
i = mat2gray(fcmDirecao9802);
imwrite(i,'fcmDirecao9802.tif', 'tif');

% fcmDirecao0206(fcmDirecao0206==90) = NaN;
fcmDirecao0206(mudaClassMagnitude0206==0) = 255;
i = mat2gray(fcmDirecao0206);
imwrite(i,'fcmDirecao0206.tif', 'tif');

% fcmDirecao0611(fcmDirecao0611==90) = NaN;
fcmDirecao0611(mudaClassMagnitude0611==0) = 255;
i = mat2gray(fcmDirecao0611);
imwrite(i,'fcmDirecao0611.tif', 'tif');


%% classe para gerar avaliacao
% imshow(mudaClassMagnitude8493,[]);
% fig = gcf;
% fig.Color = 'black';
% fig.InvertHardcopy = 'off';
% saveas(gcf,'mudaClassMagnitude8493.tif')
% 
% close all
% 
% imshow(mudaClassMagnitude9398,[]);
% fig = gcf;
% fig.Color = 'black';
% fig.InvertHardcopy = 'off';
% saveas(gcf,'mudaClassMagnitude9398.tif')
% close all
% 
% imshow(mudaClassMagnitude9802,[]);
% fig = gcf;
% fig.Color = 'black';
% fig.InvertHardcopy = 'off';
% saveas(gcf,'mudaClassMagnitude9802.tif')
% close all
% 
% imshow(mudaClassMagnitude0206,[]);
% fig = gcf;
% fig.Color = 'black';
% fig.InvertHardcopy = 'off';
% saveas(gcf,'mudaClassMagnitude0206.tif')
% close all
% 
% imshow(mudaClassMagnitude0611,[]);
% fig = gcf;
% fig.Color = 'black';
% fig.InvertHardcopy = 'off';
% saveas(gcf,'mudaClassMagnitude0611.tif')
% close all
% 
% 
% %%salva certo
% i = mat2gray(emDirecao0206);
% ii = im2uint8(i);
% imwrite(i,'imagename.tif', 'tif');
