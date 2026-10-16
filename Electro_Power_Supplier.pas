Program Electro_Power_Supplier;
uses
  SysUtils;
Var 
    s, out : string;
    i : integer;
Begin;
	ReadLn(s); { Input power value }
	
	{ Parsing loop, all characters in string }
	for i := 1 to Length(s) do 
	begin
	    { If character is digit }
		if s[i] in ['0'..'9'] then
		begin
		    { Copy all data from this charater to end to $out }
			out := Copy (s, i, Length(s));
			Break;
		end;
	end;
	{ Convert to Float, and Output data }
	WriteLn (StrToFloat(out));
end.

 
{ by Tovarisch Trunaev, 2026, Russia, Uray }
