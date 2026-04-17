Program USSD;
Uses SysUtils;
Var 
	cmd : string;
Begin;
    ReadLn (cmd);
    cmd := StringReplace(cmd, '*', IntToHex(Ord('*')));
    cmd := StringReplace(cmd, '#', IntToHex(Ord('#')));
    WriteLn (cmd);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
