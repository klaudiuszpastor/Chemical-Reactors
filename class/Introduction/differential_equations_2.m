clear; clc; close;

tspan = [0,12] ;
y0 = [0; 1; 1];
[t,y] = ode45(@fun,tspan,y0) ;
plot(t,y(:,1),t,y(:,2),t,y(:,3))

function dy=fun(~,y)
dy=zeros(3,1);
dy(1) = y(2)*y(3) ;
dy(2) = -y(1)*y(3) ;
dy(3) = -0.51*y(1)*y(2) ;
end