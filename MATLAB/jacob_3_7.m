function J = jacob_3_7(a1_1_1,a1_1_2,a1_1_3,a1_1_4,a1_1_5,a1_1_6,a1_1_7,a1_2_1,a1_2_2,a1_2_3,a1_2_4,a1_2_5,a1_2_6,a1_2_7,a1_3_1,a1_3_2,a1_3_3,a1_3_4,a1_3_5,a1_3_6,a1_3_7,a2_1_1,a2_1_2,a2_1_3,a2_1_4,a2_1_5,a2_1_6,a2_1_7,a2_2_1,a2_2_2,a2_2_3,a2_2_4,a2_2_5,a2_2_6,a2_2_7,a2_3_1,a2_3_2,a2_3_3,a2_3_4,a2_3_5,a2_3_6,a2_3_7,a3_1_1,a3_1_2,a3_1_3,a3_1_4,a3_1_5,a3_1_6,a3_1_7,a3_2_1,a3_2_2,a3_2_3,a3_2_4,a3_2_5,a3_2_6,a3_2_7,a3_3_1,a3_3_2,a3_3_3,a3_3_4,a3_3_5,a3_3_6,a3_3_7,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,m1_1_7,m1_2_1,m1_2_3,m1_2_4,m1_2_5,m1_2_6,m1_2_7,m1_3_1,m1_3_2,m1_3_4,m1_3_5,m1_3_6,m1_3_7,m1_4_1,m1_4_2,m1_4_3,m1_4_5,m1_4_6,m1_4_7,m1_5_1,m1_5_2,m1_5_3,m1_5_4,m1_5_6,m1_5_7,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,m1_6_7,m1_7_1,m1_7_2,m1_7_3,m1_7_4,m1_7_5,m1_7_6,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,m2_1_7,m2_2_1,m2_2_3,m2_2_4,m2_2_5,m2_2_6,m2_2_7,m2_3_1,m2_3_2,m2_3_4,m2_3_5,m2_3_6,m2_3_7,m2_4_1,m2_4_2,m2_4_3,m2_4_5,m2_4_6,m2_4_7,m2_5_1,m2_5_2,m2_5_3,m2_5_4,m2_5_6,m2_5_7,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,m2_6_7,m2_7_1,m2_7_2,m2_7_3,m2_7_4,m2_7_5,m2_7_6,m3_1_2,m3_1_3,m3_1_4,m3_1_5,m3_1_6,m3_1_7,m3_2_1,m3_2_3,m3_2_4,m3_2_5,m3_2_6,m3_2_7,m3_3_1,m3_3_2,m3_3_4,m3_3_5,m3_3_6,m3_3_7,m3_4_1,m3_4_2,m3_4_3,m3_4_5,m3_4_6,m3_4_7,m3_5_1,m3_5_2,m3_5_3,m3_5_4,m3_5_6,m3_5_7,m3_6_1,m3_6_2,m3_6_3,m3_6_4,m3_6_5,m3_6_7,m3_7_1,m3_7_2,m3_7_3,m3_7_4,m3_7_5,m3_7_6,r,s,x1_1,x1_2,x1_3,x1_4,x1_5,x1_6,x1_7,x2_1,x2_2,x2_3,x2_4,x2_5,x2_6,x2_7,x3_1,x3_2,x3_3,x3_4,x3_5,x3_6,x3_7)
%JACOB_3_7
%    J = JACOB_3_7(A1_1_1,A1_1_2,A1_1_3,A1_1_4,A1_1_5,A1_1_6,A1_1_7,A1_2_1,A1_2_2,A1_2_3,A1_2_4,A1_2_5,A1_2_6,A1_2_7,A1_3_1,A1_3_2,A1_3_3,A1_3_4,A1_3_5,A1_3_6,A1_3_7,A2_1_1,A2_1_2,A2_1_3,A2_1_4,A2_1_5,A2_1_6,A2_1_7,A2_2_1,A2_2_2,A2_2_3,A2_2_4,A2_2_5,A2_2_6,A2_2_7,A2_3_1,A2_3_2,A2_3_3,A2_3_4,A2_3_5,A2_3_6,A2_3_7,A3_1_1,A3_1_2,A3_1_3,A3_1_4,A3_1_5,A3_1_6,A3_1_7,A3_2_1,A3_2_2,A3_2_3,A3_2_4,A3_2_5,A3_2_6,A3_2_7,A3_3_1,A3_3_2,A3_3_3,A3_3_4,A3_3_5,A3_3_6,A3_3_7,M1_1_2,M1_1_3,M1_1_4,M1_1_5,M1_1_6,M1_1_7,M1_2_1,M1_2_3,M1_2_4,M1_2_5,M1_2_6,M1_2_7,M1_3_1,M1_3_2,M1_3_4,M1_3_5,M1_3_6,M1_3_7,M1_4_1,M1_4_2,M1_4_3,M1_4_5,M1_4_6,M1_4_7,M1_5_1,M1_5_2,M1_5_3,M1_5_4,M1_5_6,M1_5_7,M1_6_1,M1_6_2,M1_6_3,M1_6_4,M1_6_5,M1_6_7,M1_7_1,M1_7_2,M1_7_3,M1_7_4,M1_7_5,M1_7_6,M2_1_2,M2_1_3,M2_1_4,M2_1_5,M2_1_6,M2_1_7,M2_2_1,M2_2_3,M2_2_4,M2_2_5,M2_2_6,M2_2_7,M2_3_1,M2_3_2,M2_3_4,M2_3_5,M2_3_6,M2_3_7,M2_4_1,M2_4_2,M2_4_3,M2_4_5,M2_4_6,M2_4_7,M2_5_1,M2_5_2,M2_5_3,M2_5_4,M2_5_6,M2_5_7,M2_6_1,M2_6_2,M2_6_3,M2_6_4,M2_6_5,M2_6_7,M2_7_1,M2_7_2,M2_7_3,M2_7_4,M2_7_5,M2_7_6,M3_1_2,M3_1_3,M3_1_4,M3_1_5,M3_1_6,M3_1_7,M3_2_1,M3_2_3,M3_2_4,M3_2_5,M3_2_6,M3_2_7,M3_3_1,M3_3_2,M3_3_4,M3_3_5,M3_3_6,M3_3_7,M3_4_1,M3_4_2,M3_4_3,M3_4_5,M3_4_6,M3_4_7,M3_5_1,M3_5_2,M3_5_3,M3_5_4,M3_5_6,M3_5_7,M3_6_1,M3_6_2,M3_6_3,M3_6_4,M3_6_5,M3_6_7,M3_7_1,M3_7_2,M3_7_3,M3_7_4,M3_7_5,M3_7_6,R,S,X1_1,X1_2,X1_3,X1_4,X1_5,X1_6,X1_7,X2_1,X2_2,X2_3,X2_4,X2_5,X2_6,X2_7,X3_1,X3_2,X3_3,X3_4,X3_5,X3_6,X3_7)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 21:29:12

