% clear
% load('ValoresCorrelacaoClassificaTodos.mat')

u1 = [corr2_EMEM;corr2_EMFCM;corr2_EMISO;corr2_EMKM;corr2_FCMEM;corr2_FCMFCM;...
    corr2_FCMISO;corr2_FCMKM;corr2_KMEM;corr2_KMFCM;corr2_KMISO;corr2_KMKM]';
createfigure(u1,'Figure4.png')
%%
% load('ValoresConditionalEntropyClassificaTodos.mat')%
mi1 = normaliza([conditionalEntropyEMEM(1);conditionalEntropyEMFCM(1);conditionalEntropyEMISO(1);conditionalEntropyEMKM(1);conditionalEntropyFCMEM(1);conditionalEntropyFCMFCM(1);...
    conditionalEntropyFCMISO(1);conditionalEntropyFCMKM(1);conditionalEntropyKMEM(1);conditionalEntropyKMFCM(1);conditionalEntropyKMISO(1);conditionalEntropyKMKM(1)])';
mi2 = normaliza([conditionalEntropyEMEM(1);conditionalEntropyEMFCM(2);conditionalEntropyEMISO(2);conditionalEntropyEMKM(2);conditionalEntropyFCMEM(2);conditionalEntropyFCMFCM(2);...
    conditionalEntropyFCMISO(2);conditionalEntropyFCMKM(2);conditionalEntropyKMEM(2);conditionalEntropyKMFCM(2);conditionalEntropyKMISO(2);conditionalEntropyKMKM(2)])';
mi3 = normaliza([conditionalEntropyEMEM(3);conditionalEntropyEMFCM(3);conditionalEntropyEMISO(3);conditionalEntropyEMKM(3);conditionalEntropyFCMEM(3);conditionalEntropyFCMFCM(3);...
    conditionalEntropyFCMISO(3);conditionalEntropyFCMKM(3);conditionalEntropyKMEM(3);conditionalEntropyKMFCM(3);conditionalEntropyKMISO(3);conditionalEntropyKMKM(3)])';
mi4 = normaliza([conditionalEntropyEMEM(4);conditionalEntropyEMFCM(4);conditionalEntropyEMISO(4);conditionalEntropyEMKM(4);conditionalEntropyFCMEM(4);conditionalEntropyFCMFCM(4);...
    conditionalEntropyFCMISO(4);conditionalEntropyFCMKM(4);conditionalEntropyKMEM(4);conditionalEntropyKMFCM(4);conditionalEntropyKMISO(4);conditionalEntropyKMKM(4)])';
mi5 = normaliza([conditionalEntropyEMEM(5);conditionalEntropyEMFCM(5);conditionalEntropyEMISO(5);conditionalEntropyEMKM(5);conditionalEntropyFCMEM(5);conditionalEntropyFCMFCM(5);...
    conditionalEntropyFCMISO(5);conditionalEntropyFCMKM(5);conditionalEntropyKMEM(5);conditionalEntropyKMFCM(5);conditionalEntropyKMISO(5);conditionalEntropyKMKM(5)])';
u2 = [mi1; mi2;mi3;mi4;mi5];
% u2 = [conditionalEntropyEMEM;conditionalEntropyEMFCM;conditionalEntropyEMISO;conditionalEntropyEMKM;conditionalEntropyFCMEM;conditionalEntropyFCMFCM;...
%     conditionalEntropyFCMISO;conditionalEntropyFCMKM;conditionalEntropyKMEM;conditionalEntropyKMFCM;conditionalEntropyKMISO;conditionalEntropyKMKM]';
createfigure(u2,'Figure11.png')

%%
% load('ValoresJointEntropyClassificaTodos.mat')%
mi1 = normaliza([jointEntropyEMEM(1);jointEntropyEMFCM(1);jointEntropyEMISO(1);jointEntropyEMKM(1);jointEntropyFCMEM(1);jointEntropyFCMFCM(1);...
    jointEntropyFCMISO(1);jointEntropyFCMKM(1);jointEntropyKMEM(1);jointEntropyKMFCM(1);jointEntropyKMISO(1);jointEntropyKMKM(1)])';
