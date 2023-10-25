%Wodny roztwór substratu A o stężeniu 4 mol/dm3 przepływa przez układ dwóch
%połączonych szeregowo, reaktorów: CSTRi PFR. Znaleźć stężenia A na wyjściu
%z reaktora rurowego wiedząc, że stężenie A w reaktorze zbiornikowym z
%doskonałym mieszaniem wynosi 1 mol.dm3 reakcja jest drugorzędowa względem
%A, a objętość reaktora rurowego jest 3 razy większa niż reaktora
%zbiornikowego

clear; clc;

C_Ain1 = 4; %mol/dm3
%CSTR
C_Aout1 = 1; %mol/dm3
%2 rząd
ktau1 = (C_Ain1 - C_Aout1)/C_Aout1^2; 

%tau1 = V1/v
%tau2/tau1 = 3
% k = ((C_Ain1 - C_Aout1)/C_Aout1^2)/tau1
%ktau2 = (CA1 - CA2) / CA2^2 = 3/tau1 * tau2
ktau2 = 3*ktau1;

%ktauCA1 = (CA1-CA2) / CA2
% 9*CA2 = C_A1 - C_A2
% 9CA2 + CA2 - CA1 = 0
% 10CA2 - CA1 =0
C_A2 = 1/10;
fprintf("Stężenie na wyjściu z reaktora rurowego wynosi %0.2f [mol/dm3]\n",C_A2)

