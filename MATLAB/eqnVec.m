function out1 = eqnVec(a1_1_1,a1_1_2,a1_1_3,a1_2_1,a1_2_2,a1_2_3,a2_1_1,a2_1_2,a2_1_3,a2_2_1,a2_2_2,a2_2_3,m1_1_1,m1_1_2,m1_1_3,m1_2_1,m1_2_2,m1_2_3,m1_3_1,m1_3_2,m1_3_3,m2_1_1,m2_1_2,m2_1_3,m2_2_1,m2_2_2,m2_2_3,m2_3_1,m2_3_2,m2_3_3,x1_1,x1_2,x1_3,x2_1,x2_2,x2_3)
%EQNVEC
%    OUT1 = EQNVEC(A1_1_1,A1_1_2,A1_1_3,A1_2_1,A1_2_2,A1_2_3,A2_1_1,A2_1_2,A2_1_3,A2_2_1,A2_2_2,A2_2_3,M1_1_1,M1_1_2,M1_1_3,M1_2_1,M1_2_2,M1_2_3,M1_3_1,M1_3_2,M1_3_3,M2_1_1,M2_1_2,M2_1_3,M2_2_1,M2_2_2,M2_2_3,M2_3_1,M2_3_2,M2_3_3,X1_1,X1_2,X1_3,X2_1,X2_2,X2_3)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    20-Jun-2017 11:30:13

out1 = [x1_1+m1_1_1.*x1_1+m1_2_1.*x1_2+m1_3_1.*x1_3-x1_1.*(m1_1_1+m1_1_2+m1_1_3)+x1_1.*(a1_1_1.*x1_1+a1_2_1.*x2_1)-x1_1.^2;x1_2+m1_1_2.*x1_1+m1_2_2.*x1_2+m1_3_2.*x1_3-x1_2.*(m1_2_1+m1_2_2+m1_2_3)+x1_2.*(a1_1_2.*x1_2+a1_2_2.*x2_2)-x1_2.^2;x1_3+m1_1_3.*x1_1+m1_2_3.*x1_2+m1_3_3.*x1_3-x1_3.*(m1_3_1+m1_3_2+m1_3_3)+x1_3.*(a1_1_3.*x1_3+a1_2_3.*x2_3)-x1_3.^2;x2_1+m2_1_1.*x2_1+m2_2_1.*x2_2+m2_3_1.*x2_3-x2_1.*(m2_1_1+m2_1_2+m2_1_3)+x2_1.*(a2_1_1.*x1_1+a2_2_1.*x2_1)-x2_1.^2;x2_2+m2_1_2.*x2_1+m2_2_2.*x2_2+m2_3_2.*x2_3-x2_2.*(m2_2_1+m2_2_2+m2_2_3)+x2_2.*(a2_1_2.*x1_2+a2_2_2.*x2_2)-x2_2.^2;x2_3+m2_1_3.*x2_1+m2_2_3.*x2_2+m2_3_3.*x2_3-x2_3.*(m2_3_1+m2_3_2+m2_3_3)+x2_3.*(a2_1_3.*x1_3+a2_2_3.*x2_3)-x2_3.^2];
