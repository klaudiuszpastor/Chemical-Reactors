%Mieszanina zwierająca 20% ozonu i 80% powietrza przepływa przez reaktor
%rurowy z szybkością 1dm^3/s. Temperatura w reaktorze wynosi 93C, zaś
%ciśnienie 1,5 atm. W warunkach tych następuje dekompozycja ozonu:
% 2O_2 -> 3O_2 -r_ozon = k*C^2_ozon k =0,05[dm3/mol*s]
%Wyznacyć objętość reaktora potrzebną do uzyskania 50% konwersji ozonu.

clear; clc;

%1. początkowe stężenie ozonu
%2. epsilon - reakcja ze zmianą objętości
%3. reakcja drugiego rzędu - reaktor PFR

x_03 = 0.2; %ułamek masowy ozonu
x_O2 = 0.8; %ułamek masowy powietrza
T = 93 + 273.15; %K
v = 1; %dm3/s
p = 1.5*101325; %Pa
k = 0.05; %dm3/mol*s
R = 8.314; %stała gazowa
% reakcja 2 rzędu
X_O3 = 0.5; %stopień konwersji
%pV = nRT
%C = n/V = p/RT 
C = p/(R*T); %stężenie mieszaniny
C_O3 = 0.2*C; %stężenie ozonu
ep = ((3-2)/2)*0.2; %zmiana gęstości/epsilon

%wzór dla n = 2 ep!=0 
%k*tau*C_A = 2*ep*(1+ep)In(1-X_A)+ep^2*X_A+(ep+1)^2*X_A/*(1-X_A)

tau = (2*ep*(1+ep)*log(1-X_O3)+ep^(2)*X_O3+(ep+1)^(2)*(X_O3/(1-X_O3)))/(k*C_O3);
%Objętość wyliczymy ze wzoru tau = V/v
V = v*tau; %m3
fprintf("Objętość reaktora wynosi %0.2f m3\n",V);
