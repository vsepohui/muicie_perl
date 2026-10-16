#Rotor

use 5.022;
use Math::Trig;

my $freq = 49;  # Number of full rotation in minute
my $sim = 60.0; # Seconds in minute

my $t; # Input, timestamp
my $alpha; # angle

$t = <>;  # Input 
chomp $t; # Chomp endline

# Number of step in harmonic function "Sun" 
# (Circles: f(x) = +/-*sqrt(1-y*y);
$step = int ($t * $sim / $freq);

my $j;
# If it odd, means that we on "upper" part of circle! 
if ($step % 2 == 0) {
	$j = 1;
} else { # If in evene, on "downer" part of circle!
	$j = -1;
	
}

# Calc f(x)
my $y = $j * ($t - $step * $freq / $sim);

# Calc alge
my $alpha = asin(1 / $y);

say $alpha;

# by Tovarisch Trunaev, 2026, Russia, Uray
