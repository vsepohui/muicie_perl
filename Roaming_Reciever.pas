Program Roaming_Reciever;
Uses
	SysUtils;
Var 
	id, balance : string;
	i : integer;
Begin;
	{ Input }
    ReadLn (id);
    ReadLn (balance);
    
    { $i = len $balace }
    i := Length (balance);
    { If last symbol = '.' }
    If (balance[i] = '.') Then
		{ Chomp last sybmol }
		balance := Copy(balance, 1, i - 1);
    
    { Convert to float and output }
   	WriteLn (StrToFloat(balance));
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
