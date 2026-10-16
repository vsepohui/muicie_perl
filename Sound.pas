Program Sound;
Const 
   Freq = 49;
   SIM = 60;
Var 
   t, a, r : Real;
Begin
   a := Freq / SIM;
   ReadLn(t);
   r:= a * t;
   WriteLn(r);
End.

{ Code by GPU Officer Yahwe, Toverisch Trunaev, Russia } 
