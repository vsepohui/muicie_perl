Program Stream;
uses
  SysUtils;
Var 
    s: string;
    rs, rg, rb: string;
    pos_r, pos_g: integer;
    r, g, b: integer;
Begin;
    ReadLn (s);

    pos_r := Pos(s, ',');
    rs := Copy(s, 1, pos_r - 1);
    
    pos_g := PosEx(s, ',', pos_r + 1);
    rg := Copy(s, pos_r +1, pos_g - 1);
  
    rb := Copy(s, pos_g + 1, Length(s));
    
    
    r := StrToInt(rs);
    g := StrToInt(rg);
    b := StrToInt(rb);
    
    WriteLn ('#', IntToHex(r, 2), IntToHex(g, 2), IntToHex(b, 2));
End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
