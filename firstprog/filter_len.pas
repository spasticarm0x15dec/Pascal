program FilterLinght;

var
	i: integer; a: char;
	
begin
	i := 0;
	while not eof do
		begin
			read(a);
			if a = #10 then
				begin
				writeln(i);
				i := 0
				end
			else
				i := i + 1
		end
		
		
end.



		
