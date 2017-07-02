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
distA     = 'ZERO';
distM     = 'LIN_01_FWD';
N         = 3;
PN        = N;
rConst    = 1;
rNormVec  = rConst*ones(1,N);
rOffset   = 0;
alp       = 1;
q         = 0;
mu        = 0;
numOfSims = 1;

hamDistMat = zeros(N,N);
rMat       = zeros(N,N);
kMatTemp   = zeros(N,N);
kFunc      = [1 .5 .8];
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
tspan = [0 100];
tol   = 10^-5*ones(1,N*PN);
mVec  = [0:0.5:5];
y0LastVary = [.1 .2 .3 .5 .8 1];
sims       = 1;
numSims    = 10;
X          = zeros(length(y0LastVary),length(mVec),N*PN);
%%
for i=1:length(y0LastVary)
    for k=1:length(mVec)
        [i k]
        m  = mVec(k);
        [M,A] = generateMatrices(N,PN,mu,distA,distM,m);
        y0 = [.1*ones(1,N*PN-1) y0LastVary(i)];
        [~,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan);
        numOfPts     = size(y,1);
        pts2consider = round(numOfPts*0.1);
        yCheck = y(end:-1:end-pts2consider,:);
        varIny = var(yCheck);
        if(sum(varIny<tol)==N*PN)
            X(i,k,:)= y(end,:);
        end
    end
end
% IC DEPENDENCE
% load('KL-DIV')
%%
for k=length(mVec):-1:1
    allX         = X(:,k,:);
    allX         = reshape(allX,length(y0LastVary),N*PN);
    sumVar_02(k) = sum(var(allX));
    sumVar_01(k) = sum(abs(allX(end,:)-allX(1,:)));
    diffX        = zeros(size(allX,1)-1,size(allX,2));
    for i=2:size(allX,1)
        diffX(i-1,:) = abs(allX(i,:)-allX(i-1,:));
    end
    sumVar_03(k) =sum(diffX(:));
    binK =kMat>kFunc(2);
    sz = [500,1200]; % figure size
    screensize = get(0,'ScreenSize');
    xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
    ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
    figure('position',[xpos, ypos, sz(2), sz(1)]);
    for yy=1:length(y0LastVary)
        subplot(3,2,yy)
        xMean=reshape(allX(yy,:),N,PN)';
        h=scatter(1:N*PN,xMean(:)',30);
        hold on;
        xVals = h.XData;
        yVals = h.YData;
        bar(xVals,yVals)
        grid on;
        hold off;
        title(['m : ' num2str(mVec(k)) ' yLast : ' num2str(y0LastVary(yy))])
        axis([0 N*PN+1 0 1])
    end
end
% scatter(mVec,sumVar_01)
% figure
% scatter(mVec,sumVar_02)
% figure
% scatter(mVec,sumVar_03)
