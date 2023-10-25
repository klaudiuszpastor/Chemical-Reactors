%Podczas projektowania elektrowni atomowej zdecydowano, że gaz zawierający
%radioaktywny Xe-138 ( czas połowniczego rozpadu 14 min) będzie
%przepuszczany przez układ dwóch zbiorników połączonych szeregowo. Objętość
%zbiorników została tak dobrana, aby średni czas przebywania w nich
%radioaktywnego gazu wynosił 2 tygodnie. W wyniku przeprowadzonych
%konsultacji zmodyfikowano oryginalny projekt i zastąpiono zbiorniki długą
%rurą. Jaki musi być rozmiar rury w porównaniu do zbiorników i jaki
%powinien być średni czas przebywania gazu w rurze, aby na wyjściu otrzymać
%gaz o takiej samej radioaktywności jak w przypadku układu z dwoma
%zbiornikami?

clear; clc;

tau = 14*24*60; %min
t = 14; %min
%CSTR
k = log(2)/t; %min
X = (k*tau)/(1+k*tau);
fprintf("Końcowe stężenie %0.6f\n",X)
%PFR
%ktau2 = In 1/(1-XA)
tau2 = (log(1/(1-X)))/k; 
fprintf("Średni czas przebywania gazu w rurze wynosi %3.1f min\n",tau2);
