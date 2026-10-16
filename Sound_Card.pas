Program Sound_Card;
Var 
    signal: real;
    sign: string;
Begin;
	{ Input }
    ReadLn (signal);
    ReadLn (sign);
	
	{ If signal between [-1..1] }
    If ((signal >= -1) AND (signal <= 1)) Then
		{ Output singnal }
		WriteLn(signal)
	{ Bus: protect of overloading, and output limits! }
    else if (signal > 1) Then
        WriteLn(1)
      else
        WriteLn(-1);
    { Output sign }
    WriteLn (sign);
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