mi2 = normaliza([jointEntropyEMEM(1);jointEntropyEMFCM(2);jointEntropyEMISO(2);jointEntropyEMKM(2);jointEntropyFCMEM(2);jointEntropyFCMFCM(2);...
    jointEntropyFCMISO(2);jointEntropyFCMKM(2);jointEntropyKMEM(2);jointEntropyKMFCM(2);jointEntropyKMISO(2);jointEntropyKMKM(2)])';
mi3 = normaliza([jointEntropyEMEM(3);jointEntropyEMFCM(3);jointEntropyEMISO(3);jointEntropyEMKM(3);jointEntropyFCMEM(3);jointEntropyFCMFCM(3);...
    jointEntropyFCMISO(3);jointEntropyFCMKM(3);jointEntropyKMEM(3);jointEntropyKMFCM(3);jointEntropyKMISO(3);jointEntropyKMKM(3)])';
mi4 = normaliza([jointEntropyEMEM(4);jointEntropyEMFCM(4);jointEntropyEMISO(4);jointEntropyEMKM(4);jointEntropyFCMEM(4);jointEntropyFCMFCM(4);...
    jointEntropyFCMISO(4);jointEntropyFCMKM(4);jointEntropyKMEM(4);jointEntropyKMFCM(4);jointEntropyKMISO(4);jointEntropyKMKM(4)])';
mi5 = normaliza([jointEntropyEMEM(5);jointEntropyEMFCM(5);jointEntropyEMISO(5);jointEntropyEMKM(5);jointEntropyFCMEM(5);jointEntropyFCMFCM(5);...
    jointEntropyFCMISO(5);jointEntropyFCMKM(5);jointEntropyKMEM(5);jointEntropyKMFCM(5);jointEntropyKMISO(5);jointEntropyKMKM(5)])';
u3 = [mi1; mi2;mi3;mi4;mi5];

% u3 = [jointEntropyEMEM;jointEntropyEMFCM;jointEntropyEMISO;jointEntropyEMKM;jointEntropyFCMEM;jointEntropyFCMFCM;...
%     jointEntropyFCMISO;jointEntropyFCMKM;jointEntropyKMEM;jointEntropyKMFCM;jointEntropyKMISO;jointEntropyKMKM]';
createfigure(u3,'Figure10.png')

%%
% load('ValoresL2RATClassificaTodos.mat')

u4 = [l2ratEMEM;l2ratEMFCM;l2ratEMISO;l2ratEMKM;l2ratFCMEM;l2ratFCMFCM;...
    l2ratFCMISO;l2ratFCMKM;l2ratKMEM;l2ratKMFCM;l2ratKMISO;l2ratKMKM]';
createfigure(u4,'Figure6.png')

%%
% load('ValoresMSEClassificaTodos.mat')
u5 = [mseEMEM;mseEMFCM;mseEMISO;mseEMKM;mseFCMEM;mseFCMFCM;...
    mseFCMISO;mseFCMKM;mseKMEM;mseKMFCM;mseKMISO;mseKMKM]';
createfigure(u5,'Figure7.png')

%%
% load('ValoresMutualInformationClassificaTodos.mat')%
mi1 = normaliza([mutualInformationEMEM(1);mutualInformationEMFCM(1);mutualInformationEMISO(1);mutualInformationEMKM(1);mutualInformationFCMEM(1);mutualInformationFCMFCM(1);...
    mutualInformationFCMISO(1);mutualInformationFCMKM(1);mutualInformationKMEM(1);mutualInformationKMFCM(1);mutualInformationKMISO(1);mutualInformationKMKM(1)])';
mi2 = normaliza([mutualInformationEMEM(1);mutualInformationEMFCM(2);mutualInformationEMISO(2);mutualInformationEMKM(2);mutualInformationFCMEM(2);mutualInformationFCMFCM(2);...
    mutualInformationFCMISO(2);mutualInformationFCMKM(2);mutualInformationKMEM(2);mutualInformationKMFCM(2);mutualInformationKMISO(2);mutualInformationKMKM(2)])';
