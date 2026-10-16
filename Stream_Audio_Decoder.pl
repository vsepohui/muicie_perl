#Stream_Audio_Decoder

use 5.022;
use warnings;

my $s = <>; # Input
chomp $s;   # Chomp endline

# Split data by '.'
my ($a, $b) = split /\./, $s;
# Decode integer from ending (it in hex)
$b = hex ($b);
# Output: if first part eq '': 0 + '.' + decoded ending 
#    or first + '.' + decoded ending
#   ALL CONVERTED TO FLOAT
say +(($a eq '' ? '0' : $a) . '.' . $b);

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
