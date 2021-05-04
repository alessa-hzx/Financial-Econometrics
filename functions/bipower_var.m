
function BV = bipower_var(returns)

% function that compute the bipower variance
% input: returns(n*T)
% output: BV(n-1 * T) 

[n,~] = size(returns);
mreturn1 = returns(2:end,:); % this is delta_X_i
mreturn2 = returns(1:n-1,:); % this is delta_X_(i-1)
mBV = abs(mreturn1 .* mreturn2);



BV = sum(mBV) * pi/2;

end