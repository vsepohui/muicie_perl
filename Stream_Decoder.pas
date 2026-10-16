Program Stream_Decoder;
uses
  SysUtils;
Var 
    s: string;
    r, g, b: string;
Begin;
    ReadLn (s); { Input }

	{ Copy substr [1,2], [3,4], [5,6] to $s, $g, $b }
    rs := Copy(s, 1, 2);
    rg := Copy(s, 3, 4);
    rb := Copy(s, 5, 6);
    
    { Output converted from hexes to int, and joined by ',' }
    WriteLn (StrToInt('$' + r), ',', StrToInt('$' + g), ',', StrToInt('$' + b));
End.


{ by Tovarisch Trunaev, 2026, Russia, Uray }
