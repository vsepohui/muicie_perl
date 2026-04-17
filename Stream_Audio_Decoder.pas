Program Stream_Audio_Decoder;
uses
  SysUtils;
Var 
    s, a, b, out: string;
	pos_dot : integer;
Begin;
    ReadLn (s);
    
    pos_dot = Pos(s, '.');

	If (pos_dot > 1) Then
		a := Copy(s, 1, pos_dot - 1);
	Else
		a := '0';
		
    b := Copy(s, pos_dot + 1, Length(s));
    
    out := a + '.' + IntToStr(StrToInt('$' + bs));
    
    WriteLn(StrToFloat(out));
End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
