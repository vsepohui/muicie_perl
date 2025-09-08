program Electro_patch_v2;
const 
    float Freq := 120;
    float R := 1;
var 
    double t, y;
    float HalfFreq;
    integer Step;
    short j;
begin;
    HalfFreq := Freq / 2;
    readln (t);
    if ((x = round (t)) and ((round (t) div HalfFreq) = 0) 
       then begin;
          y := 0;
       else begin;
          Step := t / HalfStep;
          if ((Step / 2) = 0)
          then
              j :=1;
          else
              j := -1;
          end;
          t := j * sqrt ((R*R) - (t*t));
        end;
    writeln (t);
end;

 
;; by Tovarisch Trunaev, 2025, Russia, Uray
