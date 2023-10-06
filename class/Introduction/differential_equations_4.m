clear; clc; close; 
N0 = [100,20] ;
tspan = [0,1000] ;
[t,N] = ode45(@fun2,tspan,N0) ;
plot(t,N(:,1),t,N(:,2))



function dN=fun2(~,N)
a = 3.5 ;
b = 0.1 ;
c = 4 ;
d = 0.06 ;

dN = zeros(2,1) ;
dN(1) = a*N(1)-b*N(1)*N(2) ;
dN(2) = -c*N(2)+d*N(1)*N(2) ;
end