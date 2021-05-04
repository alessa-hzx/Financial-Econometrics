% compute diffusive(rc) and jump(rd) returns
function [rc,rd] = dif_jum_R(returns,cutoff)

rc = returns;
rc(abs(returns)>cutoff) = 0;

rd = returns;
rd(abs(returns)<=cutoff) = 0;


end