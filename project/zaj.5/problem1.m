%Zależność szybkości ubywania substratu A od stopnia przereagowania w
%reakcji typu A-> P zachodzącej w warunkach adiabatycznych
clear; clc; close;

%a)
%narysować wykres Levenspiela
X = [ 0, 0.25, 0.50, 0.70, 0.75];
ra = [ 38, 55, 61, 39, 27];
Fa = 100;
Fa_ra = Fa./ra;
figure(1)
plot(X, Fa_ra,'LineWidth',2);
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("Wykres Levenspiela")
grid on
xlim([0,0.75])

%b)
%wyznaczyć objętość reaktora CSTR oraz FPR dla stopnia przereagowania
%wynoszącego 0,75
%CSTR
alfa = 0.75;
ra_75 = ra(5);
%V/F_A0 = X_A/r_A
V_cstr = X(5) * Fa_ra(5);
fprintf("b)\nObjętość reaktora CSTR dla X=%0.2f wynosi %1.3f m3.\n",alfa,V_cstr);
%PFR
%V/F_A0 = całka(0-X_A) dX_A/r_A
V_pfr = trapz(X,Fa_ra);
fprintf("Objętość reaktora PFR dla X=%0.2f wynosi %1.3f m3.\n",alfa,V_pfr);
figure(2)
subplot(1,2,1)
plot(X, Fa_ra,'LineWidth',2);
hold on
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("CSTR (V=2.778 m3)")
grid on
xlim([0,0.75])
rectangle('Position',[0,1.5,X(5),Fa_ra(5)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
hold off

subplot(1,2,2)
plot(X, Fa_ra,'LineWidth',2);
hold on
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("PFR (V=1.565 m3)")
grid on
xlim([0,0.75])
area(X,Fa_ra,'FaceColor',[0.4 0.4 0.4])
hold off
%c)
%zaproponować i zoptymalizać układ maksymalnie trzech reaktorów połączonych
%szeregowo, na końcu którego stopień przereagowania będzie wynosił 0,75.
%Wybór uzasadnić. 
fprintf("\n\nc)\n");


%przypadek 1
%CSTR do 0.5 PFR do 0.7 i PFR do 0.75
p1 = X(3)*Fa_ra(3);
p2 = trapz(X(3:4),Fa_ra(3:4));
p3 = trapz(X(4:5),Fa_ra(4:5));
V1 = p1+p2+p3;
fprintf("Dla przypadku 1 objętość wynosi %1.3f m3.\n",V1)
figure(3)
subplot(2,2,1)
plot(X,Fa_ra,'r','LineWidth',3)
hold on
rectangle('Position',[0,1.5,X(3),Fa_ra(3)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
xline([0.7,0.75],LineWidth=2)
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("Przypadek 1 (V=1.397 m3)")
grid on
xlim([0,0.75])
hold off

%przypadek 2
%PFR do 0.25 CSTR do 0.5 PFR do 0.75
p4 = trapz(X(1:2),Fa_ra(1:2));
p5 = X(2)*Fa_ra(2);
p6 = trapz(X(3:5),Fa_ra(3:5));
V2 = p4+p5+p6;
fprintf("Dla przypadku 2 objętość wynosi %1.3f m3.\n",V2)
subplot(2,2,2)
plot(X,Fa_ra,'r','LineWidth',3)
hold on
rectangle('Position',[0.25,1.5,X(3)-0.25,Fa_ra(2)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
xline([0.25,0.5],LineWidth=2)
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("Przypadek 2 (V=1.588 m3)")
grid on
xlim([0,0.75])
hold off

%przypadek 3
%CSTR do 0.25 PFR do 0.5 i PFR do 0.75
p7 = X(2)*Fa_ra(2);
p8 = trapz(X(2:3),Fa_ra(2:3));
p9 = trapz(X(3:5),Fa_ra(3:5));
V3 = p7+p8+p9;
fprintf("Dla przypadku 3 objętość wynosi %1.3f m3.\n",V3)
subplot(2,2,3)
plot(X,Fa_ra,'r','LineWidth',3)
hold on
rectangle('Position',[0,1.5,X(3)-0.25,Fa_ra(2)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
xline([0.25,0.5],LineWidth=2)
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("Przypadek 3 (V=1.464 m3)")
grid on
xlim([0,0.75])
hold off

%przypadek 4
%PFR do 0.2 PFR do 0.7 i CSTR do 0.75
p10 = trapz(X(1:2),Fa_ra(1:2));
p11 = trapz(X(2:4),Fa_ra(2:4));
p12 = (X(5)-X(4))*Fa_ra(5);
V4 = p10+p11+p12;
fprintf("Dla przypadku 4 objętość wynosi %1.3f m3.\n",V4)
subplot(2,2,4)  
plot(X,Fa_ra,'r','LineWidth',3)
hold on
rectangle('Position',[0.7,1.5,X(5)-0.7,Fa_ra(5)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
xline([0.2,0.7],LineWidth=2)
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
title("Przypadek 4 (V=1.594 m3)")
grid on
xlim([0,0.75])
hold off

%d)
%zaproponować optymalny układ reaktorów połączonych szeregowo, jeżeli
%objętość pojedynczego reaktora wynosi 0.5 m3
fprintf('\n\nd)\n')
% pfr -> pfr -> cstr
linia1 = polyfit(X(1:2),Fa_ra(1:2),1);

a1 = -3.2536 ;
b1 = 2*linia1(2) ;
c1 = -1 ;
inc1 = b1^2 - 4*a1*c1 ;
if inc1>0
   x_r1 = (-b1 - sqrt(inc1)) ./ (2.*a1) ;
   x_r2 = (-b1 + sqrt(inc1)) ./ (2.*a1) ;
elseif inc1==0
    x_r1 = -(b1)./(2.*a1) ;
else 
    disp("nie ma rozwiązania") 
end

y1 = x_r2*linia1(1)+linia1(2);
fprintf('Dla pierwszego reaktora PFR 0,5 m3 wychodzi w punkcie (%1.3f,%1.3f).\n',x_r2,y1);
trapez1 = trapz([x_r2, X(2)],[y1,Fa_ra(2)]);
trapez2 = trapz(X(2:3),Fa_ra(2:3));
pole1 = 0.5 - (trapez1+trapez2);

linia2 = polyfit(X(3:4),Fa_ra(3:4),1);
x_r3 = 0.506992;
y2 = x_r3*linia2(1)+linia2(2);
fprintf('Dla drugiego reaktora PFR 0,5 m3 wychodzi w punkcie (%1.3f,%1.3f).\n',x_r3,y2);

pole_CSTR = (X(5)-x_r3)*(Fa_ra(5));
fprintf('Dla reaktora trzeciego, końcowego CSTR objętość wychodzi %1.3f m3.\n',pole_CSTR);
x_r4 = 0.701478;
y3 = x_r4*linia2(1)+linia2(2);
fprintf('0,5 m3 CSTR wychodziłoby w punkcie (%1.3f,%1.3f).\n',x_r4,y3)

figure(4)
plot(X, Fa_ra,'g','LineWidth',2);
hold on
xlabel("Stopień przereagowania, X");
ylabel("F_A/r_A");
grid on
rectangle('Position',[x_r3,1.5,X(5)-x_r3,Fa_ra(5)-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
rectangle('Position',[x_r3,1.5,x_r4-x_r3,y3-1.5],'LineWidth',2,'EdgeColor',[0.4 0.4 0.4]);
plot([x_r2,x_r3,x_r4],[y1,y2,y3],'*')
xline([x_r2,x_r3])
xlim([0,0.75])
hold off


