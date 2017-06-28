clear all;clc;
set(0,'DefaultAxesFontSize',14)
D = dir('/Users/burcu/Desktop/CSSS17/MATLAB/DATA_ZERO_NORMAL_MUT_100_E4_MU_*');
muVec = zeros(1,size(D,1));
for i=1:size(D,1)
    splitName = strsplit(D(i).name,'_MU_');
    splitName = strsplit(splitName{2},'_E4.mat');
    muVec(i)  = str2double(splitName{1})./(1E4);
end
muVec = sort(muVec,'ascend');
%%
for ii=1:length(muVec)
    load(['DATA_ZERO_NORMAL_MUT_100_E4_MU_' num2str(muVec(ii)*10000) '_E4'])
    maxEigMat(ii,:)=maxEig;
    avgEigVec(ii)=avgEig;
end

sz = [500,900]; % figure size
screensize = get(0,'ScreenSize');
xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
h = figure('position',[xpos, ypos, sz(2), sz(1)]);
boxplot(maxEigMat', 'Labels',muVec)
grid on;
xlabel('$\mu$', 'interpreter', 'latex')
ylabel({'Distribution of the','Maximum Eigenvalues'})
title('$M \sim \mathcal{N}(0,\mu)$','interpreter', 'latex')
xticklabel_rotate([],45,[],'Fontsize',14)