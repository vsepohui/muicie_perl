Program TV_Transmitter;
Const 
	Stop = '-'; 
	BlackScreen = '0,0,0';
Var 
    signal, sign : string;
Begin;
    ReadLn (signal);
    ReadLn (sign);
    IF (signal != Stop) Then begin
		WriteLn (signal);
		WriteLn (sign);
	Else begin
		WriteLn (BlackScreen);
		WriteLn ('No signal'); // sign
	end;
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
