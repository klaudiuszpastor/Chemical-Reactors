A = [3 2 1;-1 3 2;1 -1 -1] ;
B = [10;5;-1];
%Wtedy możemy zapisać w postaci
%Ax=B
%Rozwiązanie:
%x=inv(A)*B

x = inv(A)*B;

clear; clc;
%rozwiązanie metodą symboliczną
%definiujemy równania, w obliczeniach symbolicznych stosujemy '=='
syms x1 x2 x3 
%definiujemy równania, w obliczeniach symbolicznych stosujemy '=='
rownania = [3*x1 + 2*x2 + x3 == 10,
            -x1 + 3*x2 + 2*x3 ==5,
            x1 - x2 - x3 == -1] ;
%tworzymy zmienną zwierającą wszysktie, x-y
szukane = [x1 x2 x3] ;

%rozwiązujemy układ równań funkcją solve
[r1,r2,r3] = solve(rownania,szukane) ;

%wyświetlanie wyników
fprintf('x1=%d \n',r1)
fprintf('x2=%d \n',r2)
fprintf('x3=%d \n',r3)

