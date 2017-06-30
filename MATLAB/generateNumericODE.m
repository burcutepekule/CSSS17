function [t,y,Mres,Ares] = generateNumericODE(N,PN,rVec,kVec,qMat,A,M,y0,tspan)
%RESHAPE A and M accordingly
% A(N,N,PN) <-
% a1_1_1,a1_1_2,a1_1_3,a1_2_1,a1_2_2,a1_2_3,a2_1_1,a2_1_2,a2_1_3,a2_2_1,a2_2_2,a2_2_3
Ares = zeros(N,N,PN);
Mres = zeros(N,PN,PN);
% RESHAPE A MATRIX
pnIdx = 1;
for i=1:N
    for j=1:N
        for k=1:PN
            if (i==j)
                Ares(i,j,k) = 0;
            else
                Ares(i,j,k) = A((pnIdx-1)*PN+k); %THIS IS NOT TRUE
            end
        end
        pnIdx = pnIdx +1;
    end
end

% PAD THE M MATRIX FIRST
idxs=[];
for k=1:N
    relIdxs = [];
    for j=1:PN
        relIdxs = [relIdxs (j-1)*PN+j];
    end
    idxs = [idxs (k-1)*PN*PN+relIdxs];
end
filledIdxs = setdiff(1:N*PN*PN,idxs);
M2 = zeros(1,N*PN*PN);
M2(filledIdxs)=M;

% RESHAPE M MATRIX
% M(N,PN,PN) <-
% m1_1_2,m1_1_3,m1_2_1,m1_2_3,m1_3_1,m1_3_2,m2_1_2,m2_1_3,m2_2_1,m2_2_3,m2_3_1,m2_3_2

pnIdx = 1;
for i=1:N
    for j=1:PN
        for k=1:PN
            if (j==k) %CAN'T DISPERSE ON ITSELF
                Mres(i,j,k) = 0;
            else
                Mres(i,j,k) = M2((pnIdx-1)*PN+k); %maybe true
            end
        end
        pnIdx = pnIdx +1;
    end
end
options = odeset('NonNegative',1:N*PN);
[t,y] = ode15s(@(t,y) odefcn(y,Ares,Mres,N,PN,rVec,kVec,qMat), tspan, y0,options);
% [t,y] = ode45(@(t,y) odefcn(y,Ares,Mres,N,PN,rVec,kVec,qMat), tspan, y0);
end

