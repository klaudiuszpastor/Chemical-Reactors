clear; clc; close all;

%Reakcja zerowego rzędu
% A + 2B -> C
% Ile wynosi czas przebywania?

X_A = 0.90 ; 
C_A0 = 0.5 ; %mol/dm3 
v_0 = 10 ; %dm3/s
k = 0.01 ; %mol/dm3s

% więc wyliczę sobie stężenie końcowe ze stopnia konwersji
% X = CA0 - CA / CA0
C_A = -(X_A*C_A0 -C_A0) ;
% Następnie obliczymy potrzebną objętośc
%  Ze wzoru V/q = (CA0 - CA)rA
% Dla zerowego rzędu -rA = k
V = (C_A0*v_0 - C_A*v_0)/k ; %dm^3

% czas przebywania
tau1 = V/v_0 ;
%dla pierwszego rzędu względem susbtratu A -rA = k*C_A
tau2 = (C_A0 - C_A)/(k*C_A) ;
%dla drugiego rzędu względem substratu A -rA = k*C_A^2
tau3 = (C_A0 - C_A)/(k*(C_A^2)) ;

fprintf('Czas przebywania w reaktorze w zerowym rzędzie reakcji wynosi %2.0f s.\nW pierwszym rzędzie reakcji wynosi %3.0f s, a w drugim rzędzie reakcji wynosi %5.0f s.\n',tau1,tau2,tau3)