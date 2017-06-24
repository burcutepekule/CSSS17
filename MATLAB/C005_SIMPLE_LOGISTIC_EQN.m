clear all;close all;clc;
r= [0.5 0.7 0.8 0.9];

for i=1:length(r)
    dydt(i) = r(i)*x(i)*(1-x(i));
end