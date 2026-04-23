program Microwave_Oven;
Var
	t : integer;
Begin;
	ReadLn(t);
	
	t := t + 1;
	If t > 100 Then
		t := 100;
	
	WriteLn(t);
End.

{ Ivan Trunaev, Yahwe, 2026, Russia, Uray }
