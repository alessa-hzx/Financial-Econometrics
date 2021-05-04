
function [datesR,returns] = matrxR(dates,prices)

% function for returns of the log-prices and matched dates
% input: dates(N * T - matrix),prices(N * T - matrix)
% output: dates for returns and returns(delta_x),(N-1 * T - matrix)
% each cloum in returns is the returns within every day
datesR = dates(2:end,:);
returns = diff(prices);
end