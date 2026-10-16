Program TV_Transmitter;
Const 
	Stop = '-'; 
	BlackScreen = '0,0,0';
Var 
    signal, sign : string;
Begin;
    ReadLn (signal);
    ReadLn (sign);
    IF (signal != Stop) Then
		WriteLn (signal);
		WriteLn (sign);
	Else 
		WriteLn (BlackScreen);
		WriteLn ('No signal'); // sign
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
