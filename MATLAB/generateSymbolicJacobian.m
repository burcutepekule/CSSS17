function [ J ] = generateSymbolicJacobian(N,PN)
% N  = 2; % Num of Species
% PN = 3; % Num of Patches
A = sym('a%d%d_%d', [N N PN]);
X = sym('x%d_%d', [N PN]);
M = sym('m%d_%d%d', [N PN PN]);
s = 0.8; %choses randomly from U[0,1] in the paper. Set it to constant for all species
syms sum01 sum02 sum03
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
        eqn{i,l} = X(i,l)*sum01-s*X(i,l)*X(i,l)-X(i,l)*sum02+sum03;
    end
end
eqnVec = [];
for i=1:N
    for l=1:PN
        eqnVec = [eqnVec eqn{i,l}];
    end
end
J = jacobian(eqnVec,reshape(X,1,N*PN));
end

