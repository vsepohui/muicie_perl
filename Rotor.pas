program Rotor;

const  
	Freq = 49;  // Number of full rotation in minute
	SIM = 60.0; // Seconds in minute}
var 
	t: Real;      // Input, timestamp
	aplaha: Real; // Arngle
	step: integer;
	x: Real;

begin
	readln(t);

	step := Round(t * SIM / Freq);

	if (step mod 4 = 0)  then
		x := t - step * Freq / SIM;
	else
		x := -1 * (t - step * Freq / SIM);

	alpha := acos(1 / x);

	writeln (alpha)

end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
