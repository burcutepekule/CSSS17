function J = jacob_2_6(a1_1_1,a1_1_2,a1_1_3,a1_1_4,a1_1_5,a1_1_6,a1_2_1,a1_2_2,a1_2_3,a1_2_4,a1_2_5,a1_2_6,a2_1_1,a2_1_2,a2_1_3,a2_1_4,a2_1_5,a2_1_6,a2_2_1,a2_2_2,a2_2_3,a2_2_4,a2_2_5,a2_2_6,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,m1_2_1,m1_2_3,m1_2_4,m1_2_5,m1_2_6,m1_3_1,m1_3_2,m1_3_4,m1_3_5,m1_3_6,m1_4_1,m1_4_2,m1_4_3,m1_4_5,m1_4_6,m1_5_1,m1_5_2,m1_5_3,m1_5_4,m1_5_6,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,m2_2_1,m2_2_3,m2_2_4,m2_2_5,m2_2_6,m2_3_1,m2_3_2,m2_3_4,m2_3_5,m2_3_6,m2_4_1,m2_4_2,m2_4_3,m2_4_5,m2_4_6,m2_5_1,m2_5_2,m2_5_3,m2_5_4,m2_5_6,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,r,s,x1_1,x1_2,x1_3,x1_4,x1_5,x1_6,x2_1,x2_2,x2_3,x2_4,x2_5,x2_6)
%JACOB_2_6
%    J = JACOB_2_6(A1_1_1,A1_1_2,A1_1_3,A1_1_4,A1_1_5,A1_1_6,A1_2_1,A1_2_2,A1_2_3,A1_2_4,A1_2_5,A1_2_6,A2_1_1,A2_1_2,A2_1_3,A2_1_4,A2_1_5,A2_1_6,A2_2_1,A2_2_2,A2_2_3,A2_2_4,A2_2_5,A2_2_6,M1_1_2,M1_1_3,M1_1_4,M1_1_5,M1_1_6,M1_2_1,M1_2_3,M1_2_4,M1_2_5,M1_2_6,M1_3_1,M1_3_2,M1_3_4,M1_3_5,M1_3_6,M1_4_1,M1_4_2,M1_4_3,M1_4_5,M1_4_6,M1_5_1,M1_5_2,M1_5_3,M1_5_4,M1_5_6,M1_6_1,M1_6_2,M1_6_3,M1_6_4,M1_6_5,M2_1_2,M2_1_3,M2_1_4,M2_1_5,M2_1_6,M2_2_1,M2_2_3,M2_2_4,M2_2_5,M2_2_6,M2_3_1,M2_3_2,M2_3_4,M2_3_5,M2_3_6,M2_4_1,M2_4_2,M2_4_3,M2_4_5,M2_4_6,M2_5_1,M2_5_2,M2_5_3,M2_5_4,M2_5_6,M2_6_1,M2_6_2,M2_6_3,M2_6_4,M2_6_5,R,S,X1_1,X1_2,X1_3,X1_4,X1_5,X1_6,X2_1,X2_2,X2_3,X2_4,X2_5,X2_6)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 22:15:17

J = reshape([-m1_1_2-m1_1_3-m1_1_4-m1_1_5-m1_1_6+r+a1_1_1.*x1_1.*2.0+a1_2_1.*x2_1-s.*x1_1.*2.0,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,a2_1_1.*x2_1,0.0,0.0,0.0,0.0,0.0,m1_2_1,-m1_2_1-m1_2_3-m1_2_4-m1_2_5-m1_2_6+r+a1_1_2.*x1_2.*2.0+a1_2_2.*x2_2-s.*x1_2.*2.0,m1_2_3,m1_2_4,m1_2_5,m1_2_6,0.0,a2_1_2.*x2_2,0.0,0.0,0.0,0.0,m1_3_1,m1_3_2,-m1_3_1-m1_3_2-m1_3_4-m1_3_5-m1_3_6+r+a1_1_3.*x1_3.*2.0+a1_2_3.*x2_3-s.*x1_3.*2.0,m1_3_4,m1_3_5,m1_3_6,0.0,0.0,a2_1_3.*x2_3,0.0,0.0,0.0,m1_4_1,m1_4_2,m1_4_3,-m1_4_1-m1_4_2-m1_4_3-m1_4_5-m1_4_6+r+a1_1_4.*x1_4.*2.0+a1_2_4.*x2_4-s.*x1_4.*2.0,m1_4_5,m1_4_6,0.0,0.0,0.0,a2_1_4.*x2_4,0.0,0.0,m1_5_1,m1_5_2,m1_5_3,m1_5_4,-m1_5_1-m1_5_2-m1_5_3-m1_5_4-m1_5_6+r+a1_1_5.*x1_5.*2.0+a1_2_5.*x2_5-s.*x1_5.*2.0,m1_5_6,0.0,0.0,0.0,0.0,a2_1_5.*x2_5,0.0,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,-m1_6_1-m1_6_2-m1_6_3-m1_6_4-m1_6_5+r+a1_1_6.*x1_6.*2.0+a1_2_6.*x2_6-s.*x1_6.*2.0,0.0,0.0,0.0,0.0,0.0,a2_1_6.*x2_6,a1_2_1.*x1_1,0.0,0.0,0.0,0.0,0.0,-m2_1_2-m2_1_3-m2_1_4-m2_1_5-m2_1_6+r+a2_1_1.*x1_1+a2_2_1.*x2_1.*2.0-s.*x2_1.*2.0,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,0.0,a1_2_2.*x1_2,0.0,0.0,0.0,0.0,m2_2_1,-m2_2_1-m2_2_3-m2_2_4-m2_2_5-m2_2_6+r+a2_1_2.*x1_2+a2_2_2.*x2_2.*2.0-s.*x2_2.*2.0,m2_2_3,m2_2_4,m2_2_5,m2_2_6,0.0,0.0,a1_2_3.*x1_3,0.0,0.0,0.0,m2_3_1,m2_3_2,-m2_3_1-m2_3_2-m2_3_4-m2_3_5-m2_3_6+r+a2_1_3.*x1_3+a2_2_3.*x2_3.*2.0-s.*x2_3.*2.0,m2_3_4,m2_3_5,m2_3_6,0.0,0.0,0.0,a1_2_4.*x1_4,0.0,0.0,m2_4_1,m2_4_2,m2_4_3,-m2_4_1-m2_4_2-m2_4_3-m2_4_5-m2_4_6+r+a2_1_4.*x1_4+a2_2_4.*x2_4.*2.0-s.*x2_4.*2.0,m2_4_5,m2_4_6,0.0,0.0,0.0,0.0,a1_2_5.*x1_5,0.0,m2_5_1,m2_5_2,m2_5_3,m2_5_4,-m2_5_1-m2_5_2-m2_5_3-m2_5_4-m2_5_6+r+a2_1_5.*x1_5+a2_2_5.*x2_5.*2.0-s.*x2_5.*2.0,m2_5_6,0.0,0.0,0.0,0.0,0.0,a1_2_6.*x1_6,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,-m2_6_1-m2_6_2-m2_6_3-m2_6_4-m2_6_5+r+a2_1_6.*x1_6+a2_2_6.*x2_6.*2.0-s.*x2_6.*2.0],[12,12]);
