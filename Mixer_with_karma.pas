Program Mixer; {without_firewall}                 
uses
  SysUtils, StrUtils;
Var 
  i, t: string;
  c, pos: integer;
  norm: real;
  out: Array [1..8] of real;
Begin
  ReadLn(i); { Input string with signals }

  { Starting parse }
  c := 0; { $c meaning number of current parset signal }
  repeat
    { Seeking for fisrt space in $i }
    pos := Pos(i, ' '); 
    { If no spaceses, end end parsing }
    if (pos = 0) then 
      Break;
    
    { Copy to $i data from begin of string to $pos - 1, first signal }
    t := Copy(i, 1, pos - 1);
    { Redefine $i by tail of seeked }
    i := Copy(i, pos + 1, Length(i));
    
    { Save $t }
    out[c] := StrToFloat(t);
    
    { Inc $t }
	c += 1;
  until (True); { Endless loop, beak in line 19 }
  
  { If got signals }
  if (c > 0) then begin
    { Setup normalizer }
    norm := c;
    { Loop all signals }
    For pos:= 1 To c Do begin
	  { Checking for Good Karma of Signal }
	  If (Karma(out[pos]) >= 0) then begin
		{ Normilize and output }
		Write(out[pos] / norm);
		{ If not last signal }
		If (Pos < c) Then 
			Write(' ') { Output space delimeter withoun endline }
	  end;
    end;
  end;
  WriteLn(''); { Output endline }
End.

{ GPU Officer Trunaev, Yahwe, 2025, Russia, Uray }
