clear; clc; close all;

V = 500 ; %dm3
C_A0 = 0.2 ; %mol/dm3
v_0 = 25 ; %dm3/s
k_A = 10 ; %dm3/mols

%Reakcja 2A -> B
%Na podstwie stałej szybkości uznałem że reakcja jest 2 rzędu
% -r_A = k*C_A^2
%Ile wyniesie stężenie równowagowe i stopień przereagowania?

%czas przebywania
t = V/v_0 ;

% z równania bilansu CSTR wyprowadza się wzór
% Ze wzoru V/q = (CA0 - CA)rA
% t*CA^2*k = CA0 - CA
% t*k*CA^2 + CA - CA0 = 0
% trzeba wjebać równanie kwadratowe
% rozpiszę to w taki sposób

a = t*k_A ;
b = 1 ;
c = -C_A0 ;

inc = b^2 - 4*a*c ;

if inc>0 
    x = (-b-sqrt(inc))/(2*a) ;
    if x<0
        x = (-b+sqrt(inc))/(2*a) ;
    end
elseif inc == 0
    x = -b/2*a ;
else
    disp('delta jest na minusie')
end

%Stężenie równowagowe
C_A = x ;
%Stopień przereagowania
X_A = ((C_A0 - C_A) / C_A0) *100;

fprintf('Stężenie równowagowe wynosi C_A: %1.3f mol/dm3.\nStopień przereagowania wynosi X_A: %2.0f %%.',C_A,X_A)

    
