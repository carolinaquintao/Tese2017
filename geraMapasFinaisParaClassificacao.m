load('Workspace_Cannaa_1990_1997.mat', 'DXcenter');
load('Workspace_Cannaa_1990_1997.mat', 'Direcao');
load('Workspace_Cannaa_1990_1997.mat', 'Mcenter');
load('Workspace_Cannaa_1990_1997.mat', 'Magnitude')

Direcao(Magnitude < (Mcenter(1))) = 90;
Direcao(round(Direcao)==90) = 90;
%%
classificaCana9097 = Direcao;
classificaCana9097(Direcao < DXcenter(1)) = 10;
classificaCana9097(Direcao >= DXcenter(1) & Direcao < DXcenter(2)) = 10;
classificaCana9097(Direcao >= DXcenter(2) & Direcao < 90) = 39;
classificaCana9097(Direcao >= 90 & Direcao <= DXcenter(3)) = 49;%nao deveria ser nada
classificaCana9097(Direcao > DXcenter(3) & Direcao < DXcenter(4)) = 59;
classificaCana9097(Direcao >= DXcenter(4) & Direcao < DXcenter(5)) = 79;
classificaCana9097(Direcao >= DXcenter(5)) = 79;

imshow(classificaCana9097,[])



%%
theta(isnan(theta)) = 0;
rho(isnan(rho)) = 0;

[X,Y,Z] = pol2cart(round(theta),round(rho)); S = 50; 
figure 
h_fake = polar(theta,10*ones(size(theta))); % set radius to 1500 
hold on 
set(h_fake, 'Visible', 'Off'); 
scatter(X, Y, S); 
colorbar
    




%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1990_1997.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1990_1997.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
saveas(gcf,'Canaa1990_1997.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1997_2000.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1997_2000.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Canaa1997_2000.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_2000_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_2000_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Canaa2000_2011.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1990_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Canaa_1990_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Canaa1990_2011.png')

%%
%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1990_1997.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1990_1997.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Parauapebas1990_1997.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1997_2000.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1997_2000.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Parauapebas1997_2000.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_2000_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_2000_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Parauapebas2000_2011.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1990_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Parauapebas_1990_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Parauapebas1990_2011.png')

%%
%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1990_1997.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1990_1997.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Ourilandia1990_1997.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1997_2000.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1997_2000.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Ourilandia1997_2000.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_2000_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_2000_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Ourilandia2000_2011.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1990_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_Ourilandia_1990_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'Ourilandia1990_2011.png')

%%
%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1990_1997.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1990_1997.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'SaoFelix1990_1997.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1997_2000.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1997_2000.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'SaoFelix1997_2000.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_2000_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_2000_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'SaoFelix2000_2011.png')

%%
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1990_2011.mat', 'Direcao')
load('/Users/pma009/Documents/Pessoal/Codes/CodigosTese/workspaces/ws_SaoFelix_1990_2011.mat', 'Magnitude')
[l,c] = size(Direcao);
theta = reshape(Direcao,c*l,1);
rho = reshape(Magnitude,c*l,1);
ScatterWindRose(theta,rho,[],'',theta,'')
figure
saveas(gcf,'SaoFelix1990_2011.png')
