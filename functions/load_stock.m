

function [dates,prices] = load_stock(filename)
% function returns [dates,prices]
% input: filename(string),which is the .csv of time and price of the stock
% function convert times into datenum format (yyyy,mm,dd,HH,MM,0)
% prices and dates are rehaped into the matrix of (N,T), 1st day in 1st 
% column, 2nd
% day in 2nd column...
% prices are cpnverted to log-prices, which is our X_i
    spy = readmatrix(filename);
    N = sum(spy(1,1) == spy(:,1));
    T = size(spy,1)/N;
    yyyy = floor(spy(:,1)./10^4);
    mm = floor((spy(:,1) - yyyy.*10^4)/10^2);
    dd = spy(:,1)-yyyy.*10^4 - mm.*10^2;

    HH = floor(spy(:,2)./10^2);
    MM = spy(:,2) - HH.*10^2;

   
    dates = datenum(yyyy,mm,dd,HH,MM,0);
    dates = reshape(dates,N,T);
    
    prices = reshape(log(spy(:,3)),N,T);

end




    








