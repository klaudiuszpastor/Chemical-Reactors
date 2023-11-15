%Zależność szybkości ubywania substratu A od stopnia przereagowania w
%reakcji typu A-> P zachodzącej w warunkach adiabatycznych
clear; clc; close;

%narysować wykres Levenspiela
X = [ 0.50, 0.70];
ra = [ 61, 39];
Fa = 100;
Fa_ra = Fa./ra;
plot(X, Fa_ra,'*');

%wyznaczyć objętość reaktora CSTR oraz FPR dla stopnia przereagowania
%wynoszącego 0,75
%CSTR
alfa = 0.75;
ra_75 = ra(5);
V = Fa * (1/ra_75) * alfa;
%PFR


%zaproponować i zoptymalizać układ maksymalnie trzech reaktorów połączonych
%szeregowo, na końcu którego stopień przereagowania będzie wynosił 0,75.
%Wybór uzasadnić. 
