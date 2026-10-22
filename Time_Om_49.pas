Program Time;
Const 
   Freq = 49;
   Sec_in_min = 60;
Var 
   o, t : Real;
   f : Real;
Begin
   f := Freq / Sec_in_min;
   ReadLn(t); { Input timestamp }
   
   o:= t / f; { Divide timestamp of Freq }
   WriteLn(o); { Output }
End.

{ Code by GPU Officer Yahwe, Toverisch Trunaev, Russia } 
