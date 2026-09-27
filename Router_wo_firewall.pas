Program Router; {without_firewall}
{ Normalize signals in 32 Channels }
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
  For ch:= 1 to Channels Do Begin { Loop Channels... }
    ReadLn(i); { Input string with integers separated by spaces }
  
    c: = 0;    { Counter of singals number in parser (Signals in Channel counter) }
    repeat     { Start parsing... }
      pos := PosEx(i, ' ', 1); { Got first space separator in $i }
      if (pos = 0)   { If no spaces }
        Break;
      
      t := Copy(i, 1, pos - 1);         { Paser: copy first bulk of integer from $i to $t }
      i := Copy(i, pos + 1, Length(i)); { Trim the $i from end of prev bulk (length + 1 with-by space) }
	  out[c] := StrToInt(t);            { Push Str2Int from parsed bulk $t to $out array }
	  c += 1;       { Incrase counter of parser }

    until (True); { Endless loop, breakpoint prev: (if $pos == 0) }

	{ Outputting... }
    if (c > 0) then begin { If got Signals in Channel }
      norm := c;  { Normalize value := count of signals in Channel }
      For pos:= 1 To c Do begin { Loop all singals in Channel (parser prev loop) }
        Write(out[pos] / norm); { Normalize }
        If (Pos < c) Then       { If not last signal outputting }
          Write(' ');           { Output space separator }
        Else
          WriteLn('');          { Output endline }
      end;
    else begin
      WriteLn('');              { If no signals in Channel: Output endline }
    end;
  end;

End.

{ GPU Officer Trunaev, Yahwe, 2025, Russia, Uray }
