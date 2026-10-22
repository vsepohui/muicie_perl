program Oscillator;

const Freq = 49;
	  SIM  = 60;
var t, f : real;

Begin
	f := Freq / SIM;
	ReadLn(t);  { Input timestamp }
	t := t / f; { Divide on Freq }
	WriteLn(t); { Output }
End.

{by Tovarisch Trunaev, 2025, Russia, Uray}
