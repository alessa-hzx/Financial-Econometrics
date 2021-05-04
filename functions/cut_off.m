function cutoff = cut_off(alpha,n,tau,BV)
% rerutn cutoff of each returns, which is a n * T matrix
% input: tau_i, which is a n * 1 vector;
%        BV_t, which is a 1 * T vector

cutoff = alpha * (1/n)^0.49 * sqrt(tau * BV);


end