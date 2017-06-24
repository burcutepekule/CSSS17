function [J,Jfunc] = generateSymbolicJacobian(N,PN)
A = sym('a%d_%d_%d', [N N PN]);
X = sym('x%d_%d', [N PN]);
M = sym('m%d_%d_%d', [N PN PN]);
R = sym('r%d_%d', [N, PN]);
S = sym('s%d_%d', [N, PN]);
Q = sym('q%d_%d', [N, N]);

syms sum01 sum02 sum03 sum04
syms r s 
for i=1:N
    for l=1:PN
        sum01=0; sum02=0; sum03=0; sum04=0;
        for k=1:N
            sum01=sum01+A(i,k,l)*X(k,l);
        end
        for k=1:PN
            sum02=sum02+M(i,l,k);
        end
        for k=1:PN
            sum03=sum03+M(i,k,l)*X(i,k);
        end
        % MUTATION PART
        for k=1:N
            sum04=sum04-Q(i,k)*X(k,l)+Q(k,i)*X(i,l);
        end
        eqn{i,l} = R(i,l)*X(i,l)-S(i,l)*X(i,l)*X(i,l)+X(i,l)*sum01-X(i,l)*sum02+sum03+sum04;
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

