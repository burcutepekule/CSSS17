function [J,Jfunc,eqn] = generateSymbolicJacobian_2(N,PN)
A = sym('a%d_%d_%d', [N N PN]);
X = sym('x%d_%d', [N PN]);
M = sym('m%d_%d_%d', [N PN PN]);
R = sym('r%d_%d', [N, PN]);
S = sym('s%d_%d', [N, PN]);
Q = sym('q%d_%d', [N, N]);
K = sym('k%d_%d', [N, PN]);

syms sum01 sum02 sum03 sum04 sum05
syms r s
for i=1:N
    for l=1:PN
        sum02=0; sum03=0; sum05=0;

        for k=1:PN
            sum02=sum02+M(i,l,k);
        end
        for k=1:PN
            sum03=sum03+M(i,k,l)*X(i,k);
        end
        % TOTAL ABUNDANCE IN PATCH L
        for k=1:N
            sum05=sum05+X(k,l)/K(i,l);
        end
        eqn{i,l} = X(i,l)-X(i,l)*sum05-X(i,l)*sum02+sum03;
    end
end
eqnVec = [];
for i=1:N
    for l=1:PN
        eqnVec = [eqnVec eqn{i,l}];
    end
end
filename   = ['jacob_quasi_' num2str(N) '_' num2str(PN)];
J          = jacobian(eqnVec,reshape(transpose(X),1,N*PN));
Jfunc      = matlabFunction(J,'File',filename);
end

