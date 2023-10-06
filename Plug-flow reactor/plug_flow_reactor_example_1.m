clear; clc; close all;

X_A = 0.80 ;
F_A = 40 ; %mol/h
T = 649 + 273.15; %K
p = 460*10^3 ; %Pa
k = 10; %h-1
R = 8.314 ; %J/mol*K

%Reakcja pierwszorzędowa zachodząca w fazie gazowej
% 4PH3 -> P4 + 6H2
% Jaka jest wymagana objętość reaktora rurowego o przepływie tłokowym?

%Stężenie początkowe
C_A0 = p/(R*T) ;
% obliczenie epislonu
epsilon = (7-4)/4 ;

% Więc trzeba znać pojebane równanie
% k*tau = (1+epsilon)*log(1/(1-X_A))-epsilon*X_A
% V = v/k *((1+epsilon)*log(1/(1-X_A))-epsilon*X_A)
% tau = V/v a F_A = C_A0(1-X_A)*v
% v = F_A / C_A0(1-X_A)
% końcowo wzór dla objętości wynosi

V = F_A/(k*C_A0)* ((1+epsilon)*(log(1/(1-X_A)))-(epsilon*X_A)) ;


fprintf('Wymagana objętośc reaktora rurowego o przepływie tłokowym wynosi %1.3f m3. \n',V)