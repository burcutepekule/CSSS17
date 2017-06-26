function [  ] = saveJacobians4C(timeStamp,numOfSims,numBits,rNormVec,rOffset,alp,mu,q,distA,distM,usrname)
N            = 2^numBits;
PN           = N;
strains      = generateBinaryStrains(numBits);
% YOU NEED TO GIVE A FITNESS VALUE FOR EVERY HAMMING DISTANCE POSSIBLE
% rNormVec = [1 0.05 0.5 0.5]
hamDistMat = zeros(N,N);
rMat       = zeros(N,N);
for i=1:N
    for k=1:N
        hamDistMat(i,k) = abs(sum(xor(strains(i,:),strains(k,:))));
        %hamming distance is basically the index of the rNormVec
        rMat(i,k) = rOffset+alp*rNormVec(hamDistMat(i,k)+1);
    end
end
qMat    = q.^hamDistMat;
qVecTemp= qMat(:)';
qVec    = qVecTemp(qVecTemp~=1);
qMat(1:N+1:N*N) = 0;
% sVec  = [s1_1, s1_2, ... s1_PN, s2_1, s2_2 ... s2_PN ... sN_1, sN_2, ..., sN_PN];
% rVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
% sVec  = 2*ones(1,N*N);
% rVec  = 1*ones(1,N*N);
rVec = rMat(:)'; %LINEARIZE
sVec = rVec; %we need to change this if we want s to be different for each patch / species

funcName = ['jacob_quasi_' num2str(N)  '_' num2str(PN)];
if (exist(funcName, 'file') ~= 2)
    [~,~] = generateSymbolicJacobian(N,PN);
end
mkdir(['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_BITS_' num2str(numBits)]);
sims = 1;
tspan = [0 500];
tol   = 10^-5*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices(N,PN,mu,distA,distM); 
    M=0.1.*M;
    A=0.1.*A; %A's are too big appearently
    y0    = 1+randi(10,1,N*PN); %at least 1
    [~,y] = generateNumericODE(N,PN,sVec,rVec,qMat,A,M,y0,tspan);
    % WHEN THE POPULATIONS GET EXPLODED, REASON IS S IS TOO SMALL
    % THAT'S WHY IN THE PAPER THEY SET THE r SUCH THAT dX/dt=0
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        filename  = ['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_BITS_' num2str(numBits) '/J_' num2str(sims-1) '.txt'];
        X = y(end,:);
        inputArr=num2cell([A(:)' M(:)' qVec rVec sVec  X]);
        fh = str2func(funcName);
        J_out=fh(inputArr{:});
        saveArr2txt(J_out,filename);
        sims = sims+1;
    end
end
