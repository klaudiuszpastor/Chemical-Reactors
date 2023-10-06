%przedział czasu na wykresie oś x
t = 0:0.1:60 ;
y1 = cos(t.^2)+ tan(t.^-0.75) ;
y2 = 2*sin(t)+cos(t.^0.75) ;

%plot(t,y1,t,y2) ;
plot(t,y1) ;
hold on
plot(t,y2,'r') ;
xlabel('czas[min]')
ylabel('amplituda[mm]')
grid on
legend('drgania 1','drgania 2') ;
hold off

