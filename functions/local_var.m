% function for local variance without jump

function c_hat = local_var(datesR,yy,mm,dd,HH,MM,SS,n,kn,rc)

% input: rc matrix, time and dates we want to focus on

t = datenum(yy,mm,dd,HH,MM,SS);

% find the indice just before t
in_before = find(datesR<t,1,'last');

% find the indice just after t
after = find(datesR>t,1,'first');

if t == datesR(after-1)
    in_after = after-1;
else
    in_after = after; % this is i_t


% find the roll and column of before indices: i_t-1
day = floor(in_before/n)+1;




if in_before-day*n ==0
    roll1 = n;
else
    roll1 = in_before - (day-1) * n;
end

% find the roll and column of after indices: i_t
if in_after-day*n ==0
    roll2 = n;
else
    roll2 = in_after - (day-1) * n;
end

j1 = min(kn,roll1); % compare kn and # of intervals before
j2 = min(kn,roll2); % compare kn and # of intervals after

% create a set of intervals we care about

returns_intv = rc(roll2-j1:roll2+j2,day);
c_hat = sum(returns_intv .^2)/((j1+j2+1)*(1/n));



end