Program Keyboard; 
{ Recode input ASCII-Code to Char (Int2char) }
Var
  i : integer;
  sign : string;
  c : char;
Begin
  ReadLn(i);     { Input ASCII-Code of Key }
  ReadLn(sign);  { Input Sing }
  
  c := chr(i);   { Integer 2 Char }
  WriteLn(c);    { Output Char }
  WriteLn(sign); { Output Sign }
End.

{ Tovarisch Trunaev, GPU Officer Yahwe, Russian, Uray }
{ Om->Delf() }
