clear; clc; close

t0 = input('czas zerowy: ') ;
t1 = input('czas końcowy: ') ;

t = t0:0.1:t1 ;
[y1,y2]=fun(t) ;

plot(t,y1) ;
hold on
plot(t,y2,'r') ;
xlabel('czas[min]')
ylabel('amplituda[mm]')
grid on
legend('drgania 1','drgania 2') ;
hold off


function[y1,y2] = fun(t)
n = input("wpisz 1 jeśli chcesz wyświelić wykres ") ;
for i=t
    y1 = cos(t.^2)+ tan(t.^-0.75) ;
    y2 = 2*sin(t)+cos(t.^0.75) ;
    if n==1
    else
        disp('nie')
    end
end
end

