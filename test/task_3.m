clear; clc; close all;

% Reakcja odwracalna pierwszego rzędu:
% N2 + O2 <-> 2NO

T = 2700 ; %K
p = 20*101325 ; %Pa
R = 8.314 ; %J/mol*K
C_A0 = p/(R*T) ; %mol/dm3

% Obliczanie równowagowej konwersji
% na podstawie bialnsu molowego

K = 0.01 ;
%K = 4x^2/(0.77-x)*(0.15-x)
%K(0,1155-0.77x-0.15x+x^2)=4x^2
%0,01(x^2-0.92x+0.1155)=4x^2
%3.99x^2+0.0092x-0.001155 = 0

a = 3.99 ;
b = 0.0092 ;
c = -0.001155 ;
inc = b^2 - 4*a*c ;
if inc>0
    x = (-b-sqrt(inc))/(2*a) ;
    if x<0
         x = (-b+sqrt(inc))/(2*a) ;
    end
elseif inc==0 
        x = -b/(2*a) ;
else
    disp('nie ma rozwiązania')
end

N2_0 = 0.77 ;
N2 = 0.77-x ;
O2 = 0.15 - x;
NO = 2*x ;

X_e = (N2_0-N2)/N2_0 ;

X_A = 0.80 ;
t = 151*10^-6 ;

%Dla reakcji odwracalnej pierwszego rzędu
%Wzór dla k*tau = X_e*log(X_e/(X_e-X_A))

k = (X_e*log(X_e/(X_e-X_A*X_e)))/t ;

fprintf(['Równowagowa konwersja N_2 jest równa: %1.4f , a równowagowe stężenie NO wynosi %1.4f [mol/dm3] .\n' ...
    'Stała szybkości reakcji dla 1 rzędu wynosi %3.0f [s-1].\n'],X_e,NO,k)




