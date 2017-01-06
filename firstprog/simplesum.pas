program SimpleSum;
var
	c, sum, count: longint;
begin
	sum := 0;
	count := 0;
	while not seekeof do
	begin
		read(c);
		sum := sum + c;
		count := count + 1;
	end;
	writeln(sum, ' ', count)
end.

	
