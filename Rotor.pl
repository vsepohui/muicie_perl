#Buddha_8_Bit_Oscillator_Sun

use 5.022;
use Math::Trig;

my $freq = 49;  # Number of full rotation in minute
my $sim = 60.0; # Seconds in minute

my $t; # Input, timestamp
my $alpha; # angle

$t = <>;
chomp $t;

$step = int ($t * $sim / $freq);

if ($step % 4 == 0) {
	$x = $t - $step * $freq / $sim;
} else {
	$x = $t- $step * $freq / $sim;
}

my $alpha = acos(1 / $x);

say $alpha;

# by Tovarisch Trunaev, 2026, Russia, Uray
