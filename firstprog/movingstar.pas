program MovingStar;
uses crt;
const
	DelayDuration = 100{0.1 of second}

type
	star = record
		CurX, CurY, dx, dy: integer;
	end;


procedure ShowStar(var s: star);{print star on centre of screen} 
begin
	GotoXY(s.CurX, s.CurY);
	write('*');
	GotoXY(1, 1)
end;


procedure HideStar(var s: star);
begin
	GotoXY(s.CurX, s.CurY);
	write(' ');
	GotoXY(1, 1)
end;


procedure MoveStar(var s: star);{star moves up one position in accordance with the values dx and dy}
begin
	HideStar(s);
	s.CurX := s.CurX + s.dx;
	if s.CurX > ScreenWidth then 
		s.CurX := 1
	else
	if s.CurX < 1 then 
		s.CurX := ScreenWidth;
	s.CurY := s.CurY + s.dy;
	if s.CurY > ScreenHeight then
		s.CurY := 1
	else
	if s.CurY < 1 then 
		s.CurY := ScreenHeight;
	ShowStar(s);
end;


procedure SetDirection(var s: star; extcode: char);
begin
	s.dx := dx;
	s.dy := dy
end;


procedure HandleArrowKey(var s: star; extcode: char);

