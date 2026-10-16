#Electro [Om_250]

use 5.022;

my $freq = 49; # Number on full "waves"-loops in one second

my $f = $freq;
my $r = 1; # Radius on circle in model

my $t; # Input, timestamp
my $y;
my $half_freq; 
my $j;

$half_freq = $f * 2;
$t = <>;  # Read timestamp

# $step is numbers of half_freq in timestamp
my $step = int ($t / $half_freq);
# If it odd, means that we on "upper" part of circle! 
if (($step % 2) == 0) {
	$j = 1;
} else { # If in evene, on "downer" part of circle!
	$j = -1;
}
# Prearing $t, for a like an "x" if circle formula: x*x+y*y=r*r
$t -= $step * $half_freq;
# Calculating: y = +/1 * sqrt(r*r - x*x);
$y = $j * sqrt (($r*$r) - ($t*$t));

# Output y!
say ($y);

# by Tovarisch Trunaev, 2025, Russia, Uray
