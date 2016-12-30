program omm_char_diamond;

procedure PrintSpaces(count: integer);
var 
	i: integer;
begin
	for i := 1 to count do
		write(' ');
end;

procedure PrintLinesOfDiamond(n, k: integer; s: string);
var len: integer;
begin
	len := length(s);
	PrintSpaces((n + 1 - k)*len);
	write(s);
	if k > 1 then
		begin
			PrintSpaces((2*k - 3)*len);
			write(s);
		end;	
	writeln
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
		PrintLinesOfDiamond(n, k, s);
	for K := n downto 1 do
		PrintLinesOfDiamond(n, k, s)
end.		
		


