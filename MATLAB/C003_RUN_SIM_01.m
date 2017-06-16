clear all;close all;clc;
% SYSTEM PARAMETERS
N  = 2; % Num of Species
PN = 2; % Num of Patches
Sp = 5; % Abundance of species for each species for each patch
s  = 1;
J  = generateSymbolicJacobian(N,PN,s,Sp);
X  = Sp*ones(N,PN);
numOfSims = 100;
mu        = -0.1;
[MAll,AAll] = generateMatrices(numOfSims,N,PN,mu,'uniform','uniform'); %Generate all the matrices so we can trace it back
% MAll        = zeros(size(MAll));
%%
eigVals = [];
for sims=1:numOfSims
    100*sims/numOfSims
    A = AAll{sims};
    M = MAll{sims};
    J_out=double(insertJ(J,N,PN,X,A,M));
    %     eigVals(:,sims) = real(eigs(J_out));
    eigVals(:,sims) = eig(J_out);
    plot(real(eigVals(:,sims)),imag(eigVals(:,sims)),'o')
    hold on;
end
grid on;