function [  ] = saveJacobians4C(numOfSims,N,PN,Sp,s,r,mu,distA,distB)
% SYSTEM PARAMETERS
% N  = 2; % Num of Species
% PN = 2; % Num of Patches
% Sp = 100; % Abundance of species for each species for each patch
% s  = 1;
% r  = s;
% numOfSims = 100;
% mu        = 0.1;
[~,~]  = generateSymbolicJacobian_opt(N,PN,s,r);
X  = Sp*ones(PN,N);
[MAll,AAll] = generateMatrices_opt(numOfSims,N,PN,mu,s,distA,distB); %Generate all the matrices so we can trace it back
mkdir(['/Users/burcu/Desktop/JacobianData/J_S_' num2str(N) '_P_' num2str(PN)]);
for sims=1:numOfSims
    filename  = ['/Users/burcu/Desktop/JacobianData/J_S_' num2str(N) '_P_' num2str(PN) '/J_' num2str(sims-1) '.txt'];
    A = AAll{sims};
    M = MAll{sims};
    inputArr=num2cell([A(:)' M(:)' X(:)']);
    J_out=jacob(inputArr{:});
    saveArr2txt(J_out,filename);
end
end
