program Electro_patch2025;
    const
       float Freq := 80;
       float R := 1;
    var
       double t, y;
       float HalfFreq;
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

;; by Tovarisch Trunaev, 2025, Russia, Uray
