clear; clc; close all;

tspan = [0 10] ;
C0 = [2 0 0] ;
[t,C] = ode45(@fun1,tspan,C0) ;

options = odeset('Events',@Events) ;
[t,C,ta,Ca] = ode45(@fun1,tspan,C0,options) ;

%wykresy
plot(t,C)
hold on
plot(ta(:,1),Ca(:,1),'*')
xlabel('Czas t [min]')
ylabel('Stężenie [mol/dm^3]')
legend('dCA','dCP','dCN')
grid on
hold off

fprintf('Stężenie 15%% wartości początkowej znajduje się po czasie : %1.2f \n',ta) ;


function[value,isterminal,direction] = Events(t,C)
CA = 2*0.15 ;
value = C(1) - CA ;
isterminal = 0;
direction = 0;
end

function dC=fun1(~,C)
k1 = 2 ;
k2 = 0.75 ;
dC = zeros(3,1) ;
dC(1) = -k1*C(1) - k2*C(1)^2 ;
dC(2) = k1*C(1) ;
dC(3) = k2*C(1)^2 ;
end
