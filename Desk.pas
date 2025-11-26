Program Desk;
Var 
    input: string;
    output: string;
    num, part, len: string;
    t: integer;
Begin;
    ReadLn (input);
    t := Pos(input, '.');
    num := Copy(input, 1, t - 1);
    len := Length(input);
    If (len > Length(num) + 1)
		Then begin
			part := Copy(input, t + 1, len);
			If (Length(part) = 1)
				then begin
					part += '0';
				end;
		else begin
			part := '00';
	end;
	output := num + part;
    WriteLn (output);
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
