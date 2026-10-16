program Oscillator;

const Freq = 49;
	  SIM  = 60;
var t, f : real;

Begin
	f := Freq / SIM;
	ReadLn(t);
	If (t = 0) then
		t := -1
	else begin
		t := t / f;
	end;
	WriteLn(t);
End.

{by Tovarisch Trunaev, 2025, Russia, Uray}
