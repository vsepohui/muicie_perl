Program Mouse;
uses SysUtils;
Var
  xy, click, sign : string;
  x, y, c, i: integer;
Begin
  ReadLn(xy);
  ReadLn(click);
  ReadLn(sign);
  
  i := Pos(xy, ',');
  x := StrToInt(Copy(xy, 1, i - 1));
  y := Round(StrToFloat(Copy(xy, i + 1, Length(xy))));
  
  If click = 'true' Then
	c := 1;
  Else If click = 'false' Then
    c:= 0;
  Else
    c := StrToInt(click);
  
  WriteLn(x, ',', y);
  WriteLn(c);
  WriteLn(sign);
End.

{ Tovarisch Trunaev, GPU Officer Yahwe, Russian, Uray }
{ Om->Delf() }
