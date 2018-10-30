% Tucuma 287
%   1990 
    Agua90 = 92.52; %classe 1
    Mina90 = 69.12;%classe 2
    Nuvem90 = -9999;
    SoloExposto90 = 193.98;%classe 3
    Urbano90 = 184.53;%classe 4
    VegetacaoClara90 = 129.13;%classe 5
    VegetacaoEscura90 = 85.50;%classe 6
    
    
%   1997
    Agua97 = 26.97;
    Mina97 = 100.36;
    Nuvem97 = 254.65;
    SoloExposto97 = 170.69;
    Urbano97 = 173.33;
    VegetacaoClara97 = 92.98;
    VegetacaoEscura97 = 45.25;
    
    magVC9097Tuc = sqrt(power((double(VegetacaoClara97) - double(VegetacaoClara90)),2));
    magVE9097Tuc = sqrt(power((double(VegetacaoEscura97) - double(VegetacaoEscura90)),2));
    
%  2000
    Agua00 = 24.91;
    Mina00 = 47.95;
    Nuvem00 = 254.65;
    SoloExposto00 = 166.10;
    Urbano00 = 175.08;
    VegetacaoClara00 = 128.80;
    VegetacaoEscura00 = 39.91;
    
    magVC9700Tuc = sqrt(power((double(VegetacaoClara00) - double(VegetacaoClara97)),2));
    magVE9700Tuc = sqrt(power((double(VegetacaoEscura00) - double(VegetacaoEscura97)),2));
    
 %  2011
    Agua11 = 27.22;
    Mina11 = 77.59;
    Nuvem11 = -9999;
    SoloExposto11 = 144.11;
    Urbano11 = 188.81;
    VegetacaoClara11 = 90.89;
    VegetacaoEscura11 = 48.44;
    
    magVC0011Tuc = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara00)),2));
    magVE0011Tuc = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura00)),2));
    
    magVC1190Tuc = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara90)),2));
    magVE1190Tuc = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura90)),2));
%% %-------------------------------------------------%
 
% Sao Felix 270
%   1990
    AguaClara90 = 71.22;%classe 1
    AguaEscura90 = 5.10;%classe 2
    Mina90 = 100.73;%classe 3
    Nuvem90 = 251.87;
    SoloExposto90 = 144.73;%classe 4
    Urbano90 = 161.88;%classe 5
    VegetacaoClara90 = 80.28;%classe 6
    VegetacaoEscura90 = 79.12;%classe 7
    
%   1997
    AguaClara97 = 59.50;
    AguaEscura97 = 14.86;
    Mina97 = 157.04;
    Nuvem97 = 251.55;
    SoloExposto97 = 208.97;
    Urbano97 = 211.20;
    VegetacaoClara97 = 92.80;
    VegetacaoEscura97 = 77.21;
    
    magVC9097SF = sqrt(power((double(VegetacaoClara97) - double(VegetacaoClara90)),2));
    magVE9097SF = sqrt(power((double(VegetacaoEscura97) - double(VegetacaoEscura90)),2));
%  2000
    AguaClara00 = 45.55;
    AguaEscura00 = 5.68;
    Mina00 = 163.11;
    Nuvem00 = 254.26;
    SoloExposto00 = 192.17;
    Urbano00 = 203.12;
    VegetacaoClara00 = 83.72;
    VegetacaoEscura00 = 71.69;
    
     magVC9700SF = sqrt(power((double(VegetacaoClara00) - double(VegetacaoClara97)),2));
    magVE9700SF = sqrt(power((double(VegetacaoEscura00) - double(VegetacaoEscura97)),2));
    
 %  2011
    AguaClara11 = 39.23;
    AguaEscura11 = 9.60;
    Mina11 = 105.66;
    Nuvem11 = 254.26;
    SoloExposto11 = 184.38;
    Urbano11 = 203.07;
    VegetacaoClara11 = 74.90;
    VegetacaoEscura11 = 66.86;
    
    magVC0011SF = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara00)),2));
    magVE0011SF = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura00)),2));
    
    magVC9011SF = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara97)),2));
    magVE9011SF = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura97)),2));
    
%% %-------------------------------------------------%

% Parauapebas 240
     
%   1990
        Agua90 = 58.55;%classe 1
        CavaAberta90 = 170;%classe 7
        Mina90 = 144.95;%classe 2
        Nuvem90 = -9999;
        SoloExposto90 = 217.22;%classe 3
        Urbano90 = 204.02;%classe 4
        VegetacaoClara90 = 128.86;%classe 5
        VegetacaoEscura90 = 67.48;%classe 6
     
%   1997
        Agua97 = 21.84
        CavaAberta97 = 136.96
        Mina97 = 118.96
        Nuvem97 = -9999
        SoloExposto97 = 184.44; 
        Urbano97 = 201.19
        VegetacaoClara97 = 121.04; 
        VegetacaoEscura97 = 55.36
        
    magVC9790P = sqrt(power((double(VegetacaoClara97) - double(VegetacaoClara90)),2));
    magVE9790P = sqrt(power((double(VegetacaoEscura97) - double(VegetacaoEscura90)),2));   
       