J = reshape([-m1_1_2-m1_1_3-m1_1_4-m1_1_5-m1_1_6-m1_1_7+r+a1_1_1.*x1_1.*2.0+a1_2_1.*x2_1+a1_3_1.*x3_1-s.*x1_1.*2.0,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,m1_1_7,a2_1_1.*x2_1,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_1.*x3_1,0.0,0.0,0.0,0.0,0.0,0.0,m1_2_1,-m1_2_1-m1_2_3-m1_2_4-m1_2_5-m1_2_6-m1_2_7+r+a1_1_2.*x1_2.*2.0+a1_2_2.*x2_2+a1_3_2.*x3_2-s.*x1_2.*2.0,m1_2_3,m1_2_4,m1_2_5,m1_2_6,m1_2_7,0.0,a2_1_2.*x2_2,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_2.*x3_2,0.0,0.0,0.0,0.0,0.0,m1_3_1,m1_3_2,-m1_3_1-m1_3_2-m1_3_4-m1_3_5-m1_3_6-m1_3_7+r+a1_1_3.*x1_3.*2.0+a1_2_3.*x2_3+a1_3_3.*x3_3-s.*x1_3.*2.0,m1_3_4,m1_3_5,m1_3_6,m1_3_7,0.0,0.0,a2_1_3.*x2_3,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_3.*x3_3,0.0,0.0,0.0,0.0,m1_4_1,m1_4_2,m1_4_3,-m1_4_1-m1_4_2-m1_4_3-m1_4_5-m1_4_6-m1_4_7+r+a1_1_4.*x1_4.*2.0+a1_2_4.*x2_4+a1_3_4.*x3_4-s.*x1_4.*2.0,m1_4_5,m1_4_6,m1_4_7,0.0,0.0,0.0,a2_1_4.*x2_4,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_4.*x3_4,0.0,0.0,0.0,m1_5_1,m1_5_2,m1_5_3,m1_5_4,-m1_5_1-m1_5_2-m1_5_3-m1_5_4-m1_5_6-m1_5_7+r+a1_1_5.*x1_5.*2.0+a1_2_5.*x2_5+a1_3_5.*x3_5-s.*x1_5.*2.0,m1_5_6,m1_5_7,0.0,0.0,0.0,0.0,a2_1_5.*x2_5,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_5.*x3_5,0.0,0.0,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,-m1_6_1-m1_6_2-m1_6_3-m1_6_4-m1_6_5-m1_6_7+r+a1_1_6.*x1_6.*2.0+a1_2_6.*x2_6+a1_3_6.*x3_6-s.*x1_6.*2.0,m1_6_7,0.0,0.0,0.0,0.0,0.0,a2_1_6.*x2_6,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_6.*x3_6,0.0,m1_7_1,m1_7_2,m1_7_3,m1_7_4,m1_7_5,m1_7_6,-m1_7_1-m1_7_2-m1_7_3-m1_7_4-m1_7_5-m1_7_6+r+a1_1_7.*x1_7.*2.0+a1_2_7.*x2_7+a1_3_7.*x3_7-s.*x1_7.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_7.*x2_7,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_7.*x3_7,a1_2_1.*x1_1,0.0,0.0,0.0,0.0,0.0,0.0,-m2_1_2-m2_1_3-m2_1_4-m2_1_5-m2_1_6-m2_1_7+r+a2_1_1.*x1_1+a2_2_1.*x2_1.*2.0+a2_3_1.*x3_1-s.*x2_1.*2.0,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,m2_1_7,a3_2_1.*x3_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_2.*x1_2,0.0,0.0,0.0,0.0,0.0,m2_2_1,-m2_2_1-m2_2_3-m2_2_4-m2_2_5-m2_2_6-m2_2_7+r+a2_1_2.*x1_2+a2_2_2.*x2_2.*2.0+a2_3_2.*x3_2-s.*x2_2.*2.0,m2_2_3,m2_2_4,m2_2_5,m2_2_6,m2_2_7,0.0,a3_2_2.*x3_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_3.*x1_3,0.0,0.0,0.0,0.0,m2_3_1,m2_3_2,-m2_3_1-m2_3_2-m2_3_4-m2_3_5-m2_3_6-m2_3_7+r+a2_1_3.*x1_3+a2_2_3.*x2_3.*2.0+a2_3_3.*x3_3-s.*x2_3.*2.0,m2_3_4,m2_3_5,m2_3_6,m2_3_7,0.0,0.0,a3_2_3.*x3_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_4.*x1_4,0.0,0.0,0.0,m2_4_1,m2_4_2,m2_4_3,-m2_4_1-m2_4_2-m2_4_3-m2_4_5-m2_4_6-m2_4_7+r+a2_1_4.*x1_4+a2_2_4.*x2_4.*2.0+a2_3_4.*x3_4-s.*x2_4.*2.0,m2_4_5,m2_4_6,m2_4_7,0.0,0.0,0.0,a3_2_4.*x3_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_5.*x1_5,0.0,0.0,m2_5_1,m2_5_2,m2_5_3,m2_5_4,-m2_5_1-m2_5_2-m2_5_3-m2_5_4-m2_5_6-m2_5_7+r+a2_1_5.*x1_5+a2_2_5.*x2_5.*2.0+a2_3_5.*x3_5-s.*x2_5.*2.0,m2_5_6,m2_5_7,0.0,0.0,0.0,0.0,a3_2_5.*x3_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_6.*x1_6,0.0,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,-m2_6_1-m2_6_2-m2_6_3-m2_6_4-m2_6_5-m2_6_7+r+a2_1_6.*x1_6+a2_2_6.*x2_6.*2.0+a2_3_6.*x3_6-s.*x2_6.*2.0,m2_6_7,0.0,0.0,0.0,0.0,0.0,a3_2_6.*x3_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_7.*x1_7,m2_7_1,m2_7_2,m2_7_3,m2_7_4,m2_7_5,m2_7_6,-m2_7_1-m2_7_2-m2_7_3-m2_7_4-m2_7_5-m2_7_6+r+a2_1_7.*x1_7+a2_2_7.*x2_7.*2.0+a2_3_7.*x3_7-s.*x2_7.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_7.*x3_7,a1_3_1.*x1_1,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_1.*x2_1,0.0,0.0,0.0,0.0,0.0,0.0,-m3_1_2-m3_1_3-m3_1_4-m3_1_5-m3_1_6-m3_1_7+r+a3_1_1.*x1_1+a3_2_1.*x2_1+a3_3_1.*x3_1.*2.0-s.*x3_1.*2.0,m3_1_2,m3_1_3,m3_1_4,m3_1_5,m3_1_6,m3_1_7,0.0,a1_3_2.*x1_2,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_2.*x2_2,0.0,0.0,0.0,0.0,0.0,m3_2_1,-m3_2_1-m3_2_3-m3_2_4-m3_2_5-m3_2_6-m3_2_7+r+a3_1_2.*x1_2+a3_2_2.*x2_2+a3_3_2.*x3_2.*2.0-s.*x3_2.*2.0,m3_2_3,m3_2_4,m3_2_5,m3_2_6,m3_2_7,0.0,0.0,a1_3_3.*x1_3,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_3.*x2_3,0.0,0.0,0.0,0.0,m3_3_1,m3_3_2,-m3_3_1-m3_3_2-m3_3_4-m3_3_5-m3_3_6-m3_3_7+r+a3_1_3.*x1_3+a3_2_3.*x2_3+a3_3_3.*x3_3.*2.0-s.*x3_3.*2.0,m3_3_4,m3_3_5,m3_3_6,m3_3_7,0.0,0.0,0.0,a1_3_4.*x1_4,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_4.*x2_4,0.0,0.0,0.0,m3_4_1,m3_4_2,m3_4_3,-m3_4_1-m3_4_2-m3_4_3-m3_4_5-m3_4_6-m3_4_7+r+a3_1_4.*x1_4+a3_2_4.*x2_4+a3_3_4.*x3_4.*2.0-s.*x3_4.*2.0,m3_4_5,m3_4_6,m3_4_7,0.0,0.0,0.0,0.0,a1_3_5.*x1_5,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_5.*x2_5,0.0,0.0,m3_5_1,m3_5_2,m3_5_3,m3_5_4,-m3_5_1-m3_5_2-m3_5_3-m3_5_4-m3_5_6-m3_5_7+r+a3_1_5.*x1_5+a3_2_5.*x2_5+a3_3_5.*x3_5.*2.0-s.*x3_5.*2.0,m3_5_6,m3_5_7,0.0,0.0,0.0,0.0,0.0,a1_3_6.*x1_6,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_6.*x2_6,0.0,m3_6_1,m3_6_2,m3_6_3,m3_6_4,m3_6_5,-m3_6_1-m3_6_2-m3_6_3-m3_6_4-m3_6_5-m3_6_7+r+a3_1_6.*x1_6+a3_2_6.*x2_6+a3_3_6.*x3_6.*2.0-s.*x3_6.*2.0,m3_6_7,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_7.*x1_7,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_7.*x2_7,m3_7_1,m3_7_2,m3_7_3,m3_7_4,m3_7_5,m3_7_6,-m3_7_1-m3_7_2-m3_7_3-m3_7_4-m3_7_5-m3_7_6+r+a3_1_7.*x1_7+a3_2_7.*x2_7+a3_3_7.*x3_7.*2.0-s.*x3_7.*2.0],[21,21]);
