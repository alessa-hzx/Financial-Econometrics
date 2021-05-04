% countdays when CI contains 1, is smaller than 1, or larger than 1
function [con1,sma1,lager1] = countCIdays(CI)

% 
CIup = CI(2,:);
CIdown = CI(1,:);

a = CIup >= 1;
b = CIdown <= 1;

con1 = sum(a & b);
sma1 = sum(~a);
lager1 = sum(~b);






end