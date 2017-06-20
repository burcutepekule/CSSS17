function [  ] = saveJacobians4C_2(timeStamp,numOfSims,N,PN,Sp,s,r,mu,distA,distM)
rng(1);
% SYSTEM PARAMETERS
% N  = 2; % Num of Species
% PN = 2; % Num of Patches
% Sp = 100; % Abundance of species for each species for each patch
% s  = 1;
% r  = s;
% numOfSims = 100;
% mu        = 0.1;
[~,~] = generateSymbolicJacobian_opt(N,PN,s,r);
mkdir(['/Users/burcu/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_S_' num2str(N) '_P_' num2str(PN)]);
sims = 1;
tspan = [0 100];
y0    = randi(Sp,1,N*PN);
tol   = 10^-6*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices_opt_2(N,PN,mu,s,distA,distM);
    [~,y] = generateNumericODE_opt(N,PN,s,r,A,M,y0,tspan);
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        isStable=1;
        filename  = ['/Users/burcu/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_S_' num2str(N) '_P_' num2str(PN) '/J_' num2str(sims-1) '.txt'];
        X = y(end,:);
        inputArr=num2cell([A(:)' M(:)' X]);
        J_out=jacob(inputArr{:});
        saveArr2txt(J_out,filename);
        sims = sims+1;
    else
        isStable=0;
    end
end
