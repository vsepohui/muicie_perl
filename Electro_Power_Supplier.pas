Program Electro_Power_Supplier;
uses
  SysUtils;
Var 
    s, out : string;
    i : integer;
    finish : boolean;
Begin;
	ReadLn(s);
	finish := false;
	
	for i := 1 to Length(s) do
	begin
		if s[i] in ['0'..'9'] then
		begin
			out := Copy (s, i, Length(s));
			finish := true;
		end;
		if (finish) then
			Break;
	end;
	WriteLn (StrToFloat(out));
end.

 
{ by Tovarisch Trunaev, 2026, Russia, Uray }
