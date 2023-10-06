clear; clc; close all;

V = 2*10^3 ; %m3 -> dm3
k1 = 0.04 ; %min-1
k2 = 0.01 ; %min-1
C_A0 = 100 ; %mmol/dm3
v_0 = 100 ; %dm3/min

%Reakcja A <-> R
% -rA = k1*C_A - k2*C_R ;
t = V/v_0 ;

epsilon = 0 ;
