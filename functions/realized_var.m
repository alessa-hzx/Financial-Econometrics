
function RV = realized_var(returns)
% function to compute the realized-variance
% input: returns(N-1 * T matrix)
% output: row vector that sums every cloumn, after squared every element
RV = sum(returns .* returns);
end 