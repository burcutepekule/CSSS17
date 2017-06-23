
set(0,'DefaultAxesFontSize',14)
clear all;close all;clc;
load('DATA_UNIFORM_ZERO_SP_10_TS_92413')
histogram(maxEig)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title('Dispersal Off')
load('DATA_UNIFORM_UNIFORM_SP_10_TS_92065')
figure
histogram(maxEig)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title('Dispersal On')