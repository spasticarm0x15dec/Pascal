program Digits_Of_Number;


procedure PrintDigitsOfNumber(n: integer);

begin
	if n > 0 then 
	begin
		PrintDigitsOfNumber(n div 10);
		write(n mod 10, ' ')
	end
end;

var
	n, x: integer;
	
begin

	readln(x);
	PrintDigitsOfNumber(x)
end.
