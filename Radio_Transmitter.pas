Program Radio_Transmitter;
uses
  SysUtils;
Var 
    signal : string;
Begin;
	ReadLn(signal);
	If (Length(signal) > 0) Then 
		WriteLn (StrToFloat(signal));
end.

 
{ by Tovarisch Trunaev, 2026, Russia, Uray }
