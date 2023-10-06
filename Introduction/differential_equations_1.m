clear; clc; close;
tspan=[0,10] ;
x0 = 3 ;

[t,x] = ode45(@p1f,tspan,x0) ;
plot(t,x)


function dx=p1f(~,x)
a = -1 ;
b = 2 ;
dx=a*x+b ;
end