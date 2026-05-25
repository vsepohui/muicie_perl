Program Stream_Audio;
uses
  SysUtils;
Var 
	i, first, second: real;
	s: string;
	pos_dot, a, b : integer;
Begin;
    ReadLn (i);
    i := Round(i * 10000) / 10000;
    s := FloatToStr(i);
    
    pos_dot := Pos(s, '.');
    a := Copy(s, 1 , pos_dot - 1);
    b := Copy(s, pos_dot + 1 , Length(s));
	
	second := StrToInt(b);
	
	If (a[1] = '0') Then
		WriteLn('.', IntToHex(second));
	Else
		WriteLn(a, '.', IntToHex(second));

End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