mi3 = normaliza([mutualInformationEMEM(3);mutualInformationEMFCM(3);mutualInformationEMISO(3);mutualInformationEMKM(3);mutualInformationFCMEM(3);mutualInformationFCMFCM(3);...
    mutualInformationFCMISO(3);mutualInformationFCMKM(3);mutualInformationKMEM(3);mutualInformationKMFCM(3);mutualInformationKMISO(3);mutualInformationKMKM(3)])';
mi4 = normaliza([mutualInformationEMEM(4);mutualInformationEMFCM(4);mutualInformationEMISO(4);mutualInformationEMKM(4);mutualInformationFCMEM(4);mutualInformationFCMFCM(4);...
    mutualInformationFCMISO(4);mutualInformationFCMKM(4);mutualInformationKMEM(4);mutualInformationKMFCM(4);mutualInformationKMISO(4);mutualInformationKMKM(4)])';
mi5 = normaliza([mutualInformationEMEM(5);mutualInformationEMFCM(5);mutualInformationEMISO(5);mutualInformationEMKM(5);mutualInformationFCMEM(5);mutualInformationFCMFCM(5);...
    mutualInformationFCMISO(5);mutualInformationFCMKM(5);mutualInformationKMEM(5);mutualInformationKMFCM(5);mutualInformationKMISO(5);mutualInformationKMKM(5)])';
u6 = [mi1; mi2;mi3;mi4;mi5];
% u6 = [mutualInformationEMEM;mutualInformationEMFCM;mutualInformationEMISO;mutualInformationEMKM;mutualInformationFCMEM;mutualInformationFCMFCM;...
%     mutualInformationFCMISO;mutualInformationFCMKM;mutualInformationKMEM;mutualInformationKMFCM;mutualInformationKMISO;mutualInformationKMKM]';
createfigure(u6,'Figure8.png')

%%
% load('ValoresPSNRClassificaTodos.mat')
u7 = [psnrEMEM;psnrEMFCM;psnrEMISO;psnrEMKM;psnrFCMEM;psnrFCMFCM;...
    psnrFCMISO;psnrFCMKM;psnrKMEM;psnrKMFCM;psnrKMISO;psnrKMKM]';
createfigure(u7,'Figure5.png')


%%
% load('ValoresRelativeEntropyClassificaTodos.mat')
mi1 = normaliza([relativeEntropyEMEM(1);relativeEntropyEMFCM(1);relativeEntropyEMISO(1);relativeEntropyEMKM(1);relativeEntropyFCMEM(1);relativeEntropyFCMFCM(1);...
    relativeEntropyFCMISO(1);relativeEntropyFCMKM(1);relativeEntropyKMEM(1);relativeEntropyKMFCM(1);relativeEntropyKMISO(1);relativeEntropyKMKM(1)])';
mi2 = normaliza([relativeEntropyEMEM(1);relativeEntropyEMFCM(2);relativeEntropyEMISO(2);relativeEntropyEMKM(2);relativeEntropyFCMEM(2);relativeEntropyFCMFCM(2);...
    relativeEntropyFCMISO(2);relativeEntropyFCMKM(2);relativeEntropyKMEM(2);relativeEntropyKMFCM(2);relativeEntropyKMISO(2);relativeEntropyKMKM(2)])';
mi3 = normaliza([relativeEntropyEMEM(3);relativeEntropyEMFCM(3);relativeEntropyEMISO(3);relativeEntropyEMKM(3);relativeEntropyFCMEM(3);relativeEntropyFCMFCM(3);...
    relativeEntropyFCMISO(3);relativeEntropyFCMKM(3);relativeEntropyKMEM(3);relativeEntropyKMFCM(3);relativeEntropyKMISO(3);relativeEntropyKMKM(3)])';
