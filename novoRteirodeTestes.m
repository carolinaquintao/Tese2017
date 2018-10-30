% load('mascaraNuvemParauapebas2.mat','Parauapebas1997','Parauapebas1990')
load('Workspace_Parauapebas_1990_1997.mat', 'tempo1')
load('Workspace_Parauapebas_1990_1997.mat', 'tempo2')
%%se tiver nuvem, tira antes
% for i=1:6
%     tempo1A = tempo1(:,:,i);
%     tempo2A = tempo2(:,:,i);
% 
%     tempo1A(Parauapebas1990==-5555 | Parauapebas1997 == -5555) = -9999;
%     tempo2A(Parauapebas1990==-5555 | Parauapebas1997 == -5555) = -9999;
%     tempo1F(:,:,i) = tempo1A;
%     tempo2F(:,:,i) = tempo2A;
% end
% clear tempo1 tempo1A tempo2 tempo2A Parauapebas1990 Parauapebas1997
[Magnitude, Direcao]= magnitude(tempo1,tempo2,1990,1997);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM9097,centers9097]=fuzzycmeans(Magnitude,2,5);
save('WSParauapebas90-97NovasNuvens.mat');

clear, clc

% load('mascaraNuvemParauapebas2.mat','Parauapebas1997','Parauapebas2000')
load('Workspace_Parauapebas_1997_2000.mat', 'tempo1')
load('Workspace_Parauapebas_1997_2000.mat', 'tempo2')
%%se tiver nuvem, tira antes
% for i=1:6
%     tempo1A = tempo1(:,:,i);
%     tempo2A = tempo2(:,:,i);
% 
%     tempo1A(Parauapebas2000==-5555 | Parauapebas1997 == -5555) = -9999;
%     tempo2A(Parauapebas2000==-5555 | Parauapebas1997 == -5555) = -9999;
%     tempo1F(:,:,i) = tempo1A;
%     tempo2F(:,:,i) = tempo2A;
% end
% clear tempo1 tempo1A tempo2 tempo2A Parauapebas2000 Parauapebas1997
[Magnitude, Direcao]= magnitude(tempo1,tempo2,1997,2000);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM9700,centers9700]=fuzzycmeans(Magnitude,2,5);
save('WSParauapebas97-00NovasNuvens.mat');

clear, clc

% load('mascaraNuvemParauapebas2.mat','Parauapebas2011','Parauapebas2000')
load('Workspace_Parauapebas_2000_2011.mat', 'tempo1')
load('Workspace_Parauapebas_2000_2011.mat', 'tempo2')
%%se tiver nuvem, tira antes
% for i=1:6
%     tempo1A = tempo1(:,:,i);
%     tempo2A = tempo2(:,:,i);
% 
%     tempo1A(Parauapebas2000==-5555 | Parauapebas2011 == -5555) = -9999;
%     tempo2A(Parauapebas2000==-5555 | Parauapebas2011 == -5555) = -9999;
%     tempo1F(:,:,i) = tempo1A;
%     tempo2F(:,:,i) = tempo2A;
% end
% clear tempo1 tempo1A tempo2 tempo2A Parauapebas2000 Parauapebas2011
[Magnitude, Direcao]= magnitude(tempo1,tempo2,2000,2011);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM0011,centers0011]=fuzzycmeans(Magnitude,2,5);
save('WSParauapebas00-11NovasNuvens.mat');

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear, clc
load('mascaraNuvemOurilandia2.mat','Ourilandia1997','Ourilandia1990')
load('Workspace_Ourilandia_1990_1997.mat', 'tempo1')
load('Workspace_Ourilandia_1990_1997.mat', 'tempo2')
%%se tiver nuvem, tira antes
for i=1:6
    tempo1A = tempo1(:,:,i);
    tempo2A = tempo2(:,:,i);

    tempo1A(Ourilandia1990==-5555 | Ourilandia1997 == -5555) = -9999;
    tempo2A(Ourilandia1990==-5555 | Ourilandia1997 == -5555) = -9999;
    tempo1F(:,:,i) = tempo1A;
    tempo2F(:,:,i) = tempo2A;
end
clear tempo1 tempo1A tempo2 tempo2A Ourilandia1990 Ourilandia1997
[Magnitude, Direcao]= magnitude(tempo1F,tempo2F,1990,1997);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM9097,centers9097]=fuzzycmeans(Magnitude,2,5);
save('WSOurilandia90-97NovasNuvens.mat');

clear, clc

load('mascaraNuvemOurilandia2.mat','Ourilandia1997','Ourilandia2000')
load('Workspace_Ourilandia_1997_2000.mat', 'tempo1')
load('Workspace_Ourilandia_1997_2000.mat', 'tempo2')
%%se tiver nuvem, tira antes
for i=1:6
    tempo1A = tempo1(:,:,i);
    tempo2A = tempo2(:,:,i);

    tempo1A(Ourilandia2000==-5555 | Ourilandia1997 == -5555) = -9999;
    tempo2A(Ourilandia2000==-5555 | Ourilandia1997 == -5555) = -9999;
    tempo1F(:,:,i) = tempo1A;
    tempo2F(:,:,i) = tempo2A;
end
clear tempo1 tempo1A tempo2 tempo2A Ourilandia2000 Ourilandia1997
[Magnitude, Direcao]= magnitude(tempo1F,tempo2F,1997,2000);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM9700,centers9700]=fuzzycmeans(Magnitude,2,5);
save('WSOurilandia97-00NovasNuvens.mat');

clear, clc

load('mascaraNuvemOurilandia2.mat','Ourilandia2011','Ourilandia2000')
load('Workspace_Ourilandia_2000_2011.mat', 'tempo1')
load('Workspace_Ourilandia_2000_2011.mat', 'tempo2')
%%se tiver nuvem, tira antes
for i=1:6
    tempo1A = tempo1(:,:,i);
    tempo2A = tempo2(:,:,i);

    tempo1A(Ourilandia2000==-5555 | Ourilandia2011 == -5555) = -9999;
    tempo2A(Ourilandia2000==-5555 | Ourilandia2011 == -5555) = -9999;
    tempo1F(:,:,i) = tempo1A;
    tempo2F(:,:,i) = tempo2A;
end
clear tempo1 tempo1A tempo2 tempo2A Ourilandia2000 Ourilandia2011
[Magnitude, Direcao]= magnitude(tempo1F,tempo2F,2000,2011);
%retira erro
for i=1:size(Magnitude,1)
    for j=1:size(Magnitude,2)
        if Magnitude(i,j) > (1.8e+04)
            Magnitude(i,j) = 0;
            Direcao(i,j) = 90;
        end
    end
end
[maskFCM0011,centers0011]=fuzzycmeans(Magnitude,2,5);
save('WSOurilandia00-11NovasNuvens.mat');
