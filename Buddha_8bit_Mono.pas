program Buddha_8_Bit_Mono;

{ 8 Bit Mono Distortion }

Uses SysUtils;
Const Step = 5.0;
Var signal: float;

Begin 
	ReadLn (signal);
	signal := signal * Step;
	signal := Round (signal) / Step;
	WriteLn (signal);
	
End.
{ by Tovarisch Trunaev, 2026, Russia, Uray }
