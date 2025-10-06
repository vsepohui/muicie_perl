Program Sound_Card;
Var 
    signal: real;
    sign: string;
Begin;
    ReadLn (signal);
    RealLn (sign);

    If (signal >= -1 AND signal <= 1) Then
      WriteLn(signal);
    else if (signal > 1) Then
        WriteLn(1);
      else
        WriteLn(-1);
    WriteLn (sign);
end.

{ by Tovarisch Trunaev, 2025, Russia, Uray }
{ Om->Delf(); }
