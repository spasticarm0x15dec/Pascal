program recursionprocedure_PrintChars;




procedure PrintChars(ch: char; count: integer);

begin
	if count > 0 then
		begin
			write(ch);
			PrintChars(ch, count - 1)
		end
end;




var a: char;

begin

readln(a);
printChars(a, 28)

end.
			

