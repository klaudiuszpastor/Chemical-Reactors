clear; clc; close all;

%pV = nRT
p = 20*101325 ; %Pa
V_A = 0.75 ;
R = 8.314 ;%J/mol*K
T = 227 + 273.15 ; %K
n_A0 = (p*V_A)/(R.*T) ;
C_A0 = n_A0/V_A ; 

%tau = CA0 całka 0 0.99 1/k*CA0(1-X)
t1 = integral(@int1,0,0.99) ;

%Obliczenie czasu dla reaktora wypełnionego A w 100%
C_A01 = p./(R.*T) ;
t2 = integral(@int2,0,0.99)

function dt=int1(X_A)
k = 0.1 ; %min-1
p = 20 .* 101325 ; %Pa
T = 227 + 273.15 ; %K
R = 8.314 ; %J/mol*K
V_A = 0.75 ;
n_A0 = (p.*V_A)./(R.*T) ;
C_A0 = n_A0./V_A ; 
dt = C_A0*(1./(k.*C_A0.*(1-X_A))) ;
end
    
function dt=int2(X_A1) 
k1 = 0.1 ; %min-1
p1 = 20 .* 101325 ; %Pa
T1 = 227 + 273.15 ; %K
R1 = 8.314 ; %J/mol*K
C_A01 = p1./(R1.*T1) ;
dt = C_A01.*(1./(k1.*C_A01.*(1-X_A1))) ;
end



