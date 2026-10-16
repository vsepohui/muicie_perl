#Electro_Power_Supplier

use 5.022;
use warnings;

my $s = <>; # Input power value
chomp $s;   # Chomp endline

# Remove leading non-digits
$s =~ s/^\D//g;

# Convert to number, and output!
say +$s;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
