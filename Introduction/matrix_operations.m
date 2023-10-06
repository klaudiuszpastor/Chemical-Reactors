%A = [1 3; 2 4];
%A = [3 5 2 7; 2 4 3 5] ;
A = [1 2 3;4 5 6; 7 8 9] ;
%B = [0 4;5 10] ;
%B = [2;6];
B = [1 2 3;4 5 6;7 8 9] ;
%Dodawanie
C = A + B ;
%Odejmowanie
D = A - B ;
%Mnożenie
E = A*B ; %Mnożenie jest możliwe gdy ilość kolumn macierzy A jest równa %
%ilości wierszy macierzy B%

%W dzieleniu macierzy rozróżnia się dzielenie lewostronne C=A\B takie, że
%A*C = B oraz dzielenie prawostronne C = A/B takie, że C*A = B
%Lewostronnie%
C=A\B ;

%Działania tablicowe stosowane są, gdy konieczne jest działania na
%poszczególnych elementach macierzy (np. pomnożenie elementów o tych samych
%indeksach
Q = A.*B ;
W = A^2 ;
E = A.*B ;