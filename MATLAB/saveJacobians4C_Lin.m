function [  ] = saveJacobians4C_Lin(timeStamp,numOfSims,numBits,rNormVec,rOffset,alp,mu,q,distA,distM,usrname)
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
kFunc      = [10 3 3 10];
for i=1:N
    for k=1:N
        hamDistMat(i,k) = abs(sum(xor(strains(i,:),strains(k,:))));
        %hamming distance is basically the index of the rNormVec
        rMat(i,k) = rOffset+alp*rNormVec(hamDistMat(i,k)+1);
        kMat(i,k) = kFunc(hamDistMat(i,k)+1);
    end
end
qMat    = q.^hamDistMat;
qVecTemp= qMat(:)';
qVec    = qVecTemp(qVecTemp~=1);
qMat(1:N+1:N*N) = 0;
% sVec  = [s1_1, s1_2, ... s1_PN, s2_1, s2_2 ... s2_PN ... sN_1, sN_2, ..., sN_PN];
% rVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
% kVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
% sVec  = 2*ones(1,N*N);
% rVec  = 1*ones(1,N*N);
rVec = rMat(:)'; %LINEARIZE
rVec = ones(size(rVec));
sVec = rVec; %we need to change this if we want s to be different for each patch / species
kVec = kMat(:)';
funcName = ['jacob_quasi_' num2str(N)  '_' num2str(PN)];
if (exist(funcName, 'file') ~= 2)
    [~,~] = generateSymbolicJacobian(N,PN);
end
mkdir(['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_BITS_' num2str(numBits)]);
sims = 1;
tspan = [0 100];
tol   = 10^-5*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices(N,PN,mu,distA,distM);
    %     M=M;
    %     A=A; %A's are too big appearently
    y0    = randi(10,1,N*PN); %at least 1
    [~,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan);
    %     figure
    %     hold on;
    %     plot(y,'k.','linewidth',2)
    %     for m=1:N
    %         plot(y(:,(m-1)*(N+1)+1),'g--','linewidth',2)
    %     end
    %     grid on;
    % WHEN THE POPULATIONS GET EXPLODED, REASON IS S IS TOO SMALL
    % THAT'S WHY IN THE PAPER THEY SET THE r SUCH THAT dX/dt=0
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        X(sims,:) = y(end,:);
    end
    sims=sims+1;
end
xMean=mean(X,1);
binK =kMat>kFunc(2);
sz = [300,1000]; % figure size
screensize = get(0,'ScreenSize');
xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
h = figure('position',[xpos, ypos, sz(2), sz(1)]);
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
end
