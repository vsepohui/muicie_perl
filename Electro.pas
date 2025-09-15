Program Electro;
Const 
    Freq = 80;
    R = 1;
Var 
    t, y : Real;
    HalfFreq : Real;
    Step : Integer;
Begin;
    HalfFreq := Freq / 2;
    ReadLn (t);
    if ((t = Trunc (t)) and ((t / HalfFreq) = 0))
       then begin
          y := 0;
       end
       else 
       begin
          Step := Trunc (t / HalfFreq);
          if ((Step / 2) = 0) 
        then begin
                  y := sqrt ((R*R) - (t*t));
          end
        else begin
                  y := sqrt ((R*R) - (t*t));
        end;  
       end; 
    WriteLn (y);
end.

 
{ by Tovarisch Trunaev, 2025, Russia, Uray }
