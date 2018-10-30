load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/MapasClassificacaoReferencia/mapa_referencia_Parauapebas_1990.mat')
load('WSParauapebas90-97NovasNuvens.mat','Direcao');
[amostrasParauapebas90] = geraAmostrasTreinamento(mapa,Direcao)
disp('g')
load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/MapasClassificacaoReferencia/mapa_referencia_Parauapebas_1997.mat')
[amostrasParauapebas97] = geraAmostrasTreinamento(mapa,Direcao);

load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/MapasClassificacaoReferencia/mapa_referencia_Parauapebas_2000.mat')
load('WSParauapebas97-00NovasNuvens.mat','Direcao')
[amostrasParauapebas00] = geraAmostrasTreinamento(mapa,Direcao);

load('/Users/pma009/Documents/Pessoal/SerraDosCarajas - ArtigoIEEE/workspaceCodes/MapasClassificacaoReferencia/mapa_referencia_Parauapebas_2011.mat')
load('WSParauapebas00-11NovasNuvens.mat','Direcao')
[amostrasParauapebas11] = geraAmostrasTreinamento(mapa,Direcao);
