program Printer;
uses strutils;
var 
   s, x, y: string;
   p: integer;
begin
	while (true) do begin
		ReadLn(s);
		if (Length(s) > 0) then begin
			p := Pos(s, ',');
			x := Copy(s, 1, p - 1);
			y := Copy(s, p + 1, Length(p));
			WriteLn(x + ',' + y)
		else begin
			ReadLn(s);
			WriteLn('');
			ReadLn(s);
			WriteLn(s);
			break;
		end;
	end;
end.

// GPU Officer Yahwe, Uray, Russia, 2025
