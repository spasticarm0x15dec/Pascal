program diamond_proc;

procedure PrintSpaces(count: integer);
var 
	i: integer;
begin
	for i := 1 to count do
		write(' ');
end;

procedure PrintLineOfDiamond(n, k: integer);
begin
	PrintSpaces(n + 1 - k);
	write('*');
	if k > 1 then
	begin
		PrintSpaces(2*k - 3);
		write('*');
	end;
	writeln
end;

var
	h, n, k : integer;
begin
	repeat
		write('Enter the number of diamond''s lines(positive odd): ');
		readln(h);
	until 
		(h > 1) and (h mod 2 = 1);
		n := h div 2;
	for k := 1 to n + 1 do
		PrintLineOfDiamond(n, k);
	for k := n downto 1 do
		PrintLineOfDiamond(n,k);
end.
		
			
	

