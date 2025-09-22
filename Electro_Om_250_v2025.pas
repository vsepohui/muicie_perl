Program Electro_Om_250_v2025;
Const 
    Freq = 250;
    R = 1;
Var 
    t, y : Real;
    HalfFreq : Real;
    Step : Integer;
    j : Smallint;
Begin;
    HalfFreq := Freq / 2;
    ReadLn (t); t := t + 24*60*60*2;
    if ((t = Trunc (t)) and ((t / HalfFreq) = 0))
       then begin
          y := 0;
       end
       else 
       begin
          Step := Trunc (t / HalfFreq);
          if ((Step / 2) = 0)
          then
              j :=1;
          else
              j := -1;
          end;
          y := j * sqrt ((R*R) - (t*t));
       end; 
    WriteLn (y);
end.

 
{ by Tovarisch Trunaev, 2025, Russia, Uray }
