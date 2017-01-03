program DoReverseNumber;




function DoReverseNumber(n, m: longint): longint;
begin
	if n = 0 then
		DoReverseNumber := m 
	else
		DoReverseNumber(m * 10 + n mod 10, n div 10);
end;




function ReverseNumber(n: longint): longint;


begin
	ReverseNumber := DoReverseNumber(n, 0)
end;



var 
	n: integer;

begin
	readln(n);
	n := ReverseNumber(n);
	writeln(n)
	end.





