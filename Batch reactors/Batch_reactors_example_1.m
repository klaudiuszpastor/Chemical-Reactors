clear; clc; close all;
%A -> B
% reakcja pierwszego rzędu dC_A/dt = -r_A*C_A

tspan = [0 5] ;
C0 = [4 0.22] ;

[t,C] = ode45(@fun1,tspan,C0) ;
plot(t,C) ;
t = integral(@fun2,4,0.75) ;
fprintf('Czas potrzebny na osiągnięcie stężenia CA =0.75 wynosi: %1.2f \n',t) ;

function dC = fun1(~,C) 
k = 0.45 ;
dC = zeros(2,1) ;
dC(1) = -k*C(1) ;
dC(2) = k*C(1) ;
end

function dt=fun2(C)
k = 0.45 ;
dt = - 1./(k.*C) ;
end