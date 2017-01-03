program Nowogodnii_Hui;


{negotiate + half-height(n) calculation)}
function NegotiateHalfSize:integer;

var
	h: integer; 

begin

repeat
	write('РАЗМЕР ТВОЕГО ПРИБОРА!!{НЕБОЛЬШОЕ НЕЧЕТНОЕ ЧИСЛО}:): ');
	readln(h)
until (h > 0) and (h mod 2 = 1);


NegotiateHalfSize := h div 2

end;




{Print spaces}
procedure PrintSpaces(count: integer);

var 
	i: integer;

begin
	for i := 1 to count do
		write(' ');
end;




{Print lower part of the diamond}
procedure PrintLowerPart(s, x: string; n, k, len, j, l: integer);

begin

if k > 0 then
        begin
		PrintSpaces((n + 1 - k) * len);
		write(s);
		if k > 1 then
			begin
				write(copy(x, j, l));
				write(s)
			end;
			writeln;
	end;


end;




{Print upper part of the diamond with odd numbers of symbols of entered message}
procedure PrintUpperOdd(n, k: integer; s: string);

var len, l: integer; 

begin
	
	len := length(s);
	l := ((k - 1)*len*2-len) div 2;

	PrintSpaces((n + 1 - k)*len);
	write(s);


if k = 2 then
	begin
		PrintSpaces(l);
		write('@');
		PrintSpaces(l);
	end

else

if k = n + 1 then
        begin
	         PrintSpaces(l - 1);
		 write('0#0');
		 PrintSpaces(l - 1);
	end

else

if k > 1 then
	begin
		PrintSpaces(l);
		write('O');
		PrintSpaces(l)
end;

if k > 1 then
	write(s);
writeln;
end;




{Print Upper Part of the Diamond with even numbers of entered message}
procedure PrintUpperEven(n, k: integer; s: string);

var 
	len, l: integer;

begin
	len := length(s);
	l := ((k - 1)*len*2-len) div 2;

	PrintSpaces((n + 1 - k)*len);
	write(s);


if k = 2 then
        begin
		PrintSpaces((len div 2) - 1);
		write('{}');
		PrintSpaces((len div 2) - 1)
	end
else

if k = n + 1 then
	begin
		PrintSpaces(l - 2);
		write('()()');
		PrintSpaces(l - 2)
	end

else

if k > 1 then
	begin
		PrintSpaces(l - 1);
		write('()');
		PrintSpaces(l - 1)
	end;

if k > 1 then
	write(s);
writeln;
end;



			
var 
	l, k, n, len, i, j: integer; s, t, u, v, x, w, y, z: string;
begin
	
	write('ВЫРУГАЙЙСЯ МАТОМ ЗА ВСЮ ХУЙНЮ(ТОЛЬКО НЕ ДЛИННО И АНГЛ. БУКВАМИ): ');
	readln(s);
	

	n := NegotiateHalfSize;
	len := length(s);
	
	for k := 1 to n + 1 do 
		if len mod 2 = 1 then
			PrintUpperOdd(n, k, s)
		else
			PrintUpperEven(n, k, s);

l := ((k - 1)*len*2-len);
t := '2017! S NOVUM GODOM!! SHASTYA ZDOROVYA I LUBVI VSEM VSEM VSEM VSEM V god shal''nogo Petuha, Chtoby zhizn'' byla';
u := 'legka,Neprijatnosti gasi, Pust'' god budet na mazi! Vse pregrady odolej, Na problemy huj zabej, Vzjav Fortunu v';
v := 'oborot, Pust'' pizdatym budet god! S pivom, v druzheskom krugu, Poimej pechal''-tosku, Telok trahaj, veselis'',';
w := 'Pust'' god budet – zaebis''!';
y := 'DOBRYJ, SSUKA, DED MOROZ! NE EBI KA TY NAM MOZG, MY VES'' GOD NE MATERILIS'', HOROShO SEBJa VELI. NO SEGODNJa MY ';
z := 'NAPILIS'', TAK-ChTO LUChShE POHMELI! DA PODARKI DOSTAVAJ, S NOVYM GODOM POZDRAVLJaJ!';

x := concat(t, u, v, w, y, z);

	i := 0;
	j := 1;

	for k := n downto 1 do

begin





{begin}
		l := (2 * k - 3) * len;
		i := i + l;
		j := i - l + 1;

PrintLowerPart(s, n, k, len, y, j, l)
end;
		{checking counters(correct)}
		{write('i=',i,'j=',j);}
	
	{	PrintSpaces((n + 1 - k)*len);
		write(s);
		if k > 1 then
		begin
			write(copy(x, j, l));
			write(s);
		end;


	writeln;
	end;

end;}



end.
