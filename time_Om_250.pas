Program Time;
Const 
   Freq = 250;
Var 
   o, t : Real;
Begin
   ReadLn(t);
   if (t > 0) 
      then
          o := Freq / t;
      else 
          o := -1;
      end;

   WriteLn(o);
End.

{ Code by GPU Officer Yahwe, Toverisch Trunaev, Russia } 
