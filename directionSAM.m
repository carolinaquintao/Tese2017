function [newMatrix] = directionSAM(t1matrix,t2matrix)

[l,c,p] = size(t2matrix);
u = 0;
newMatrix = [];


%sum(xt1*xt2)/sqrt(sum(xt1^2)*sum(xt2^2))
sumNumerador = zeros(l,c);
sumDenominador1 = zeros(l,c);
sumDenominador2 = zeros(l,c);
for a=1:p %prof
    for b=1:c %colunas 
        for d = 1:l %linhas
            sumX1dotT2(d,b) = t1matrix(d,b,a)*t2matrix(d,b,a);
            sumX1squared(d,b) = t1matrix(d,b,a)^2;
            sumX2squared(d,b) = t2matrix(d,b,a)^2;
        end
    end
    sumNumerador = sumNumerador + double(sumX1dotT2);
    sumDenominador1 = sumDenominador1 + double(sumX1squared);
    sumDenominador2 = sumDenominador2 + double(sumX2squared);
end
newMatrix = acos(sumNumerador./sqrt(sumDenominador1.*sumDenominador2));

end

