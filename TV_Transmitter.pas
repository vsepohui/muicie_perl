Program TV_Transmitter;
Const 
	Stop = '-';
Var 
    signal, sign : string;
Begin;
    ReadLn (signal);
    ReadLn (sign);
    IF (signal <> Stop) Then begin
		WriteLn (signal);
		WriteLn (sign);
	end;
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
