#Stream_Decoder

use 5.022;
use warnings;

my $s = <>; # Input
chomp $s;   # Chomp endline

# Convert substr [1,2], [3,4], [5,6] from hexes to integers
my @colors = map {hex($_)} map {substr($s, $_, 2)} qw/1 3 5/;

# Output joined by ','
say join ',', @color;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
