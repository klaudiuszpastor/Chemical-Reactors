clear; clc; close all;

%Reakcja
%N2 + O2 <-> 2NO

T = 2400 ;
K_C = 4e-3 ;

%stosunek 1:1

% K = x^2/(1-x/2)^2
% K = x^2 / (1- x + 0.25*x^2)
% 4e-3 - 4e-3*x + (0.25*4e-3*x^2)=x^2
% ((1e-3)-1)*x^2 - 4e-3*x + 4e-3 =0
a1 = (1e-3)-1 ;
b1 = -4e-3 ;
c1 = 4e-3 ;
inc1 = b1^2 - 4*a1*c1 ;
if inc1>0
   x_r1 = (-b1 - sqrt(inc1)) ./ (2.*a1) ;
   if x_r1<0
      x_r1 = (-b1 + sqrt(inc1)) ./ (2.*a1) ;
   end
elseif inc1==0
    x_r1 = -(b1)./(2.*a1) ;
else 
    disp("nie ma rozwiązania") 
end

%stosunek 4:1
a2 = 4-4e-3 ;
b2 = 10*4e-3 ;
c2 = -16*4e-3 ;
inc2 = b2^2 - 4*a2*c2 ;
if inc2>0
   x_r2 = (-b2 - sqrt(inc2)) ./ (2.*a2) ;
   if x_r2<0
      x_r2 = (-b2 + sqrt(inc2)) ./ (2.*a2) ;
   end
elseif inc2==0
    x_r2 = -(b2)./(2.*a2) ;
else 
    disp("nie ma rozwiązania") 
end

disp(x_r1)
disp(x_r2)

