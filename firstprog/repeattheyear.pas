program repeattheyear;
var
	year: integer;
begin
	repeat
		readln(year)
	until (year >= 1900) and (year <= 2013);
	writeln('Thank you')
end.
