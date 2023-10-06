clear; clc; close

%xlswrite (nazwa pliku, zmienne, arkusz, zakres)

%przykładowa tablica do zapisania
A = rand(4,4) ;
xlswrite('dane.xlsx',A,2,'B2') ;

%Odczyt, funkcja xlsread
%zmienna = xlsread(nazwa pliku,arkusz,zakres)

%wczytywanie danych z drugiego arkusza pliku dane.xlsx
D=xlsread('dane.xlsx',2) ;
