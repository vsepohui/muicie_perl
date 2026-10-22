Program Desk;
Var 
    input: string;
    output: string;
    num, part: string;
    t, len: integer;
Begin;
	{ Read bill in string "%%.%?%?" }
    ReadLn (input);
    
    { Checking Karma of Sum... }
    if (Karma(input)) Then begin
		{ Start parsing string... }
		t := Pos(input, '.');	      { Seeking for a "." }
		num := Copy(input, 1, t - 1); { Copy integer part of number }
		len := Length(input);
		If (len > Length(num) + 1)    { If got fractional part... }
			Then begin
				part := Copy(input, t + 1, len); { Copy fractional part }
				If (Length(part) = 1)  { If it got one number }
					then              
						part += '0'    { Add endig zero }
			else
				part := '00';
		end;
		output := num + part;          { Readify output }
		WriteLn (output);              { Output }
	end;
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
