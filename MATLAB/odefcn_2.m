function dydt = odefcn_2(x,Mres,N,PN,kVec)
dydt = zeros(N*PN,1);
indx = 1;
%LINEARIZE X VECTOR!
for i=1:N
    for l=1:PN
        sum02=0; sum03=0; sum05=0;
        xDum = x((i-1)*PN+l);

        % SUM OVER DISPERSAL
        for k=1:PN
            sum02=sum02+double(Mres(i,l,k));
        end
        for k=1:PN
            sum03=sum03+double(Mres(i,k,l))*x((i-1)*PN+k);
        end
        % TOTAL ABUNDANCE IN PATCH L
        for k=1:N
            sum05=sum05+x((k-1)*PN+l)/kVec((i-1)*PN+l);
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        dydt(indx) =(1-sum05)*xDum-xDum*sum02+sum03;
        indx = indx+1;
    end
end


