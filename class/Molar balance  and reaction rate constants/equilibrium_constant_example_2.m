clear; clc; close;
% A + B <-> C + D
A_0 = 3 ;
B_0 = 6 ;
K = 1 ;
%Równowagowe
%A = 3 - x ;
%B = 6 - x ;
%C = D = x ;
%1 = x^2 / (3-x)(6-x)

syms x
rownanie = [1 == x^2/((3-x)*(6-x))] ;
szukane = x ;
x_k = solve(rownanie,szukane) ;

A = A_0 - x_k ;
B = B_0 - x_k ;
C = x_k ;
D = C ;

rozwiazanie = [A B C D]