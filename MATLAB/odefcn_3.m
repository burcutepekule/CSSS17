function dydt = odefcn_3(X,M,N,PN,K)
dydt = zeros(N*PN,1);
indx = 1;
%LINEARIZE X VECTOR!
X = reshape(X,N,PN);
for i=1:N
    for l=1:PN
        sum01=0; sum02=0; sum03=0;
%         % IMMIGRATION (OUTFLUX)
%         for k=1:PN
%             sum01=sum01+double(X(i,l))*double(M(i,l,k));
%         end
%         % EMMIGRATION (INFLUX)
%         for k=1:PN
%             sum02=sum02+double(X(i,k))*double(M(i,k,l));
%         end
        % TOTAL ABUNDANCE IN PATCH L
%         for k=1:N
%             sum03=sum03+X(k,l)/K(i,l);
%         end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         dydt(indx) =(1-sum03)*X(i,l)-sum01+sum02;
        dydt(indx) =(1-sum(X(:,l))/K(i,l))*X(i,l);
        indx = indx+1;
    end
    
    %dydt(1) -> x_{1}^{1}
    %dydt(2) -> x_{1}^{2}
    %dydt(3) -> x_{1}^{3}
end


