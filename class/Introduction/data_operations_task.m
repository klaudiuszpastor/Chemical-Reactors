clear; clc; close;
A = load("bjh1.txt") ;
B = load('bjh2.txt') ;

diameter_A = A(:,1) ;
diameter_B = B(:,1) ;

capasity_A = A(:,2);
capasity_B = B(:,2) ;

subplot(2,1,1);
plot(diameter_A,capasity_A)
xlabel('Średnica A [A]')
ylabel('Objętość A [cm3/g]')
subplot(2,1,2) ;
plot(diameter_B,capasity_B,'r')
xlabel('Średnica B [A]')
ylabel('Objętość B [cm3/g]')

%nanometry
nm_A = diameter_A.*0.1 ;
nm_B = diameter_B.*0.1 ;

%drugi wykres
figure
semilogx(nm_A,A(:,3),nm_B,B(:,3))
hold on
semilogx(nm_B,B(:,3))
xlabel('srednica [nm]')
ylabel('dV(logd) [cm3/g]')
xlim([1.5 1000])
hold off
