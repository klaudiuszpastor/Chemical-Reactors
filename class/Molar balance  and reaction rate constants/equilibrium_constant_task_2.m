clear; clc; close all;
K = linspace(1,20,100) ;
A_0 = input('Stężenie początkowe CO: ') ;
B_0 = input('Stężenie początkowe H2O: ') ;
%równanie reakcji
%CO + H2O <-> CO2 + H2

%K==x^2 / ((A_0 - x)*(B_0-x)) 
%(K-1)x^2 - (A_0+B_0)*x*K +K*A_0*B_0 = 0

a = K-1 ;
b = -(A_0*K + B_0*K) ;
c = K*A_0*B_0 ;
inc = b.^2 - 4.*a.*c ;

if inc>0
   x_r = (-b - sqrt(inc)) ./ (2.*a) ;
   if x_r<0
      x_r = (-b + sqrt(inc)) ./ (2.*a) ;
      disp('x jest na minusie:')
   end
elseif inc==0
    x_r = -(b)./(2.*a) ;
else 
    disp("nie ma rozwiązania") 
end

A = A_0 - x_r ;
B = B_0 - x_r ;
C = x_r ;
D = C ;

plot(K,A,'r',K,B,'g',K,C,'b',K,D,'y') 

