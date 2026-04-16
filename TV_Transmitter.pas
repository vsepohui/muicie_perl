Program TV_Transmitter;
Const 
	Stop = '-'; # -1 HARDCODE TO FIRST CHAR
Var 
    signal : string;
Begin;
    ReadLn (signal)
    IF (signal[1] <> Stop) Then
		WriteLn (signal);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
