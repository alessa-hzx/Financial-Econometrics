% compute jump beta

function beta_j = jump_beta(rd1,returns2)

% input: jump return of the stock: rd2, jump return of the market: rd1


indicator = (rd1 ~=0);
rd2_j = returns2 .* indicator; % jump in the stock when the market also jump
beta_j = sum(rd2_j(:) .* rd1(:))/sum(rd1(:) .^2);




end