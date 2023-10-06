clear; clc; close all;
R = 8.314;
k = [0.00043 0.00103 0.0018 0.00355 0.00717];
T = [312.5 318.47 322.58 327.87 333.33];

odw_T=1./T;
Ink = log(k);
p = polyfit(odw_T,Ink,1);
v = polyval(p,odw_T);

a = p(1);
%a = -E/R
E = -a*R;

plot(Ink,odw_T)