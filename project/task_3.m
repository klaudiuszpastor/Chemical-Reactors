% Gazy odlotowe powstające w wlektroni atomowej w wyniku odparowania wody
% chłodzącej reaktor zawierają różnorone pierwiastki radioaktywne. Jednym z
% najbardziej uciążliwych jest Xe-133, którego czas połowicznego rozpadu
% wynosi 5,2 dnia. Gazy odlotowe przepływają w sposób ciągły przez
% zbiornik. Średni czas przebywania gazów w zbiorniku wynosi 30 dni.
% Zakładając, że zawartość zbiornika jest doskonale wymieszana obliczyć
% jaki procent radioaktywności zostanie usunięty w tym czasie z gazów
% odlotowych.

clear; clc;

tau = 30; %dni
t = 5.2; %dni
% stała szybkości reakcji
k = log(2)/5.2; %1/dzień

%k*tau = X_A / 1-X_A
% k*tau * (1- X_A) = X_A
% k*tau - X_A*k*tau = X_A
% k*tau = X_A + X_A*k*tau
% k*tau = X_A ( 1+ k*tau)
% k*tau/ (1+k*tau) = X_A

X = (k*tau)/(1+k*tau);
fprintf("Zostanie usunięte %.0f%% Xe-133\n",X*100);



