clear all;clc;
Cdata=[    0.9290    0.6940    0.1250;
    0.8500    0.3250    0.0980;
    0         0.4470    0.7410;
    0.4940    0.1840    0.5560;
    0.4660    0.6740    0.1880;
    0.3010    0.7450    0.9330;
    0.6350    0.0780    0.1840;
    0.9290    0.6940    0.1250];
%%% SIMULATION PARAMETERS %%%
distA      = 'ZERO';
distM      = 'LIN_01_FWD';
N          = 4;
PN         = N;
rConst     = 1;
rNormVec   = rConst*ones(1,N);
rOffset    = 0;
alp        = 1;
q          = 0;
mu         = 0;
numOfSims  = 1;

hamDistMat = zeros(N,N);
rMat       = zeros(N,N);
kMatTemp   = zeros(N,N);
kFunc      = [1 1 1 1];
kFunc      = kFunc(1:N);

for i=1:PN
    kMatTemp(i,:)=circshift(kFunc',i-1)';
end
h1 = tril(kMatTemp,-1)'+kMatTemp;
h2 = triu(kMatTemp,-1)'+kMatTemp;
mostunfitNear = tril(kMatTemp,-1)+tril(kMatTemp)';
mostfitNear   = triu(kMatTemp,1)+triu(kMatTemp)';

kMat            = kMatTemp;
qMat            = q.*ones(N,N);
qMat(1:N+1:N*N) = 1;
qVecTemp        = qMat(:)';
qVec            = qVecTemp(qVecTemp~=1); %delete the ones, send it as a vector
% sVec  = [s1_1, s1_2, ... s1_PN, s2_1, s2_2 ... s2_PN ... sN_1, sN_2, ..., sN_PN];
% rVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
% kVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
rVec  = ones(1,N*PN);
sVec  = rVec; %we need to change this if we want s to be different for each patch / species
kVec  = kMat(:)';
tol   = 10^-6*ones(1,N*PN);
mVec  = [0.0001 0.001 0.01 0.1:.1:6];
y0LastVary = [.1:.1:1];
X          = zeros(length(y0LastVary),length(mVec),N*PN);

for i=1:length(y0LastVary)
    for k=1:length(mVec)
        [100*i./length(y0LastVary) 100*k./length(mVec)]
        m  = mVec(k);
        [M,A] = generateMatrices(N,PN,mu,distA,distM,m);
        tspan = [0 10];
        y0 = [.1*ones(1,N*PN-1) y0LastVary(i)];
        %         if(m<11)
        %             tspan = [0 100];
        %         else
        %             tspan = [0 5000];
        %         end
        [~,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan);
        numOfPts     = size(y,1);
        pts2consider = round(numOfPts*0.1);
        yCheck = y(end:-1:end-pts2consider,:);
        varIny = var(yCheck);
        flag = 0;
        while(sum(varIny<tol)<N*PN)
            tspan=(flag+1).*tspan;
            [~,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan);
            yCheck = y(end:-1:end-pts2consider,:);
            varIny = var(yCheck);
            flag = flag+1;
        end
         X(i,k,:)= y(end,:);
%         plot(y)
%         title(['m : ' num2str(mVec(k)) ' yLast : ' num2str(y0LastVary(i)) ' flag : ' num2str(flag)])
%         pause
%         close all;
    end
end
% IC DEPENDENCE
save('SIM_MUT_0')
%%
% % clear all;
% % load('SIM_04_ODE1_PART0_MUT')
% for i=1:length(y0LastVary)
%     for k=1:length(mVec)
%         vec = X(i,k,:);
%         vecMat = reshape(vec(:),PN,N);
%         entrpy = 0;
%         for j=1:PN
%             vecTemp = vecMat(j,:);
%             vecNorm = vecTemp./sum(vecTemp);
%             entrpy = entrpy-1*sum(vecNorm.*log(vecNorm));
%         end
%         ent(i,k) = entrpy;
%     end
% end
% %%
% set(0,'DefaultAxesFontSize',14)
% cutOffm = length(mVec);
% [Xx,Yy]   = meshgrid(mVec(1:cutOffm),y0LastVary);
% ent2 = ent(:,1:cutOffm);
% s=surf(Xx,Yy,ent2);
% s.EdgeColor = 'none';
% ylabel('$x_{3}^{3}[0]$','interpreter','latex')
% xlabel('$m$','interpreter','latex')
% zlabel('entropy')
% colorbar
% 
% %%
% % for k=5:17
% %     allX         = X(:,k,:);
% %     allX         = reshape(allX,length(y0LastVary),N*PN);
% %     sumVar_02(k) = sum(var(allX));
% %     sumVar_01(k) = sum(abs(allX(end,:)-allX(1,:)));
% %     diffX        = zeros(size(allX,1)-1,size(allX,2));
% %     for i=2:size(allX,1)
% %         diffX(i-1,:) = abs(allX(i,:)-allX(i-1,:));
% %     end
% %     sumVar_03(k) =sum(diffX(:));
% %     binK =kMat>kFunc(2);
% %     sz = [500,1200]; % figure size
% %     screensize = get(0,'ScreenSize');
% %     xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
% %     ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
% %     figure('position',[xpos, ypos, sz(2), sz(1)]);
% %     for yy=1:length(y0LastVary)
% %         subplot(3,4,yy)
% %         xMean=reshape(allX(yy,:),N,PN)';
% %         h=scatter(1:N*PN,xMean(:)',30);
% %         hold on;
% %         xVals = h.XData;
% %         yVals = h.YData;
% %         bar(xVals,yVals)
% %         grid on;
% %         hold off;
% %         title(['m : ' num2str(mVec(k)) ' yLast : ' num2str(y0LastVary(yy)) ' ent : ' num2str(ent(yy,k))])
% %         axis([0 N*PN+1 0 1])
% %     end
% %     pause
% %     close all;
% % end
% mVec = mVec(1:cutOffm);
% for k=6
%     allX         = X(k,1:cutOffm,:);
%     allX         = reshape(allX,length(mVec),N*PN);
%     binK =kMat>kFunc(2);
%     sz = [500,1200]; % figure size
%     screensize = get(0,'ScreenSize');
%     xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
%     ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
%     figure('position',[xpos, ypos, sz(2), sz(1)]);
%     indx = 1;
%     for yy=1:40:441
%         subplot(3,4,indx)
%         xMean=reshape(allX(yy,:),N,PN)';
%         h=scatter(1:N*PN,xMean(:)',30);
%         hold on;
%         xVals = h.XData;
%         yVals = h.YData;
%         bar(xVals,yVals)
%         grid on;
%         hold off;
%         title(['m : ' num2str(mVec(yy)) ' yLast : ' num2str(y0LastVary(k)) ' ent : ' num2str(ent(k,yy))])
%         axis([0 N*PN+1 0 1])
%         indx = indx+1;
%     end
%     pause
%     close all;
% end

% scatter(mVec,sumVar_01)
% figure
% scatter(mVec,sumVar_02)
% figure
% scatter(mVec,sumVar_03)
