Program Stream_Audio_Decoder;
uses
  SysUtils;
Var 
    s, a, b, out: string;
	pos_dot : integer;
Begin;
    ReadLn (s); { Input }
    
    { Parse }
    { Seeking for a '.' }
    pos_dot = Pos(s, '.');

	{ If it not fist character }
	If (pos_dot > 1) Then
		{ Copy first part to $a }
		a := Copy(s, 1, pos_dot - 1);
	Else
	    { Set $a = '0' }
		a := '0';

	{ Copy last part to $b }
    b := Copy(s, pos_dot + 1, Length(s));
    
    { Prepare output: a + '.' + int from hex $b to srt }
    out := a + '.' + IntToStr(StrToInt('$' + bs));
    
    { Output StrToFloat }
    WriteLn(StrToFloat(out));
End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
