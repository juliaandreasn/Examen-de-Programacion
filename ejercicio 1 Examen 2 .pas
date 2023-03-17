program Convertidor_frase;
uses crt;
var Numero : longint;
var letra, op : char;
var frase: string;
var codigo, opcion: integer;

procedure Binario;
var  numeroBIN: string;
     i, j: integer;
begin
clrscr;
	writeln('===================================================================');
	writeln('|                       Convertir a Binario                       |');
	writeln('===================================================================');
	writeln('-------------------------Ingrese una frase------------------------|');
	readln(frase);
			
  for i := 1 to length(frase) do begin
    letra := frase[i];
    codigo := ord(letra);
    numeroBIN := '';
    
    while codigo > 0 do begin
      if (codigo mod 2) = 0 then
        numeroBIN := '0' + numeroBIN
      else
        numeroBIN := '1' + numeroBIN;
      
      codigo := codigo div 2;
    end;
    
    for j := 1 to (8 - length(numeroBIN)) do
      write('0');
    
    write(numeroBIN, ' ');
  end;
end;

procedure hexadecimal;
var numeroHEX: string;
	i, j: integer;
begin
clrscr;
	writeln('===================================================================');
	writeln('|                     Convertir a Hezadecimal                      |');
	writeln('===================================================================');
	writeln('-------------------------Ingrese una frase------------------------|');
	readln(frase);
			
  for i := 1 to length(frase) do begin
			letra := frase[i];
			codigo := ord(letra);
			numeroHEX := '';   
    while codigo > 0 do begin
      if (codigo mod 16) < 10 then
        numeroHEX := chr((codigo mod 16) + 48) + numeroHEX
		else
        numeroHEX := chr((codigo mod 16) + 55) + numeroHEX;     
		codigo := codigo div 16;
    end;
    
		for j := 1 to (2 - length(numeroHEX)) do
		write('0');
		write(numeroHEX, ' ');
  end;
end;

procedure octal;
var numeroOCT: string;
	a, b: integer;
begin
	clrscr;
		writeln('===================================================================');
		writeln('|                        Convertir a Octal                        |');
		writeln('===================================================================');
		writeln('-------------------------Ingrese una frase------------------------|');
		readln(frase);
			
	for a := 1 to length(frase) do begin
    letra := frase[a];
    codigo := ord(letra);
    numeroOCT := '';
    while codigo > 0 do begin
      numeroOCT := chr((codigo mod 8) + 48) + numeroOCT;
      codigo := codigo div 8;
    end;
    for b := 1 to (3 - length(numeroOCT)) do  write('0');
    write(numeroOCT, ' ');
  end;
end;
procedure Romano;
	var numeroROM: string;
		i: integer;
begin
	clrscr;
		writeln('===================================================================');
		writeln('|                        Convertir a Romano                        |');
		writeln('===================================================================');
		writeln('-------------------------Ingrese una frase------------------------|');
		readln(frase);
			
  for i := 1 to length(frase) do begin
    letra := frase[i];
    codigo := ord(letra);
    numeroROM := '';
    
	while codigo >= 1000 do begin
      numeroROM := numeroROM + 'M';
      codigo := codigo - 1000;
	end;
    
    if codigo >= 900 then begin
      numeroROM := numeroROM + 'CM';
      codigo := codigo - 900 end
     else if codigo >= 500 then begin
      numeroROM := numeroROM + 'D';
      codigo := codigo - 500;
    end;
    
    while codigo >= 100 do begin
      numeroROM := numeroROM + 'C';
      codigo := codigo - 100;
    end;
    
    if codigo >= 90 then begin
      numeroROM := numeroROM + 'XC';
      codigo := codigo - 90; end
    else if codigo >= 50 then begin
      numeroROM := numeroROM + 'L';
      codigo := codigo - 50;
    end;
    
    while codigo >= 10 do begin
      numeroROM := numeroROM + 'X';
      codigo := codigo - 10;
    end;
    
    if codigo >= 9 then begin
      numeroROM := numeroROM + 'IX';
      codigo := codigo - 9;
    end
    else if codigo >= 5 then begin
      numeroROM := numeroROM + 'V';
      codigo := codigo - 5;
    end;
    
    while codigo >= 1 do begin
      numeroROM := numeroROM + 'I';
      codigo := codigo - 1;
    end;
    
    writeln(numeroROM, ' ');
  end;
end;


begin
repeat 
clrscr;
	writeln('===================================================================');
	writeln('|                        Convertidor                              |');
	writeln('===================================================================');
	writeln('| Saludos, Gracias por preferirnos para realizar su operacion     |');
	writeln('-------------------------------------------------------------------');
	writeln('|A continuacion indique un numero segun la operacion que realizara|');
	writeln('===================================================================');
	writeln('|||||||||||||||||||1-Convertir a Numero Binario||||||||||||||||||||');						
	writeln('|||||||||||||||||||2-Convertir a Numero Hexadecimal||||||||||||||||');
	writeln('|||||||||||||||||||3-Convertir a Numero Octal||||||||||||||||||||||');
	writeln('|||||||||||||||||||4-Convertir a Numero Romano|||||||||||||||||||||');
	writeln('===================================================================');
	writeln('Presione el numero correspondiente a la operacion que realizará');
	readln(opcion);   		    
		if opcion = 1 then binario ; 
		if opcion = 2 then octal ;
		if opcion = 3 then hexadecimal; 
		if opcion = 4 then romano; 
		if opcion = 1 then writeln else if opcion = 2 then writeln  else if opcion = 3 then writeln else if opcion = 4 then writeln
			else writeln('No ha seleccionado ningun caracter valido');
			while (opcion <> 1) and (opcion <> 2) and (opcion <> 3)  and (opcion <> 4) do		
		begin
		   write('Intente de nuevo'); 
		   write('-->');
		   readln(opcion);
	  end;
			writeln('===========================================');
			writeln('|----------------Menu---------------------|');
			writeln('===========================================');
			writeln('|(Enter)Deseo seguir haciendo Conversiones|');
			writeln('|||||||(2)Deseo abandonar el programa||||||');
			writeln('===========================================');
			Readln(op);						
	until (op = '1') or (op = '1');
end.


