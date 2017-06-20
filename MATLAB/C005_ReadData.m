clear all;close all;clc;
directory='/Users/burcu/Desktop/DATA/uniform_uniform_SP_5/';
D = dir([directory,'/S*']);
speciesIndexVec = [];
patchesIndexVec = [];
for i=1:size(D,1)
    fileName = D(i).name;
    s = []; p=[];
    k = 3; %Start reading from character number 3
    nextChar = str2double(fileName(k));
    while(isnan(nextChar)==0)
        s =[s fileName(k)];
        k=k+1;
        nextChar = str2double(fileName(k));
    end
    speciesIndexVec = [speciesIndexVec str2double(s)];
    k = k+3; %pass the characters _P_
    nextChar = str2double(fileName(k));
    while(isnan(nextChar)==0)
        p =[p fileName(k)];
        k=k+1;
        if(k<=size(fileName,2))
        nextChar = str2double(fileName(k));
        else
            break;
        end
    end
    patchesIndexVec = [patchesIndexVec str2double(p)];
end
species   = unique(speciesIndexVec);
patches   = unique(patchesIndexVec);
% go to one folder to calculate the simulation size
D = dir([directory,'/S_' num2str(species(1)) '_P_' num2str(patches(1)) '/EigenMax/*']);
simSize = size(D,1)-2; % subtract the number of hidden files which is 2
%%
for m=1:simSize
    for i=1:length(species)
        for j=1:length(patches)
            maxEig(i,j,m) = readTxtFile(['S_' num2str(species(i)) '_P_' num2str(patches(j)) '/EigenMax/Emax_' num2str(m-1)],directory);
        end
    end
end
%%
for i=1:length(species)
    for j=1:length(patches)
        avgEig(i,j)=mean(maxEig(i,j,:));
    end
end
%%
gridSpecies = repmat(species',1,length(patches));
gridPatches = repmat(patches,length(species),1);
mesh(gridSpecies,gridPatches,avgEig)
xlabel('Number of Species per patch')
ylabel('Number of Patches')
title('A : uniform  M : uniform')
zlabel('Maximum Eigenvalue')
save('DATA_UNIFORM_UNIFORM_SP_5')