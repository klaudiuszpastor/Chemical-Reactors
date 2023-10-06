clear; clc; close
%Znaleźć współczynniki stechiometryczne poniższych reakcji
%x1P2I4 + x2P4 + x3H2O -> x4PH4I + x5H3PO4
%Dla P: 2*x1-4*x2-x4-x5=0
%Dla I: 4*x1-x4=0
%Dla H: 2*x3-3*x3=0
%Dla O: x3-4*x5 =0
%Ogólne: x5=1 

syms x1 x2 x3 x4 x5
rownania = [
    2*x1+4*x2-x4-x5==0,
    4*x1-x4==0,
    2*x3-4*x4-3*x5==0,
    x3-4*x5 == 0,
    x5==1 
    ] ;
szukane = [x1,x2,x3,x4,x5] ;
[x_1,x_2,x_3,x_4,x_5] = solve(rownania,szukane) ;

rozwiazania = [x_1,x_2,x_3,x_4,x_5] ;
disp(rozwiazania)

p = double(rozwiazania) ;
for i=1:5
    x(i)=(p(i)/min(p))*10;
end
disp(x)