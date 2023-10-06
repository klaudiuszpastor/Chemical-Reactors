clear; clc; close all;

%Reakcja w fazie gazowej
% A -> 2B

v_0 = 5 ; %m3/s
C_A0 = 200 ; %mol/m3

%stopień przereagowania jaki można otrzymać w reaktorze CSTR o objętości 
V = 90*10^-3; %dm3 -> m3
tau = V/v_0 ;


%dla X<=0.5 rA=-(1/3)*10^(-8)

%C_A0*v_0-C_A0*(1-X_A)*v_0=V*(1/3)*10^(-8)
%-C_A0*(1-X_A)*v_0=V*(1/3)*10^(-8)-C_A0*v_0
%1-X_A=(V*(1/3)*10^(-8)-C_A0*v_0)/(-C_A0*v_0)

X_A1 = 1- (V*(1/3)*10^(-8)-C_A0*v_0)/(-C_A0*v_0) ;

%dla X>0.5 rA=(1/-(3+10*(alpha-0.5)))*10^(-8)
%C_A0*v_0-C_A0*(1-X_A)*v_0=V*(1/-(3+10*(alpha-0.5)))*10^(-8)

fun1 = @(alpha) C_A0*v_0-C_A0*(1-alpha)*v_0-V*(1/-(3+10*(alpha-0.5)))*10^(-8) ;
alpha=fzero(fun1, 0) ;

fprintf('Dla drugiego warunku X wynosiło: %1.1e, więc wychodziło poniżej 0.5 \n',alpha)
%czas obliczyłem z innego wzoru dla pierwszego warunku
t = (C_A0*X_A1)/((1/3)*10^(-8)) ;
fprintf('Stopień przereagowania jaki można otrzymać w reaktorze CSTR o objętości 90dm3 wynosił %1.1e.\n ',X_A1)
fprintf('\nCzas potrzebny na osiągnięcie 40 %% konwersji wynosił %1.3f sekundy.\n',t)



