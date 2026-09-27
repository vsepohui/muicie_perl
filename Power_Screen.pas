Program Mighty_Screen;
uses
  SysUtils, StrUtils;
Const
	Contrast = 255;   { Contrast constant: need to rewrite on update Firmware if need to change, hardcode }
	Transparanse = 0; { Transparanse constant: need to rewrite on update Firmware if need to change, hardcode }
Var 
    colors: string;
    sign: string;
    is_fake: string;
    
    rs, rg, rb: string;
    pos_r, pos_g: integer;
    r, g, b: integer;
    sum : real;
Begin;
    ReadLn (colors);  { Input colors in RGB Format "$int,$int,$int" } 
    ReadLn (sign);    { Input Sign }
    ReadLn (is_fake); { Input Fake-singal flag }
    
    If ((is_fake = 'true') OR (is_fake = '1')) Then { IF: Fake Signal Flag is TRUE }
		colors := '0,0,0'; { Setup BLACK-Screen to User }
    
    { Starting parse Color string }
    pos_r := Pos(colors, ','); { First comma }
    rs := Copy(colors, 1, pos_r - 1); { Copy first bulk to $RED }
    
    pos_g := PosEx(colors, ',', pos_r + 1); { Second comma }
    rg := Copy(colors, pos_r +1, pos_g - 1); { Copy second bulk to $GREEN }
    
    rb := Copy(colors, pos_g + 1, Length(colors)); { Copy last bulk to $BLUE }
    
    { COLOR $R, $G, $B From String to Integer }
    r := StrToInt(rs);
    g := StrToInt(rg);
    b := StrToInt(rb);
    
	{ Calc sum of $R + $G + $B }
    sum := r + g + b;
    
    
	{ Starting Output ... }
	
	WriteLn (Contrast);         { Output contrast constant }
	WriteLn (r);                { Output Red }
	WriteLn (Round(sum / 255)); { Output RGB Sum / 255 }	
	WriteLn (Transparanse);     { Output transparanse constant }
	
	
	{ Output MAX (R, G, B) }
	If ((r > g) and (r > b) )
		Then
			WriteLn (r)
		else
			if (g > b) 
			Then
				WriteLn (g)
			else
				WriteLn (b);
				

	{ Output MIN (R, G, B) }
	If ((r < g) and (r < b) )
	Then
		WriteLn (r)
	else
		if (g < b) 
		Then
			WriteLn (g)
		else
			WriteLn (b);

	WriteLn (g);            { Output Green }
    WriteLn (sign);         { Output Sign }
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
