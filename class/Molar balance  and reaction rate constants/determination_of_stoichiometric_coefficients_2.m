clear; clc; close
%Znaleźć współczynniki stechiometryczne poniższych reakcji
%x1C2O7(2-) + x2Fe(2+) + x3H(+) -> x4Cr(3+) + x5Fe(3+) + x6H2O
%Dla Cr: 12*x1-3*x4 =0
%Dla O : -14*x1+2*x6=0
%Dla Fe: 2*x2-3*x5=0
%Dla H: x3-2*x6=0
%Ogólnie: -2*x1+2*x2+x3-3*x4-3*x5=0

syms x1 x2 x3 x4 x5 x6
rownania = [
    x1 == 1,
    2*x1-x4 == 0,
    7*x1-x6 == 0,
    x2-x5 == 0,
    x3-2*x6==0,
    -2*x1+2*x2+x3-3*x4-3*x5==0
    ] ;
szukane = [x1,x2,x3,x4,x5,x6] ;
[x_1,x_2,x_3,x_4,x_5,x_6] = solve(rownania,szukane) ;

rozwiazania = [x_1,x_2,x_3,x_4,x_5,x_6] ;
disp(rozwiazania)