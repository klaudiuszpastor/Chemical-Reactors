clear; clc; close;
%Spalanie metanu w tlenie 
% x1CH4 + x2O2 -> x3CO2 + x4H2O
%Bilans:
%Dla C: x1-x3=0
%Dla H: 4x1-2x4=0
%Dla O: 2x2-2x3-x4=0

%Budowanie macierzy
%Zakładamy że x4=1
A = [1,0,-1,0;
    4,0,0,-2;
    0,2,-2,-1;
    0,0,0,1] ;
%x = [x1;x2;x3;x4] ;
B = [0;0;0;1] ;

x = inv(A)*B ;
xx=x/0.5;

%symbolicznie
syms x1 x2 x3 x4

rownania = [x1-x3==0,
            4*x1-2*x4==0,
            2*x2-2*x3-x4==0,
            x4 ==1] ;
szukane = [x1,x2,x3,x4] ;

[x_1,x_2,x_3,x_4] = solve(rownania,szukane) ;
y=[x_1,x_2,x_3,x_4] ;
for i=4
    xx(i)=(y(i))/0.5 ;
end
disp(xx)
            
