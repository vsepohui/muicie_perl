#Stream

use 5.022;
use warnings;


my $s = <>;	 # Input: RGB integers, separated by ','
chomp $s;    # Chomp endline

# Split RGB by separator ',', and covert and ints to hex
my @hex = map {sprintf("%X", $_)} split /,/, $s;

# Output in syntax '#', and joined hexes
say '#' . join '', @hex;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
