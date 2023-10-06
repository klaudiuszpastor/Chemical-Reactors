clear; clc; close;

tspan = [0,5] ;
y0 = [0 1] ;

[t,x] = ode45(@fun1,tspan,y0) ;
plot(t,x(:,1),t,x(:,2))



function dx=fun1(~,x)
dx = zeros(2,1);

dx(1) = 3*x(1)+4*x(2) ;
dx(2) = -4*x(1)+3*x(2) ;
end