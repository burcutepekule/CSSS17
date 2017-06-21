clear all;close all;clc;
% SYSTEM PARAMETERS
N  = 5; % Num of Species
PN = 2; % Num of Patches
S  = 5; % Abundance of species for each species for each patch
J  = generateSymbolicJacobian(N,PN);
X  = S*ones(N,PN);
numOfSims = 10;
mu        = 0.1;
[MAll,AAll] = generateMatrices(numOfSims,N,PN,mu,'uniform','uniform'); %Generate all the matrices so we can trace it back
% MAll        = zeros(size(MAll));
%%
eigVals = [];
for sims=1:numOfSims
    sims
    A = AAll{sims};
    M = MAll{sims};
    J_out=double(insertJ(J,N,PN,X,A,M));
%     eigVals(:,sims) = real(eigs(J_out));
    eigVals(:,sims) = eigs(J_out);
%     plot(real(eigVals(:,sims)),imag(eigVals(:,sims)),'o')
    hold on;
end
grid on;