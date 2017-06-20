function [J,Jfunc] = generateSymbolicJacobian_opt(N,PN,s,r)
A = sym('a%d_%d_%d', [N N PN]);
X = sym('x%d_%d', [N PN]);
M = sym('m%d_%d_%d', [N PN PN]);
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
        eqn{i,l} = r*X(i,l)-s*X(i,l)*X(i,l)+X(i,l)*sum01-X(i,l)*sum02+sum03;
    end
end
eqnVec = [];
for i=1:N
    for l=1:PN
        eqnVec = [eqnVec eqn{i,l}];
    end
end
Asyms = reshape(A(:),[],1);
Msyms = reshape(M(:),[],1);
Xsyms = reshape(X(:),[],1);
J     = jacobian(eqnVec,reshape(transpose(X),1,N*PN));
Jfunc = matlabFunction(J,'File','jacob');
end

