clear; clc; close all;
t = [0, 50, 100, 150, 200, 250, 300, 350, 400] ;
NO2 = [0.01, 0.0079, 0.0065, 0.0055, 0.0048, 0.0043, 0.0038, 0.0034, 0.0031] ;
NO = [0, 0.0021, 0.0035, 0.0045, 0.0052, 0.0057, 0.0062, 0.0066, 0.0069] ;
O2 = [0, 0.0011, 0.0018, 0.0023, 0.0026, 0.0029, 0.0031, 0.0033, 0.0035] ;

% Wyznaczenie rzędu reakcji oraz stałą szybkości reakcji wykonuje na
% podstawie metody całkowej dla dwóch rzędów reakcji

% dla rzędu 1 wykonuje się wykres In(C_A/C_A0) od t
y1 = log(NO./NO2) ;

%plot(t,y1)
% na podstawie wykresu In(NO/NO2)=f(t) wykres nie wykazuje funkcji liniowej
% na tej podstawie wykonuje wykres dla 2 rzędu reakcji czyli 1/C_A0 od t

y2 = 1./NO2 ;
%plot(t,y2)
% Otrzymany wykres jest linią prostą więc współczynnik kierunkowy jest
% równy stałej szybkości reakcji
p = polyfit(t,y2,1) ;
k = p(1) ;

subplot(2,1,1)
plot(t,y1)
grid on
title('Wykres In(NO/NO_2) vs t')
xlabel('czas t [min]')
ylabel('In(NO/NO2)')

subplot(2,1,2)
plot(t,y2)
grid on
title('Wykres 1/NO_2 vs t')
xlabel('czas t [min]')
ylabel('1/NO2)')

fprintf('Stała szybkości reakcji wynosi %1.3f dla rzędu drugiego.\n',k)