
clear; clc; close all;

X = linspace(0,0.7);

A = input('Stężenie początkowe dla A:') ;
B = input('Stężenie początkowe dla B:') ;

%równanie 1 A+B <-> 2C
C_A1 = A-(A*X) ;
C_B1 = B-(B*X) ;
C_C1 = 2*X ;
K1 = (C_C1.^2) ./ (C_A1.*C_B1) ;

%równanie 2 3A+B <-> 2C
C_A2 = (3*A)-(3*A*X) ;
C_B2 = C_B1 ;
C_C2 = C_C1 ;
K2 = (C_C2.^2) ./ ((C_A2.^2).*C_B2);

%równanie 3 A+4B <-> C
C_A3 = A-(A*X) ;
C_B3 = 4*B-(4*B*X) ;
C_C3 = X ;
K3 = (C_C3) ./ (C_A2.*(C_B3.^4)) ;

%wykresy
plot(X,K1,'b')
hold on
plot(X,K2,'r')
plot(X,K3,'g')
xlabel('Stopień konwersji alpha')
ylabel('Stała równowaga chemicznej K')
grid on
hold off




