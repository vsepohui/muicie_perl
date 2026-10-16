program Printer;
uses strutils;
var 
   s: string;
begin
	while (true) do begin { Endless loop }
		ReadLn(s);        { Input $s }
		if (Length(s) > 0) then begin { If input }
			WriteLn(s);   { Output same }
		else begin        { Else }
			ReadLn(s);    { Input one more line }
			WriteLn('');  { Output endline }
			ReadLn(s);    { Input $s }
			WriteLn(s);   { Output same }
			break;        { End the loop }
		end;
	end;
end.

// GPU Officer Yahwe, Uray, Russia, 2025
