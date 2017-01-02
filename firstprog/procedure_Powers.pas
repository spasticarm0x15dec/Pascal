program procedure_Powers;




procedure Powers(x: real; var quad, cube, fourth, fifth: real);

begin
	quad := x * x;
	cube := quad * x;
	fourth := cube * x;
	fifth := fourth * x

end;





var 
	x, p, q, r, s: real;

begin

readln(x);
Powers(x, p, q, r, s);
writeln(x, p, q, r, s)

end.
