clear;clc;
%Odczyt z pliku
B= load('dane.txt') ;


%funkcją fopen i fscanf

fid=fopen('dane.txt','r') ;
C = fscanf(fid,'%f',[4,4]) ;
fclose(fid);

%d or %i  Base 10
%u  Base 10
%o Base 8 (octal)
%x Base 16 (hexadecimal), lowercase letters a–f
%X Same as %x, uppercase letters A–F
%f Fixed-point notation (Use a precision operator to specify the number of digits after the decimal point.)
%e Exponential notation, such as 3.141593e+00 (Use a precision operator to specify the number of digits after the decimal point.)
%E Same as %e, but uppercase, such as 3.141593E+00 (Use a precision operator to specify the number of digits after the decimal point.)
%g The more compact of %e or %f, with no trailing zeros (Use a precision operator to specify the number of significant digits.)
%G The more compact of %E or %f, with no trailing zeros (Use a precision operator to specify the number of significant digits.)
%c Single character
%s Character vector or string array. The type of the output text is the same as the type of formatSpec.