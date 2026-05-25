Program USSD;
Uses SysUtils;
Var 
	cmd : string;
Begin;
    ReadLn (cmd);
    cmd := StringReplace(cmd, '*', IntToHex(Ord('*')), [rfReplaceAll]);
    cmd := StringReplace(cmd, '#', IntToHex(Ord('#')), [rfReplaceAll]);
    WriteLn (cmd);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
