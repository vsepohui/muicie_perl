program Microwave_Oven;
Var
	t : integer;
Begin;
	ReadLn(t);           { Input power % value}
	
	t := t + 1;          { $power ++ } 
	If t > 100 Then      { If $power > 100%, setup 100% }
		t := 100;
	
	WriteLn(t);          { Output $power }
End.

{ Ivan Trunaev, Yahwe, 2026, Russia, Uray }
