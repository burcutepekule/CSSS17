function J = jacob_4_13(a1_1_1,a1_1_2,a1_1_3,a1_1_4,a1_1_5,a1_1_6,a1_1_7,a1_1_8,a1_1_9,a1_2_1,a1_2_2,a1_2_3,a1_2_4,a1_2_5,a1_2_6,a1_2_7,a1_2_8,a1_2_9,a1_3_1,a1_3_2,a1_3_3,a1_3_4,a1_3_5,a1_3_6,a1_3_7,a1_3_8,a1_3_9,a1_4_1,a1_4_2,a1_4_3,a1_4_4,a1_4_5,a1_4_6,a1_4_7,a1_4_8,a1_4_9,a2_1_1,a2_1_2,a2_1_3,a2_1_4,a2_1_5,a2_1_6,a2_1_7,a2_1_8,a2_1_9,a2_2_1,a2_2_2,a2_2_3,a2_2_4,a2_2_5,a2_2_6,a2_2_7,a2_2_8,a2_2_9,a2_3_1,a2_3_2,a2_3_3,a2_3_4,a2_3_5,a2_3_6,a2_3_7,a2_3_8,a2_3_9,a2_4_1,a2_4_2,a2_4_3,a2_4_4,a2_4_5,a2_4_6,a2_4_7,a2_4_8,a2_4_9,a3_1_1,a3_1_2,a3_1_3,a3_1_4,a3_1_5,a3_1_6,a3_1_7,a3_1_8,a3_1_9,a3_2_1,a3_2_2,a3_2_3,a3_2_4,a3_2_5,a3_2_6,a3_2_7,a3_2_8,a3_2_9,a3_3_1,a3_3_2,a3_3_3,a3_3_4,a3_3_5,a3_3_6,a3_3_7,a3_3_8,a3_3_9,a3_4_1,a3_4_2,a3_4_3,a3_4_4,a3_4_5,a3_4_6,a3_4_7,a3_4_8,a3_4_9,a4_1_1,a4_1_2,a4_1_3,a4_1_4,a4_1_5,a4_1_6,a4_1_7,a4_1_8,a4_1_9,a4_2_1,a4_2_2,a4_2_3,a4_2_4,a4_2_5,a4_2_6,a4_2_7,a4_2_8,a4_2_9,a4_3_1,a4_3_2,a4_3_3,a4_3_4,a4_3_5,a4_3_6,a4_3_7,a4_3_8,a4_3_9,a4_4_1,a4_4_2,a4_4_3,a4_4_4,a4_4_5,a4_4_6,a4_4_7,a4_4_8,a4_4_9,a1_1_10,a1_1_11,a1_1_12,a1_1_13,a1_2_10,a1_2_11,a1_2_12,a1_2_13,a1_3_10,a1_3_11,a1_3_12,a1_3_13,a1_4_10,a1_4_11,a1_4_12,a1_4_13,a2_1_10,a2_1_11,a2_1_12,a2_1_13,a2_2_10,a2_2_11,a2_2_12,a2_2_13,a2_3_10,a2_3_11,a2_3_12,a2_3_13,a2_4_10,a2_4_11,a2_4_12,a2_4_13,a3_1_10,a3_1_11,a3_1_12,a3_1_13,a3_2_10,a3_2_11,a3_2_12,a3_2_13,a3_3_10,a3_3_11,a3_3_12,a3_3_13,a3_4_10,a3_4_11,a3_4_12,a3_4_13,a4_1_10,a4_1_11,a4_1_12,a4_1_13,a4_2_10,a4_2_11,a4_2_12,a4_2_13,a4_3_10,a4_3_11,a4_3_12,a4_3_13,a4_4_10,a4_4_11,a4_4_12,a4_4_13,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,m1_1_7,m1_1_8,m1_1_9,m1_2_1,m1_2_3,m1_2_4,m1_2_5,m1_2_6,m1_2_7,m1_2_8,m1_2_9,m1_3_1,m1_3_2,m1_3_4,m1_3_5,m1_3_6,m1_3_7,m1_3_8,m1_3_9,m1_4_1,m1_4_2,m1_4_3,m1_4_5,m1_4_6,m1_4_7,m1_4_8,m1_4_9,m1_5_1,m1_5_2,m1_5_3,m1_5_4,m1_5_6,m1_5_7,m1_5_8,m1_5_9,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,m1_6_7,m1_6_8,m1_6_9,m1_7_1,m1_7_2,m1_7_3,m1_7_4,m1_7_5,m1_7_6,m1_7_8,m1_7_9,m1_8_1,m1_8_2,m1_8_3,m1_8_4,m1_8_5,m1_8_6,m1_8_7,m1_8_9,m1_9_1,m1_9_2,m1_9_3,m1_9_4,m1_9_5,m1_9_6,m1_9_7,m1_9_8,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,m2_1_7,m2_1_8,m2_1_9,m2_2_1,m2_2_3,m2_2_4,m2_2_5,m2_2_6,m2_2_7,m2_2_8,m2_2_9,m2_3_1,m2_3_2,m2_3_4,m2_3_5,m2_3_6,m2_3_7,m2_3_8,m2_3_9,m2_4_1,m2_4_2,m2_4_3,m2_4_5,m2_4_6,m2_4_7,m2_4_8,m2_4_9,m2_5_1,m2_5_2,m2_5_3,m2_5_4,m2_5_6,m2_5_7,m2_5_8,m2_5_9,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,m2_6_7,m2_6_8,m2_6_9,m2_7_1,m2_7_2,m2_7_3,m2_7_4,m2_7_5,m2_7_6,m2_7_8,m2_7_9,m2_8_1,m2_8_2,m2_8_3,m2_8_4,m2_8_5,m2_8_6,m2_8_7,m2_8_9,m2_9_1,m2_9_2,m2_9_3,m2_9_4,m2_9_5,m2_9_6,m2_9_7,m2_9_8,m3_1_2,m3_1_3,m3_1_4,m3_1_5,m3_1_6,m3_1_7,m3_1_8,m3_1_9,m3_2_1,m3_2_3,m3_2_4,m3_2_5,m3_2_6,m3_2_7,m3_2_8,m3_2_9,m3_3_1,m3_3_2,m3_3_4,m3_3_5,m3_3_6,m3_3_7,m3_3_8,m3_3_9,m3_4_1,m3_4_2,m3_4_3,m3_4_5,m3_4_6,m3_4_7,m3_4_8,m3_4_9,m3_5_1,m3_5_2,m3_5_3,m3_5_4,m3_5_6,m3_5_7,m3_5_8,m3_5_9,m3_6_1,m3_6_2,m3_6_3,m3_6_4,m3_6_5,m3_6_7,m3_6_8,m3_6_9,m3_7_1,m3_7_2,m3_7_3,m3_7_4,m3_7_5,m3_7_6,m3_7_8,m3_7_9,m3_8_1,m3_8_2,m3_8_3,m3_8_4,m3_8_5,m3_8_6,m3_8_7,m3_8_9,m3_9_1,m3_9_2,m3_9_3,m3_9_4,m3_9_5,m3_9_6,m3_9_7,m3_9_8,m4_1_2,m4_1_3,m4_1_4,m4_1_5,m4_1_6,m4_1_7,m4_1_8,m4_1_9,m4_2_1,m4_2_3,m4_2_4,m4_2_5,m4_2_6,m4_2_7,m4_2_8,m4_2_9,m4_3_1,m4_3_2,m4_3_4,m4_3_5,m4_3_6,m4_3_7,m4_3_8,m4_3_9,m4_4_1,m4_4_2,m4_4_3,m4_4_5,m4_4_6,m4_4_7,m4_4_8,m4_4_9,m4_5_1,m4_5_2,m4_5_3,m4_5_4,m4_5_6,m4_5_7,m4_5_8,m4_5_9,m4_6_1,m4_6_2,m4_6_3,m4_6_4,m4_6_5,m4_6_7,m4_6_8,m4_6_9,m4_7_1,m4_7_2,m4_7_3,m4_7_4,m4_7_5,m4_7_6,m4_7_8,m4_7_9,m4_8_1,m4_8_2,m4_8_3,m4_8_4,m4_8_5,m4_8_6,m4_8_7,m4_8_9,m4_9_1,m4_9_2,m4_9_3,m4_9_4,m4_9_5,m4_9_6,m4_9_7,m4_9_8,m1_10_1,m1_10_2,m1_10_3,m1_10_4,m1_10_5,m1_10_6,m1_10_7,m1_10_8,m1_10_9,m1_1_10,m1_11_1,m1_1_11,m1_11_2,m1_1_12,m1_11_3,m1_1_13,m1_11_4,m1_11_5,m1_11_6,m1_11_7,m1_11_8,m1_11_9,m1_12_1,m1_12_2,m1_12_3,m1_12_4,m1_12_5,m1_12_6,m1_12_7,m1_12_8,m1_12_9,m1_13_1,m1_13_2,m1_13_3,m1_13_4,m1_13_5,m1_13_6,m1_13_7,m1_13_8,m1_13_9,m1_2_10,m1_2_11,m1_2_12,m1_2_13,m1_3_10,m1_3_11,m1_3_12,m1_3_13,m1_4_10,m1_4_11,m1_4_12,m1_4_13,m1_5_10,m1_5_11,m1_5_12,m1_5_13,m1_6_10,m1_6_11,m1_6_12,m1_6_13,m1_7_10,m1_7_11,m1_7_12,m1_7_13,m1_8_10,m1_8_11,m1_8_12,m1_8_13,m1_9_10,m1_9_11,m1_9_12,m1_9_13,m2_10_1,m2_10_2,m2_10_3,m2_10_4,m2_10_5,m2_10_6,m2_10_7,m2_10_8,m2_10_9,m2_1_10,m2_11_1,m2_1_11,m2_11_2,m2_1_12,m2_11_3,m2_1_13,m2_11_4,m2_11_5,m2_11_6,m2_11_7,m2_11_8,m2_11_9,m2_12_1,m2_12_2,m2_12_3,m2_12_4,m2_12_5,m2_12_6,m2_12_7,m2_12_8,m2_12_9,m2_13_1,m2_13_2,m2_13_3,m2_13_4,m2_13_5,m2_13_6,m2_13_7,m2_13_8,m2_13_9,m2_2_10,m2_2_11,m2_2_12,m2_2_13,m2_3_10,m2_3_11,m2_3_12,m2_3_13,m2_4_10,m2_4_11,m2_4_12,m2_4_13,m2_5_10,m2_5_11,m2_5_12,m2_5_13,m2_6_10,m2_6_11,m2_6_12,m2_6_13,m2_7_10,m2_7_11,m2_7_12,m2_7_13,m2_8_10,m2_8_11,m2_8_12,m2_8_13,m2_9_10,m2_9_11,m2_9_12,m2_9_13,m3_10_1,m3_10_2,m3_10_3,m3_10_4,m3_10_5,m3_10_6,m3_10_7,m3_10_8,m3_10_9,m3_1_10,m3_11_1,m3_1_11,m3_11_2,m3_1_12,m3_11_3,m3_1_13,m3_11_4,m3_11_5,m3_11_6,m3_11_7,m3_11_8,m3_11_9,m3_12_1,m3_12_2,m3_12_3,m3_12_4,m3_12_5,m3_12_6,m3_12_7,m3_12_8,m3_12_9,m3_13_1,m3_13_2,m3_13_3,m3_13_4,m3_13_5,m3_13_6,m3_13_7,m3_13_8,m3_13_9,m3_2_10,m3_2_11,m3_2_12,m3_2_13,m3_3_10,m3_3_11,m3_3_12,m3_3_13,m3_4_10,m3_4_11,m3_4_12,m3_4_13,m3_5_10,m3_5_11,m3_5_12,m3_5_13,m3_6_10,m3_6_11,m3_6_12,m3_6_13,m3_7_10,m3_7_11,m3_7_12,m3_7_13,m3_8_10,m3_8_11,m3_8_12,m3_8_13,m3_9_10,m3_9_11,m3_9_12,m3_9_13,m4_10_1,m4_10_2,m4_10_3,m4_10_4,m4_10_5,m4_10_6,m4_10_7,m4_10_8,m4_10_9,m4_1_10,m4_11_1,m4_1_11,m4_11_2,m4_1_12,m4_11_3,m4_1_13,m4_11_4,m4_11_5,m4_11_6,m4_11_7,m4_11_8,m4_11_9,m4_12_1,m4_12_2,m4_12_3,m4_12_4,m4_12_5,m4_12_6,m4_12_7,m4_12_8,m4_12_9,m4_13_1,m4_13_2,m4_13_3,m4_13_4,m4_13_5,m4_13_6,m4_13_7,m4_13_8,m4_13_9,m4_2_10,m4_2_11,m4_2_12,m4_2_13,m4_3_10,m4_3_11,m4_3_12,m4_3_13,m4_4_10,m4_4_11,m4_4_12,m4_4_13,m4_5_10,m4_5_11,m4_5_12,m4_5_13,m4_6_10,m4_6_11,m4_6_12,m4_6_13,m4_7_10,m4_7_11,m4_7_12,m4_7_13,m4_8_10,m4_8_11,m4_8_12,m4_8_13,m4_9_10,m4_9_11,m4_9_12,m4_9_13,m1_10_11,m1_10_12,m1_10_13,m1_11_10,m1_11_12,m1_11_13,m1_12_10,m1_12_11,m1_12_13,m1_13_10,m1_13_11,m1_13_12,m2_10_11,m2_10_12,m2_10_13,m2_11_10,m2_11_12,m2_11_13,m2_12_10,m2_12_11,m2_12_13,m2_13_10,m2_13_11,m2_13_12,m3_10_11,m3_10_12,m3_10_13,m3_11_10,m3_11_12,m3_11_13,m3_12_10,m3_12_11,m3_12_13,m3_13_10,m3_13_11,m3_13_12,m4_10_11,m4_10_12,m4_10_13,m4_11_10,m4_11_12,m4_11_13,m4_12_10,m4_12_11,m4_12_13,m4_13_10,m4_13_11,m4_13_12,r,s,x1_1,x1_2,x1_3,x1_4,x1_5,x1_6,x1_7,x1_8,x1_9,x2_1,x2_2,x2_3,x2_4,x2_5,x2_6,x2_7,x2_8,x2_9,x3_1,x3_2,x3_3,x3_4,x3_5,x3_6,x3_7,x3_8,x3_9,x4_1,x4_2,x4_3,x4_4,x4_5,x4_6,x4_7,x4_8,x4_9,x1_10,x1_11,x1_12,x1_13,x2_10,x2_11,x2_12,x2_13,x3_10,x3_11,x3_12,x3_13,x4_10,x4_11,x4_12,x4_13)
%JACOB_4_13
%    J = JACOB_4_13(A1_1_1,A1_1_2,A1_1_3,A1_1_4,A1_1_5,A1_1_6,A1_1_7,A1_1_8,A1_1_9,A1_2_1,A1_2_2,A1_2_3,A1_2_4,A1_2_5,A1_2_6,A1_2_7,A1_2_8,A1_2_9,A1_3_1,A1_3_2,A1_3_3,A1_3_4,A1_3_5,A1_3_6,A1_3_7,A1_3_8,A1_3_9,A1_4_1,A1_4_2,A1_4_3,A1_4_4,A1_4_5,A1_4_6,A1_4_7,A1_4_8,A1_4_9,A2_1_1,A2_1_2,A2_1_3,A2_1_4,A2_1_5,A2_1_6,A2_1_7,A2_1_8,A2_1_9,A2_2_1,A2_2_2,A2_2_3,A2_2_4,A2_2_5,A2_2_6,A2_2_7,A2_2_8,A2_2_9,A2_3_1,A2_3_2,A2_3_3,A2_3_4,A2_3_5,A2_3_6,A2_3_7,A2_3_8,A2_3_9,A2_4_1,A2_4_2,A2_4_3,A2_4_4,A2_4_5,A2_4_6,A2_4_7,A2_4_8,A2_4_9,A3_1_1,A3_1_2,A3_1_3,A3_1_4,A3_1_5,A3_1_6,A3_1_7,A3_1_8,A3_1_9,A3_2_1,A3_2_2,A3_2_3,A3_2_4,A3_2_5,A3_2_6,A3_2_7,A3_2_8,A3_2_9,A3_3_1,A3_3_2,A3_3_3,A3_3_4,A3_3_5,A3_3_6,A3_3_7,A3_3_8,A3_3_9,A3_4_1,A3_4_2,A3_4_3,A3_4_4,A3_4_5,A3_4_6,A3_4_7,A3_4_8,A3_4_9,A4_1_1,A4_1_2,A4_1_3,A4_1_4,A4_1_5,A4_1_6,A4_1_7,A4_1_8,A4_1_9,A4_2_1,A4_2_2,A4_2_3,A4_2_4,A4_2_5,A4_2_6,A4_2_7,A4_2_8,A4_2_9,A4_3_1,A4_3_2,A4_3_3,A4_3_4,A4_3_5,A4_3_6,A4_3_7,A4_3_8,A4_3_9,A4_4_1,A4_4_2,A4_4_3,A4_4_4,A4_4_5,A4_4_6,A4_4_7,A4_4_8,A4_4_9,A1_1_10,A1_1_11,A1_1_12,A1_1_13,A1_2_10,A1_2_11,A1_2_12,A1_2_13,A1_3_10,A1_3_11,A1_3_12,A1_3_13,A1_4_10,A1_4_11,A1_4_12,A1_4_13,A2_1_10,A2_1_11,A2_1_12,A2_1_13,A2_2_10,A2_2_11,A2_2_12,A2_2_13,A2_3_10,A2_3_11,A2_3_12,A2_3_13,A2_4_10,A2_4_11,A2_4_12,A2_4_13,A3_1_10,A3_1_11,A3_1_12,A3_1_13,A3_2_10,A3_2_11,A3_2_12,A3_2_13,A3_3_10,A3_3_11,A3_3_12,A3_3_13,A3_4_10,A3_4_11,A3_4_12,A3_4_13,A4_1_10,A4_1_11,A4_1_12,A4_1_13,A4_2_10,A4_2_11,A4_2_12,A4_2_13,A4_3_10,A4_3_11,A4_3_12,A4_3_13,A4_4_10,A4_4_11,A4_4_12,A4_4_13,M1_1_2,M1_1_3,M1_1_4,M1_1_5,M1_1_6,M1_1_7,M1_1_8,M1_1_9,M1_2_1,M1_2_3,M1_2_4,M1_2_5,M1_2_6,M1_2_7,M1_2_8,M1_2_9,M1_3_1,M1_3_2,M1_3_4,M1_3_5,M1_3_6,M1_3_7,M1_3_8,M1_3_9,M1_4_1,M1_4_2,M1_4_3,M1_4_5,M1_4_6,M1_4_7,M1_4_8,M1_4_9,M1_5_1,M1_5_2,M1_5_3,M1_5_4,M1_5_6,M1_5_7,M1_5_8,M1_5_9,M1_6_1,M1_6_2,M1_6_3,M1_6_4,M1_6_5,M1_6_7,M1_6_8,M1_6_9,M1_7_1,M1_7_2,M1_7_3,M1_7_4,M1_7_5,M1_7_6,M1_7_8,M1_7_9,M1_8_1,M1_8_2,M1_8_3,M1_8_4,M1_8_5,M1_8_6,M1_8_7,M1_8_9,M1_9_1,M1_9_2,M1_9_3,M1_9_4,M1_9_5,M1_9_6,M1_9_7,M1_9_8,M2_1_2,M2_1_3,M2_1_4,M2_1_5,M2_1_6,M2_1_7,M2_1_8,M2_1_9,M2_2_1,M2_2_3,M2_2_4,M2_2_5,M2_2_6,M2_2_7,M2_2_8,M2_2_9,M2_3_1,M2_3_2,M2_3_4,M2_3_5,M2_3_6,M2_3_7,M2_3_8,M2_3_9,M2_4_1,M2_4_2,M2_4_3,M2_4_5,M2_4_6,M2_4_7,M2_4_8,M2_4_9,M2_5_1,M2_5_2,M2_5_3,M2_5_4,M2_5_6,M2_5_7,M2_5_8,M2_5_9,M2_6_1,M2_6_2,M2_6_3,M2_6_4,M2_6_5,M2_6_7,M2_6_8,M2_6_9,M2_7_1,M2_7_2,M2_7_3,M2_7_4,M2_7_5,M2_7_6,M2_7_8,M2_7_9,M2_8_1,M2_8_2,M2_8_3,M2_8_4,M2_8_5,M2_8_6,M2_8_7,M2_8_9,M2_9_1,M2_9_2,M2_9_3,M2_9_4,M2_9_5,M2_9_6,M2_9_7,M2_9_8,M3_1_2,M3_1_3,M3_1_4,M3_1_5,M3_1_6,M3_1_7,M3_1_8,M3_1_9,M3_2_1,M3_2_3,M3_2_4,M3_2_5,M3_2_6,M3_2_7,M3_2_8,M3_2_9,M3_3_1,M3_3_2,M3_3_4,M3_3_5,M3_3_6,M3_3_7,M3_3_8,M3_3_9,M3_4_1,M3_4_2,M3_4_3,M3_4_5,M3_4_6,M3_4_7,M3_4_8,M3_4_9,M3_5_1,M3_5_2,M3_5_3,M3_5_4,M3_5_6,M3_5_7,M3_5_8,M3_5_9,M3_6_1,M3_6_2,M3_6_3,M3_6_4,M3_6_5,M3_6_7,M3_6_8,M3_6_9,M3_7_1,M3_7_2,M3_7_3,M3_7_4,M3_7_5,M3_7_6,M3_7_8,M3_7_9,M3_8_1,M3_8_2,M3_8_3,M3_8_4,M3_8_5,M3_8_6,M3_8_7,M3_8_9,M3_9_1,M3_9_2,M3_9_3,M3_9_4,M3_9_5,M3_9_6,M3_9_7,M3_9_8,M4_1_2,M4_1_3,M4_1_4,M4_1_5,M4_1_6,M4_1_7,M4_1_8,M4_1_9,M4_2_1,M4_2_3,M4_2_4,M4_2_5,M4_2_6,M4_2_7,M4_2_8,M4_2_9,M4_3_1,M4_3_2,M4_3_4,M4_3_5,M4_3_6,M4_3_7,M4_3_8,M4_3_9,M4_4_1,M4_4_2,M4_4_3,M4_4_5,M4_4_6,M4_4_7,M4_4_8,M4_4_9,M4_5_1,M4_5_2,M4_5_3,M4_5_4,M4_5_6,M4_5_7,M4_5_8,M4_5_9,M4_6_1,M4_6_2,M4_6_3,M4_6_4,M4_6_5,M4_6_7,M4_6_8,M4_6_9,M4_7_1,M4_7_2,M4_7_3,M4_7_4,M4_7_5,M4_7_6,M4_7_8,M4_7_9,M4_8_1,M4_8_2,M4_8_3,M4_8_4,M4_8_5,M4_8_6,M4_8_7,M4_8_9,M4_9_1,M4_9_2,M4_9_3,M4_9_4,M4_9_5,M4_9_6,M4_9_7,M4_9_8,M1_10_1,M1_10_2,M1_10_3,M1_10_4,M1_10_5,M1_10_6,M1_10_7,M1_10_8,M1_10_9,M1_1_10,M1_11_1,M1_1_11,M1_11_2,M1_1_12,M1_11_3,M1_1_13,M1_11_4,M1_11_5,M1_11_6,M1_11_7,M1_11_8,M1_11_9,M1_12_1,M1_12_2,M1_12_3,M1_12_4,M1_12_5,M1_12_6,M1_12_7,M1_12_8,M1_12_9,M1_13_1,M1_13_2,M1_13_3,M1_13_4,M1_13_5,M1_13_6,M1_13_7,M1_13_8,M1_13_9,M1_2_10,M1_2_11,M1_2_12,M1_2_13,M1_3_10,M1_3_11,M1_3_12,M1_3_13,M1_4_10,M1_4_11,M1_4_12,M1_4_13,M1_5_10,M1_5_11,M1_5_12,M1_5_13,M1_6_10,M1_6_11,M1_6_12,M1_6_13,M1_7_10,M1_7_11,M1_7_12,M1_7_13,M1_8_10,M1_8_11,M1_8_12,M1_8_13,M1_9_10,M1_9_11,M1_9_12,M1_9_13,M2_10_1,M2_10_2,M2_10_3,M2_10_4,M2_10_5,M2_10_6,M2_10_7,M2_10_8,M2_10_9,M2_1_10,M2_11_1,M2_1_11,M2_11_2,M2_1_12,M2_11_3,M2_1_13,M2_11_4,M2_11_5,M2_11_6,M2_11_7,M2_11_8,M2_11_9,M2_12_1,M2_12_2,M2_12_3,M2_12_4,M2_12_5,M2_12_6,M2_12_7,M2_12_8,M2_12_9,M2_13_1,M2_13_2,M2_13_3,M2_13_4,M2_13_5,M2_13_6,M2_13_7,M2_13_8,M2_13_9,M2_2_10,M2_2_11,M2_2_12,M2_2_13,M2_3_10,M2_3_11,M2_3_12,M2_3_13,M2_4_10,M2_4_11,M2_4_12,M2_4_13,M2_5_10,M2_5_11,M2_5_12,M2_5_13,M2_6_10,M2_6_11,M2_6_12,M2_6_13,M2_7_10,M2_7_11,M2_7_12,M2_7_13,M2_8_10,M2_8_11,M2_8_12,M2_8_13,M2_9_10,M2_9_11,M2_9_12,M2_9_13,M3_10_1,M3_10_2,M3_10_3,M3_10_4,M3_10_5,M3_10_6,M3_10_7,M3_10_8,M3_10_9,M3_1_10,M3_11_1,M3_1_11,M3_11_2,M3_1_12,M3_11_3,M3_1_13,M3_11_4,M3_11_5,M3_11_6,M3_11_7,M3_11_8,M3_11_9,M3_12_1,M3_12_2,M3_12_3,M3_12_4,M3_12_5,M3_12_6,M3_12_7,M3_12_8,M3_12_9,M3_13_1,M3_13_2,M3_13_3,M3_13_4,M3_13_5,M3_13_6,M3_13_7,M3_13_8,M3_13_9,M3_2_10,M3_2_11,M3_2_12,M3_2_13,M3_3_10,M3_3_11,M3_3_12,M3_3_13,M3_4_10,M3_4_11,M3_4_12,M3_4_13,M3_5_10,M3_5_11,M3_5_12,M3_5_13,M3_6_10,M3_6_11,M3_6_12,M3_6_13,M3_7_10,M3_7_11,M3_7_12,M3_7_13,M3_8_10,M3_8_11,M3_8_12,M3_8_13,M3_9_10,M3_9_11,M3_9_12,M3_9_13,M4_10_1,M4_10_2,M4_10_3,M4_10_4,M4_10_5,M4_10_6,M4_10_7,M4_10_8,M4_10_9,M4_1_10,M4_11_1,M4_1_11,M4_11_2,M4_1_12,M4_11_3,M4_1_13,M4_11_4,M4_11_5,M4_11_6,M4_11_7,M4_11_8,M4_11_9,M4_12_1,M4_12_2,M4_12_3,M4_12_4,M4_12_5,M4_12_6,M4_12_7,M4_12_8,M4_12_9,M4_13_1,M4_13_2,M4_13_3,M4_13_4,M4_13_5,M4_13_6,M4_13_7,M4_13_8,M4_13_9,M4_2_10,M4_2_11,M4_2_12,M4_2_13,M4_3_10,M4_3_11,M4_3_12,M4_3_13,M4_4_10,M4_4_11,M4_4_12,M4_4_13,M4_5_10,M4_5_11,M4_5_12,M4_5_13,M4_6_10,M4_6_11,M4_6_12,M4_6_13,M4_7_10,M4_7_11,M4_7_12,M4_7_13,M4_8_10,M4_8_11,M4_8_12,M4_8_13,M4_9_10,M4_9_11,M4_9_12,M4_9_13,M1_10_11,M1_10_12,M1_10_13,M1_11_10,M1_11_12,M1_11_13,M1_12_10,M1_12_11,M1_12_13,M1_13_10,M1_13_11,M1_13_12,M2_10_11,M2_10_12,M2_10_13,M2_11_10,M2_11_12,M2_11_13,M2_12_10,M2_12_11,M2_12_13,M2_13_10,M2_13_11,M2_13_12,M3_10_11,M3_10_12,M3_10_13,M3_11_10,M3_11_12,M3_11_13,M3_12_10,M3_12_11,M3_12_13,M3_13_10,M3_13_11,M3_13_12,M4_10_11,M4_10_12,M4_10_13,M4_11_10,M4_11_12,M4_11_13,M4_12_10,M4_12_11,M4_12_13,M4_13_10,M4_13_11,M4_13_12,R,S,X1_1,X1_2,X1_3,X1_4,X1_5,X1_6,X1_7,X1_8,X1_9,X2_1,X2_2,X2_3,X2_4,X2_5,X2_6,X2_7,X2_8,X2_9,X3_1,X3_2,X3_3,X3_4,X3_5,X3_6,X3_7,X3_8,X3_9,X4_1,X4_2,X4_3,X4_4,X4_5,X4_6,X4_7,X4_8,X4_9,X1_10,X1_11,X1_12,X1_13,X2_10,X2_11,X2_12,X2_13,X3_10,X3_11,X3_12,X3_13,X4_10,X4_11,X4_12,X4_13)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 22:22:39

