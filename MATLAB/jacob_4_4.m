function J = jacob_4_4(a1_1_1,a1_1_2,a1_1_3,a1_1_4,a1_2_1,a1_2_2,a1_2_3,a1_2_4,a1_3_1,a1_3_2,a1_3_3,a1_3_4,a1_4_1,a1_4_2,a1_4_3,a1_4_4,a2_1_1,a2_1_2,a2_1_3,a2_1_4,a2_2_1,a2_2_2,a2_2_3,a2_2_4,a2_3_1,a2_3_2,a2_3_3,a2_3_4,a2_4_1,a2_4_2,a2_4_3,a2_4_4,a3_1_1,a3_1_2,a3_1_3,a3_1_4,a3_2_1,a3_2_2,a3_2_3,a3_2_4,a3_3_1,a3_3_2,a3_3_3,a3_3_4,a3_4_1,a3_4_2,a3_4_3,a3_4_4,a4_1_1,a4_1_2,a4_1_3,a4_1_4,a4_2_1,a4_2_2,a4_2_3,a4_2_4,a4_3_1,a4_3_2,a4_3_3,a4_3_4,a4_4_1,a4_4_2,a4_4_3,a4_4_4,m1_1_2,m1_1_3,m1_1_4,m1_2_1,m1_2_3,m1_2_4,m1_3_1,m1_3_2,m1_3_4,m1_4_1,m1_4_2,m1_4_3,m2_1_2,m2_1_3,m2_1_4,m2_2_1,m2_2_3,m2_2_4,m2_3_1,m2_3_2,m2_3_4,m2_4_1,m2_4_2,m2_4_3,m3_1_2,m3_1_3,m3_1_4,m3_2_1,m3_2_3,m3_2_4,m3_3_1,m3_3_2,m3_3_4,m3_4_1,m3_4_2,m3_4_3,m4_1_2,m4_1_3,m4_1_4,m4_2_1,m4_2_3,m4_2_4,m4_3_1,m4_3_2,m4_3_4,m4_4_1,m4_4_2,m4_4_3,r,s,x1_1,x1_2,x1_3,x1_4,x2_1,x2_2,x2_3,x2_4,x3_1,x3_2,x3_3,x3_4,x4_1,x4_2,x4_3,x4_4)
%JACOB_4_4
%    J = JACOB_4_4(A1_1_1,A1_1_2,A1_1_3,A1_1_4,A1_2_1,A1_2_2,A1_2_3,A1_2_4,A1_3_1,A1_3_2,A1_3_3,A1_3_4,A1_4_1,A1_4_2,A1_4_3,A1_4_4,A2_1_1,A2_1_2,A2_1_3,A2_1_4,A2_2_1,A2_2_2,A2_2_3,A2_2_4,A2_3_1,A2_3_2,A2_3_3,A2_3_4,A2_4_1,A2_4_2,A2_4_3,A2_4_4,A3_1_1,A3_1_2,A3_1_3,A3_1_4,A3_2_1,A3_2_2,A3_2_3,A3_2_4,A3_3_1,A3_3_2,A3_3_3,A3_3_4,A3_4_1,A3_4_2,A3_4_3,A3_4_4,A4_1_1,A4_1_2,A4_1_3,A4_1_4,A4_2_1,A4_2_2,A4_2_3,A4_2_4,A4_3_1,A4_3_2,A4_3_3,A4_3_4,A4_4_1,A4_4_2,A4_4_3,A4_4_4,M1_1_2,M1_1_3,M1_1_4,M1_2_1,M1_2_3,M1_2_4,M1_3_1,M1_3_2,M1_3_4,M1_4_1,M1_4_2,M1_4_3,M2_1_2,M2_1_3,M2_1_4,M2_2_1,M2_2_3,M2_2_4,M2_3_1,M2_3_2,M2_3_4,M2_4_1,M2_4_2,M2_4_3,M3_1_2,M3_1_3,M3_1_4,M3_2_1,M3_2_3,M3_2_4,M3_3_1,M3_3_2,M3_3_4,M3_4_1,M3_4_2,M3_4_3,M4_1_2,M4_1_3,M4_1_4,M4_2_1,M4_2_3,M4_2_4,M4_3_1,M4_3_2,M4_3_4,M4_4_1,M4_4_2,M4_4_3,R,S,X1_1,X1_2,X1_3,X1_4,X2_1,X2_2,X2_3,X2_4,X3_1,X3_2,X3_3,X3_4,X4_1,X4_2,X4_3,X4_4)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 22:20:04

