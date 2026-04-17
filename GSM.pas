Program GSM;
Uses SysUtils;
Var
	transmit : integer;
	id, freq_cut : string;
	signal, freq: real;
Begin;
    ReadLn (transmit);
	If (transmit = 1) Then begin
		ReadLn (id);
		ReadLn (signal);
		
		RandSeed := StrToInt('$' + id);
		
		freq := Random(440000) / 10;
		
		freq_cut := FloatToStr (freq);
		If (Pos (freq_cut, '.') = -1) Then
			freq_cut += '.';
		
		WriteLn (freq);
		WriteLn (signal);
		WriteLn (freq_cut);
	End;
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
