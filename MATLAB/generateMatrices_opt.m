function [MAll,AAll] = generateMatrices_opt(numOfSims,N,PN,mu,s,distA,distM)
MAll      = [];
AAll      = [];
for sims=1:numOfSims
    M   = zeros(1,N*PN*PN-N*PN);
    len = PN*PN-PN;
    for k=1:N
        if(double(strcmp(distM,'UNIFORM'))==1)
            dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
        elseif(double(strcmp(distM,'EXP'))==1)
            dum = exprnd(mu);
        elseif(double(strcmp(distM,'NORMAL'))==1)
            dum = randn;
        elseif(double(strcmp(distM,'ZERO'))==1)
            dum = 0;
        end
        M((k-1)*len+1:k*len)=dum;
    end
    MAll{sims} = double(M);
    A = zeros(1,N*N*PN);
    len = (N+1)*PN;
    for k=1:N-1
        A((k-1)*len+1:(k-1)*len+1+PN-1)=-s;
          vecLen = length((k-1)*len+1+PN : k*len);
          dumVec=[];
        if(double(strcmp(distA,'UNIFORM'))==1)
             dumVec = -1+2*rand(1,vecLen); % UNIFORM DISTRIBUTION
%             dum = -1+2*rand;
        elseif(double(strcmp(distA,'EXP'))==1)
             dumVec = exprnd(mu,[1,vecLen]);
%            dum = exprnd(mu);
        elseif(double(strcmp(distA,'NORMAL'))==1)
             dumVec = randn(1,vecLen);
%            dum = randn;
        elseif(double(strcmp(distA,'ZERO'))==1)
             dumVec = zeros(1,vecLen);
%            dum = 0;
        end
        A((k-1)*len+1+PN : k*len)=dumVec; 
    end
    k=N;
    A((k-1)*len+1:(k-1)*len+1+PN-1)=-s;
    AAll{sims}=double(A);
end
end

