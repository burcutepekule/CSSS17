function [MAll,AAll] = generateMatrices(numOfSims,N,PN,mu,s,distA,distM)
MAll      = [];
AAll      = [];
for sims=1:numOfSims
    M = zeros(N,PN,PN);
    for k=1:N
        if(double(strcmp(distM,'uniform'))==1)
            dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
        elseif(double(strcmp(distM,'exponential'))==1)
            dum = exprnd(mu);
        elseif(double(strcmp(distM,'normal'))==1)
            dum = randn;
        elseif(double(strcmp(distM,'zero'))==1)
            dum = 0;
        end
        M(k,:,:)=dum;
    end
    % SET m*_kk to zero
    for k=1:PN
        M(:,k,k) = 0;
    end
    MAll{sims} = double(M);
    A = zeros(N,N,PN); 
    for k=1:N
        for j=1:N
            if(k==j)
                A(k,j,:)=-s; % set a_ii equal to the s term!
            else
                if(double(strcmp(distA,'uniform'))==1)
                    dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
                elseif(double(strcmp(distA,'exponential'))==1)
                     dum = exprnd(mu);
                elseif(double(strcmp(distA,'normal'))==1)
                    dum = randn;
                elseif(double(strcmp(distA,'zero'))==1)
                    dum=0;
                end
                A(k,j,:)=dum;
                A(j,k,:)=dum;
            end
        end
    end
    AAll{sims}=double(A);
end
end