mi4 = normaliza([relativeEntropyEMEM(4);relativeEntropyEMFCM(4);relativeEntropyEMISO(4);relativeEntropyEMKM(4);relativeEntropyFCMEM(4);relativeEntropyFCMFCM(4);...
    relativeEntropyFCMISO(4);relativeEntropyFCMKM(4);relativeEntropyKMEM(4);relativeEntropyKMFCM(4);relativeEntropyKMISO(4);relativeEntropyKMKM(4)])';
mi5 = normaliza([relativeEntropyEMEM(5);relativeEntropyEMFCM(5);relativeEntropyEMISO(5);relativeEntropyEMKM(5);relativeEntropyFCMEM(5);relativeEntropyFCMFCM(5);...
    relativeEntropyFCMISO(5);relativeEntropyFCMKM(5);relativeEntropyKMEM(5);relativeEntropyKMFCM(5);relativeEntropyKMISO(5);relativeEntropyKMKM(5)])';
u8 = [mi1; mi2;mi3;mi4;mi5];

% u8 = [relativeEntropyEMEM;relativeEntropyEMFCM;relativeEntropyEMISO;relativeEntropyEMKM;relativeEntropyFCMEM;relativeEntropyFCMFCM;...
%     relativeEntropyFCMISO;relativeEntropyFCMKM;relativeEntropyKMEM;relativeEntropyKMFCM;relativeEntropyKMISO;relativeEntropyKMKM]';
createfigure(u8,'Figure9.png')

%% ---------------------------PORCENTAGEM--------------------------------------------%%
%%
% clear
% load('ValoresCorrelacaoClassificaTodos.mat')
% 
% u8493 = [cClass8493;cmaskEMEM8493;cmaskEMFCM8493;cemIso8493;cmaskEMKM8493;cmaskFCMEM8493;...
%     cmaskFCMFCM8493;cfcmIso8493;cmaskFCMKM8493;cmaskKMEM8493;...
%     cmaskKMFCM8493;ckmIso8493;cmaskKMKM8493]';
% T8493 = table(u8493);
% writetable(T8493,'Table8493.xlsx','Sheet',1,'Range','A1')
% 
% u9398 = [cClass9398;cmaskEMEM9398;cmaskEMFCM9398;cemIso9398;cmaskEMKM9398;cmaskFCMEM9398;...
%     cmaskFCMFCM9398;cfcmIso9398;cmaskFCMKM9398;cmaskKMEM9398;...
%     cmaskKMFCM9398;ckmIso9398;cmaskKMKM9398]';
% T9398 = table(u9398);
% writetable(T9398,'Table9398.xlsx','Sheet',1,'Range','A1')
% 
% u9802 = [cClass9802;cmaskEMEM9802;cmaskEMFCM9802;cemIso9802;cmaskEMKM9802;cmaskFCMEM9802;...
%     cmaskFCMFCM9802;cfcmIso9802;cmaskFCMKM9802;cmaskKMEM9802;...
%     cmaskKMFCM9802;ckmIso9802;cmaskKMKM9802]';
% T9802 = table(u9802);
% writetable(T9802,'Table9802.xlsx','Sheet',1,'Range','A1')
% 
% u0206 = [cClass0206;cmaskEMEM0206;cmaskEMFCM0206;cemIso0206;cmaskEMKM0206;cmaskFCMEM0206;...
%     cmaskFCMFCM0206;cfcmIso0206;cmaskFCMKM0206;cmaskKMEM0206;...
%     cmaskKMFCM0206;ckmIso0206;cmaskKMKM0206]';
% T0206 = table(u0206);
% writetable(T0206,'Table0206.xlsx','Sheet',1,'Range','A1')
% 
% u0611 = [cClass0611;cmaskEMEM0611;cmaskEMFCM0611;cemIso0611;cmaskEMKM0611;cmaskFCMEM0611;...
%     cmaskFCMFCM0611;cfcmIso0611;cmaskFCMKM0611;cmaskKMEM0611;...
%     cmaskKMFCM0611;ckmIso0611;cmaskKMKM0611]';
% T0611 = table(u0611);
% writetable(T0611,'Table0611.xlsx','Sheet',1,'Range','A1')
% 
