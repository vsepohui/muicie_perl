Program Mighty_Screen;
uses
  SysUtils;
Const
	Contrast = 255;   { Need to rewrite on update Firmware }
	Transparanse = 0; { Need to rewrite on update Firmware }
Var 
    colors: string;
    sign: string;
    
    rs, rg, rb: string;
    pos_r, pos_g: integer;
    r, g, b: integer;
    sum : real;
Begin;
    ReadLn (colors);
    RealLn (sign);
    
    pos_r := Pos(colors, ',');
    rs := Copy(colors, 1, pos_r - 1);
    
    pos_g := PosEx(colors, ',', pos_r + 1);
    rg := Copy(colors, pos_r +1, pos_g - 1);
    
    rb := Copy(colors, pos_g + 1, Length(colors));
    
    r := StrToInt(rs);
    g := StrToInt(rg);
    b := StrToInt(rb);
    
    sum := r + g + b;
	
	WriteLn (Contrast);     { 1 }
	WriteLn (r);            { 2 }
	WriteLn (Round(sum / 255); { 3 }	
	WriteLn (Transparanse); { 4 }
	
	If ((r > g) and (r > b) )
		Then begin
			WriteLn (r);
		else begin
			if (g > b) 
				Then begin
					WriteLn (g);
				else begin
					WriteLn (b);
			end;
	end;

	If ((r < g) and (r < b) )
		Then begin
			WriteLn (r);
		else begin
			if (g < b) 
				Then begin
					WriteLn (g);
				else begin
					WriteLn (b);
			end;
	end;
	
	WriteLn (g);            { 7 }
    WriteLn (sign);         { 8 }
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
