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
mIdx = 1;
mVec    = mVec(mIdx);
X       = XCells{1}; %q=0
allX         = X(:,mIdx,:);
allX         = reshape(allX,length(y0LastVary),N*PN);
binK         = kMat>kFunc(2);
sz = [500,1200]; % figure size
screensize = get(0,'ScreenSize');
xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
figure('position',[xpos, ypos, sz(2), sz(1)]);
indx = 1;
for yy=1:length(y0LastVary)
    subplot(3,4,indx)
    xMean=reshape(allX(yy,:),N,PN)';
    h=scatter(1:N*PN,xMean(:)',30);
    hold on;
    xVals = h.XData;
    yVals = h.YData;
    bar(xVals,yVals)
    grid on;
    hold off;
    title(['m : ' num2str(mVec(1)) ' yLast : ' num2str(y0LastVary(yy)) ' ent : ' num2str(ent(yy,mIdx,1))])
    axis([0 N*PN+1 0 1])
    indx = indx+1;
end



