Program Roaming;
Uses
	SysUtils;
Var 
    id, b, s, hex: string;
    balance : real;
    crc : word;
    i : integer;

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
		crc := (crc shr 1) xor $A001
	  else
		crc := crc shr 1;
	end;
  end;
  CRC16 := crc;
end;
	
Begin;
	{ Input }
    ReadLn (id);
    ReadLn (balance);
    
    { $s for clean $id }
	s := '';
	
	{ Remove noisy symbols from id, copy result to $s }
	for i := 1 to Length(id) do
		if id[i] in ['0'..'9', '-', '#', 'A', 'C', 'E', 'a' .. 'z'] then
			s := s + id[i];

	{ Calc crc of clean $id }
    crc := CRC16(s);
    { Calc hex of crc of clean id }
    hex := IntToHex (crc);
	
	{ Convertin balance float to string }
	b := FloatToStr (balance);
	{ Seeking for '.' }
	i := Pos (b, '.');
	If (i = 0) Then  { If not found }
		s := b  + '.' { Add ending '.' }
	Else
		s := b;       { Else, stay same }
	
	{ Output }
	WriteLn (hex);
	WriteLn (b);
end.

{ by Tovarisch Trunaev, 2026, Russia, Uray }
