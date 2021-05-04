% zoom-in on a given period
% this function returns a zoomed-in variable from larger time scale

% input: datesR,variable(n*T),start - year,mo,day;end- year,mo, day

% this variable can be returns, TV, IV... (do not use this for dates)

% note the dates you want to zoom-in cannot start/end on weekend

function zvar = zoomin(datesR,var,y1,m1,d1,y2,m2,d2)
% 
dateyr = year(datesR(1,:));
datemo = month(datesR(1,:));
datedy = day(datesR(1,:));
ymd = [dateyr;datemo;datedy];



% locate the position of the start date
zstart = find(ymd(1,:)==y1&ymd(2,:)==m1&ymd(3,:)==d1); 
% locate the position of the end date
zend = find(ymd(1,:)==y2&ymd(2,:)==m2&ymd(3,:)==d2);

% extract a variable accoring to certian start and end dates

zvar = var(:,zstart:zend);
end 