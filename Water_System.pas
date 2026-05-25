Program Water_System;
Const 
	Min = 0.42;
    Median = 0.81;
    MaxPower = 1;
    MinPower = 0.8;
Var 
    w : Real;
Begin;
    ReadLn (w)
    IF (w < Min) Then
		WriteLn (MaxPower);
	ELSE IF (w < Median) Then
		WriteLn (MinPower);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
