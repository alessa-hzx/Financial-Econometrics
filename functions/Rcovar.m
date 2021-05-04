% compute the coveriance of 2 stocks's returns (rc)
function Rcov = Rcovar(rc1,rc2)

Rcov = sum(rc1.* rc2);

end