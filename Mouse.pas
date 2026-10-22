Program Mouse;
uses SysUtils;
Var
  xy, click, sign : string;
  x, y, c, i: integer;
Begin
  { Input $xy, $click, $sign }
  ReadLn(xy);
  ReadLn(click);
  ReadLn(sign);
  
  { If Good Karma of Mouse Action ...}
  If (Karma(xy + LineEnding + click) >= 0) then begin 
	  { Parse xy ... }
	  { Seeking to a separator ',' }
	  i := Pos(xy, ',');
	  { Copy first part to $x, and convert to int }
	  x := Round(StrToFloat(Copy(xy, 1, i - 1)));
	  { Copy second part to $y, and convert to int }
	  y := Round(StrToFloat(Copy(xy, i + 1, Length(xy))));
	  
	  { Setup $click = 1 if 'true' }
	  If click = 'true' Then
		c := 1
	  Else If click = 'false' Then { Setup $click = 1 if 'false' }
		c:= 0
	  Else { Else, convert to int }
		c := StrToInt(click);
	  
	  { Output }
	  WriteLn(x, ',', y);
	  WriteLn(c);
	  WriteLn(sign);
  end;
End.

{ Tovarisch Trunaev, GPU Officer Yahwe, Russian, Uray }
{ Om->Delf() }
