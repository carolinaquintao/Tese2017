function [amostras] = geraAmostrasTreinamento(referencia,direcao)
%output: matriz com amostas das classes.

% load('../evaluationFiles/mapasClassificacaoReferencia.mat', 'mudaClassMagnitude9398')
% load('../evaluationFiles/DirecaoCorreta.mat', 'Direcao9398')
%input: matriz de clases e matrix de Direcao

%identifica o tamanho da imagem e quantidade de classes
[row,col] = size(referencia);
% classes = unique(cena);
amostras = [];
%blocos de 3x3
cl = 1;
mkdir Canaa
cd Canaa
for i = 1:6:row-6
    for j = 1:6:col-6
        bloco = referencia(i:i+6,j:j+6);
        if length(unique(bloco))==1 %se dentro do bloco só houver uma classe
            folder = num2str(bloco(1,1));
            mkdir(folder)
            cd(folder)
            amostra = direcao(i:i+6,j:j+6);
            imwrite(amostra,['Canaa_' num2str(bloco(1,1)) '_' num2str(cl) '.png']);
            cl = cl + 1;
            cd ..
        end
    end
end

end

