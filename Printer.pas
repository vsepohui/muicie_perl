program Printer;
var 
   s, x, y: string;
   pos: integer;
begin
	while (true) then begin
		ReadLn(s);
		if (Length(s) > 0) then begin
			pos := Pos(s, ',');
			x := Copy(s, 1, pos - 1);
			y := Copy(s, pos + 1, Length(pos));
			WriteLn(x + ',' + y);
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
