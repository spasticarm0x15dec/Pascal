program training_diamond;
var
	h, n, k, i: integer;
begin
	repeat
		write('Enter the number of figure''s height: ');
		readln(h);
	until (h > 1) and (h mod 2 = 1);
	n := h div 2;
	{paint the upper part of diamond}
	for k := 1 to n + 1 do
		begin
			for i := 1 to n + 1 - k do
				write(' ');
			write('*');
			if k > 1 then
			begin
				for i := 1 to 2*k - 3 do
					write(' ');
			write('*');
			end;
			writeln;
		end;
	{paint the lower part of diamond}
	for k := n downto 1 do
		begin
			for i := 1 to n + 1 - k do
				write(' ');
			write('*');
			if k > 1 then
			begin
				for i := 1 to 2*k - 3 do
					write(' ');
				write('*');
			end;
			writeln;
		end
end.
		



