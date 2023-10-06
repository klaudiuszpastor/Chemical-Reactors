clear; clc; close all;


tspan = [0 10] ;
C0 = [1.5 0 0 0] ;
[t,C] = ode45(@fun,tspan,C0) ;
plot(t,C(:,1),t,C(:,2),t,C(:,3),t,C(:,4))
legend('dCA','dCB','dCC','dCD')

function dC = fun(~,C)
dC = zeros(4,1) ;
k1 = 3 ;
k2 = 2 ;
k3 = 0.5 ;
k4 = 0.7 ;


dC(1) = -k1*C(1)+k2*C(1) ;
dC(2) = -k3*dC(1) ;
dC(3) = -k4*dC(2)*dC(1) ;
dC(4) = k4*dC(2)*dC(3) ;

end
