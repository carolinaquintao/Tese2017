

clear, clc, close all
load('Workspace_Canaa_1990_1997.mat', 'Magnitude','Direcao');

% [Mlb,Mcenter] = adaptcluster_kmeans(Magnitude);
% 
% SC_magnitude = Magnitude;%ones(size(Magnitude));
% SC_direction = Direcao;%ones(size(Magnitude));
% 
% for i=1:size(Magnitude,1)
%     for j=1:size(Magnitude,2)
%         if (Magnitude(i,j) <= (Mcenter(1)))
%             SC_magnitude(i,j) = 0;
%             SC_direction(i,j) = 90;
%         end
%     end
% end
% [MlbD,McenterD] = adaptcluster_kmeans(SC_direction);
% figure
% imshow(MlbD,[])
% figure
[ccc1, ccc2] = fcm2(Magnitude);
% SC_magnitude = gpuArray(Magnitude);%ones(size(Magnitude));
%%
SC_direction = Direcao;%ones(size(Magnitude));

for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if (Magnitude(i,j) <= ccc2)
%             SC_magnitude(i,j) = 0;
            SC_direction(i,j) = 90;
        end
    end
end
%%
[MlbD,McenterD] = adaptcluster_kmeans(SC_direction);
% figure
% imshow(MlbD,[])

% [bw,level]=fcmthresh(Magnitude,1);
% SC_magnitude = Magnitude;%ones(size(Magnitude));
% SC_direction = Direcao;%ones(size(Magnitude));
% 
% for i=1:size(Magnitude,1)
%     for j=1:size(Magnitude,2)
%         if (Magnitude(i,j) <= level)
%             SC_magnitude(i,j) = 0;
%             SC_direction(i,j) = 90;
%         end
%     end
% end
% [MlbD,McenterD] = adaptcluster_kmeans(SC_direction);
% figure
% imshow(MlbD,[])
%%
% theta = double(reshape(SC_direction,size(SC_direction,1)*size(SC_direction,2),1));
% rho = double(reshape(SC_magnitude,size(SC_direction,1)*size(SC_direction,2),1));
% [center,U,obj_fcn] = fcm([theta(theta~=90) rho(rho~=0)],7);
%% 
load('mapa_referencia_SaoFelix_1990.mat')
mapa1990 = mapa;
mapa1990(mapa1990 == 10) = 0;
mapa1990(mapa1990 == 2) = 0;
mapa1990(mapa1990 == 5) = 0;
mapa1990(mapa1990 == 1) = 0;

figure
imshow(mapa1990,[])

load('mapa_referencia_SaoFelix_2011.mat')
mapa2011 = mapa;
mapa2011(mapa2011 == 10) = 0;%nada
mapa2011(mapa2011 == 2) = 0;%mina
mapa2011(mapa2011 == 5) = 0;%vegetacao
mapa2011(mapa2011 == 1) = 0;%agua


g = zeros(size(mapa2011));
g = roipoly;
diffMapa = zeros(size(mapa1990));
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if mapa1990(i,j) == 0 && mapa2011(i,j) ~= 0 && g(i,j) == 0
            diffMapa(i,j) = mapa2011(i,j);
        end
    end
end

imshow(diffMapa,[])

%%
save('ws_SaoFelix_1990_2011')
% center = sort(center(:,1)); % Sort Centers.
% newcenter = diff(center);% Find out Difference between two consecutive Centers. 
% intercluster = (nanmax(gray(:)/10));% Findout Minimum distance between two cluster Centers.
% center(newcenter<=intercluster)=[];% Discard Cluster centers less than distance.
% center(center==255)=[];% Discard Cluster centers equals to 255.
% 
% % Make a clustered image using these centers.
% 
% vector = repmat(gray(:),[1,numel(center)]); % Replicate vector for parallel operation.
% centers = repmat(center,[numel(gray),1]);
% 
% distance = ((vector-centers).^2);% Find distance between center and pixel value.
% [~,lb] = min(distance,[],2);% Choose cluster index of minimum distance.
% lb = reshape(lb,size(gray));% Reshape the labelled index vector.
% 
% cform = makecform('srgb2lab');
% lab_he = applycform(cat(3,gray,gray,gray),cform);
% segmented_images = cell(1,size(center,1));
% rgb_label = repmat(lb,[1 1 3]);

