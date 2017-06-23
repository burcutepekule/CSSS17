function dydt = odefcn(x,Ares,Mres,N,PN,sVec,rVec)
dydt = zeros(N*PN,1);
indx = 1;
%LINEARIZE X VECTOR!
for i=1:N
    for l=1:PN
        sum01=0; sum02=0; sum03=0;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        for k=1:N
%             sum01=sum01+double(Ares(i,k,l))*x(k,l);
            sum01=sum01+double(Ares(i,k,l))*x((k-1)*PN+l);
        end
        for k=1:PN
            sum02=sum02+double(Mres(i,l,k));
        end
        for k=1:PN
            sum03=sum03+double(Mres(i,k,l))*x((i-1)*PN+k);
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        dydt(indx) = rVec((i-1)*PN+l)*x((i-1)*PN+l)-sVec((i-1)*PN+l)*x((i-1)*PN+l)*x((i-1)*PN+l)+x((i-1)*PN+l)*sum01-x((i-1)*PN+l)*sum02+sum03;
        indx = indx+1;
    end
end


