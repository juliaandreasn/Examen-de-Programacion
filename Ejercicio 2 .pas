program Imprimir;
uses crt;
var numero : longint;
opcion : string;

procedure trece;
begin
	writeln('=============================');
	writeln('Numero divisible entre Trece');
	writeln('=============================');
	textcolor(brown);
	writeln(numero);
	numero := (numero div 13);
	writeln(numero);
end;

procedure siete;
begin
	writeln('=============================');
	writeln('Numero divisible entre Siete');
	writeln('=============================');
	textcolor(Green);
	writeln(numero);
	numero := (numero div 7);
	writeln(numero);
	writeln;
end;

procedure cinco;
begin
	writeln('=============================');
	writeln('Numero divisible entre Cinco');
	writeln('=============================');
	textcolor(red);
	writeln(numero);
	numero := (numero div 5);
	writeln(numero);
	writeln;
end;

procedure tres;
begin
	writeln('=============================');	
	writeln('Numero divisible entre Tres');
	writeln('=============================');
	textcolor(lightblue);
	writeln(numero);
	numero := (numero div 3);
	writeln(numero);
	writeln;
end;

procedure dos;
begin
	writeln('=============================');
	writeln('  Numero divisible entre Dos' );
	writeln('=============================');
	textcolor(Yellow);
	writeln(numero);
	numero := (numero div 2);
	writeln(numero);
	writeln;
end;

begin
repeat
	clrscr;
	textcolor(White);
	writeln('======================');
	writeln('  Ingrese un numero   ');
	writeln('======================');
	readln(numero);
		if ((numero mod 2 = 0)) then dos;
	if ((numero mod 3 = 0)) then tres;
	if ((numero mod 5 = 0)) then cinco;
	if ((numero mod 7 = 0)) then siete;
	if ((numero mod 13 = 0)) then trece;

	if ((numero mod 2 = 0)) then writeln
	else if ((numero mod 3 = 0)) then writeln
	else if ((numero mod 5 = 0)) then writeln
	else if ((numero mod 7 = 0)) then writeln
	else if ((numero mod 13 = 0)) then writeln
		else 
		begin
			writeln('==================================================');
			writeln('Este numero no es Divisible entre: 13, 7, 5, 3 o 2');
			writeln('==================================================');
		end;
		TextColor(10); Writeln; 
		writeln('Presione la tecla Intro para continuar');
		writeln('Presione la latra b para salir');
		Readln(opcion);
			until (opcion = 'b') or (opcion = 'B');
		begin 
		clrscr;
			writeln('==================');
			writeln('|   Hasta Luego  |');
			writeln('==================');
		end;
end.
