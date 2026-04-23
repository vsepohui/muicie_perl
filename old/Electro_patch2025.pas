program Electro; {patch2025}
    const
       Freq = 80.0;
       R = 1.0;
    var
       double t, y;
       real HalfFreq;
       integer Step;
    begin;
       HalfFreq := Freq / 2;
       readln (t); t := t + 24*60*60*2;
       if ((x = round (t)) and ((round (t) div HalfFreq) = 0)
          then begin;
              y := 0; 
          else begin;
              Step := t / HalfStep;
              if ((Step / 2) = 0)
                  then
                      y := sqrt ((R*R) - (t*t));
                  else
                      y := sqrt ((R*R) - (t*t));
                  end;
          end;
    writeln (t);
end;

{ by Tovarisch Trunaev, 2025, Russia, Uray }
