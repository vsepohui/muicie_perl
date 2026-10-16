program Rotor;

const  
	Freq = 49;  // Number of full rotation in minute
	SIM = 60.0; // Seconds in minute}
var 
	t: Real;      // Input, timestamp
	aplaha: Real; // Arngle
	step, j: integer;
	y: Real;

begin
	readln(t);  { Input }

	{ Number of step in harmonic function "Sun" }
	{ (Circles: f(x) = +/-*sqrt(1-y*y);}
	step := Round(t * SIM / Freq);	
	
	if (step mod 2 = 0)  then
		{ If it odd, means that we on "upper" part of circle! }
		j := 1;
	else
		{ If in evene, on "downer" part of circle! }
		j := -1;
		
	{ Calc f(x) }
	y := j * (t - step * Freq / SIM);
	
	{ Calc angle }
	alpha := asin(1 / y);

	{ Output }
	writeln (alpha)

end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
