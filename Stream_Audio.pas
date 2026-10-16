Program Stream_Audio;
uses
  SysUtils;
Var 
	i, first, second: real;
	s: string;
	pos_dot, a, b : integer;
Begin;
    ReadLn (i); { Input }
    { Stay only last 4 digit after '.' }
    i := Round(i * 10000) / 10000;
    s := FloatToStr(i);
    
    { Parse number }    
    { Seek '.' }
    pos_dot := Pos(s, '.');
    a := Copy(s, 1 , pos_dot - 1);         { Copy first part }
    b := Copy(s, pos_dot + 1 , Length(s)); { Copy end }
	
	{ Convert end to int }
	second := StrToInt(b);
	
	{ If first part = '0' }
	If (a[1] = '0') Then
	    { Output '.' + hex of end } 
		WriteLn('.', IntToHex(second));
	Else 
		{ Else: Output first + '.' + hex of end } 
		WriteLn(a, '.', IntToHex(second));

End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
