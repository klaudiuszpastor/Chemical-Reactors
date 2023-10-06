clear; clc;

%A+B->2C

A_0 = 1 ;
B_0 = A_0 ;

X_A = 0.8 ;
X_B = X_A ;
C_A = A_0 - X_A*A_0 ;
C_B = B_0 - X_B*B_0 ;
C_C = 2*X_A ;

%Stała równowagi
K = C_C^2/(C_A*C_B) ;
