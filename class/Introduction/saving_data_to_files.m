clear;clc
%funkcja fopen i fprintf

%przykładowa tablica do zapisania
A = rand(4,4) ;

%utworzenie pliku dane.txt
fid = (fopen ('dane.txt','w')) ;
% 'r' Open file for reading.
% 'w' Open or create new file for writing. Discard existing contents, if any.
% 'a' Open or create new file for writing. Append data to the end of the file.
% 'r+' Open file for reading and writing.
% 'w+' Open or create new file for reading and writing. Discard existing contents, if any.
% 'a+' Open or create new file for reading and writing. Append data to the end of the file.
% 'A' Open file for appending without automatic flushing of the current output buffer.
% 'W' Open file for writing without automatic flushing of the current output buffer.

%zapis do pliku
for row=1:size(A,1)
    %rows in matrix - size(rows,columns)
    for col=1:size(A,2)
        fprintf(fid,'%1.4f \t',A(row,col)) %%f Fixed-point notation 
        % (Use a precision operator to specify the number of digits 
        % after the decimal point.)
        % \t - 4 spaces (tab)
        if col == size(A,2)
            fprintf(fid,'\r\n') ;
            %\r Carriage return

        end
    end
end
%zamknięcie pliku
fclose(fid)