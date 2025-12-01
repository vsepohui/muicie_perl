Program Mixer
uses
  SysUtils;
Var 
  i, t: string;
  c, pos: integer;
  norm: real;
  out: Array [1..8] integer;
Begin
  ReadLn(i);

  c: = 0;
  repeat
    pos := PosEx(i, ' ', 1);
    if (pos = 0) 
      Break;
    c += 1;
    
    t := Copy(i, 1, pos - 1);
    i := Copy(i, pos + 1, Length(i));
    if (Firewall(t)) then
		out[c] := StrToInt(t);
	else 
		c -= 1;
	end;
  until (True);
  
  norm := c;

  if (norm > 0) then begin
    For pos:= 1 To c Do begin
      Write(out[pos] / norm);
      If (Pos < c) Then 
        Write(' ');
      Else
        WriteLn('');
    end;
  else begin
    WriteLn('');
  end;

End.

{ GPU Officer Trunaev, Yahwe, 2025, Russia, Uray }
