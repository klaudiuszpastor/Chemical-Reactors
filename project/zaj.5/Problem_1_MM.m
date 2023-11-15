% Problem 1
clear
clc
%close all

% Dane:
X = [0.00 0.25 0.5 0.7 0.75];
r_A = [38 55 61 39 27];
F_A = 100;

% A) wykres Levenspiela
FARA = F_A./r_A;
plot(X,FARA);

% B) objętość reaktora CSTR oraz PFR 
% dla stopia przereagowania równego 0,75
alfa = 0.75;
% CSTR
% V = FA0(1/-r_A)X
V_CSTR = F_A*(1/r_A(5))*X(5);

fprintf('Objętość reaktora CSTR wynosi %1.3f\n', V_CSTR)

% PFR
trap_1 = ((FARA(2)+FARA(1))*(X(2)-X(1)))/2;
trap_2 = ((FARA(3)+FARA(2))*(X(3)-X(2)))/2;
trap_3 = ((FARA(4)+FARA(3))*(X(4)-X(3)))/2;
trap_4 = ((FARA(5)+FARA(4))*(X(5)-X(4)))/2;
V_PFR = trap_1 + trap_2 + trap_3 + trap_4;

fprintf('Objętość reaktora PFR wynosi %1.3f\n', V_PFR)

% C) zaproponowac i zoptymalizować układ maksymalnie
% trzech reaktorów połączonych szeregowo, gdzie
% stopień przereagowania będzie wynosił 0,75

% opcja 1
% pierwszy reaktor - CSTR

V_1 = X(3)*FARA(3);

fprintf('Objętość pierwszego reaktora CSTR wynosi %1.3f\n', V_1)

% drugi reaktor - PFR

V_2_1 = ((FARA(4)+FARA(3))*(X(4)-X(3)))/2;
V_2_2 = ((FARA(5)+FARA(4))*(X(5)-X(4)))/2;
V_2 = V_2_1 + V_2_2;

fprintf('Objętość drugiego reaktora PFR wynosi %1.3f\n', V_2)

% całkowita objętość reaktorów

V_C = V_1 + V_2;

fprintf('Objętość obu reaktorów dla opcja 1 wynosi %1.3f\n', V_C)

% opcja 2
%  pierwszy reaktor CSTR, drugi PFR, trzeci CSTR

% pierwszy reaktor CSTR
 
V_1_2 = X(2)*FARA(2);

% drugi reaktor PFR

V_2_2 = trap_2 + trap_3;

% trzeci reaktor CSTR

V_3_2 = (X(5)-X(4))*FARA(5);

% całkowita objętość reaktorów

V_C_2 = V_1_2 + V_2_2 + V_3_2;

fprintf('Objętość trzech reaktorów dla opcja 2 wynosi %1.3f\n', V_C_2)

% opcja 3
% pierwszy reaktor CSTR, drugi reaktor CSTR, trzeci reaktor PFR

% pierwszy reaktor CSTR

V_1_3 = X(3)*FARA(3);

% drugi reaktor CSTR

V_2_3 = (X(4)-X(3))*FARA(4);

% trzeci reaktor PFR

V_3_3 = trap_4;

% całkowita objętość reaktorów

V_C_3 = V_1_3 + V_2_3 + V_3_3;

fprintf('Objętość trzech rektorów dla opcja 3 wynosi %1.3f\n', V_C_3)

% D) Układ reaktorów połączonych szeregowo, tak,
% aby każdy miał 0,5m^3

% szukamy aby na początku był reaktor CSTR o objętości 0,5
% obliczamy równanie funkcji liniowej dla odcinka drugi - trzeci

P_1 = polyfit (X(2:3),FARA(2:3),1)

% więc mamy równanie y = -0,7154x + 1,997
% żeby wyliczyć punkt, w którym P = 0,5 robimy układ równań
% 0,5 = x * y i równanie funkcji
% otrzymujemy równanie kwadratowe
% -0,7154x^2 + 1,997x - 0,5 = 0

a1 = -0.7154 ;
b1 = 1.997 ;
c1 = -0.5 ;
inc1 = b1^2 - 4*a1*c1 ;
if inc1>0
   x_r1 = (-b1 - sqrt(inc1)) ./ (2.*a1) ;
   x_r2 = (-b1 + sqrt(inc1)) ./ (2.*a1) ;
   
elseif inc1==0
    x_r1 = -(b1)./(2.*a1) ;
else 
    disp("nie ma rozwiązania") 
end

% rozwiązanie x = 0,2781 więc taki jest stopień przereagowania dla
% pierwszego reaktora

y_1 = -0.7154*x_r2 + 1.997

% drugi reaktor będzie typu PFR
% pierwsze obliczamy pole pod linią dwa - trzy z uwzględnieniem "uciętego"
% kawałka

trap_5 = ((FARA(3)+y_1)*(X(3)-x_r2))/2;

% objętość którą należy uciąć z kolejnego trapeza:

delta_1 = 0.5 - trap_5;

% wynosi 0,1186
% obliczamy równanie funkcji liniowej dla odcinka trzeci - czwarty

P_2 = polyfit(X(3:4),FARA(3:4),1);

% otrzmujemy równanie y = 4,6238x-0,6726
% żeby wyliczyć punkt w którym P = 0,1186 rozwiązujemy układ równań
% 0,2372 = (1,6393+y)*(x-0,5) i równanie funkcji
% x = 0,5662

y_2 = P_2(1)*0.5662 + P_2(2);

% trzeci reaktor będzie typu PFR
% obliczamy pole pod linią trzy - cztery uwzględniając "ucięty" kawałek

trap_6 = ((FARA(4)+y_2)*(X(4)-0.5662))/2;

% dodając do tego trapez cztery - pięć wychodzi objętość

V_ost = trap_6 + trap_4;

fprintf('Ostatni reaktor ma objętość %1.3f więc nieco poniżej oczekiwanej wartości.\n',V_ost)







