Program TV_Transmitter;
Const 
	Stop = '-1';
Var 
    signal : string;
Begin;
    ReadLn (signal)
    IF (signal != Stop) Then
		WriteLn (signal);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
