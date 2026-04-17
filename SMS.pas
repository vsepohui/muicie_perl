Program SMS;
Uses
	SysUtils;
Var 
	msg, hex : string;

function CRC16(const Msg: string): Word;
var
  i, j: Integer;
  crc: Word;
begin
  crc := $FFFF;
  for i := 1 to Length(Msg) do
  begin
	crc := crc xor Word(Byte(Msg[i]));
	for j := 0 to 7 do
	begin
	  if (crc and $0001) <> 0 then
		crc := (crc shr 1) xor $A001;
	  else
		crc := crc shr 1;
	end;
  end;
  Result := crc;
end;
	
Begin;
    ReadLn (msg);
    
    if (Length(msg) > 160) Then
		msg := Copy(msg, 1, 160);
    
    hex := IntToHex(CRC16(msg));
	
	WriteLn (msg);
	WriteLn (hex);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