J = reshape([-m1_1_2-m1_1_3-m1_1_4-m1_1_5-m1_1_6-m1_1_7-m1_1_8-m1_1_9-m1_1_10-m1_1_11-m1_1_12-m1_1_13+r+a1_1_1.*x1_1.*2.0+a1_2_1.*x2_1+a1_3_1.*x3_1+a1_4_1.*x4_1-s.*x1_1.*2.0,m1_1_2,m1_1_3,m1_1_4,m1_1_5,m1_1_6,m1_1_7,m1_1_8,m1_1_9,m1_1_10,m1_1_11,m1_1_12,m1_1_13,a2_1_1.*x2_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_1.*x3_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_1.*x4_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_2_1,-m1_2_1-m1_2_3-m1_2_4-m1_2_5-m1_2_6-m1_2_7-m1_2_8-m1_2_9-m1_2_10-m1_2_11-m1_2_12-m1_2_13+r+a1_1_2.*x1_2.*2.0+a1_2_2.*x2_2+a1_3_2.*x3_2+a1_4_2.*x4_2-s.*x1_2.*2.0,m1_2_3,m1_2_4,m1_2_5,m1_2_6,m1_2_7,m1_2_8,m1_2_9,m1_2_10,m1_2_11,m1_2_12,m1_2_13,0.0,a2_1_2.*x2_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_2.*x3_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_2.*x4_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_3_1,m1_3_2,-m1_3_1-m1_3_2-m1_3_4-m1_3_5-m1_3_6-m1_3_7-m1_3_8-m1_3_9-m1_3_10-m1_3_11-m1_3_12-m1_3_13+r+a1_1_3.*x1_3.*2.0+a1_2_3.*x2_3+a1_3_3.*x3_3+a1_4_3.*x4_3-s.*x1_3.*2.0,m1_3_4,m1_3_5,m1_3_6,m1_3_7,m1_3_8,m1_3_9,m1_3_10,m1_3_11,m1_3_12,m1_3_13,0.0,0.0,a2_1_3.*x2_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_3.*x3_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_3.*x4_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_4_1,m1_4_2,m1_4_3,-m1_4_1-m1_4_2-m1_4_3-m1_4_5-m1_4_6-m1_4_7-m1_4_8-m1_4_9-m1_4_10-m1_4_11-m1_4_12-m1_4_13+r+a1_1_4.*x1_4.*2.0+a1_2_4.*x2_4+a1_3_4.*x3_4+a1_4_4.*x4_4-s.*x1_4.*2.0,m1_4_5,m1_4_6,m1_4_7,m1_4_8,m1_4_9,m1_4_10,m1_4_11,m1_4_12,m1_4_13,0.0,0.0,0.0,a2_1_4.*x2_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_4.*x3_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_4.*x4_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_5_1,m1_5_2,m1_5_3,m1_5_4,-m1_5_1-m1_5_2-m1_5_3-m1_5_4-m1_5_6-m1_5_7-m1_5_8-m1_5_9-m1_5_10-m1_5_11-m1_5_12-m1_5_13+r+a1_1_5.*x1_5.*2.0+a1_2_5.*x2_5+a1_3_5.*x3_5+a1_4_5.*x4_5-s.*x1_5.*2.0,m1_5_6,m1_5_7,m1_5_8,m1_5_9,m1_5_10,m1_5_11,m1_5_12,m1_5_13,0.0,0.0,0.0,0.0,a2_1_5.*x2_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_5.*x3_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_5.*x4_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_6_1,m1_6_2,m1_6_3,m1_6_4,m1_6_5,-m1_6_1-m1_6_2-m1_6_3-m1_6_4-m1_6_5-m1_6_7-m1_6_8-m1_6_9-m1_6_10-m1_6_11-m1_6_12-m1_6_13+r+a1_1_6.*x1_6.*2.0+a1_2_6.*x2_6+a1_3_6.*x3_6+a1_4_6.*x4_6-s.*x1_6.*2.0,m1_6_7,m1_6_8,m1_6_9,m1_6_10,m1_6_11,m1_6_12,m1_6_13,0.0,0.0,0.0,0.0,0.0,a2_1_6.*x2_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_6.*x3_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_6.*x4_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m1_7_1,m1_7_2,m1_7_3,m1_7_4,m1_7_5,m1_7_6,-m1_7_1-m1_7_2-m1_7_3-m1_7_4-m1_7_5-m1_7_6-m1_7_8-m1_7_9-m1_7_10-m1_7_11-m1_7_12-m1_7_13+r+a1_1_7.*x1_7.*2.0+a1_2_7.*x2_7+a1_3_7.*x3_7+a1_4_7.*x4_7-s.*x1_7.*2.0,m1_7_8,m1_7_9,m1_7_10,m1_7_11,m1_7_12,m1_7_13,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_7.*x2_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_7.*x3_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_7.*x4_7,0.0,0.0,0.0,0.0,0.0,0.0,m1_8_1,m1_8_2,m1_8_3,m1_8_4,m1_8_5,m1_8_6,m1_8_7,-m1_8_1-m1_8_2-m1_8_3-m1_8_4-m1_8_5-m1_8_6-m1_8_7-m1_8_9-m1_8_10-m1_8_11-m1_8_12-m1_8_13+r+a1_1_8.*x1_8.*2.0+a1_2_8.*x2_8+a1_3_8.*x3_8+a1_4_8.*x4_8-s.*x1_8.*2.0,m1_8_9,m1_8_10,m1_8_11,m1_8_12,m1_8_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_8.*x2_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_8.*x3_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_8.*x4_8,0.0,0.0,0.0,0.0,0.0,m1_9_1,m1_9_2,m1_9_3,m1_9_4,m1_9_5,m1_9_6,m1_9_7,m1_9_8,-m1_9_1-m1_9_2-m1_9_3-m1_9_4-m1_9_5-m1_9_6-m1_9_7-m1_9_8-m1_9_10-m1_9_11-m1_9_12-m1_9_13+r+a1_1_9.*x1_9.*2.0+a1_2_9.*x2_9+a1_3_9.*x3_9+a1_4_9.*x4_9-s.*x1_9.*2.0,m1_9_10,m1_9_11,m1_9_12,m1_9_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_9.*x2_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_9.*x3_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_9.*x4_9,0.0,0.0,0.0,0.0,m1_10_1,m1_10_2,m1_10_3,m1_10_4,m1_10_5,m1_10_6,m1_10_7,m1_10_8,m1_10_9,-m1_10_1-m1_10_2-m1_10_3-m1_10_4-m1_10_5-m1_10_6-m1_10_7-m1_10_8-m1_10_9-m1_10_11-m1_10_12-m1_10_13+r+a1_1_10.*x1_10.*2.0+a1_2_10.*x2_10+a1_3_10.*x3_10+a1_4_10.*x4_10-s.*x1_10.*2.0,m1_10_11,m1_10_12,m1_10_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_10.*x2_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_10.*x3_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_10.*x4_10,0.0,0.0,0.0,m1_11_1,m1_11_2,m1_11_3,m1_11_4,m1_11_5,m1_11_6,m1_11_7,m1_11_8,m1_11_9,m1_11_10,-m1_11_1-m1_11_2-m1_11_3-m1_11_4-m1_11_5-m1_11_6-m1_11_7-m1_11_8-m1_11_9-m1_11_10-m1_11_12-m1_11_13+r+a1_1_11.*x1_11.*2.0+a1_2_11.*x2_11+a1_3_11.*x3_11+a1_4_11.*x4_11-s.*x1_11.*2.0,m1_11_12,m1_11_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_11.*x2_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_11.*x3_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_11.*x4_11,0.0,0.0,m1_12_1,m1_12_2,m1_12_3,m1_12_4,m1_12_5,m1_12_6,m1_12_7,m1_12_8,m1_12_9,m1_12_10,m1_12_11,-m1_12_1-m1_12_2-m1_12_3-m1_12_4-m1_12_5-m1_12_6-m1_12_7-m1_12_8-m1_12_9-m1_12_10-m1_12_11-m1_12_13+r+a1_1_12.*x1_12.*2.0+a1_2_12.*x2_12+a1_3_12.*x3_12+a1_4_12.*x4_12-s.*x1_12.*2.0,m1_12_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_12.*x2_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_12.*x3_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_12.*x4_12,0.0,m1_13_1,m1_13_2,m1_13_3,m1_13_4,m1_13_5,m1_13_6,m1_13_7,m1_13_8,m1_13_9,m1_13_10,m1_13_11,m1_13_12,-m1_13_1-m1_13_2-m1_13_3-m1_13_4-m1_13_5-m1_13_6-m1_13_7-m1_13_8-m1_13_9-m1_13_10-m1_13_11-m1_13_12+r+a1_1_13.*x1_13.*2.0+a1_2_13.*x2_13+a1_3_13.*x3_13+a1_4_13.*x4_13-s.*x1_13.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_1_13.*x2_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_1_13.*x3_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_1_13.*x4_13,a1_2_1.*x1_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-m2_1_2-m2_1_3-m2_1_4-m2_1_5-m2_1_6-m2_1_7-m2_1_8-m2_1_9-m2_1_10-m2_1_11-m2_1_12-m2_1_13+r+a2_1_1.*x1_1+a2_2_1.*x2_1.*2.0+a2_3_1.*x3_1+a2_4_1.*x4_1-s.*x2_1.*2.0,m2_1_2,m2_1_3,m2_1_4,m2_1_5,m2_1_6,m2_1_7,m2_1_8,m2_1_9,m2_1_10,m2_1_11,m2_1_12,m2_1_13,a3_2_1.*x3_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_1.*x4_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_2.*x1_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m2_2_1,-m2_2_1-m2_2_3-m2_2_4-m2_2_5-m2_2_6-m2_2_7-m2_2_8-m2_2_9-m2_2_10-m2_2_11-m2_2_12-m2_2_13+r+a2_1_2.*x1_2+a2_2_2.*x2_2.*2.0+a2_3_2.*x3_2+a2_4_2.*x4_2-s.*x2_2.*2.0,m2_2_3,m2_2_4,m2_2_5,m2_2_6,m2_2_7,m2_2_8,m2_2_9,m2_2_10,m2_2_11,m2_2_12,m2_2_13,0.0,a3_2_2.*x3_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_2.*x4_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_3.*x1_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m2_3_1,m2_3_2,-m2_3_1-m2_3_2-m2_3_4-m2_3_5-m2_3_6-m2_3_7-m2_3_8-m2_3_9-m2_3_10-m2_3_11-m2_3_12-m2_3_13+r+a2_1_3.*x1_3+a2_2_3.*x2_3.*2.0+a2_3_3.*x3_3+a2_4_3.*x4_3-s.*x2_3.*2.0,m2_3_4,m2_3_5,m2_3_6,m2_3_7,m2_3_8,m2_3_9,m2_3_10,m2_3_11,m2_3_12,m2_3_13,0.0,0.0,a3_2_3.*x3_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_3.*x4_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_4.*x1_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m2_4_1,m2_4_2,m2_4_3,-m2_4_1-m2_4_2-m2_4_3-m2_4_5-m2_4_6-m2_4_7-m2_4_8-m2_4_9-m2_4_10-m2_4_11-m2_4_12-m2_4_13+r+a2_1_4.*x1_4+a2_2_4.*x2_4.*2.0+a2_3_4.*x3_4+a2_4_4.*x4_4-s.*x2_4.*2.0,m2_4_5,m2_4_6,m2_4_7,m2_4_8,m2_4_9,m2_4_10,m2_4_11,m2_4_12,m2_4_13,0.0,0.0,0.0,a3_2_4.*x3_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_4.*x4_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_5.*x1_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m2_5_1,m2_5_2,m2_5_3,m2_5_4,-m2_5_1-m2_5_2-m2_5_3-m2_5_4-m2_5_6-m2_5_7-m2_5_8-m2_5_9-m2_5_10-m2_5_11-m2_5_12-m2_5_13+r+a2_1_5.*x1_5+a2_2_5.*x2_5.*2.0+a2_3_5.*x3_5+a2_4_5.*x4_5-s.*x2_5.*2.0,m2_5_6,m2_5_7,m2_5_8,m2_5_9,m2_5_10,m2_5_11,m2_5_12,m2_5_13,0.0,0.0,0.0,0.0,a3_2_5.*x3_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_5.*x4_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_6.*x1_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m2_6_1,m2_6_2,m2_6_3,m2_6_4,m2_6_5,-m2_6_1-m2_6_2-m2_6_3-m2_6_4-m2_6_5-m2_6_7-m2_6_8-m2_6_9-m2_6_10-m2_6_11-m2_6_12-m2_6_13+r+a2_1_6.*x1_6+a2_2_6.*x2_6.*2.0+a2_3_6.*x3_6+a2_4_6.*x4_6-s.*x2_6.*2.0,m2_6_7,m2_6_8,m2_6_9,m2_6_10,m2_6_11,m2_6_12,m2_6_13,0.0,0.0,0.0,0.0,0.0,a3_2_6.*x3_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_6.*x4_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_7.*x1_7,0.0,0.0,0.0,0.0,0.0,0.0,m2_7_1,m2_7_2,m2_7_3,m2_7_4,m2_7_5,m2_7_6,-m2_7_1-m2_7_2-m2_7_3-m2_7_4-m2_7_5-m2_7_6-m2_7_8-m2_7_9-m2_7_10-m2_7_11-m2_7_12-m2_7_13+r+a2_1_7.*x1_7+a2_2_7.*x2_7.*2.0+a2_3_7.*x3_7+a2_4_7.*x4_7-s.*x2_7.*2.0,m2_7_8,m2_7_9,m2_7_10,m2_7_11,m2_7_12,m2_7_13,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_7.*x3_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_7.*x4_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_8.*x1_8,0.0,0.0,0.0,0.0,0.0,m2_8_1,m2_8_2,m2_8_3,m2_8_4,m2_8_5,m2_8_6,m2_8_7,-m2_8_1-m2_8_2-m2_8_3-m2_8_4-m2_8_5-m2_8_6-m2_8_7-m2_8_9-m2_8_10-m2_8_11-m2_8_12-m2_8_13+r+a2_1_8.*x1_8+a2_2_8.*x2_8.*2.0+a2_3_8.*x3_8+a2_4_8.*x4_8-s.*x2_8.*2.0,m2_8_9,m2_8_10,m2_8_11,m2_8_12,m2_8_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_8.*x3_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_8.*x4_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_9.*x1_9,0.0,0.0,0.0,0.0,m2_9_1,m2_9_2,m2_9_3,m2_9_4,m2_9_5,m2_9_6,m2_9_7,m2_9_8,-m2_9_1-m2_9_2-m2_9_3-m2_9_4-m2_9_5-m2_9_6-m2_9_7-m2_9_8-m2_9_10-m2_9_11-m2_9_12-m2_9_13+r+a2_1_9.*x1_9+a2_2_9.*x2_9.*2.0+a2_3_9.*x3_9+a2_4_9.*x4_9-s.*x2_9.*2.0,m2_9_10,m2_9_11,m2_9_12,m2_9_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_9.*x3_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_9.*x4_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_10.*x1_10,0.0,0.0,0.0,m2_10_1,m2_10_2,m2_10_3,m2_10_4,m2_10_5,m2_10_6,m2_10_7,m2_10_8,m2_10_9,-m2_10_1-m2_10_2-m2_10_3-m2_10_4-m2_10_5-m2_10_6-m2_10_7-m2_10_8-m2_10_9-m2_10_11-m2_10_12-m2_10_13+r+a2_1_10.*x1_10+a2_2_10.*x2_10.*2.0+a2_3_10.*x3_10+a2_4_10.*x4_10-s.*x2_10.*2.0,m2_10_11,m2_10_12,m2_10_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_10.*x3_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_10.*x4_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_11.*x1_11,0.0,0.0,m2_11_1,m2_11_2,m2_11_3,m2_11_4,m2_11_5,m2_11_6,m2_11_7,m2_11_8,m2_11_9,m2_11_10,-m2_11_1-m2_11_2-m2_11_3-m2_11_4-m2_11_5-m2_11_6-m2_11_7-m2_11_8-m2_11_9-m2_11_10-m2_11_12-m2_11_13+r+a2_1_11.*x1_11+a2_2_11.*x2_11.*2.0+a2_3_11.*x3_11+a2_4_11.*x4_11-s.*x2_11.*2.0,m2_11_12,m2_11_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_11.*x3_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_11.*x4_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_12.*x1_12,0.0,m2_12_1,m2_12_2,m2_12_3,m2_12_4,m2_12_5,m2_12_6,m2_12_7,m2_12_8,m2_12_9,m2_12_10,m2_12_11,-m2_12_1-m2_12_2-m2_12_3-m2_12_4-m2_12_5-m2_12_6-m2_12_7-m2_12_8-m2_12_9-m2_12_10-m2_12_11-m2_12_13+r+a2_1_12.*x1_12+a2_2_12.*x2_12.*2.0+a2_3_12.*x3_12+a2_4_12.*x4_12-s.*x2_12.*2.0,m2_12_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_12.*x3_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_12.*x4_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_2_13.*x1_13,m2_13_1,m2_13_2,m2_13_3,m2_13_4,m2_13_5,m2_13_6,m2_13_7,m2_13_8,m2_13_9,m2_13_10,m2_13_11,m2_13_12,-m2_13_1-m2_13_2-m2_13_3-m2_13_4-m2_13_5-m2_13_6-m2_13_7-m2_13_8-m2_13_9-m2_13_10-m2_13_11-m2_13_12+r+a2_1_13.*x1_13+a2_2_13.*x2_13.*2.0+a2_3_13.*x3_13+a2_4_13.*x4_13-s.*x2_13.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_2_13.*x3_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_2_13.*x4_13,a1_3_1.*x1_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_1.*x2_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-m3_1_2-m3_1_3-m3_1_4-m3_1_5-m3_1_6-m3_1_7-m3_1_8-m3_1_9-m3_1_10-m3_1_11-m3_1_12-m3_1_13+r+a3_1_1.*x1_1+a3_2_1.*x2_1+a3_3_1.*x3_1.*2.0+a3_4_1.*x4_1-s.*x3_1.*2.0,m3_1_2,m3_1_3,m3_1_4,m3_1_5,m3_1_6,m3_1_7,m3_1_8,m3_1_9,m3_1_10,m3_1_11,m3_1_12,m3_1_13,a4_3_1.*x4_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_2.*x1_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_2.*x2_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m3_2_1,-m3_2_1-m3_2_3-m3_2_4-m3_2_5-m3_2_6-m3_2_7-m3_2_8-m3_2_9-m3_2_10-m3_2_11-m3_2_12-m3_2_13+r+a3_1_2.*x1_2+a3_2_2.*x2_2+a3_3_2.*x3_2.*2.0+a3_4_2.*x4_2-s.*x3_2.*2.0,m3_2_3,m3_2_4,m3_2_5,m3_2_6,m3_2_7,m3_2_8,m3_2_9,m3_2_10,m3_2_11,m3_2_12,m3_2_13,0.0,a4_3_2.*x4_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_3.*x1_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_3.*x2_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m3_3_1,m3_3_2,-m3_3_1-m3_3_2-m3_3_4-m3_3_5-m3_3_6-m3_3_7-m3_3_8-m3_3_9-m3_3_10-m3_3_11-m3_3_12-m3_3_13+r+a3_1_3.*x1_3+a3_2_3.*x2_3+a3_3_3.*x3_3.*2.0+a3_4_3.*x4_3-s.*x3_3.*2.0,m3_3_4,m3_3_5,m3_3_6,m3_3_7,m3_3_8,m3_3_9,m3_3_10,m3_3_11,m3_3_12,m3_3_13,0.0,0.0,a4_3_3.*x4_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_4.*x1_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_4.*x2_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m3_4_1,m3_4_2,m3_4_3,-m3_4_1-m3_4_2-m3_4_3-m3_4_5-m3_4_6-m3_4_7-m3_4_8-m3_4_9-m3_4_10-m3_4_11-m3_4_12-m3_4_13+r+a3_1_4.*x1_4+a3_2_4.*x2_4+a3_3_4.*x3_4.*2.0+a3_4_4.*x4_4-s.*x3_4.*2.0,m3_4_5,m3_4_6,m3_4_7,m3_4_8,m3_4_9,m3_4_10,m3_4_11,m3_4_12,m3_4_13,0.0,0.0,0.0,a4_3_4.*x4_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_5.*x1_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_5.*x2_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m3_5_1,m3_5_2,m3_5_3,m3_5_4,-m3_5_1-m3_5_2-m3_5_3-m3_5_4-m3_5_6-m3_5_7-m3_5_8-m3_5_9-m3_5_10-m3_5_11-m3_5_12-m3_5_13+r+a3_1_5.*x1_5+a3_2_5.*x2_5+a3_3_5.*x3_5.*2.0+a3_4_5.*x4_5-s.*x3_5.*2.0,m3_5_6,m3_5_7,m3_5_8,m3_5_9,m3_5_10,m3_5_11,m3_5_12,m3_5_13,0.0,0.0,0.0,0.0,a4_3_5.*x4_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_6.*x1_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_6.*x2_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m3_6_1,m3_6_2,m3_6_3,m3_6_4,m3_6_5,-m3_6_1-m3_6_2-m3_6_3-m3_6_4-m3_6_5-m3_6_7-m3_6_8-m3_6_9-m3_6_10-m3_6_11-m3_6_12-m3_6_13+r+a3_1_6.*x1_6+a3_2_6.*x2_6+a3_3_6.*x3_6.*2.0+a3_4_6.*x4_6-s.*x3_6.*2.0,m3_6_7,m3_6_8,m3_6_9,m3_6_10,m3_6_11,m3_6_12,m3_6_13,0.0,0.0,0.0,0.0,0.0,a4_3_6.*x4_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_7.*x1_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_7.*x2_7,0.0,0.0,0.0,0.0,0.0,0.0,m3_7_1,m3_7_2,m3_7_3,m3_7_4,m3_7_5,m3_7_6,-m3_7_1-m3_7_2-m3_7_3-m3_7_4-m3_7_5-m3_7_6-m3_7_8-m3_7_9-m3_7_10-m3_7_11-m3_7_12-m3_7_13+r+a3_1_7.*x1_7+a3_2_7.*x2_7+a3_3_7.*x3_7.*2.0+a3_4_7.*x4_7-s.*x3_7.*2.0,m3_7_8,m3_7_9,m3_7_10,m3_7_11,m3_7_12,m3_7_13,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_7.*x4_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_8.*x1_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_8.*x2_8,0.0,0.0,0.0,0.0,0.0,m3_8_1,m3_8_2,m3_8_3,m3_8_4,m3_8_5,m3_8_6,m3_8_7,-m3_8_1-m3_8_2-m3_8_3-m3_8_4-m3_8_5-m3_8_6-m3_8_7-m3_8_9-m3_8_10-m3_8_11-m3_8_12-m3_8_13+r+a3_1_8.*x1_8+a3_2_8.*x2_8+a3_3_8.*x3_8.*2.0+a3_4_8.*x4_8-s.*x3_8.*2.0,m3_8_9,m3_8_10,m3_8_11,m3_8_12,m3_8_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_8.*x4_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_9.*x1_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_9.*x2_9,0.0,0.0,0.0,0.0,m3_9_1,m3_9_2,m3_9_3,m3_9_4,m3_9_5,m3_9_6,m3_9_7,m3_9_8,-m3_9_1-m3_9_2-m3_9_3-m3_9_4-m3_9_5-m3_9_6-m3_9_7-m3_9_8-m3_9_10-m3_9_11-m3_9_12-m3_9_13+r+a3_1_9.*x1_9+a3_2_9.*x2_9+a3_3_9.*x3_9.*2.0+a3_4_9.*x4_9-s.*x3_9.*2.0,m3_9_10,m3_9_11,m3_9_12,m3_9_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_9.*x4_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_10.*x1_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_10.*x2_10,0.0,0.0,0.0,m3_10_1,m3_10_2,m3_10_3,m3_10_4,m3_10_5,m3_10_6,m3_10_7,m3_10_8,m3_10_9,-m3_10_1-m3_10_2-m3_10_3-m3_10_4-m3_10_5-m3_10_6-m3_10_7-m3_10_8-m3_10_9-m3_10_11-m3_10_12-m3_10_13+r+a3_1_10.*x1_10+a3_2_10.*x2_10+a3_3_10.*x3_10.*2.0+a3_4_10.*x4_10-s.*x3_10.*2.0,m3_10_11,m3_10_12,m3_10_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_10.*x4_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_11.*x1_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_11.*x2_11,0.0,0.0,m3_11_1,m3_11_2,m3_11_3,m3_11_4,m3_11_5,m3_11_6,m3_11_7,m3_11_8,m3_11_9,m3_11_10,-m3_11_1-m3_11_2-m3_11_3-m3_11_4-m3_11_5-m3_11_6-m3_11_7-m3_11_8-m3_11_9-m3_11_10-m3_11_12-m3_11_13+r+a3_1_11.*x1_11+a3_2_11.*x2_11+a3_3_11.*x3_11.*2.0+a3_4_11.*x4_11-s.*x3_11.*2.0,m3_11_12,m3_11_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_11.*x4_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_12.*x1_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_12.*x2_12,0.0,m3_12_1,m3_12_2,m3_12_3,m3_12_4,m3_12_5,m3_12_6,m3_12_7,m3_12_8,m3_12_9,m3_12_10,m3_12_11,-m3_12_1-m3_12_2-m3_12_3-m3_12_4-m3_12_5-m3_12_6-m3_12_7-m3_12_8-m3_12_9-m3_12_10-m3_12_11-m3_12_13+r+a3_1_12.*x1_12+a3_2_12.*x2_12+a3_3_12.*x3_12.*2.0+a3_4_12.*x4_12-s.*x3_12.*2.0,m3_12_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_12.*x4_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_3_13.*x1_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_3_13.*x2_13,m3_13_1,m3_13_2,m3_13_3,m3_13_4,m3_13_5,m3_13_6,m3_13_7,m3_13_8,m3_13_9,m3_13_10,m3_13_11,m3_13_12,-m3_13_1-m3_13_2-m3_13_3-m3_13_4-m3_13_5-m3_13_6-m3_13_7-m3_13_8-m3_13_9-m3_13_10-m3_13_11-m3_13_12+r+a3_1_13.*x1_13+a3_2_13.*x2_13+a3_3_13.*x3_13.*2.0+a3_4_13.*x4_13-s.*x3_13.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a4_3_13.*x4_13,a1_4_1.*x1_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_1.*x2_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_1.*x3_1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-m4_1_2-m4_1_3-m4_1_4-m4_1_5-m4_1_6-m4_1_7-m4_1_8-m4_1_9-m4_1_10-m4_1_11-m4_1_12-m4_1_13+r+a4_1_1.*x1_1+a4_2_1.*x2_1+a4_3_1.*x3_1+a4_4_1.*x4_1.*2.0-s.*x4_1.*2.0,m4_1_2,m4_1_3,m4_1_4,m4_1_5,m4_1_6,m4_1_7,m4_1_8,m4_1_9,m4_1_10,m4_1_11,m4_1_12,m4_1_13,0.0,a1_4_2.*x1_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_2.*x2_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_2.*x3_2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m4_2_1,-m4_2_1-m4_2_3-m4_2_4-m4_2_5-m4_2_6-m4_2_7-m4_2_8-m4_2_9-m4_2_10-m4_2_11-m4_2_12-m4_2_13+r+a4_1_2.*x1_2+a4_2_2.*x2_2+a4_3_2.*x3_2+a4_4_2.*x4_2.*2.0-s.*x4_2.*2.0,m4_2_3,m4_2_4,m4_2_5,m4_2_6,m4_2_7,m4_2_8,m4_2_9,m4_2_10,m4_2_11,m4_2_12,m4_2_13,0.0,0.0,a1_4_3.*x1_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_3.*x2_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_3.*x3_3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m4_3_1,m4_3_2,-m4_3_1-m4_3_2-m4_3_4-m4_3_5-m4_3_6-m4_3_7-m4_3_8-m4_3_9-m4_3_10-m4_3_11-m4_3_12-m4_3_13+r+a4_1_3.*x1_3+a4_2_3.*x2_3+a4_3_3.*x3_3+a4_4_3.*x4_3.*2.0-s.*x4_3.*2.0,m4_3_4,m4_3_5,m4_3_6,m4_3_7,m4_3_8,m4_3_9,m4_3_10,m4_3_11,m4_3_12,m4_3_13,0.0,0.0,0.0,a1_4_4.*x1_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_4.*x2_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_4.*x3_4,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m4_4_1,m4_4_2,m4_4_3,-m4_4_1-m4_4_2-m4_4_3-m4_4_5-m4_4_6-m4_4_7-m4_4_8-m4_4_9-m4_4_10-m4_4_11-m4_4_12-m4_4_13+r+a4_1_4.*x1_4+a4_2_4.*x2_4+a4_3_4.*x3_4+a4_4_4.*x4_4.*2.0-s.*x4_4.*2.0,m4_4_5,m4_4_6,m4_4_7,m4_4_8,m4_4_9,m4_4_10,m4_4_11,m4_4_12,m4_4_13,0.0,0.0,0.0,0.0,a1_4_5.*x1_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_5.*x2_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_5.*x3_5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m4_5_1,m4_5_2,m4_5_3,m4_5_4,-m4_5_1-m4_5_2-m4_5_3-m4_5_4-m4_5_6-m4_5_7-m4_5_8-m4_5_9-m4_5_10-m4_5_11-m4_5_12-m4_5_13+r+a4_1_5.*x1_5+a4_2_5.*x2_5+a4_3_5.*x3_5+a4_4_5.*x4_5.*2.0-s.*x4_5.*2.0,m4_5_6,m4_5_7,m4_5_8,m4_5_9,m4_5_10,m4_5_11,m4_5_12,m4_5_13,0.0,0.0,0.0,0.0,0.0,a1_4_6.*x1_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_6.*x2_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_6.*x3_6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m4_6_1,m4_6_2,m4_6_3,m4_6_4,m4_6_5,-m4_6_1-m4_6_2-m4_6_3-m4_6_4-m4_6_5-m4_6_7-m4_6_8-m4_6_9-m4_6_10-m4_6_11-m4_6_12-m4_6_13+r+a4_1_6.*x1_6+a4_2_6.*x2_6+a4_3_6.*x3_6+a4_4_6.*x4_6.*2.0-s.*x4_6.*2.0,m4_6_7,m4_6_8,m4_6_9,m4_6_10,m4_6_11,m4_6_12,m4_6_13,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_7.*x1_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_7.*x2_7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_7.*x3_7,0.0,0.0,0.0,0.0,0.0,0.0,m4_7_1,m4_7_2,m4_7_3,m4_7_4,m4_7_5,m4_7_6,-m4_7_1-m4_7_2-m4_7_3-m4_7_4-m4_7_5-m4_7_6-m4_7_8-m4_7_9-m4_7_10-m4_7_11-m4_7_12-m4_7_13+r+a4_1_7.*x1_7+a4_2_7.*x2_7+a4_3_7.*x3_7+a4_4_7.*x4_7.*2.0-s.*x4_7.*2.0,m4_7_8,m4_7_9,m4_7_10,m4_7_11,m4_7_12,m4_7_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_8.*x1_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_8.*x2_8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_8.*x3_8,0.0,0.0,0.0,0.0,0.0,m4_8_1,m4_8_2,m4_8_3,m4_8_4,m4_8_5,m4_8_6,m4_8_7,-m4_8_1-m4_8_2-m4_8_3-m4_8_4-m4_8_5-m4_8_6-m4_8_7-m4_8_9-m4_8_10-m4_8_11-m4_8_12-m4_8_13+r+a4_1_8.*x1_8+a4_2_8.*x2_8+a4_3_8.*x3_8+a4_4_8.*x4_8.*2.0-s.*x4_8.*2.0,m4_8_9,m4_8_10,m4_8_11,m4_8_12,m4_8_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_9.*x1_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_9.*x2_9,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_9.*x3_9,0.0,0.0,0.0,0.0,m4_9_1,m4_9_2,m4_9_3,m4_9_4,m4_9_5,m4_9_6,m4_9_7,m4_9_8,-m4_9_1-m4_9_2-m4_9_3-m4_9_4-m4_9_5-m4_9_6-m4_9_7-m4_9_8-m4_9_10-m4_9_11-m4_9_12-m4_9_13+r+a4_1_9.*x1_9+a4_2_9.*x2_9+a4_3_9.*x3_9+a4_4_9.*x4_9.*2.0-s.*x4_9.*2.0,m4_9_10,m4_9_11,m4_9_12,m4_9_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_10.*x1_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_10.*x2_10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_10.*x3_10,0.0,0.0,0.0,m4_10_1,m4_10_2,m4_10_3,m4_10_4,m4_10_5,m4_10_6,m4_10_7,m4_10_8,m4_10_9,-m4_10_1-m4_10_2-m4_10_3-m4_10_4-m4_10_5-m4_10_6-m4_10_7-m4_10_8-m4_10_9-m4_10_11-m4_10_12-m4_10_13+r+a4_1_10.*x1_10+a4_2_10.*x2_10+a4_3_10.*x3_10+a4_4_10.*x4_10.*2.0-s.*x4_10.*2.0,m4_10_11,m4_10_12,m4_10_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_11.*x1_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_11.*x2_11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_11.*x3_11,0.0,0.0,m4_11_1,m4_11_2,m4_11_3,m4_11_4,m4_11_5,m4_11_6,m4_11_7,m4_11_8,m4_11_9,m4_11_10,-m4_11_1-m4_11_2-m4_11_3-m4_11_4-m4_11_5-m4_11_6-m4_11_7-m4_11_8-m4_11_9-m4_11_10-m4_11_12-m4_11_13+r+a4_1_11.*x1_11+a4_2_11.*x2_11+a4_3_11.*x3_11+a4_4_11.*x4_11.*2.0-s.*x4_11.*2.0,m4_11_12,m4_11_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_12.*x1_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_12.*x2_12,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_12.*x3_12,0.0,m4_12_1,m4_12_2,m4_12_3,m4_12_4,m4_12_5,m4_12_6,m4_12_7,m4_12_8,m4_12_9,m4_12_10,m4_12_11,-m4_12_1-m4_12_2-m4_12_3-m4_12_4-m4_12_5-m4_12_6-m4_12_7-m4_12_8-m4_12_9-m4_12_10-m4_12_11-m4_12_13+r+a4_1_12.*x1_12+a4_2_12.*x2_12+a4_3_12.*x3_12+a4_4_12.*x4_12.*2.0-s.*x4_12.*2.0,m4_12_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a1_4_13.*x1_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a2_4_13.*x2_13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a3_4_13.*x3_13,m4_13_1,m4_13_2,m4_13_3,m4_13_4,m4_13_5,m4_13_6,m4_13_7,m4_13_8,m4_13_9,m4_13_10,m4_13_11,m4_13_12,-m4_13_1-m4_13_2-m4_13_3-m4_13_4-m4_13_5-m4_13_6-m4_13_7-m4_13_8-m4_13_9-m4_13_10-m4_13_11-m4_13_12+r+a4_1_13.*x1_13+a4_2_13.*x2_13+a4_3_13.*x3_13+a4_4_13.*x4_13.*2.0-s.*x4_13.*2.0],[52,52]);
