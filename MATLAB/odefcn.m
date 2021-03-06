function dydt = odefcn(x,Ares,Mres,N,PN,rVec,kVec,qMat)
dydt = zeros(N*PN,1);
indx = 1;
%LINEARIZE X VECTOR!
for i=1:N
    for l=1:PN
        sum01=0; sum02=0; sum03=0; sum04=0; sum05=0;
        xDum = x((i-1)*PN+l);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %SUM OVER INTERACTIONS
        for k=1:N
            sum01=sum01+double(Ares(i,k,l))*x((k-1)*PN+l)/kVec((i-1)*PN+l);
        end
        % SUM OVER DISPERSAL
        for k=1:PN
            sum02=sum02+double(Mres(i,l,k));
        end
        for k=1:PN
            sum03=sum03+double(Mres(i,k,l))*x((i-1)*PN+k);
        end
        % MUTATION PART
        for k=1:N
            sum04=sum04-qMat(i,k)*x((i-1)*PN+l)+qMat(k,i)*x((k-1)*PN+l);
        end
        % TOTAL ABUNDANCE IN PATCH L
        for k=1:N
            sum05=sum05+x((k-1)*PN+l)/kVec((i-1)*PN+l);
        end
        % sum05=sum05+x((i-1)*PN+l)/kVec((i-1)*PN+l);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        rDum = rVec((i-1)*PN+l);
        dydt(indx) = rDum*(1-sum05)*xDum+xDum*sum01-xDum*sum02+sum03+sum04;
        indx = indx+1;
    end
end


