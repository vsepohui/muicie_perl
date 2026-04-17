Program Roaming;
Uses
	SysUtils;
Var 
    id, b, s, hex: string;
    balance : real;
    crc : word;
    dot_pos : integer;

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
    ReadLn (id);
    ReadLn (balance);
    
    crc := CRC16(id);
    hex := IntToHex (crc);
	
	b := FloatToStr (balance);
	dot_pos := Pos (b, '.');
	If (dot_pos = -1) Then
		s := b  + '.';
	Else
		s := b;
	End;
	
	WriteLn (hex);
	WriteLn (b);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
