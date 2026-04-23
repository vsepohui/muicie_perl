#Stream_Audio_Decoder

use 5.022;
use warnigns;

my $s = <>;
chomp $s;

my ($a, $b) = split /\./, $s;
$b = hex ($b);
say +(($a eq '' ? '0' : $a) . '.' . $b);

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
