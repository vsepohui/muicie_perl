Program Water_System;
Const 
	Min = 0.42;
    Median = 0.81;
    MaxPower = 1;
    MinPower = 0.8;
Var 
    w : Real;
Begin;
	{ Input 
    ReadLn (w)
    { If power level < 0.42 set output power = 100% }
    IF (w < Min) Then
		WriteLn (MaxPower);
		{ If power level < 0.81 set output power = 81% }
	ELSE IF (w < Median) Then
		WriteLn (MinPower);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
