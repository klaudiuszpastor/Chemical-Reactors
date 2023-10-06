%Generowanie wektora:
V = sqrt(4) : -0.5 : 0 ;
%Generowanie macierzy:
M = [ 1:3:10; pi:-1:0] ;
%Generowanie macierzy o szczególnych właściwościach:
Q = zeros(1,3) ; %Q to macierz wypełniona zerami
W = ones(2,2) ; %W to macierz wypełniona jedynkami
E = eye(5,5) ; %E to macierz jedynkowa o danych wymiarach
R = rand(6,7) ; %R to macierz wypełniona losowymi liczbami z przedziału (0,1)

a = M(4) ; %czwarty element w macierzy M
b = M(2,:) ; %drugi wiersz macierzy M
c = M(:,4) ; %czwarta kolumna macierzy M
