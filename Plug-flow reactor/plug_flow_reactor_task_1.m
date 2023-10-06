clear; clc; close all;

k = 10^-2 ; 
T = 215 + 273.15 ; %K
p = 5*101325 ; %Pa
C_A0 = 0.0625 ; %mol/dm3

%Reakcja A-> 3R
%Obliczyć czas przebywania w reaktorze potrzebny do uzyskania 80%
%konwersji.



%wykorzystujemy wzór na tau = CA0 całka dXA/-rA
% rA = k*C_A0^(1/2)
% tau = C_A0 całka dX_A/k*C_A0^(1/2)*((1-X_A)/(1+epsilon*X_A))
tau = integral(@int,0,0.8) ;
t = (C_A0^(1/2)/k) *tau ;

fprintf('Czas przebywania w reaktorze potrzebny do uzyskania 80%% konwersji wynosi %2.2f sekund.\n',t)

function dt = int(X_A)
epsilon = (4-2)/2 ; 
dt = 1./((1-X_A)./(1+epsilon.*X_A)).^(1/2) ;
end

