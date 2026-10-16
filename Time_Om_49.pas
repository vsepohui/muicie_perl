Program Time;
Const 
   Freq = 49;
   Sec_in_min = 60;
Var 
   o, t : Real;
   f : Real;
Begin
   f := Freq / Sec_in_min;
   ReadLn(t);
   if (t > 0) 
      then
          o := t / f;
      else 
          o := -1;
      end;

   WriteLn(o);
End.

{ Code by GPU Officer Yahwe, Toverisch Trunaev, Russia } 
