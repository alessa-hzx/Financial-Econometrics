% function locate the location of observations just before and after 
% a certain date and time


function [in_before,in_after] = before_after(datesR,yyyy,mm,dd,HH,MM,SS)
% input: return matrix, time and dates we want to focus on
% output: indices (in datesR(:)of the time just before and after the given
% time dates)
t = datenum(yyyy,mm,dd,HH,MM,SS);
in_before = find(datesR<t,1,'last');

after = find(datesR>t,1,'first');

if t == datesR(after-1)
    in_after = after-1;
else
    in_after = after;


end