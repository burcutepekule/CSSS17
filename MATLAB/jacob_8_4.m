function J = jacob_8_4(a1_1_1,a1_1_2,a1_1_3,a1_1_4,a1_2_1,a1_2_2,a1_2_3,a1_2_4,a1_3_1,a1_3_2,a1_3_3,a1_3_4,a1_4_1,a1_4_2,a1_4_3,a1_4_4,a1_5_1,a1_5_2,a1_5_3,a1_5_4,a1_6_1,a1_6_2,a1_6_3,a1_6_4,a1_7_1,a1_7_2,a1_7_3,a1_7_4,a1_8_1,a1_8_2,a1_8_3,a1_8_4,a2_1_1,a2_1_2,a2_1_3,a2_1_4,a2_2_1,a2_2_2,a2_2_3,a2_2_4,a2_3_1,a2_3_2,a2_3_3,a2_3_4,a2_4_1,a2_4_2,a2_4_3,a2_4_4,a2_5_1,a2_5_2,a2_5_3,a2_5_4,a2_6_1,a2_6_2,a2_6_3,a2_6_4,a2_7_1,a2_7_2,a2_7_3,a2_7_4,a2_8_1,a2_8_2,a2_8_3,a2_8_4,a3_1_1,a3_1_2,a3_1_3,a3_1_4,a3_2_1,a3_2_2,a3_2_3,a3_2_4,a3_3_1,a3_3_2,a3_3_3,a3_3_4,a3_4_1,a3_4_2,a3_4_3,a3_4_4,a3_5_1,a3_5_2,a3_5_3,a3_5_4,a3_6_1,a3_6_2,a3_6_3,a3_6_4,a3_7_1,a3_7_2,a3_7_3,a3_7_4,a3_8_1,a3_8_2,a3_8_3,a3_8_4,a4_1_1,a4_1_2,a4_1_3,a4_1_4,a4_2_1,a4_2_2,a4_2_3,a4_2_4,a4_3_1,a4_3_2,a4_3_3,a4_3_4,a4_4_1,a4_4_2,a4_4_3,a4_4_4,a4_5_1,a4_5_2,a4_5_3,a4_5_4,a4_6_1,a4_6_2,a4_6_3,a4_6_4,a4_7_1,a4_7_2,a4_7_3,a4_7_4,a4_8_1,a4_8_2,a4_8_3,a4_8_4,a5_1_1,a5_1_2,a5_1_3,a5_1_4,a5_2_1,a5_2_2,a5_2_3,a5_2_4,a5_3_1,a5_3_2,a5_3_3,a5_3_4,a5_4_1,a5_4_2,a5_4_3,a5_4_4,a5_5_1,a5_5_2,a5_5_3,a5_5_4,a5_6_1,a5_6_2,a5_6_3,a5_6_4,a5_7_1,a5_7_2,a5_7_3,a5_7_4,a5_8_1,a5_8_2,a5_8_3,a5_8_4,a6_1_1,a6_1_2,a6_1_3,a6_1_4,a6_2_1,a6_2_2,a6_2_3,a6_2_4,a6_3_1,a6_3_2,a6_3_3,a6_3_4,a6_4_1,a6_4_2,a6_4_3,a6_4_4,a6_5_1,a6_5_2,a6_5_3,a6_5_4,a6_6_1,a6_6_2,a6_6_3,a6_6_4,a6_7_1,a6_7_2,a6_7_3,a6_7_4,a6_8_1,a6_8_2,a6_8_3,a6_8_4,a7_1_1,a7_1_2,a7_1_3,a7_1_4,a7_2_1,a7_2_2,a7_2_3,a7_2_4,a7_3_1,a7_3_2,a7_3_3,a7_3_4,a7_4_1,a7_4_2,a7_4_3,a7_4_4,a7_5_1,a7_5_2,a7_5_3,a7_5_4,a7_6_1,a7_6_2,a7_6_3,a7_6_4,a7_7_1,a7_7_2,a7_7_3,a7_7_4,a7_8_1,a7_8_2,a7_8_3,a7_8_4,a8_1_1,a8_1_2,a8_1_3,a8_1_4,a8_2_1,a8_2_2,a8_2_3,a8_2_4,a8_3_1,a8_3_2,a8_3_3,a8_3_4,a8_4_1,a8_4_2,a8_4_3,a8_4_4,a8_5_1,a8_5_2,a8_5_3,a8_5_4,a8_6_1,a8_6_2,a8_6_3,a8_6_4,a8_7_1,a8_7_2,a8_7_3,a8_7_4,a8_8_1,a8_8_2,a8_8_3,a8_8_4,m1_1_2,m1_1_3,m1_1_4,m1_2_1,m1_2_3,m1_2_4,m1_3_1,m1_3_2,m1_3_4,m1_4_1,m1_4_2,m1_4_3,m2_1_2,m2_1_3,m2_1_4,m2_2_1,m2_2_3,m2_2_4,m2_3_1,m2_3_2,m2_3_4,m2_4_1,m2_4_2,m2_4_3,m3_1_2,m3_1_3,m3_1_4,m3_2_1,m3_2_3,m3_2_4,m3_3_1,m3_3_2,m3_3_4,m3_4_1,m3_4_2,m3_4_3,m4_1_2,m4_1_3,m4_1_4,m4_2_1,m4_2_3,m4_2_4,m4_3_1,m4_3_2,m4_3_4,m4_4_1,m4_4_2,m4_4_3,m5_1_2,m5_1_3,m5_1_4,m5_2_1,m5_2_3,m5_2_4,m5_3_1,m5_3_2,m5_3_4,m5_4_1,m5_4_2,m5_4_3,m6_1_2,m6_1_3,m6_1_4,m6_2_1,m6_2_3,m6_2_4,m6_3_1,m6_3_2,m6_3_4,m6_4_1,m6_4_2,m6_4_3,m7_1_2,m7_1_3,m7_1_4,m7_2_1,m7_2_3,m7_2_4,m7_3_1,m7_3_2,m7_3_4,m7_4_1,m7_4_2,m7_4_3,m8_1_2,m8_1_3,m8_1_4,m8_2_1,m8_2_3,m8_2_4,m8_3_1,m8_3_2,m8_3_4,m8_4_1,m8_4_2,m8_4_3,r,s,x1_1,x1_2,x1_3,x1_4,x2_1,x2_2,x2_3,x2_4,x3_1,x3_2,x3_3,x3_4,x4_1,x4_2,x4_3,x4_4,x5_1,x5_2,x5_3,x5_4,x6_1,x6_2,x6_3,x6_4,x7_1,x7_2,x7_3,x7_4,x8_1,x8_2,x8_3,x8_4)
%JACOB_8_4
%    J = JACOB_8_4(A1_1_1,A1_1_2,A1_1_3,A1_1_4,A1_2_1,A1_2_2,A1_2_3,A1_2_4,A1_3_1,A1_3_2,A1_3_3,A1_3_4,A1_4_1,A1_4_2,A1_4_3,A1_4_4,A1_5_1,A1_5_2,A1_5_3,A1_5_4,A1_6_1,A1_6_2,A1_6_3,A1_6_4,A1_7_1,A1_7_2,A1_7_3,A1_7_4,A1_8_1,A1_8_2,A1_8_3,A1_8_4,A2_1_1,A2_1_2,A2_1_3,A2_1_4,A2_2_1,A2_2_2,A2_2_3,A2_2_4,A2_3_1,A2_3_2,A2_3_3,A2_3_4,A2_4_1,A2_4_2,A2_4_3,A2_4_4,A2_5_1,A2_5_2,A2_5_3,A2_5_4,A2_6_1,A2_6_2,A2_6_3,A2_6_4,A2_7_1,A2_7_2,A2_7_3,A2_7_4,A2_8_1,A2_8_2,A2_8_3,A2_8_4,A3_1_1,A3_1_2,A3_1_3,A3_1_4,A3_2_1,A3_2_2,A3_2_3,A3_2_4,A3_3_1,A3_3_2,A3_3_3,A3_3_4,A3_4_1,A3_4_2,A3_4_3,A3_4_4,A3_5_1,A3_5_2,A3_5_3,A3_5_4,A3_6_1,A3_6_2,A3_6_3,A3_6_4,A3_7_1,A3_7_2,A3_7_3,A3_7_4,A3_8_1,A3_8_2,A3_8_3,A3_8_4,A4_1_1,A4_1_2,A4_1_3,A4_1_4,A4_2_1,A4_2_2,A4_2_3,A4_2_4,A4_3_1,A4_3_2,A4_3_3,A4_3_4,A4_4_1,A4_4_2,A4_4_3,A4_4_4,A4_5_1,A4_5_2,A4_5_3,A4_5_4,A4_6_1,A4_6_2,A4_6_3,A4_6_4,A4_7_1,A4_7_2,A4_7_3,A4_7_4,A4_8_1,A4_8_2,A4_8_3,A4_8_4,A5_1_1,A5_1_2,A5_1_3,A5_1_4,A5_2_1,A5_2_2,A5_2_3,A5_2_4,A5_3_1,A5_3_2,A5_3_3,A5_3_4,A5_4_1,A5_4_2,A5_4_3,A5_4_4,A5_5_1,A5_5_2,A5_5_3,A5_5_4,A5_6_1,A5_6_2,A5_6_3,A5_6_4,A5_7_1,A5_7_2,A5_7_3,A5_7_4,A5_8_1,A5_8_2,A5_8_3,A5_8_4,A6_1_1,A6_1_2,A6_1_3,A6_1_4,A6_2_1,A6_2_2,A6_2_3,A6_2_4,A6_3_1,A6_3_2,A6_3_3,A6_3_4,A6_4_1,A6_4_2,A6_4_3,A6_4_4,A6_5_1,A6_5_2,A6_5_3,A6_5_4,A6_6_1,A6_6_2,A6_6_3,A6_6_4,A6_7_1,A6_7_2,A6_7_3,A6_7_4,A6_8_1,A6_8_2,A6_8_3,A6_8_4,A7_1_1,A7_1_2,A7_1_3,A7_1_4,A7_2_1,A7_2_2,A7_2_3,A7_2_4,A7_3_1,A7_3_2,A7_3_3,A7_3_4,A7_4_1,A7_4_2,A7_4_3,A7_4_4,A7_5_1,A7_5_2,A7_5_3,A7_5_4,A7_6_1,A7_6_2,A7_6_3,A7_6_4,A7_7_1,A7_7_2,A7_7_3,A7_7_4,A7_8_1,A7_8_2,A7_8_3,A7_8_4,A8_1_1,A8_1_2,A8_1_3,A8_1_4,A8_2_1,A8_2_2,A8_2_3,A8_2_4,A8_3_1,A8_3_2,A8_3_3,A8_3_4,A8_4_1,A8_4_2,A8_4_3,A8_4_4,A8_5_1,A8_5_2,A8_5_3,A8_5_4,A8_6_1,A8_6_2,A8_6_3,A8_6_4,A8_7_1,A8_7_2,A8_7_3,A8_7_4,A8_8_1,A8_8_2,A8_8_3,A8_8_4,M1_1_2,M1_1_3,M1_1_4,M1_2_1,M1_2_3,M1_2_4,M1_3_1,M1_3_2,M1_3_4,M1_4_1,M1_4_2,M1_4_3,M2_1_2,M2_1_3,M2_1_4,M2_2_1,M2_2_3,M2_2_4,M2_3_1,M2_3_2,M2_3_4,M2_4_1,M2_4_2,M2_4_3,M3_1_2,M3_1_3,M3_1_4,M3_2_1,M3_2_3,M3_2_4,M3_3_1,M3_3_2,M3_3_4,M3_4_1,M3_4_2,M3_4_3,M4_1_2,M4_1_3,M4_1_4,M4_2_1,M4_2_3,M4_2_4,M4_3_1,M4_3_2,M4_3_4,M4_4_1,M4_4_2,M4_4_3,M5_1_2,M5_1_3,M5_1_4,M5_2_1,M5_2_3,M5_2_4,M5_3_1,M5_3_2,M5_3_4,M5_4_1,M5_4_2,M5_4_3,M6_1_2,M6_1_3,M6_1_4,M6_2_1,M6_2_3,M6_2_4,M6_3_1,M6_3_2,M6_3_4,M6_4_1,M6_4_2,M6_4_3,M7_1_2,M7_1_3,M7_1_4,M7_2_1,M7_2_3,M7_2_4,M7_3_1,M7_3_2,M7_3_4,M7_4_1,M7_4_2,M7_4_3,M8_1_2,M8_1_3,M8_1_4,M8_2_1,M8_2_3,M8_2_4,M8_3_1,M8_3_2,M8_3_4,M8_4_1,M8_4_2,M8_4_3,R,S,X1_1,X1_2,X1_3,X1_4,X2_1,X2_2,X2_3,X2_4,X3_1,X3_2,X3_3,X3_4,X4_1,X4_2,X4_3,X4_4,X5_1,X5_2,X5_3,X5_4,X6_1,X6_2,X6_3,X6_4,X7_1,X7_2,X7_3,X7_4,X8_1,X8_2,X8_3,X8_4)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 22:42:22

