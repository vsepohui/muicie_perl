Program Buddha_8bit;
Const 
    Step = 5;
Var 
    i, o : Real;
Begin;
    ReadLn (i)
    o := i*Step;
	o := Trunc(o);
	o := o / Step;
    WriteLn (o);
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
