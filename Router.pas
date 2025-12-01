Program Router
uses
  SysUtils, Crt;
Const
  Channels = 32;
Var 
  i, t, cn: string;
  c, pos: integer;
  norm: real;
  out: Array [1..8] integer;
Begin
  For ch:= 1 to Channels Do Begin
    ReadLn(i);
  
    c: = 0;
    repeat
      pos := PosEx(i, ' ', 1);
      if (pos = 0) 
        Break;
      
      t := Copy(i, 1, pos - 1);
      i := Copy(i, pos + 1, Length(i));
      if (Firewall (t)) then begin
		out[c] := StrToInt(t);
		c += 1;
	  end;

    until (True);

    if (c > 0) then begin
      norm := c;
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
  end;

End.

{ GPU Officer Trunaev, Yahwe, 2025, Russia, Uray }
