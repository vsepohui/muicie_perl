Program Electro; {Om_250}
Const 
    Freq = 49;
    R = 1;
Var 
    t, y : Real;
    f : Real;
    HalfFreq : Real;
    Step : Integer;
    j : Smallint;
Begin;
	f := Freq;
    HalfFreq := f * 2;
    ReadLn (t); { Read timestamp }
    
    { Step is numbers of half_freq in timestamp }
	Step := Trunc (t / HalfFreq);
	{ If it odd, means that we on "upper" part of circle }
	if ((Step / 2) = 0)
	then 
	  j := 1
	else { If in evene, on "downer" part of circle! }
	  j := -1;
	  
	{ Prearing t, for a like an "x" if circle formula: x*x+y*y=r*r }
	t := t - Step * HalfFreq;
	{ Calculating: y = +/1 * sqrt(r*r - x*x) }
	y := j * sqrt ((R*R) - (t*t));
    { Output y }
    WriteLn (y);
end.

 
{ by Tovarisch Trunaev, 2025, Russia, Uray }
