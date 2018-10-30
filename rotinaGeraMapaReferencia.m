function mudaClassMagnitude = rotinaGeraMapaReferencia(nMagnitude,solo,agua,urbano,pastagem,vegetacao)
%%
%%%%%%%%%%%%%%%%%
%Gera mapa hclassMagnitude que guarda as referencias de classes vegetação,
%pasto, solo, agua e urbano
%Legenda:
%Vegetação = 10
%Pastagem = 20
%Urbano = 30
%Agua = 40
%Solo = 50
%%%%%%%%%%%%%%%%%
%%
%nnMagnitude
% solo = 97.25;
% agua = 69.19;
% urbano = 64.79;
% pastagem = 37.38;
% vegetacao = 14.33;

nova = reshape(nMagnitude,size(nMagnitude,1)*size(nMagnitude,2),1);

nova( nova <= mean([vegetacao pastagem]) & nova ~= 0 ) = 10;%vegetacao = 10
nova( nova > mean([vegetacao pastagem]) & nova <= mean([pastagem urbano]) ) = 20;%pastagem = 20
nova( nova > mean([pastagem urbano]) & nova <= mean([urbano agua]) ) = 30;%Urbano = 30
nova( nova > mean([urbano agua]) & nova <= mean([agua solo]) ) = 40;%Agua = 40
nova( nova > mean([agua solo]) ) = 50;%solo = 50

classnMagnitude = reshape(nova,size(nMagnitude,1),size(nMagnitude,2));
hclassnMagnitude = medfilt2(classnMagnitude,[5 5]);
imshow(hclassnMagnitude,[])
colormap(jet)

%%
%%%%%%%%%%%%%%%%%
%Gera mapa de referencia de mudança e não mudança zerando o que foi
%identificado como vegetação
%%%%%%%%%%%%%%%%%
%%
nova = reshape(hclassnMagnitude,size(hclassnMagnitude,1)*size(hclassnMagnitude,2),1);
nova(nova == 1) = 0;
mudaClassMagnitude = reshape(nova,size(hclassnMagnitude,1),size(hclassnMagnitude,2));
[453.5 2006.5 2229 533]
for j=453:(453+2229)
    for i=2006:(2006+533)
        if mudaClassMagnitude(i,j) == 20 && bwMagnitude9802(i,j) ~= 1%~= 10 && mudaClassMagnitude0206(i,j) ~= 0
            mudaClassMagnitude(i,j) = 10;
        end
    end
end
imshow(mudaClassMagnitude,[])
colormap(jet)

