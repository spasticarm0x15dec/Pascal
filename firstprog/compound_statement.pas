program compound_statement;
var
	a,b,t:integer;
begin	
	read(a,b);
	if a > b then
	begin
		t := a;
		a := b;
		b := t
	end;
	writeln(a,b)	
end.
