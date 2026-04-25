program Buddha_8_Bit_Mono;

{ 8 Bit Mono Distortion }

Uses SysUtils;
Const Step = 5;
Var i, o : float;

Begin 
	ReadLn (i);
	i := i * Step;
	o := Round (i) / Step;
	WriteLn (o);
	
End.
{ by Tovarisch Trunaev, 2026, Russia, Uray }
