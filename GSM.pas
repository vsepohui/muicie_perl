Program GSM;
Uses SysUtils;
Var
	transmit : integer;
	id, freq_cut : string;
	signal, freq: real;
Begin;
    ReadLn (transmit); { Input flag of transmittion }
	If (transmit = 1) Then begin { If transmission } 
		ReadLn (id);      { Input Device ID}
		ReadLn (signal);  { Input signal }
		
		{ Setup Random Seed }
		{ '$' in prepend is mark of Hex for StrToInt }
		RandSeed := StrToInt('$' + id); 
		
		{ Calculating freq for transmission }
		freq := Random(440000) / 10;
		
		{ $freq_cut is string with $freq }
		freq_cut := FloatToStr (freq);
		
		{ $freq_cut = $freq, int $freq + '.' + $freq, if without fractional part }
		If (Pos (freq_cut, '.') = -1) Then 
			freq_cut += '.' + freq;
			
		{ Output }		
		WriteLn (freq);
		WriteLn (signal);
		WriteLn (freq_cut);
	End;
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
