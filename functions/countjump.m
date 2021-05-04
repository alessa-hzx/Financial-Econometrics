
% function that count # of jumps in each year

function [num_j,stary,endy] = countjump(datesR,rd)

% input: datesR (matrix),rd
% output: # of jumps each year, start year, end year

% extract year in the return dates, we only need first roll because each
% column stores data within a day
years = year(datesR(1,:));
x = size(years);
T = x(2);

% find start year and end year
stary = years(1);
endy = years(T);
% total # of yrs
num_y = endy-stary+1;


% compute # of jumps within each day
num_j_day = sum(rd~=0);


% create a vector to store # of jumps in each year
num_j = zeros(num_y,1);


for i = 1:num_y
    
t = i+stary-1;

i1 = find(years==t,1,'first'); % locate the first day in a given yr
i2 = find(years==t,1,'last'); % locate the last day in a given yr

% extract rd for that year
rdy = num_j_day(:,i1:i2);



    
num_j(i) = sum(rdy,2);


end
