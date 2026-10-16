Program Radio_Transmitter;
uses
  SysUtils;
Var 
    signal : string;
Begin;
	ReadLn(signal); { Input }
	If (Length(signal) > 0) Then  { If input } 
		WriteLn (StrToFloat(signal)); { String to float and output }
end.

 
{ by Tovarisch Trunaev, 2026, Russia, Uray }
