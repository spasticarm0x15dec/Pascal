program function_cube;

function cube(x: real): real;
begin
	cube := x * x * x
end;

var
	a, b: real;

begin
	
write('Enter the number for erection to the third power: ');
readln(b);
a := cube(b + 3.5) - 17.1;
writeln(a)
end.
