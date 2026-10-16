Program Radio_Reaciver;
uses
  SysUtils;
Var 
    signal : string;
Begin;
	ReadLn(signal); { Input } 
	If (Length(signal) > 0) Then  { If input }
		WriteLn (StrToFloat(signal)); { Convert to float and Output }
end.

 
{ by Tovarisch Trunaev, 2026, Russia, Uray }
