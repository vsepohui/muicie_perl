#Oscillator

use 5.022;

my $freq = 49.0 / 60;

my $t = <>;  # Input timestamp
chomp $t;    # Chomp endline

$t /= $freq; # Divide on Freq

say $t;      # Output

# by Tovarisch Trunaev, 2025, Russia, Uray
