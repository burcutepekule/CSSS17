clear all;close all;clc;

clear all;close all;clc;
directory='/Users/burcu/Desktop/CSSS17/DATA/uniform_uniform/';
D = dir([directory,'/S_1_P_*']);
patchSize = size(dir([directory,'/S_1_P_*']),1);
speciSize = size(dir([directory,'/S_*']),1)/patchSize;
simSize   = 100;
species   = 1:10;
patches   = [1 5:5:20];
%%
for m=1:simSize
    m
    for i=1:speciSize
        for j=1:patchSize
            maxEig(i,j,m) = readTxtFile(['S_' num2str(species(i)) '_P_' num2str(patches(j)) '/EigenMax/Emax_' num2str(m-1)],directory);
        end
    end
end
%%
for i=1:speciSize
    for j=1:patchSize
        avgEig(i,j)=mean(maxEig(i,j,:));
    end
end
%%
gridSpecies = repmat(species',1,patchSize);
gridPatches = repmat(patches,speciSize,1);
% scatter3(gridSpecies(:),gridPatches(:),avgEig(:),'filled')
mesh(gridSpecies,gridPatches,avgEig)
xlabel('Number of Species per patch')
ylabel('Number of Patches')
title('A : uniform  M : uniform')
zlabel('Maximum Eigenvalue')