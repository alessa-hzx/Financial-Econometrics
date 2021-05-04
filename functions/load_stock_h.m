% function that load ultra-high frequency price data
% output: log-prices sampled at ultra high frerquency; ultra high frequency
% dates
function [dates_h,prices_h] = load_stock_h(filename)
    spy = readmatrix(filename);
    N_h = sum(spy(1,1) == spy(:,1));
    T_h = size(spy,1)/N_h;
    yyyy = floor(spy(:,1)./10^4);
    mm = floor((spy(:,1) - yyyy.*10^4)/10^2);
    dd = spy(:,1)-yyyy.*10^4 - mm.*10^2;

    HH = floor(spy(:,2)./10^4);
    MM = floor((spy(:,2) - HH.*10^4)/10^2);
    SS = spy(:,2)-HH.*10^4 - MM.*10^2;
    

   
    dates_h = datenum(yyyy,mm,dd,HH,MM,SS);
    dates_h = reshape(dates_h,N_h,T_h);
    
    prices_h = reshape(log(spy(:,3)),N_h,T_h);

end