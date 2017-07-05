clear all;close all;clc;
clear all;clc;
set(0,'DefaultAxesFontSize',14)
D = dir('/Users/burcu/Desktop/CSSS17/MATLAB/SIM_MUT_*');
qVecAll = zeros(1,size(D,1));
for i=1:size(D,1)
    splitName = strsplit(D(i).name,'MUT_');
    splitName = strsplit(splitName{2},'.mat');
    qVecAll(i)  = str2double(splitName{1})./(1E5);
end
qVecAll = sort(qVecAll,'ascend');
for ii=1:length(qVecAll)
    load(['SIM_MUT_' num2str(qVecAll(ii)*1E5)])
    XCells{ii}=X;
    for i=1:length(y0LastVary)
        for k=1:length(mVec)
            vec = X(i,k,:);
            vecMat = reshape(vec(:),PN,N);
            entrpy = 0;
            for j=1:PN
                vecTemp = vecMat(j,:);
                vecNorm = vecTemp./sum(vecTemp);
                entrpy = entrpy-1*sum(vecNorm.*log(vecNorm));
            end
            ent(i,k,ii) = entrpy;
        end
    end
end
%%
set(0,'DefaultAxesFontSize',14)
[Xx,Yy] = meshgrid(mVec,y0LastVary);
figure
ylabel('$x_{3}^{3}[0]$','interpreter','latex')
xlabel('$m$','interpreter','latex')
zlabel('entropy')

for i=1:size(D,1)
    s=surf(Xx,Yy,ent(:,:,i));
    s.EdgeColor = 'none';
    title(['$q : $' num2str(qVecAll(i))],'interpreter','latex')
    hold on;
    colorbar
    pause
end



