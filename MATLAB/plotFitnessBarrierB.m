clear all;close all;clc;
set(0,'DefaultAxesFontSize',30)

load('SIM_MUT_0')
%%
X            = X(end,:,:);
allX         = reshape(X,length(mVec),N*PN);
binK         = kMat>kFunc(2);
sz = [1000,1400]; % figure size
screensize = get(0,'ScreenSize');
xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
figure('position',[xpos, ypos, sz(2), sz(1)]);mu
indx = 1;
trimVec= [1 2 3 13];
mVecTrim = mVec(trimVec);
allXTrim = allX(trimVec,:);
Cdata=[ 0.8500    0.3250    0.0980;
    0         0.4470    0.7410;
    0.4940    0.1840    0.5560;
    0.4660    0.6740    0.1880;
    0.3010    0.7450    0.9330;
    0.6350    0.0780    0.1840;
    0.9290    0.6940    0.1250];
for yy=1:length(mVecTrim)
    subplot(2,2,indx)
    xMean=reshape(allXTrim(yy,:),N,PN)';
    %     h=scatter(1:N*PN,xMean(:)',30);
    %     hold on;
    xVals = 1:N*PN;
    yVals = xMean(:)';
    ind=1;
    for kk=1:PN
        bar(xVals((ind-1)*N+1:ind*N),yVals((ind-1)*N+1:ind*N),'FaceColor',Cdata(kk,:));
        hold on;
        ind = ind+1;
    end
    title(['$m$ : ' num2str(mVecTrim(yy))  ', $x_{4}^{4}[0]$ : 1'] , 'interpreter','latex')
    axis([0 N*PN+1 0 1])
    indx = indx+1;
    set(gca, 'XTickLabelMode', 'manual', 'XTickLabel', []);
end


alldatacursors = findall(gcf,'type','hggroup');
set(alldatacursors,'FontSize',16)

