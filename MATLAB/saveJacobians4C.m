function [  ] = saveJacobians4C(timeStamp,numOfSims,N,PN,Sp,s,r,mu,distA,distM)
funcName = ['jacob_' num2str(N)  '_' num2str(PN)];
if (exist(funcName, 'file') ~= 2)
    [~,~] = generateSymbolicJacobian_opt(N,PN);
end
mkdir(['/Users/burcu/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_S_' num2str(N) '_P_' num2str(PN)]);
sims = 1;
tspan = [0 100];
y0    = 1+randi(Sp,1,N*PN); %at least 1
tol   = 10^-5*ones(1,N*PN);
while (sims<=numOfSims)
    [M,A] = generateMatrices_opt_2(N,PN,mu,s,distA,distM);
    [~,y] = generateNumericODE_opt(N,PN,s,r,A,M,y0,tspan);
    % WHEN THE POPULATIONS GET EXPLODED, REASON IS S IS TOO SMALL
    % THAT'S WHY IN THE PAPER THEY SET THE r SUCH THAT dX/dt=0
    numOfPts = size(y,1);
    pts2consider=round(numOfPts*0.1);
    yCheck = y(end:-1:end-pts2consider,:);
    varIny = var(yCheck);
    if(sum(varIny<tol)==N*PN)
        filename  = ['/Users/burcu/Desktop/SIM_' num2str(timeStamp) '/JacobianData/J_S_' num2str(N) '_P_' num2str(PN) '/J_' num2str(sims-1) '.txt'];
        X = y(end,:);
        inputArr=num2cell([A(:)' M(:)' r s X]);
        fh = str2func(funcName);
        J_out=fh(inputArr{:});
        saveArr2txt(J_out,filename);
        sims = sims+1;
    end
end
