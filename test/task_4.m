clear; clc; close all;

% Elementarna, nieodwracalana reakcja drugiego rzędu typu:
% A + B -> C

%Reaktorze PFR 
V1 = 800 ; %dm3
T1 = 300 ; %K
k1 = 0.07 ; %dm3/mol*min
C_A0 = 2 ; %mol/dm3
C_B0 = 2 ; %mol/dm3
v_a0 = 5 ; %dm3/min - na podstawie schematów
v_b0 = 5 ; %dm3/min
V_c = v_b0 + v_a0 ;

%Stopień konwersji PFR
t1 = V1/V_c ;
C_A0p = (C_A0*v_a0)/V_c ;
X1 = (k1*t1*C_A0p)/(1+k1*t1*C_A0p) ;

%Stopień konwersji CSTR
V2 = 200 ; %dm3
T2 = 350 ; %K
E = 85000 ; %J/mol*K
R = 8.314 ; %J/mol*K

% przepływy i stężenia takie same
% czas przebywania
t2 = V2/V_c ;

% Skorzystamy z równania Arrheniusa
% k = A*T^n e^(-E/R*T)
k2 = k1*exp((-E/R) * (1/T2 - 1/T1)) ;
Da = t2*k2*C_A0p ;
X2 = 1- 1/(1+Da) ;

fprintf('Stopień konwersji jest wyższy w reaktorze CSTR i równy %1.3f, w porówaniu z PFR równym %1.3f. \n',X2,X1)