J = reshape([-m1_1_2-m1_1_3-m1_1_4+r+a1_1_1.*x1_1.*2.0+a1_2_1.*x2_1+a1_3_1.*x3_1+a1_4_1.*x4_1-s.*x1_1.*2.0,m1_1_2,m1_1_3,m1_1_4,a2_1_1.*x2_1,0.0,0.0,0.0,a3_1_1.*x3_1,0.0,0.0,0.0,a4_1_1.*x4_1,0.0,0.0,0.0,m1_2_1,-m1_2_1-m1_2_3-m1_2_4+r+a1_1_2.*x1_2.*2.0+a1_2_2.*x2_2+a1_3_2.*x3_2+a1_4_2.*x4_2-s.*x1_2.*2.0,m1_2_3,m1_2_4,0.0,a2_1_2.*x2_2,0.0,0.0,0.0,a3_1_2.*x3_2,0.0,0.0,0.0,a4_1_2.*x4_2,0.0,0.0,m1_3_1,m1_3_2,-m1_3_1-m1_3_2-m1_3_4+r+a1_1_3.*x1_3.*2.0+a1_2_3.*x2_3+a1_3_3.*x3_3+a1_4_3.*x4_3-s.*x1_3.*2.0,m1_3_4,0.0,0.0,a2_1_3.*x2_3,0.0,0.0,0.0,a3_1_3.*x3_3,0.0,0.0,0.0,a4_1_3.*x4_3,0.0,m1_4_1,m1_4_2,m1_4_3,-m1_4_1-m1_4_2-m1_4_3+r+a1_1_4.*x1_4.*2.0+a1_2_4.*x2_4+a1_3_4.*x3_4+a1_4_4.*x4_4-s.*x1_4.*2.0,0.0,0.0,0.0,a2_1_4.*x2_4,0.0,0.0,0.0,a3_1_4.*x3_4,0.0,0.0,0.0,a4_1_4.*x4_4,a1_2_1.*x1_1,0.0,0.0,0.0,-m2_1_2-m2_1_3-m2_1_4+r+a2_1_1.*x1_1+a2_2_1.*x2_1.*2.0+a2_3_1.*x3_1+a2_4_1.*x4_1-s.*x2_1.*2.0,m2_1_2,m2_1_3,m2_1_4,a3_2_1.*x3_1,0.0,0.0,0.0,a4_2_1.*x4_1,0.0,0.0,0.0,0.0,a1_2_2.*x1_2,0.0,0.0,m2_2_1,-m2_2_1-m2_2_3-m2_2_4+r+a2_1_2.*x1_2+a2_2_2.*x2_2.*2.0+a2_3_2.*x3_2+a2_4_2.*x4_2-s.*x2_2.*2.0,m2_2_3,m2_2_4,0.0,a3_2_2.*x3_2,0.0,0.0,0.0,a4_2_2.*x4_2,0.0,0.0,0.0,0.0,a1_2_3.*x1_3,0.0,m2_3_1,m2_3_2,-m2_3_1-m2_3_2-m2_3_4+r+a2_1_3.*x1_3+a2_2_3.*x2_3.*2.0+a2_3_3.*x3_3+a2_4_3.*x4_3-s.*x2_3.*2.0,m2_3_4,0.0,0.0,a3_2_3.*x3_3,0.0,0.0,0.0,a4_2_3.*x4_3,0.0,0.0,0.0,0.0,a1_2_4.*x1_4,m2_4_1,m2_4_2,m2_4_3,-m2_4_1-m2_4_2-m2_4_3+r+a2_1_4.*x1_4+a2_2_4.*x2_4.*2.0+a2_3_4.*x3_4+a2_4_4.*x4_4-s.*x2_4.*2.0,0.0,0.0,0.0,a3_2_4.*x3_4,0.0,0.0,0.0,a4_2_4.*x4_4,a1_3_1.*x1_1,0.0,0.0,0.0,a2_3_1.*x2_1,0.0,0.0,0.0,-m3_1_2-m3_1_3-m3_1_4+r+a3_1_1.*x1_1+a3_2_1.*x2_1+a3_3_1.*x3_1.*2.0+a3_4_1.*x4_1-s.*x3_1.*2.0,m3_1_2,m3_1_3,m3_1_4,a4_3_1.*x4_1,0.0,0.0,0.0,0.0,a1_3_2.*x1_2,0.0,0.0,0.0,a2_3_2.*x2_2,0.0,0.0,m3_2_1,-m3_2_1-m3_2_3-m3_2_4+r+a3_1_2.*x1_2+a3_2_2.*x2_2+a3_3_2.*x3_2.*2.0+a3_4_2.*x4_2-s.*x3_2.*2.0,m3_2_3,m3_2_4,0.0,a4_3_2.*x4_2,0.0,0.0,0.0,0.0,a1_3_3.*x1_3,0.0,0.0,0.0,a2_3_3.*x2_3,0.0,m3_3_1,m3_3_2,-m3_3_1-m3_3_2-m3_3_4+r+a3_1_3.*x1_3+a3_2_3.*x2_3+a3_3_3.*x3_3.*2.0+a3_4_3.*x4_3-s.*x3_3.*2.0,m3_3_4,0.0,0.0,a4_3_3.*x4_3,0.0,0.0,0.0,0.0,a1_3_4.*x1_4,0.0,0.0,0.0,a2_3_4.*x2_4,m3_4_1,m3_4_2,m3_4_3,-m3_4_1-m3_4_2-m3_4_3+r+a3_1_4.*x1_4+a3_2_4.*x2_4+a3_3_4.*x3_4.*2.0+a3_4_4.*x4_4-s.*x3_4.*2.0,0.0,0.0,0.0,a4_3_4.*x4_4,a1_4_1.*x1_1,0.0,0.0,0.0,a2_4_1.*x2_1,0.0,0.0,0.0,a3_4_1.*x3_1,0.0,0.0,0.0,-m4_1_2-m4_1_3-m4_1_4+r+a4_1_1.*x1_1+a4_2_1.*x2_1+a4_3_1.*x3_1+a4_4_1.*x4_1.*2.0-s.*x4_1.*2.0,m4_1_2,m4_1_3,m4_1_4,0.0,a1_4_2.*x1_2,0.0,0.0,0.0,a2_4_2.*x2_2,0.0,0.0,0.0,a3_4_2.*x3_2,0.0,0.0,m4_2_1,-m4_2_1-m4_2_3-m4_2_4+r+a4_1_2.*x1_2+a4_2_2.*x2_2+a4_3_2.*x3_2+a4_4_2.*x4_2.*2.0-s.*x4_2.*2.0,m4_2_3,m4_2_4,0.0,0.0,a1_4_3.*x1_3,0.0,0.0,0.0,a2_4_3.*x2_3,0.0,0.0,0.0,a3_4_3.*x3_3,0.0,m4_3_1,m4_3_2,-m4_3_1-m4_3_2-m4_3_4+r+a4_1_3.*x1_3+a4_2_3.*x2_3+a4_3_3.*x3_3+a4_4_3.*x4_3.*2.0-s.*x4_3.*2.0,m4_3_4,0.0,0.0,0.0,a1_4_4.*x1_4,0.0,0.0,0.0,a2_4_4.*x2_4,0.0,0.0,0.0,a3_4_4.*x3_4,m4_4_1,m4_4_2,m4_4_3,-m4_4_1-m4_4_2-m4_4_3+r+a4_1_4.*x1_4+a4_2_4.*x2_4+a4_3_4.*x3_4+a4_4_4.*x4_4.*2.0-s.*x4_4.*2.0],[16,16]);
