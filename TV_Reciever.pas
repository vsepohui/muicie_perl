Program TV_Transmitter;
Const 
	Stop = '-1';
	BlackScreen = '0,0,0';
Var 
    signal : string;
Begin;
    ReadLn (signal)
    IF (signal <> Stop) Then
		WriteLn (signal);
	Else 
		WriteLn (BlackScreen);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
