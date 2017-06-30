clear all;close all;clc;
%%% SIMULATION PARAMETERS %%%
distA     = 'ZERO';
distM     = 'LIN';
numBits   = 3;
rNormVec  = [1,1,1,1];
rOffset   = 0;
alp       = 1;
q         = 0.1;
mu        = 0.1;
numOfSims = 2;

% distance versus fitness function


Cdata=[    0.9290    0.6940    0.1250;
    0.8500    0.3250    0.0980;
    0         0.4470    0.7410;
    0.4940    0.1840    0.5560;
    0.4660    0.6740    0.1880;
    0.3010    0.7450    0.9330;
    0.6350    0.0780    0.1840;
    0.9290    0.6940    0.1250];
N            = 2^numBits;
PN           = N;
strains      = generateBinaryStrains(numBits);
[~,idxs]     = sort(sum(strains,2),'ascend');
strains      = strains(idxs,:);
% YOU NEED TO GIVE A FITNESS VALUE FOR EVERY HAMMING DISTANCE POSSIBLE
% rNormVec = [1 0.05 0.5 0.5]
hamDistMat = zeros(N,N);
rMat       = zeros(N,N);
kMat       = zeros(N,N);
kFunc      = [10 5 5 5];
for i=1:N
    for k=1:N
        hamDistMat(i,k) = abs(sum(xor(strains(i,:),strains(k,:))));
        kMat(i,k) = kFunc(hamDistMat(i,k)+1);
    end
end

qMat    = q.^hamDistMat;
qVecTemp= qMat(:)';
qVec    = qVecTemp(qVecTemp~=1);
qMat(1:N+1:N*N) = 0;
%%
% sVec  = [s1_1, s1_2, ... s1_PN, s2_1, s2_2 ... s2_PN ... sN_1, sN_2, ..., sN_PN];
% rVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
% kVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
rVec = ones(1,N*PN);
sVec = rVec; %we need to change this if we want s to be different for each patch / species
kVec = kMat(:)';
sims = 1;
tspan = [0 5000];
tol   = 10^-5*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices(N,PN,mu,distA,distM);
    M = zeros(size(M));
%     for i=1:N*PN
%         y0(i) = randi(min(kVec)-1,1,1);
%     end
    y0 = 0.1*ones(1,N*PN);
    [~,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan);
    figure
    plot(y)
    [y0' y(end,:)']
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        X(sims,:) = y(end,:);
    end
    xMean = X(sims,:);
    sims=sims+1;
    binK =kMat>kFunc(2);
    sz = [300,1000]; % figure size
    screensize = get(0,'ScreenSize');
    xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
    ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
    figure('position',[xpos, ypos, sz(2), sz(1)]);
    for ii=1:PN
        scatter((ii-1)*N+1:(ii-1)*N+N,xMean((ii-1)*N+1:(ii-1)*N+N),30,Cdata(ii,:));
        hold on;
        [~,indxs]=find(binK(ii,:)==1);
        for ll=1:length(indxs)
            scatter((ii-1)*N+indxs(ll),xMean((ii-1)*N+indxs(ll)),30,[0 0 0],'filled');
        end
        plot([ii*PN+0.5 ii*PN+0.5],[0 10],'k--','linewidth',1)
    end
    grid on;
    pause
end
xMean=mean(X,1);
