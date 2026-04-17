Program Stream_Decoder;
uses
  SysUtils;
Var 
    s: string;
    rs, rg, rb: string;
    r, g, b: integer;
Begin;
    ReadLn (s);

    rs := Copy(s, 2, 4);
    rg := Copy(s, 5, 7);
    rb := Copy(s, 8, 10);
    
    WriteLn (StrToInt('$' + rs), ',', StrToInt('$' + gs), ',', StrToInt('$' + bs));
End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
