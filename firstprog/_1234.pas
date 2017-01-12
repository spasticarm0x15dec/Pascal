program hello_string;
var
	hello: array [1..30] of char;
	i: integer;

begin
	hello := 'first'#10#9'second'#10#9#9'third'#10#9#9#9'fourth';
	for i := 1 to 31 do
	begin
		if hello[i] = #0 then
			break;
		write(hello[i])
	end;
	writeln
end.