J = reshape([-m1_1_2-m1_1_3-m1_1_4+r+a1_1_1.*x1_1.*2.0+a1_2_1.*x2_1+a1_3_1.*x3_1+a1_4_1.*x4_1+a1_5_1.*x5_1+a1_6_1.*x6_1+a1_7_1.*x7_1+a1_8_1.*x8_1-s.*x1_1.*2.0,m1_1_2,m1_1_3,m1_1_4,a2_1_1.*x2_1,0.0,0.0,0.0,a3_1_1.*x3_1,0.0,0.0,0.0,a4_1_1.*x4_1,0.0,0.0,0.0,a5_1_1.*x5_1,0.0,0.0,0.0,a6_1_1.*x6_1,0.0,0.0,0.0,a7_1_1.*x7_1,0.0,0.0,0.0,a8_1_1.*x8_1,0.0,0.0,0.0,m1_2_1,-m1_2_1-m1_2_3-m1_2_4+r+a1_1_2.*x1_2.*2.0+a1_2_2.*x2_2+a1_3_2.*x3_2+a1_4_2.*x4_2+a1_5_2.*x5_2+a1_6_2.*x6_2+a1_7_2.*x7_2+a1_8_2.*x8_2-s.*x1_2.*2.0,m1_2_3,m1_2_4,0.0,a2_1_2.*x2_2,0.0,0.0,0.0,a3_1_2.*x3_2,0.0,0.0,0.0,a4_1_2.*x4_2,0.0,0.0,0.0,a5_1_2.*x5_2,0.0,0.0,0.0,a6_1_2.*x6_2,0.0,0.0,0.0,a7_1_2.*x7_2,0.0,0.0,0.0,a8_1_2.*x8_2,0.0,0.0,m1_3_1,m1_3_2,-m1_3_1-m1_3_2-m1_3_4+r+a1_1_3.*x1_3.*2.0+a1_2_3.*x2_3+a1_3_3.*x3_3+a1_4_3.*x4_3+a1_5_3.*x5_3+a1_6_3.*x6_3+a1_7_3.*x7_3+a1_8_3.*x8_3-s.*x1_3.*2.0,m1_3_4,0.0,0.0,a2_1_3.*x2_3,0.0,0.0,0.0,a3_1_3.*x3_3,0.0,0.0,0.0,a4_1_3.*x4_3,0.0,0.0,0.0,a5_1_3.*x5_3,0.0,0.0,0.0,a6_1_3.*x6_3,0.0,0.0,0.0,a7_1_3.*x7_3,0.0,0.0,0.0,a8_1_3.*x8_3,0.0,m1_4_1,m1_4_2,m1_4_3,-m1_4_1-m1_4_2-m1_4_3+r+a1_1_4.*x1_4.*2.0+a1_2_4.*x2_4+a1_3_4.*x3_4+a1_4_4.*x4_4+a1_5_4.*x5_4+a1_6_4.*x6_4+a1_7_4.*x7_4+a1_8_4.*x8_4-s.*x1_4.*2.0,0.0,0.0,0.0,a2_1_4.*x2_4,0.0,0.0,0.0,a3_1_4.*x3_4,0.0,0.0,0.0,a4_1_4.*x4_4,0.0,0.0,0.0,a5_1_4.*x5_4,0.0,0.0,0.0,a6_1_4.*x6_4,0.0,0.0,0.0,a7_1_4.*x7_4,0.0,0.0,0.0,a8_1_4.*x8_4,a1_2_1.*x1_1,0.0,0.0,0.0,-m2_1_2-m2_1_3-m2_1_4+r+a2_1_1.*x1_1+a2_2_1.*x2_1.*2.0+a2_3_1.*x3_1+a2_4_1.*x4_1+a2_5_1.*x5_1+a2_6_1.*x6_1+a2_7_1.*x7_1+a2_8_1.*x8_1-s.*x2_1.*2.0,m2_1_2,m2_1_3,m2_1_4,a3_2_1.*x3_1,0.0,0.0,0.0,a4_2_1.*x4_1,0.0,0.0,0.0,a5_2_1.*x5_1,0.0,0.0,0.0,a6_2_1.*x6_1,0.0,0.0,0.0,a7_2_1.*x7_1,0.0,0.0,0.0,a8_2_1.*x8_1,0.0,0.0,0.0,0.0,a1_2_2.*x1_2,0.0,0.0,m2_2_1,-m2_2_1-m2_2_3-m2_2_4+r+a2_1_2.*x1_2+a2_2_2.*x2_2.*2.0+a2_3_2.*x3_2+a2_4_2.*x4_2+a2_5_2.*x5_2+a2_6_2.*x6_2+a2_7_2.*x7_2+a2_8_2.*x8_2-s.*x2_2.*2.0,m2_2_3,m2_2_4,0.0,a3_2_2.*x3_2,0.0,0.0,0.0,a4_2_2.*x4_2,0.0,0.0,0.0,a5_2_2.*x5_2,0.0,0.0,0.0,a6_2_2.*x6_2,0.0,0.0,0.0,a7_2_2.*x7_2,0.0,0.0,0.0,a8_2_2.*x8_2,0.0,0.0,0.0,0.0,a1_2_3.*x1_3,0.0,m2_3_1,m2_3_2,-m2_3_1-m2_3_2-m2_3_4+r+a2_1_3.*x1_3+a2_2_3.*x2_3.*2.0+a2_3_3.*x3_3+a2_4_3.*x4_3+a2_5_3.*x5_3+a2_6_3.*x6_3+a2_7_3.*x7_3+a2_8_3.*x8_3-s.*x2_3.*2.0,m2_3_4,0.0,0.0,a3_2_3.*x3_3,0.0,0.0,0.0,a4_2_3.*x4_3,0.0,0.0,0.0,a5_2_3.*x5_3,0.0,0.0,0.0,a6_2_3.*x6_3,0.0,0.0,0.0,a7_2_3.*x7_3,0.0,0.0,0.0,a8_2_3.*x8_3,0.0,0.0,0.0,0.0,a1_2_4.*x1_4,m2_4_1,m2_4_2,m2_4_3,-m2_4_1-m2_4_2-m2_4_3+r+a2_1_4.*x1_4+a2_2_4.*x2_4.*2.0+a2_3_4.*x3_4+a2_4_4.*x4_4+a2_5_4.*x5_4+a2_6_4.*x6_4+a2_7_4.*x7_4+a2_8_4.*x8_4-s.*x2_4.*2.0,0.0,0.0,0.0,a3_2_4.*x3_4,0.0,0.0,0.0,a4_2_4.*x4_4,0.0,0.0,0.0,a5_2_4.*x5_4,0.0,0.0,0.0,a6_2_4.*x6_4,0.0,0.0,0.0,a7_2_4.*x7_4,0.0,0.0,0.0,a8_2_4.*x8_4,a1_3_1.*x1_1,0.0,0.0,0.0,a2_3_1.*x2_1,0.0,0.0,0.0,-m3_1_2-m3_1_3-m3_1_4+r+a3_1_1.*x1_1+a3_2_1.*x2_1+a3_3_1.*x3_1.*2.0+a3_4_1.*x4_1+a3_5_1.*x5_1+a3_6_1.*x6_1+a3_7_1.*x7_1+a3_8_1.*x8_1-s.*x3_1.*2.0,m3_1_2,m3_1_3,m3_1_4,a4_3_1.*x4_1,0.0,0.0,0.0,a5_3_1.*x5_1,0.0,0.0,0.0,a6_3_1.*x6_1,0.0,0.0,0.0,a7_3_1.*x7_1,0.0,0.0,0.0,a8_3_1.*x8_1,0.0,0.0,0.0,0.0,a1_3_2.*x1_2,0.0,0.0,0.0,a2_3_2.*x2_2,0.0,0.0,m3_2_1,-m3_2_1-m3_2_3-m3_2_4+r+a3_1_2.*x1_2+a3_2_2.*x2_2+a3_3_2.*x3_2.*2.0+a3_4_2.*x4_2+a3_5_2.*x5_2+a3_6_2.*x6_2+a3_7_2.*x7_2+a3_8_2.*x8_2-s.*x3_2.*2.0,m3_2_3,m3_2_4,0.0,a4_3_2.*x4_2,0.0,0.0,0.0,a5_3_2.*x5_2,0.0,0.0,0.0,a6_3_2.*x6_2,0.0,0.0,0.0,a7_3_2.*x7_2,0.0,0.0,0.0,a8_3_2.*x8_2,0.0,0.0,0.0,0.0,a1_3_3.*x1_3,0.0,0.0,0.0,a2_3_3.*x2_3,0.0,m3_3_1,m3_3_2,-m3_3_1-m3_3_2-m3_3_4+r+a3_1_3.*x1_3+a3_2_3.*x2_3+a3_3_3.*x3_3.*2.0+a3_4_3.*x4_3+a3_5_3.*x5_3+a3_6_3.*x6_3+a3_7_3.*x7_3+a3_8_3.*x8_3-s.*x3_3.*2.0,m3_3_4,0.0,0.0,a4_3_3.*x4_3,0.0,0.0,0.0,a5_3_3.*x5_3,0.0,0.0,0.0,a6_3_3.*x6_3,0.0,0.0,0.0,a7_3_3.*x7_3,0.0,0.0,0.0,a8_3_3.*x8_3,0.0,0.0,0.0,0.0,a1_3_4.*x1_4,0.0,0.0,0.0,a2_3_4.*x2_4,m3_4_1,m3_4_2,m3_4_3,-m3_4_1-m3_4_2-m3_4_3+r+a3_1_4.*x1_4+a3_2_4.*x2_4+a3_3_4.*x3_4.*2.0+a3_4_4.*x4_4+a3_5_4.*x5_4+a3_6_4.*x6_4+a3_7_4.*x7_4+a3_8_4.*x8_4-s.*x3_4.*2.0,0.0,0.0,0.0,a4_3_4.*x4_4,0.0,0.0,0.0,a5_3_4.*x5_4,0.0,0.0,0.0,a6_3_4.*x6_4,0.0,0.0,0.0,a7_3_4.*x7_4,0.0,0.0,0.0,a8_3_4.*x8_4,a1_4_1.*x1_1,0.0,0.0,0.0,a2_4_1.*x2_1,0.0,0.0,0.0,a3_4_1.*x3_1,0.0,0.0,0.0,-m4_1_2-m4_1_3-m4_1_4+r+a4_1_1.*x1_1+a4_2_1.*x2_1+a4_3_1.*x3_1+a4_4_1.*x4_1.*2.0+a4_5_1.*x5_1+a4_6_1.*x6_1+a4_7_1.*x7_1+a4_8_1.*x8_1-s.*x4_1.*2.0,m4_1_2,m4_1_3,m4_1_4,a5_4_1.*x5_1,0.0,0.0,0.0,a6_4_1.*x6_1,0.0,0.0,0.0,a7_4_1.*x7_1,0.0,0.0,0.0,a8_4_1.*x8_1,0.0,0.0,0.0,0.0,a1_4_2.*x1_2,0.0,0.0,0.0,a2_4_2.*x2_2,0.0,0.0,0.0,a3_4_2.*x3_2,0.0,0.0,m4_2_1,-m4_2_1-m4_2_3-m4_2_4+r+a4_1_2.*x1_2+a4_2_2.*x2_2+a4_3_2.*x3_2+a4_4_2.*x4_2.*2.0+a4_5_2.*x5_2+a4_6_2.*x6_2+a4_7_2.*x7_2+a4_8_2.*x8_2-s.*x4_2.*2.0,m4_2_3,m4_2_4,0.0,a5_4_2.*x5_2,0.0,0.0,0.0,a6_4_2.*x6_2,0.0,0.0,0.0,a7_4_2.*x7_2,0.0,0.0,0.0,a8_4_2.*x8_2,0.0,0.0,0.0,0.0,a1_4_3.*x1_3,0.0,0.0,0.0,a2_4_3.*x2_3,0.0,0.0,0.0,a3_4_3.*x3_3,0.0,m4_3_1,m4_3_2,-m4_3_1-m4_3_2-m4_3_4+r+a4_1_3.*x1_3+a4_2_3.*x2_3+a4_3_3.*x3_3+a4_4_3.*x4_3.*2.0+a4_5_3.*x5_3+a4_6_3.*x6_3+a4_7_3.*x7_3+a4_8_3.*x8_3-s.*x4_3.*2.0,m4_3_4,0.0,0.0,a5_4_3.*x5_3,0.0,0.0,0.0,a6_4_3.*x6_3,0.0,0.0,0.0,a7_4_3.*x7_3,0.0,0.0,0.0,a8_4_3.*x8_3,0.0,0.0,0.0,0.0,a1_4_4.*x1_4,0.0,0.0,0.0,a2_4_4.*x2_4,0.0,0.0,0.0,a3_4_4.*x3_4,m4_4_1,m4_4_2,m4_4_3,-m4_4_1-m4_4_2-m4_4_3+r+a4_1_4.*x1_4+a4_2_4.*x2_4+a4_3_4.*x3_4+a4_4_4.*x4_4.*2.0+a4_5_4.*x5_4+a4_6_4.*x6_4+a4_7_4.*x7_4+a4_8_4.*x8_4-s.*x4_4.*2.0,0.0,0.0,0.0,a5_4_4.*x5_4,0.0,0.0,0.0,a6_4_4.*x6_4,0.0,0.0,0.0,a7_4_4.*x7_4,0.0,0.0,0.0,a8_4_4.*x8_4,a1_5_1.*x1_1,0.0,0.0,0.0,a2_5_1.*x2_1,0.0,0.0,0.0,a3_5_1.*x3_1,0.0,0.0,0.0,a4_5_1.*x4_1,0.0,0.0,0.0,-m5_1_2-m5_1_3-m5_1_4+r+a5_1_1.*x1_1+a5_2_1.*x2_1+a5_3_1.*x3_1+a5_4_1.*x4_1+a5_5_1.*x5_1.*2.0+a5_6_1.*x6_1+a5_7_1.*x7_1+a5_8_1.*x8_1-s.*x5_1.*2.0,m5_1_2,m5_1_3,m5_1_4,a6_5_1.*x6_1,0.0,0.0,0.0,a7_5_1.*x7_1,0.0,0.0,0.0,a8_5_1.*x8_1,0.0,0.0,0.0,0.0,a1_5_2.*x1_2,0.0,0.0,0.0,a2_5_2.*x2_2,0.0,0.0,0.0,a3_5_2.*x3_2,0.0,0.0,0.0,a4_5_2.*x4_2,0.0,0.0,m5_2_1,-m5_2_1-m5_2_3-m5_2_4+r+a5_1_2.*x1_2+a5_2_2.*x2_2+a5_3_2.*x3_2+a5_4_2.*x4_2+a5_5_2.*x5_2.*2.0+a5_6_2.*x6_2+a5_7_2.*x7_2+a5_8_2.*x8_2-s.*x5_2.*2.0,m5_2_3,m5_2_4,0.0,a6_5_2.*x6_2,0.0,0.0,0.0,a7_5_2.*x7_2,0.0,0.0,0.0,a8_5_2.*x8_2,0.0,0.0,0.0,0.0,a1_5_3.*x1_3,0.0,0.0,0.0,a2_5_3.*x2_3,0.0,0.0,0.0,a3_5_3.*x3_3,0.0,0.0,0.0,a4_5_3.*x4_3,0.0,m5_3_1,m5_3_2,-m5_3_1-m5_3_2-m5_3_4+r+a5_1_3.*x1_3+a5_2_3.*x2_3+a5_3_3.*x3_3+a5_4_3.*x4_3+a5_5_3.*x5_3.*2.0+a5_6_3.*x6_3+a5_7_3.*x7_3+a5_8_3.*x8_3-s.*x5_3.*2.0,m5_3_4,0.0,0.0,a6_5_3.*x6_3,0.0,0.0,0.0,a7_5_3.*x7_3,0.0,0.0,0.0,a8_5_3.*x8_3,0.0,0.0,0.0,0.0,a1_5_4.*x1_4,0.0,0.0,0.0,a2_5_4.*x2_4,0.0,0.0,0.0,a3_5_4.*x3_4,0.0,0.0,0.0,a4_5_4.*x4_4,m5_4_1,m5_4_2,m5_4_3,-m5_4_1-m5_4_2-m5_4_3+r+a5_1_4.*x1_4+a5_2_4.*x2_4+a5_3_4.*x3_4+a5_4_4.*x4_4+a5_5_4.*x5_4.*2.0+a5_6_4.*x6_4+a5_7_4.*x7_4+a5_8_4.*x8_4-s.*x5_4.*2.0,0.0,0.0,0.0,a6_5_4.*x6_4,0.0,0.0,0.0,a7_5_4.*x7_4,0.0,0.0,0.0,a8_5_4.*x8_4,a1_6_1.*x1_1,0.0,0.0,0.0,a2_6_1.*x2_1,0.0,0.0,0.0,a3_6_1.*x3_1,0.0,0.0,0.0,a4_6_1.*x4_1,0.0,0.0,0.0,a5_6_1.*x5_1,0.0,0.0,0.0,-m6_1_2-m6_1_3-m6_1_4+r+a6_1_1.*x1_1+a6_2_1.*x2_1+a6_3_1.*x3_1+a6_4_1.*x4_1+a6_5_1.*x5_1+a6_6_1.*x6_1.*2.0+a6_7_1.*x7_1+a6_8_1.*x8_1-s.*x6_1.*2.0,m6_1_2,m6_1_3,m6_1_4,a7_6_1.*x7_1,0.0,0.0,0.0,a8_6_1.*x8_1,0.0,0.0,0.0,0.0,a1_6_2.*x1_2,0.0,0.0,0.0,a2_6_2.*x2_2,0.0,0.0,0.0,a3_6_2.*x3_2,0.0,0.0,0.0,a4_6_2.*x4_2,0.0,0.0,0.0,a5_6_2.*x5_2,0.0,0.0,m6_2_1,-m6_2_1-m6_2_3-m6_2_4+r+a6_1_2.*x1_2+a6_2_2.*x2_2+a6_3_2.*x3_2+a6_4_2.*x4_2+a6_5_2.*x5_2+a6_6_2.*x6_2.*2.0+a6_7_2.*x7_2+a6_8_2.*x8_2-s.*x6_2.*2.0,m6_2_3,m6_2_4,0.0,a7_6_2.*x7_2,0.0,0.0,0.0,a8_6_2.*x8_2,0.0,0.0,0.0,0.0,a1_6_3.*x1_3,0.0,0.0,0.0,a2_6_3.*x2_3,0.0,0.0,0.0,a3_6_3.*x3_3,0.0,0.0,0.0,a4_6_3.*x4_3,0.0,0.0,0.0,a5_6_3.*x5_3,0.0,m6_3_1,m6_3_2,-m6_3_1-m6_3_2-m6_3_4+r+a6_1_3.*x1_3+a6_2_3.*x2_3+a6_3_3.*x3_3+a6_4_3.*x4_3+a6_5_3.*x5_3+a6_6_3.*x6_3.*2.0+a6_7_3.*x7_3+a6_8_3.*x8_3-s.*x6_3.*2.0,m6_3_4,0.0,0.0,a7_6_3.*x7_3,0.0,0.0,0.0,a8_6_3.*x8_3,0.0,0.0,0.0,0.0,a1_6_4.*x1_4,0.0,0.0,0.0,a2_6_4.*x2_4,0.0,0.0,0.0,a3_6_4.*x3_4,0.0,0.0,0.0,a4_6_4.*x4_4,0.0,0.0,0.0,a5_6_4.*x5_4,m6_4_1,m6_4_2,m6_4_3,-m6_4_1-m6_4_2-m6_4_3+r+a6_1_4.*x1_4+a6_2_4.*x2_4+a6_3_4.*x3_4+a6_4_4.*x4_4+a6_5_4.*x5_4+a6_6_4.*x6_4.*2.0+a6_7_4.*x7_4+a6_8_4.*x8_4-s.*x6_4.*2.0,0.0,0.0,0.0,a7_6_4.*x7_4,0.0,0.0,0.0,a8_6_4.*x8_4,a1_7_1.*x1_1,0.0,0.0,0.0,a2_7_1.*x2_1,0.0,0.0,0.0,a3_7_1.*x3_1,0.0,0.0,0.0,a4_7_1.*x4_1,0.0,0.0,0.0,a5_7_1.*x5_1,0.0,0.0,0.0,a6_7_1.*x6_1,0.0,0.0,0.0,-m7_1_2-m7_1_3-m7_1_4+r+a7_1_1.*x1_1+a7_2_1.*x2_1+a7_3_1.*x3_1+a7_4_1.*x4_1+a7_5_1.*x5_1+a7_6_1.*x6_1+a7_7_1.*x7_1.*2.0+a7_8_1.*x8_1-s.*x7_1.*2.0,m7_1_2,m7_1_3,m7_1_4,a8_7_1.*x8_1,0.0,0.0,0.0,0.0,a1_7_2.*x1_2,0.0,0.0,0.0,a2_7_2.*x2_2,0.0,0.0,0.0,a3_7_2.*x3_2,0.0,0.0,0.0,a4_7_2.*x4_2,0.0,0.0,0.0,a5_7_2.*x5_2,0.0,0.0,0.0,a6_7_2.*x6_2,0.0,0.0,m7_2_1,-m7_2_1-m7_2_3-m7_2_4+r+a7_1_2.*x1_2+a7_2_2.*x2_2+a7_3_2.*x3_2+a7_4_2.*x4_2+a7_5_2.*x5_2+a7_6_2.*x6_2+a7_7_2.*x7_2.*2.0+a7_8_2.*x8_2-s.*x7_2.*2.0,m7_2_3,m7_2_4,0.0,a8_7_2.*x8_2,0.0,0.0,0.0,0.0,a1_7_3.*x1_3,0.0,0.0,0.0,a2_7_3.*x2_3,0.0,0.0,0.0,a3_7_3.*x3_3,0.0,0.0,0.0,a4_7_3.*x4_3,0.0,0.0,0.0,a5_7_3.*x5_3,0.0,0.0,0.0,a6_7_3.*x6_3,0.0,m7_3_1,m7_3_2,-m7_3_1-m7_3_2-m7_3_4+r+a7_1_3.*x1_3+a7_2_3.*x2_3+a7_3_3.*x3_3+a7_4_3.*x4_3+a7_5_3.*x5_3+a7_6_3.*x6_3+a7_7_3.*x7_3.*2.0+a7_8_3.*x8_3-s.*x7_3.*2.0,m7_3_4,0.0,0.0,a8_7_3.*x8_3,0.0,0.0,0.0,0.0,a1_7_4.*x1_4,0.0,0.0,0.0,a2_7_4.*x2_4,0.0,0.0,0.0,a3_7_4.*x3_4,0.0,0.0,0.0,a4_7_4.*x4_4,0.0,0.0,0.0,a5_7_4.*x5_4,0.0,0.0,0.0,a6_7_4.*x6_4,m7_4_1,m7_4_2,m7_4_3,-m7_4_1-m7_4_2-m7_4_3+r+a7_1_4.*x1_4+a7_2_4.*x2_4+a7_3_4.*x3_4+a7_4_4.*x4_4+a7_5_4.*x5_4+a7_6_4.*x6_4+a7_7_4.*x7_4.*2.0+a7_8_4.*x8_4-s.*x7_4.*2.0,0.0,0.0,0.0,a8_7_4.*x8_4,a1_8_1.*x1_1,0.0,0.0,0.0,a2_8_1.*x2_1,0.0,0.0,0.0,a3_8_1.*x3_1,0.0,0.0,0.0,a4_8_1.*x4_1,0.0,0.0,0.0,a5_8_1.*x5_1,0.0,0.0,0.0,a6_8_1.*x6_1,0.0,0.0,0.0,a7_8_1.*x7_1,0.0,0.0,0.0,-m8_1_2-m8_1_3-m8_1_4+r+a8_1_1.*x1_1+a8_2_1.*x2_1+a8_3_1.*x3_1+a8_4_1.*x4_1+a8_5_1.*x5_1+a8_6_1.*x6_1+a8_7_1.*x7_1+a8_8_1.*x8_1.*2.0-s.*x8_1.*2.0,m8_1_2,m8_1_3,m8_1_4,0.0,a1_8_2.*x1_2,0.0,0.0,0.0,a2_8_2.*x2_2,0.0,0.0,0.0,a3_8_2.*x3_2,0.0,0.0,0.0,a4_8_2.*x4_2,0.0,0.0,0.0,a5_8_2.*x5_2,0.0,0.0,0.0,a6_8_2.*x6_2,0.0,0.0,0.0,a7_8_2.*x7_2,0.0,0.0,m8_2_1,-m8_2_1-m8_2_3-m8_2_4+r+a8_1_2.*x1_2+a8_2_2.*x2_2+a8_3_2.*x3_2+a8_4_2.*x4_2+a8_5_2.*x5_2+a8_6_2.*x6_2+a8_7_2.*x7_2+a8_8_2.*x8_2.*2.0-s.*x8_2.*2.0,m8_2_3,m8_2_4,0.0,0.0,a1_8_3.*x1_3,0.0,0.0,0.0,a2_8_3.*x2_3,0.0,0.0,0.0,a3_8_3.*x3_3,0.0,0.0,0.0,a4_8_3.*x4_3,0.0,0.0,0.0,a5_8_3.*x5_3,0.0,0.0,0.0,a6_8_3.*x6_3,0.0,0.0,0.0,a7_8_3.*x7_3,0.0,m8_3_1,m8_3_2,-m8_3_1-m8_3_2-m8_3_4+r+a8_1_3.*x1_3+a8_2_3.*x2_3+a8_3_3.*x3_3+a8_4_3.*x4_3+a8_5_3.*x5_3+a8_6_3.*x6_3+a8_7_3.*x7_3+a8_8_3.*x8_3.*2.0-s.*x8_3.*2.0,m8_3_4,0.0,0.0,0.0,a1_8_4.*x1_4,0.0,0.0,0.0,a2_8_4.*x2_4,0.0,0.0,0.0,a3_8_4.*x3_4,0.0,0.0,0.0,a4_8_4.*x4_4,0.0,0.0,0.0,a5_8_4.*x5_4,0.0,0.0,0.0,a6_8_4.*x6_4,0.0,0.0,0.0,a7_8_4.*x7_4,m8_4_1,m8_4_2,m8_4_3,-m8_4_1-m8_4_2-m8_4_3+r+a8_1_4.*x1_4+a8_2_4.*x2_4+a8_3_4.*x3_4+a8_4_4.*x4_4+a8_5_4.*x5_4+a8_6_4.*x6_4+a8_7_4.*x7_4+a8_8_4.*x8_4.*2.0-s.*x8_4.*2.0],[32,32]);
