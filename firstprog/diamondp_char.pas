program omm_char_diamond;




{Print spaces}
procedure PrintSpaces(count: integer);

var 
	i: integer;

begin
	for i := 1 to count do
		write(' ');
end;




{Print the upper part of diamond with odd numbers of symbols of entered message}
procedure PrintUpperOdd(n, k: integer; s: string);

var len, l: integer; 

begin
	
	len := length(s);
	l := ((k - 1)*len*2-len) div 2;

	PrintSpaces((n + 1 - k)*len);
	write(s);


if k = 2 then
	begin
		PrintSpaces(l);
		write('@');
		PrintSpaces(l);
	end

else

if k = n + 1 then
        begin
	         PrintSpaces(l - 1);
		 write('0#0');
		 PrintSpaces(l - 1);
	end

else

if k > 1 then
	begin
		PrintSpaces(l);
		write('O');
		PrintSpaces(l)
end;

if k > 1 then
	write(s);
writeln;
end;




{Print the Upper Part of Diamond with even numbers of entered message}
procedure PrintUpperEven(n, k: integer; s: string);

var 
	len, l: integer;

begin
	len := length(s);
	l := ((k - 1)*len*2-len) div 2;

	PrintSpaces((n + 1 - k)*len);
	write(s);


if k = 2 then
        begin
		PrintSpaces((len div 2) - 1);
		write('{}');
		PrintSpaces((len div 2) - 1)
	end
else

if k = n + 1 then
	begin
		PrintSpaces(l - 2);
		write('()()');
		PrintSpaces(l - 2)
	end

else

if k > 1 then
	begin
		PrintSpaces(l - 1);
		write('()');
		PrintSpaces(l - 1)
	end;

if k > 1 then
	write(s);
writeln;
end;



	
{Print the Lower Part of Diamond}
procedure PrintLowerPart(n, k: integer; s: string);

var
	len, l, j: integer; 

begin
	

	len := length(s);
	l := ((k - 1)*len*2-len); 
	j := (n - k)*l*2*len;
	v := '17! 2017! S NOVUM GODOM!! URA! URA! URA! URA! SHASTHYA ZDOROV''YA I LUBVI VSEM VSEM VSEM VSEM';
	
	PrintSpaces((n + 1 - k)*len);
	write(s);

	for k := n downto 1 do
		begin
			write(u);
			write(s);
		end;	
		writeln
		end;
		











var 
	h, k, n, len, x, y, z: integer; s, g, u, p: string;
begin
	
	
	write('Enter the message to all world: ');
	readln(s);

	len := length(s);
		
	repeat
		write('Enter the diamond''s height(positive odd): ');
		readln(h);
	
	until (h > 1) and (h mod 2 = 1);

	n := h div 2;
	
	for k := 1 to n + 1 do
			if len mod 2 = 1 then
				PrintUpperOdd(n, k, s)
			else
				PrintUpperEven(n, k, s);
		

	g := '17! 2017! S NOVUM GODOM!! URA! URA! URA! URA! SHASTHYA ZDOROV''YA I LUBVI VSEM VSEM VSEM VSEM';
	x := ((2*k - 3)*len);
	u := copy(g, 1, x); 
		for k := n downto 1 do
			begin
				write(u);
				write(s);
				writeln
				end;
						
			
			
			
			
			
			

{



			
			if len mod 2 = 1 then
				PrintLowerPart(n, k, s)
			else
				PrintLowerPart(n, k, s)}
end.
