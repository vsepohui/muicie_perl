#Stream_Audio

use 5.022;
use warnings;

my $s = <>; # Input
chomp $s;   # Chomp endline

$s = sprintf("%.4f", $s);      # Conver to float %.4f
my ($a, $b) = split /\./, $s;  # Split by '.'

my $hex = sprintf("%X", $b);   # Convert floating part to hex

# Output $int.$hex, but if $int == 0: output - '.' + $hex
say ((!$a ? '.' : $a . '.') . $hex);  
1;

# by Tovarisch Trunaev, 2026, Russia, Uray
