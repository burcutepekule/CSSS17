clear all;close all;clc;
% SYSTEM PARAMETERS
N  = 8; % Num of Species
PN = 5; % Num of Patches
Sp = 20; % Abundance of species for each species for each patch
s  = -1;
[J,Jfunc]  = generateSymbolicJacobian_opt(N,PN,s,Sp);
X  = Sp*ones(PN,N);
numOfSims = 3;
mu        = 0.1;
[MAll,AAll] = generateMatrices_opt(numOfSims,N,PN,mu,s,'uniform','uniform'); %Generate all the matrices so we can trace it back
% MAll        = zeros(size(MAll));
%%
eigVals = [];
for sims=1:numOfSims
    filename = ['/Users/burcu/Desktop/CSSS17/C++/JacobianData/J_' num2str(sims-1) '.txt' ];
    100*sims/numOfSims
    A = AAll{sims};
    M = MAll{sims};
    inputArr=num2cell([A(:)' M(:)' X(:)']);
    J_out=jacob(inputArr{:});
    saveArr2txt(J_out,filename);
end
