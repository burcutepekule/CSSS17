clear all;close all;clc;
N  = 2; % Num of Species
PN = 3; % Num of Patches
S  = 20; % Abundance of species for each species for each patch
A = sym('a%d%d_%d', [N N PN]);
X = sym('x%d_%d', [N PN]);
M = sym('m%d_%d%d', [N PN PN]);

for i=1:N
    for l=1:PN
        sum01=0; sum02=0; sum03=0;
        for j=1:N
            sum01=sum01+A(i,j,l)*X(j,l);
        end
        for k=1:PN
            sum02=sum02+M(i,l,k);
        end
        for k=1:PN
            sum03=sum03+M(i,k,l)*X(i,k);
        end
        eqn{i,l} = X(i,l)*sum01-X(i,l)*sum02+sum03;
    end
end
eqnVec = [];
for i=1:N
    for l=1:PN
        eqnVec = [eqnVec eqn{i,l}];
    end
end
J=jacobian(eqnVec,reshape(X,1,N*PN));
%%
% SET the m's 1) same dispersal same species 2) symmetric (actually 1st
% rule covers it all)
eigVals = [];
for sims=1:10000
    M = zeros(N,PN,PN);
    for k=1:N
        dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
        M(k,:,:)=dum;
    end
    % SET m*_kk to zero
    for k=1:PN
        M(:,k,k) = 0;
    end
    M=double(M);
    
    A = zeros(N,N,PN);
    for k=1:N
        for j=1:N
            if(k==j)
                A(k,j,:)=-1; % can choose stg else
            else
                dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
                A(k,j,:)=dum;
                A(j,k,:)=dum;
            end
        end
    end
    A=double(A);
    X=S*ones(N,PN);
    J_out=double(insertJ(J,N,PN,X,A,M));
    eigVals(:,sims) = real(eig(J_out));
end
%%




