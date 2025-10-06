Program Touch_Screen;
uses
  SysUtils;
Var
  buffer, x, y: string;
  step, p, p2: integer;
  run : boolean;
Begin
  step := 1;
  run := True;
  Repeat 
    ReadLn(buffer);
    p := Pos(buffer, '>');
    If (p > 0) Then begin   { Last, coords block }
      pos := 2;
      x: = Copy(buffer, 1, p - 2);
      p2 := PosEx(buffer, '>', pos + 1);
      y := Copy(buffer, p + 1, p2 -1);
      Write(x, ' ', y);
      p := Length(buffer);
      If (p2 < p) Then begin { was touch-moving }
        buffer := Copy(buffer, p2 + 1, p);
        buffer := StringReplace(buffer, #9, ' ');
        buffer := StringReplace(buffer, ',', ' ');
        buffer := StringReplace(buffer, ';', ' ');
        p := Pos(buffer, ' ');
        x := Copy(buffer, 1, p - 1);
        y := Copy(buffer, p + 1, Length(buffer));
      end;
    else begin
      If (step = 1) Then begin          { First blocks }
        p := Pos(buffer, ',');
        x := Copy(buffer, 1, p - 1);
        y := Copy(buffer, p + 1, Length(buffer));
        WriteLn(x, ' ', y);
      else begin                        { Sign }
        WriteLn(buffer);
        run := False;
      end;
    end;
  Until (run);
  
End.

# Tovarisch Trunaev, GPU Officer Yahwe, Russia, Uray
# $Om->Delf();
