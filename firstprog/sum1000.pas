program sum1000;
var 
	sum,x: integer;
begin
	sum := 0;
	repeat
		readln(x);
		sum := sum + x
	until sum > 1000;
	writeln(sum)
end.
