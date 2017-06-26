function [M,A] = generateMatrices(N,PN,mu,distA,distM)
M   = zeros(1,N*PN*PN-N*PN);
len = PN*PN-PN;
% for k=1:N
%     if(double(strcmp(distM,'UNIFORM'))==1)
%         dum = -1+2*rand(1,1); % UNIFORM DISTRIBUTION
%     elseif(double(strcmp(distM,'EXP'))==1)
%         dum = exprnd(mu);
%     elseif(double(strcmp(distM,'NORMAL'))==1)
%         dum = randn;
%     elseif(double(strcmp(distM,'ZERO'))==1)
%         dum = 0;
%     end
%     M((k-1)*len+1:k*len)=dum;
% end

for k=1:N
    vecLen=length((k-1)*len+1:k*len);
    if(double(strcmp(distM,'UNIFORM'))==1)
        dumVec = -1+2*rand(1,vecLen); % UNIFORM DISTRIBUTION
    elseif(double(strcmp(distM,'EXP'))==1)
        dumVec = exprnd(mu,[1,vecLen]);
    elseif(double(strcmp(distM,'NORMAL'))==1)
        dumVec = randn(1,vecLen);
    elseif(double(strcmp(distM,'ZERO'))==1)
        dumVec = zeros(1,vecLen);
    end
    M((k-1)*len+1:k*len)=dumVec;
end

A = zeros(1,N*N*PN);
len = (N+1)*PN;
for k=1:N-1
    A((k-1)*len+1:(k-1)*len+1+PN-1)=0; %We use the s term instead
    vecLen = length((k-1)*len+1+PN : k*len);
    dumVec=[];
    if(double(strcmp(distA,'UNIFORM'))==1)
        dumVec = -1+2*rand(1,vecLen); % UNIFORM DISTRIBUTION
    elseif(double(strcmp(distA,'EXP'))==1)
        dumVec = exprnd(mu,[1,vecLen]);
    elseif(double(strcmp(distA,'NORMAL'))==1)
        dumVec = randn(1,vecLen);
    elseif(double(strcmp(distA,'ZERO'))==1)
        dumVec = zeros(1,vecLen);
    end
    A((k-1)*len+1+PN : k*len)=dumVec;
end
k=N;
A((k-1)*len+1:(k-1)*len+1+PN-1)=0;

end

