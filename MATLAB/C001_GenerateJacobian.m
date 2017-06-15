clear all;close all;clc;

N  = 3; % Num of Species
PN = 2; % Num of patches

A = sym('a%d%d', [N PN]);
%%

syms ntot m0 m1 m2 m3 mu nu qu gamma beta sigma c1 c2 c3
syms S R1 R2 R3 X
eqn1 = ntot*m0*mu-mu*S-gamma*S+beta*S*X;
eqn2 = ntot*m1*mu-mu*R1-gamma*R1+beta*(1-c1)*R1*X;
eqn3 = ntot*m2*mu-mu*R2-gamma*R2+beta*(1-c2)*R2*X;
eqn4 = ntot*m3*mu-mu*R3-gamma*R3+beta*(1-c3)*R3*X;
eqn5 = ntot*(1-m0-m1-m2-m3)*mu-mu*X-gamma*(S+R1+R2+R3)+beta*(S*X+(1-c1)*R1*X+...
    (1-c2)*R2*X+(1-c3)*R3*X);

J = jacobian([eqn1 eqn2 eqn3 eqn4 eqn5],[S R1 R2 R3 X]);