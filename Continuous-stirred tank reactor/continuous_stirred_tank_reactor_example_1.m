clear; clc; close all;

V = 10 ; %dm3
q = 0.04 ; %dm3/s
C_A0 = 300 ; %mol/m3
k = 0.0051 ; %1/s

%Reakcja
% (CH3CO)2O + H2O -> 2CH3COOH

%Obliczyć stężenie bezwodnika oraz kwasu w strumieniu opuszczającym reaktor
%w stanie ustalonym. Jaką wartość ma liczba Da w przypadku tej reakcji?

%czas przebywania
t =  V/q ;
%reakcja jest pierwszego rzędu 
% -rA = k*CA
% z równania bilansu CSTR wyprowadza się wzór
% Ze wzoru V/q = (CA0 - CA)rA
% tau*k*CA = CA0 - CA
% tau*k*CA + CA = CA0
% CA (tau*k + 1) = CA0

C_A = C_A0/(t*k+1) ; % mol/m3
%jest to stężenie końcowe

%stopień przereagownaia wyliczymy z równania

X_A = (C_A0-C_A)/C_A0 ;

%Liczba Da

Da = X_A/(1-X_A) ;

% Stężenie bezwodnika w strumieniu opuszczającym reaktor

C_B = 2*(C_A0 - C_A) ;

fprintf('Stężenie bezwodnika oraz kwasu w strumieniu opuszającym wynosi C_B: %3.1f oraz C_A: %3.1f.\nLiczba Da wynosi: %1.3f',C_B,C_A,Da)


