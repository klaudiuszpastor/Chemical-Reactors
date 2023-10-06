clear; clc; close all;

tspan = [0,480] ;
C_0 = [0.0715, 0.0101, 0.00, 0.00, 1e-6, 8.36e-9, 0.00, 0.00, 0.0764] ;

[t,C] = ode15s(@fun1,tspan,C_0) ;

%Wykres subplota
for k = 1:9
    ax(k) = subplot(3,3,k) ;
end

subplot(ax(1))
plot(t,C(:,1),'b')
title('Przebieg stężenia IO_3^- w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie IO_3^- [mol/dm^3]')

subplot(ax(2))
plot(t,C(:,2),'g')
title('Przebieg stężenia HSO_3^- w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie HSO_3^- [mol/dm^3]')

subplot(ax(3))
plot(t,C(:,3),'r')
title('Przebieg stężenia SO_4^2- w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie SO_4^2- [mol/dm^3]')

subplot(ax(4))
plot(t,C(:,4),'g')
title('Przebieg stężenia HIO_2 w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie HIO_2 [mol/dm^3]')

subplot(ax(5))
plot(t,C(:,5),'m')
title('Przebieg stężenia I^- w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie I^- [mol/dm^3]')

subplot(ax(6))
plot(t,C(:,6),'y')
title('Przebieg stężenia H^+ w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie H^+ [mol/dm^3]')

subplot(ax(7))
plot(t,C(:,7),'c')
title('Przebieg stężenia HOI w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie HOI [mol/dm^3]')

subplot(ax(8))
plot(t,C(:,8),'r')
title('Przebieg stężenia I_2 w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie I_2 [mol/dm^3]')

subplot(ax(9))
plot(t,C(:,9),'b')
title('Przebieg stężenia SO_3^2- w funkcji czasu')
xlabel('czas t [s]')
ylabel('Stężenie SO_3^2- [mol/dm^3]')

fprintf('Stężenie IO_3- po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,1))
fprintf('Stężenie HSO_3- po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,2))
fprintf('Stężenie SO_4-2 po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,3))
fprintf('Stężenie HIO2 po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,4))
fprintf('Stężenie I- po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,5))
fprintf('Stężenie H+ po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,6))
fprintf('Stężenie HOI po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,7))
fprintf('Stężenie I2 po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,8))
fprintf('Stężenie SO3-2 po 480 s wynosi %1.2e [mol/dm^3].\n',C(end,9))

function dC = fun1(~,C)
dC = zeros(9,1) ;
k1 = 2.95e-1 ;
k2 = 2.0e+10 ;
k3 = 1.0e+5 ;
k4 = 3.0e+5 ;
k5 = 3.0e+12 ;
k6 = 2.2 ;
k7 = 1.0e+6 ;
k8 = 5.0e+10 ;
k9 = 3.0e+3 ;

% C(1) = IO3-
% C(2) = HSO3-
% C(3) = SO42-
% C(4) = HIO2 
% C(5) = I-
% C(6) = H+
% C(7) = HOI
% C(8) = I2
% C(9) = SO32-

r1 = k1*C(1)*C(2) ;
r2 = k2*C(4)*C(5)*C(6) ;
r3 = k3*C(4)*C(7) ;
r4 = k4*C(1)*C(5)*C(6)^2 ;
r5 = k5*C(7)*C(5)*C(6) ;
r6 = k6*C(8) ;
r7 = k7*C(8)*C(2) ;
r8 = k8*C(9)*C(6) ;
r9 = k9*C(2) ;


dC(1) = - r1 + r3 - r4 ;
dC(2) = - r1 - r7 + r8 - r9 ;
dC(3) = r1 + r7 ;
dC(4) = r1 - r2 - r3 + r4 ;
dC(5) = - r2 + r3 - r4 - r5 + r6 + r7*2 ;
dC(6) = - r2 + r3*2 - r4*2 - r5 + r6 + r7*3 - r8 + r9 ;
dC(7) = r2*2 - r3 - r5 + r6 ;
dC(8) = r5 - r6 - r7 ;
dC(9) = - r8 + r9 ;


end