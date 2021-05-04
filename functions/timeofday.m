% compute the time-of-day factor
function tau = timeofday(returns,n,T)

% input: returns, a n * T matrix
% output: tau, a i * 1 vector

returns_i = returns(2:end,:);  % returns i, a (n-1) * T matrix
returns_ii = returns(1:n-1,:); % returns i-1, a (n-1) * T matrix
b1 = sum(abs(returns_i .* returns_ii),2)/T; % b_i for i = 2,...,n
b = [b1(1);b1]; % b1 = b2


% compute tau
tau = b/(sum(b)/n);


end