%  2000
        Agua00 = 11.19;
        CavaAberta00 = 117.60;
        Mina00 = 85.97;
        Nuvem00 = -9999;
        SoloExposto00 = 198.73;
        Urbano00 = 179.22;
        VegetacaoClara00 = 91.96;
        VegetacaoEscura00 = 50.57;
        
    magVC0097P = sqrt(power((double(VegetacaoClara00) - double(VegetacaoClara97)),2));
    magVE0097P = sqrt(power((double(VegetacaoEscura00) - double(VegetacaoEscura97)),2));  
     
%  2011
        Agua11 = 22.15;
        CavaAberta11 = 101.42;
        Mina11 = 90.26;
        Nuvem11 = -9999;
        SoloExposto11 = 203.84;
        Urbano11 = 177.56;
        VegetacaoClara11 = 99.04;
        VegetacaoEscura11 = 48.36;
     
    magVC1100P = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara00)),2));
    magVE1100P = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura00)),2));  
    
    magVC1190P = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara90)),2));
    magVE1190P = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura90)),2));  
     
%% %-------------------------------------------------%
 
%  Ourilandia 240
 
 %   1990
        Agua90 = 85.36;%classe 1
        Mina90 = 129.47;%classe 2
        Nuvem90 = -9999;
        SoloExposto90 = 192.73;%classe 3
        Urbano90 = 209.04;%classe 4
        VegetacaoClara90 = 101.84; %classe 5
        VegetacaoEscura90 = 87.00;%classe 6

 %   1997
        Agua97 = 40.10;
        Mina97 = 128.08;
        Nuvem97 = -9999;
        SoloExposto97 = 198.34;
        Urbano97 = 215.36;
        VegetacaoClara97 = 95.30;
        VegetacaoEscura97 = 71.55;

    magVC9790O = sqrt(power((double(VegetacaoClara97) - double(VegetacaoClara90)),2));
    magVE9790O = sqrt(power((double(VegetacaoEscura97) - double(VegetacaoEscura90)),2));  
  %  2000
        Agua00 = 22.05;
        CavaAberta00 = 62.46;
        Mina00 = 126.96;
        Nuvem00 = -9999;
        SoloExposto00 = 190.69;
        Urbano00 = 206.76;
        VegetacaoClara00 = 90.73;
        VegetacaoEscura00 = 72.82;

    magVC0097O = sqrt(power((double(VegetacaoClara00) - double(VegetacaoClara97)),2));
    magVE0097O = sqrt(power((double(VegetacaoEscura00) - double(VegetacaoEscura97)),2));
    
 %  2011
        Agua11 = 35.58;
        Mina11 = 47.77;
        Nuvem11 = -9999;
        SoloExposto11 = 112.00; 
        Urbano11 = 185.39;
        VegetacaoClara11 = 92.81;
        VegetacaoEscura11 = 79.57;

    magVC1100O = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara00)),2));
    magVE1100O = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura00)),2));
    
    magVC9011O = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara90)),2));
    magVE9011O = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura90)),2));
 
%%    %-------------------------------------------------%
 
%  Canaa 184
 
%  %   1990
        Agua90 = 32.72%classe 1
        Mina90 = 108.46%classe 2
        Nuvem90 = -9999
        SoloExposto90 = 189.52%classe 3
        Urbano90 = 122.18%classe 4
        VegetacaoClara90 = 95.42 %classe 5
        VegetacaoEscura90 = 38.30%classe 6

%  %   1997
        Agua97 = 36.41
        Mina97 = 96.58
        Nuvem97 = -9999
        SoloExposto97 = 204.52
        Urbano97 = 131.59
        VegetacaoClara97 = 83.94
        VegetacaoEscura97 = 43.43
        
    magVC9790C = sqrt(power((double(VegetacaoClara97) - double(VegetacaoClara90)),2));
    magVE9790C = sqrt(power((double(VegetacaoEscura97) - double(VegetacaoEscura90)),2));

%   %  2000
        Agua00 = 26.10
        CavaAberta00 = 79.18
        Mina00 = 195.15
        Nuvem00 = -9999
        SoloExposto00 = 195.15
        Urbano00 = 178.62
        VegetacaoClara00 = 84.24
        VegetacaoEscura00 = 52.89

    magVC9700C = sqrt(power((double(VegetacaoClara00) - double(VegetacaoClara97)),2));
    magVE9700C = sqrt(power((double(VegetacaoEscura00) - double(VegetacaoEscura97)),2));
    
%  %  2011
        Agua11 = 17.84
        CavaAberta11 = 119.86
        Mina11 = 78.72
        Nuvem11 = -9999
        SoloExposto11 = 185.84; 
        Urbano11 = 184.44
        VegetacaoClara11 = 83.86
        VegetacaoEscura11 = 58.74
     
    magVC1100C = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara00)),2));
    magVE1100C = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura00)),2));
    
    magVC1190C = sqrt(power((double(VegetacaoClara11) - double(VegetacaoClara90)),2));
    magVE1190C = sqrt(power((double(VegetacaoEscura11) - double(VegetacaoEscura90)),2));
     
    
