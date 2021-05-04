% a function that use the Bootstrap method to compute TV_t


% input: M,nboot (# of times we resample the data),rc

function booTV = boostTV(zT,n,M,kn,nboot,zrc)
    
    % create a vector to store the TV (1*T), for nboot times
    booTV = zeros(nboot,zT);
    for j= 1:nboot
        % create a voctor that contiain random numeber each from 1-kn
        ranidice = randi(kn,n,zT);
        % create a voctor that help fix the indices intra-day (offset)
        intraday = repmat(0:kn:(M-1)*kn,kn,1);
        intraday = reshape(intraday,n,1);
        % inter-day off set vector
        interday = repmat(0:n:(zT-1)*n,n,1);
        % create the indice for the whole rc
        indices = ranidice + intraday + interday;
        % resmaple rc
        r_rc = zrc(indices);
        % use the new rc to compute TV
        TV = truncated_var(r_rc);
        booTV(j,:) = TV;
        
        
    end


end
