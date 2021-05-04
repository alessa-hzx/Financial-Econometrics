% fucntion that compute bootstrap CI

function bootCI = boostrCI(booTV,alpha,T)
    % create a vectorto store CI for each day
    bootCI = zeros(2,T);
    for t = 1:T
        % compute the quantile of a set of TV for each day
        bootCI(1,t) = quantile(booTV(:,t),alpha/2);
        bootCI(2,t) = quantile(booTV(:,t),1-alpha/2);
    end


end