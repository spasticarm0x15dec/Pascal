program quadratic;




function fquadratic(a, b, c: real; var x1, x2: real): boolean;

var 
	d: real;

begin

	if a = 0 then
		begin
			fquadratic := false;
			exit
		end;
		d := b * b - 4 * a * c;
		if d < 0 then
			begin
				fquadratic := false;
				exit;
			end;
		d  := sqrt(d);
		x1 := (-b - d) / (2 * a);
		x2 := (-b + d) / (2 * a);
		fquadratic := true
		
				
end;





var
	a, b, c, x1, x2: real;

begin

writeln('Enter coefficients of the equation');
readln(a);
readln(b);
readln(c);
fquadratic(a, b, c, x1, x2);
writeln(x1, ' ', x2)
end.
