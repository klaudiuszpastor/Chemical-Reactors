% Substancje A i B o stężeniu odpowiednio C_A0 = 0.1 mol/dm3 i C_B0 = 0.02
% mol/dm3 podawane są do reaktora CSTR o pojemności 5 dm3 z szybkością
% odpowiednio 1 i 3 dm3/min. W wyniku reakcji o nieznanej stechiometrii
% powstaje substancja C. Stężenia na wyjściu z reaktora wynoszą C_Aout -
% 0.02 mol/dm3, C_Bout = 0.03 mol/dm3, C_Cout = 0.04 mol/dm3. Wyznaczyć
% szybkość reakcji A, B i C dla podanych warunków.
clc
clear

C_A0 = 0.1; %mol/dm3
C_B0 = 0.02; %mol/dm3
% reaktor CSTR
%pojemność V i szybkość podawania v
V = 5; %dm3
v_A0 = 1; %dm3/min
v_B0 = 3; %dm3/min
%stężenia na wyjściu
C_Aout = 0.02; %mol/dm3
C_Bout = 0.03; %mol/dm3
C_Cout = 0.04; %mol/dm3

tau_A = V/v_A0;
tau_B = V/v_B0;

X_A = (C_A0 - C_Aout)/C_A0;
r_A = C_A0 * X_A/tau_A;
%tau = V/v = C_A0 * X/r
fprintf("Wynik r_A = %.2d \n", r_A);

X_B = (C_B0 - C_Bout)/C_B0;
r_B = C_B0 *X_B/tau_B;
fprintf("Wynik r_B = %.2d \n", r_B);

r_C = -(-r_A - r_B);
fprintf("Wynik r_C = %.2d \n", r_C);
