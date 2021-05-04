% use the bootstrap to compute a set of realized beta
% resample the 2 assets'  returns (together) n times 
% for each time compute a realized_beta (1*T)

function booRB = boostRealized_beta(nboot,T,n,kn,M,rc1,rc2)
% input: 
% output: a set of realized beta (nboot * T)


   % create a vector to store the RB (1*T), for nboot times
    booRB = zeros(nboot,T);
    for j= 1:nboot
        % create a voctor that contiain random numeber each from 1-kn
        ranidice = randi(kn,n,T);
        % create a voctor that help fix the indices intra-day (offset)
        intraday = repmat(0:kn:(M-1)*kn,kn,1);
        intraday = reshape(intraday,n,1);
        % inter-day off set vector
        interday = repmat(0:n:(T-1)*n,n,1);
        % create the indice for the whole rc
        indices = ranidice + intraday + interday;
        % resmaple rc
        new_rc1 = rc1(indices);
        new_rc2 = rc2(indices);
        % use the new set of rc1 and rc2 to compute realized beta
        
        Rcov = Rcovar(new_rc1,new_rc2);
        TV1 = truncated_var(new_rc1);
       
        booRB(j,:) = realized_beta(Rcov,TV1);
        
        
    end

end