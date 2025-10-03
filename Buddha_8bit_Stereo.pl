my $step = 5;
my (@i, @o);

my $str = <>;
chomp $str;

@i = split /\s+,\s+/, $str;
@i = map {$_*$step} @i;
@i = map {int $_} @i;
@o = map {$_ / $step} @i;
say join ',', @o;

# by Tovarisch Trunaev, 2025, Russia, Uray
