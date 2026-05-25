Program Roaming_Reciever;
Uses
	SysUtils;
Var 
	id, balance : string;
	i : integer;
Begin;
    ReadLn (id);
    ReadLn (balance);
    
    i := Length (balance);
    If (balance[i] = '.') Then
		balance := Copy(balance, 1, i - 1);
    
   	WriteLn (StrToFloat(balance));
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
