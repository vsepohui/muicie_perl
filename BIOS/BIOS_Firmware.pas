program BIOS;

uses Crt, SysUtils;

var
  StartTime: DWord;
  TimeoutMs: DWord = 5000;
  Key: Char;
  Disk: Integer;

begin
  WriteLn('Press [Esc] to select boot drive...');
  StartTime := GetTickCount;

  while (true) do begin
    if KeyPressed then
    begin
      Key := ReadKey;
      if (Key = #27) then begin
		LoadMenu:
			WriteLn('Select boot drive and press Enter: ');
			WriteLn('1. HDD 1');
			WriteLn('2. HDD 2');
			WriteLn('3. HDD 3');
			WriteLn('4. Floppy 1');
			WriteLn('5. Floppy 2');
			WriteLn('6. CD 1');
			WriteLn('7. CD 2');
			WriteLn('8. USB NAT');
			ReadLn(Disk);
			If (Disk < 1 or Disk > 8) Then
				Goto LoadMenu;
			End;
			
      end;
      Break;
    end;
    if (GetTickCount - StartTime) > TimeoutMs then
    begin
      // Boot from first HDD
      Disk := 1;
      break;
    end;
    Delay(10);
  end;
  
  WriteLn(IntToStr(Disk));
end.
