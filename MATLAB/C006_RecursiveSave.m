clear all;close all;clc;

species = 2:10;
patches = [5:5:20];
numOfSims = 5;
Sp = 10; s=1;r=1;mu=0.1;
for i=1:length(species)
    N = species(i);
    for j=1:length(patches)
        PN = patches(j);
        saveJacobians4C(numOfSims,N,PN,Sp,s,r,mu,'uniform','uniform')
    end
end

