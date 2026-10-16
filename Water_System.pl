#Water_System

use 5.022;
use warnings;

my $w = <>; # Input power level
chomp $w;   # Chomp endline

# If power level < 0.42 set output power = 100%
if ($w < 0.42) {
	say 1;
} elsif ($w < 0.81) { # If power level < 0.81 set output power = 81%
	say 0.8;
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
