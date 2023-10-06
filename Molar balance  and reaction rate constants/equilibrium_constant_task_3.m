clear; clc; close all;
%N2O4 <-> 2NO2
T = 273.15 + 55 ;
X = 0.5 ;
N204_0 = input('Stężenie początkowe N2O4:') ;
R = 8.314 ;
%K_C = x^2 / (1-x/2)
%K_p = K_C * R*T

K_p = (X^2 / (1-X/2)) * R*T ;

%stopień dysoccjacji
%pierdole te zadanie nie umiem chemii
