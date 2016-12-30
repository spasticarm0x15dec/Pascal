program star_slash;
var
	n,m: integer;
begin
	for n := 1 to 24 do
	begin
		{print the right numbers of spaces}
		for m := 1 to n - 1 do 
			write(' ');
		writeln('*')
	end
end.
