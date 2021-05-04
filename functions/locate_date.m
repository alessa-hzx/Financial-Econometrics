% this function find a date 
% indice (in a date vector) in the dates matrix

function [roll,column] = locate_date(indice,n)


column = floor(indice/n)+1;
if indice-column*n ==0
    roll = n;
else
    roll = indice - (column-1) * n;
end



end