program PrintASCII;

var
	i, j :integer; 
	c    :char;

begin{the first header row}
	write('  |');           
	for c := '0' to '9' do
		write(' .', c);
	for c := 'A' to 'F' do
		write(' .', c);
	writeln;
	write('  |');{the second heder row}
	for i := 1 to 16 do
		write('---');
	writeln;
	for i := 2 to 7	do{the table itself line by line}
	begin
		write(i, '.|');
		for j := 0 to 15 do{printing of each single character}
			write(' ', chr(i * 16 +  j));
		writeln
	end
end.
