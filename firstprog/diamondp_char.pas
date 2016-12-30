program omm_char_diamond;




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
		PrintSpaces(((k - 1)*len*2-len) div 2);
		write('O');
		PrintSpaces(((k - 1)*len*2-len) div 2)
end;

if k > 1 then
	write(s);
writeln;
end;




var h, k, n: integer; s: string;
begin
	write('Enter the message to all world: ');
	readln(s);
	repeat
		write('Enter the diamond''s height(positive odd): ');
		readln(h);
	until (h > 1) and (h mod 2 = 1);
	n := h div 2;
	for k := 1 to n + 1 do
		PrintUpperOdd(n, k, s);
	for K := n downto 1 do
		PrintUpperOdd(n, k, s)
end.		
		


