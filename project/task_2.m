%Szybkość, zachodząca w fazie ciekłej, reakcji równowagowej
% 2A +B = R
%dana jest wzorem
%-1/2r_A = -r_B = (15 [dm3)2/mol2*min) C_A^2C_B - (0.5[min-1])C_R,
%Reakcja zachodzi w reaktorze CSTR o objętości 10 dm3 do którego
%doprowadzane są dwa strumienie o stosunku przepływów objętościowych
%wynoszącycm 2:1. Pierwszy z nich zawiera 2mol/dm3 substancji A, nastomiast
%drugi 2,6 mol/dm3 substancji B. Zakładając, że w reaktorze nie dochodzi do
%zmiany gęstości wyznaczyć przepływ strumieni A i B niezbędny do
%osiągnięcia 60% przereagowania substancji, która podawana jest do
%reaktorze w niedomiarze.
clear; clc;


V = 10; %dm3
C_A0 = 2*(2/3); %mol/dm3
C_B0 = 2.6*(1/3); %mol/dm3
C_R0 = 0;

epsilon = 0; %nie dochodzi do zmiany gęstości
% wyzaczyć v_A i v_B
X_A = 0.6;
%składnika A jest w niedomiarze

delta = C_A0*X_A;
C_A = C_A0 - delta;
C_B = C_B0 - delta/2;
C_R = (C_A0*X_A)/2;

r_A = -2*((15*C_A^2 * C_B )- (0.5*C_R));
v = (V*r_A)/(C_A0 - C_A);
v_A = v*(2/3);
v_B = v*(1/3);
fprintf("Przepływ strumienia całkowitego wynosi: %0.2f [dm3/min]\n",-v);
fprintf("Przepływ strumienia składnika A wynosi %0.2f [dm3/min]\n",-v_A);
fprintf("Przepływ strumienia składnika B wynosi %0.2f [dm3/min]\n\n",-v_B);
fprintf("Przepływ strumieni w [dm3/s]:\n -strumienia całkowitego: %0.2f\n -strumienia A: %0.2f\n -strumienia B: %0.2f\n",-v/60,-v_A/60,-v_B/60);