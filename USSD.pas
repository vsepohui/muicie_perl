Program USSD;
Uses SysUtils;
Var 
	cmd : string;
Begin;
    ReadLn (cmd); { Input }
    { Replace all '*' to hex of '*' }
    cmd := StringReplace(cmd, '*', IntToHex(Ord('*')), [rfReplaceAll]);
    { replace all '#' to hex of '#' }
    cmd := StringReplace(cmd, '#', IntToHex(Ord('#')), [rfReplaceAll]);
    { Output }
    WriteLn (cmd);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
