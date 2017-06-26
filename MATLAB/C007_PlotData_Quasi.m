clear all;close all;clc;
set(0,'DefaultAxesFontSize',14)
sz = [500,900]; % figure size
screensize = get(0,'ScreenSize');
xpos = ceil((screensize(3)-sz(2))/2); % center the figure on the
ypos = ceil((screensize(4)-sz(1))/2); % center the figure on the
h = figure('position',[xpos, ypos, sz(2), sz(1)]);

mut = 'ON';
subplot(2,2,1)
load(['DATA_ZERO_ZERO_MUT_' mut ])
hist(maxEig,20)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title(['A: ZERO M: ZERO MUTATIONS: ' mut ])

subplot(2,2,2)
load(['DATA_UNIFORM_ZERO_MUT_' mut ])
hist(maxEig,20)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title(['A: UNIFORM M: ZERO MUTATIONS: ' mut ])

subplot(2,2,3)
load(['DATA_ZERO_UNIFORM_MUT_' mut ])
hist(maxEig,20)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title(['A: ZERO M: UNIFORM MUTATIONS: ' mut ])

subplot(2,2,4)
load(['DATA_UNIFORM_UNIFORM_MUT_' mut ])
hist(maxEig,20)
xlabel('Maximum Eigenvalue')
ylabel('Frequency')
title(['A: UNIFORM M: UNIFORM MUTATIONS: ' mut ])
