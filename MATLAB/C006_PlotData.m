clear all;close all;clc;
load('DATA_UNIFORM_UNIFORM_SP_5')
gridSpecies = repmat(species',1,length(patches));
gridPatches = repmat(patches,length(species),1);
mesh(gridSpecies,gridPatches,avgEig)
xlabel('Number of Species per patch')
ylabel('Number of Patches')
title('A : uniform  M : uniform')
zlabel('Maximum Eigenvalue')
% figure
% plot(species,mean(avgEig,2),'linewidth', 2)
% grid on;
% figure
% plot(patches,mean(avgEig,1),'linewidth', 2)
