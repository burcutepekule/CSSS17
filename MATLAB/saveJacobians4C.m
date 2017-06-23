function [  ] = saveJacobians4C(timeStamp,numOfSims,numBits,rMax,rMin,rMid,hamD,PN,Sp,mu,distA,distM,usrname)
N        = 2^numBits;
funcName = ['jacob_quasi_' num2str(N)  '_' num2str(PN)];
if (exist(funcName, 'file') ~= 2)
    [~,~] = generateSymbolicJacobian(N,PN);
end
mkdir(['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_BITS_' num2str(numBits)]);
sims = 1;
tspan = [0 100];
y0    = 1+randi(Sp,1,N*PN); %at least 1
tol   = 10^-5*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices(N,PN,mu,distA,distM);
    % sVec  = [s1_1, s1_2, ... s1_PN, s2_1, s2_2 ... s2_PN ... sN_1, sN_2, ..., sN_PN];
    % rVec  = [r1_1, r1_2, ... r1_PN, r2_1, r2_2 ... r2_PN ... rN_1, rN_2, ..., rN_PN];
    % sVec  = 2*ones(1,N*PN);
    % rVec  = 1*ones(1,N*PN);
    sVec    = 1.5*ones(1,N*PN); %we need to change this if we want s to be different for each patch / species
    rVecPP  = [rMax rMin*ones(1,hamD*numBits) rMid*ones(1,N-(hamD*numBits+1))];
    rMat    = zeros(PN,N);
    for i=1:PN
        rMat(i,:)=circshift(rVecPP,[0,i-1]);
    end
    rVec = rMat(:)';
    [~,y] = generateNumericODE(N,PN,sVec,rVec,A,M,y0,tspan);
    % WHEN THE POPULATIONS GET EXPLODED, REASON IS S IS TOO SMALL
    % THAT'S WHY IN THE PAPER THEY SET THE r SUCH THAT dX/dt=0
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        filename  = ['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_BITS_' num2str(numBits) '/J_' num2str(sims-1) '.txt'];
        X = y(end,:);
        inputArr=num2cell([A(:)' M(:)' rVec sVec X]);
        fh = str2func(funcName);
        J_out=fh(inputArr{:});
        saveArr2txt(J_out,filename);
        sims = sims+1;
    end
end
