%para gerar o colormap reduz o limite maximo (que eh nuvem), plota e depois
%muda os limites do color bar para [0,max(SR)]

SR_2011b3_TODOS(SR_2011b3_TODOS==20000) = max(SR_2011b3_TODOS(SR_2011b3_TODOS~=20000))+500;
max(SR_2011b3_TODOS(:))
SR_2011b4_TODOS(SR_2011b4_TODOS==20000) = max(SR_2011b4_TODOS(SR_2011b4_TODOS~=20000))+500;
max(SR_2011b4_TODOS(:))
SR_2011b5_TODOS(SR_2011b5_TODOS==20000) = max(SR_2011b5_TODOS(SR_2011b5_TODOS~=20000))+500;
max(SR_2011b5_TODOS(:))
figure
imshow(SR_2011b3_TODOS)
figure
imshow(SR_2011b4_TODOS)
figure
imshow(SR_2011b5_TODOS)

%% %
SR_2011b3_240(SR_2011b3_240==20000) = max(SR_2011b3_240(SR_2011b3_240~=20000))+500;
max(SR_2011b3_240(:))
SR_2011b4_240(SR_2011b4_240==20000) = max(SR_2011b4_240(SR_2011b4_240~=20000))+500;
max(SR_2011b4_240(:))
SR_2011b5_240(SR_2011b5_240==20000) = max(SR_2011b5_240(SR_2011b5_240~=20000))+500;
max(SR_2011b5_240(:))

figure
imshow(SR_2011b3_240)
figure
imshow(SR_2011b4_240)
figure
imshow(SR_2011b5_240)
%% %
SR_2011b3_287(SR_2011b3_287==20000) = max(SR_2011b3_287(SR_2011b3_287~=20000))+500;
max(SR_2011b3_287(:))
SR_2011b4_287(SR_2011b4_287==20000) = max(SR_2011b4_287(SR_2011b4_287~=20000))+500;
max(SR_2011b4_287(:))
SR_2011b5_287(SR_2011b5_287==20000) = max(SR_2011b5_287(SR_2011b5_287~=20000))+500;
max(SR_2011b5_287(:))

figure
imshow(SR_2011b3_287)
figure
imshow(SR_2011b4_287)
figure
imshow(SR_2011b5_287)


%%
%para gerar o colorbar da minepitclassification tem que indexar a imagem e colocar a
%ordem do colormap como desejar.
[X,map] = rgb2ind(minePitClassified2,4);
figure, image(X), colormap(map)
%modifica o map e depois atualiza a imagem
%o map1 ficou:
%map1 = [1,1,1;0.321568627450980,0.768627450980392,0.321568627450980;1,0.341176470588235,1;0.403921568627451,0.207843137254902,0.403921568627451];

X1 = zeros(size(X));
X1(X==3) = 1;
X1(X==1) = 2;
X1(X==0) = 3;
figure, imagesc(X1), colormap(map1)
axis off

%%
%para a imagem minepit original
[X,map] = rgb2ind(j,221);
figure, image(X), colormap(map)
axis off

%modifica o map e depois atualiza a imagem
%o map1 ficou:
% map1 = [1,1,1;...
%     0.321568627450980,0.768627450980392,0.321568627450980;...
%     1,0.341176470588235,1;...
%     0.403921568627451,0.207843137254902,0.403921568627451;...
%     0.403921568627451,0.207843137254902,0.1;...
%     0,0.341176470588235,1];
% 
% 
% X1 = zeros(size(X));
% X1(X==3) = 3;
% X1(X==2) = 2;
% X1(X==0) = 1;
% figure, imagesc(X1), colormap(map1)
% axis off
