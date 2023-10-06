clear; clc; close all;

t = 13*60 ; %sekundy
X_A = 0.7 ; 
% Obliczyć czas przebywania potrzebny do uzyskania takiego samego stopnia
%przereagowania w reaktorze rurowym i zbiornikowym z doskonałym mieszaniem.

%stała szybkości k
%ze wzoru dla batch reaktor k*tau = log(1/(1-X_A))
k = log(1/(1-X_A))/t ;

%Reaktor zbiornikowy z doskonałym mieszaniem CSTR
%Czyli wzór dla Mixed Flow
% k*tau = X_A/(1-X_A)

t1 = (X_A/(1-X_A))/k ;

%Reaktor rurowy PFR
% k*tau = (1+epsilon)*log(1/(1-X_A))-epsilon*X_A
% nie występuje zmiana objętości więc epsilon =0
epsilon = 0 ;
t2 = ((1+epsilon)*log(1/(1-X_A))-epsilon*X_A)/k ;

fprintf('Czas przebywania w reaktorze CSTR wynosi %4.0f sekund., a dla reaktora PFR wynosi %3.0f sekund. \n',t1,t2)