%Reaktory połączone szeregowo
%Strumień ciekłego surowca o stężeniu 1 mol/dm3 przepływa przez układ dwóch
%reaktorów przepływowych z doskonałym mieszaniem (CSTR) połączonych
%szeregowo. Stężenie reagenta A na wyjściu z pierwszego reaktora wynosi 0,5
%mol/dm3. Znaleźć stężenie A na wyjściu z drugiego reaktora przy założeniu,
%że mamy do czynienia  zreakcją drugorzędową względem reagenta A. Stosunek
%objętości reaktorów V2/V1 = 2

clear; clc;

C_Ain1 = 1; %mol/dm3
C_Aout1 = 0.5; %mol/dm3
ktau1 = (C_Ain1 - C_Aout1)/C_Aout1^2; 

%tau1 = V1/v
%tau2/tau1 = 2
% k = ((C_Ain1 - C_Aout1)/C_Aout1^2)/tau1
%ktau2 = (CA1 - CA2) / CA2^2 = 2/tau1 * tau2
ktau2 = 2*ktau1;

% 4*CA2^2 = C_A1 - C_A2
% 4CA^2 + CA2 - CA1 = 0
a1 = 4 ;
b1 = 1 ;
c1 = -C_Aout1 ;
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

fprintf("Stężenie na wyjściu z drugiego reaktora wynosi %0.2f [mol/dm3]\n",x_r1)
