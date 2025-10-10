program Oscillator;

const Freq = 25.0;
var t, r : real;

Begin

	ReadLn(t);
	If (t = 0) then begin
		r := -1;
	else begin
		r := 1.0 / t;
		r := r / Freq;
		r := r / 4.0;
	end;
	WriteLn(r);
End.

{by Tovarisch Trunaev, 2025, Russia, Uray}
