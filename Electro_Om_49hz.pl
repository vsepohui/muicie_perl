#Electro [Om_250]

use 5.022;

my $freq = 49; # Number on full "waves"-loops in one second

my $f = $freq;
my $r = 1; # Radius on circle in model

my $t; # Input, timestamp
my $y;
my $half_freq; 
my $step;
my $j;

$half_freq = $f * 2;
$t = <>;

if (($t == int ($t)) && (($t / $half_freq) == 0)) {
	$y = 0;
} else { 
	$step = int ($t / $half_freq);
	if (($step % 2) == 0) {
		$j = 1;
	} else {
		$j = -1;
    }
    $t -= $step * $half_freq;
	$y = $j * sqrt (($r*$r) - ($t*$t));
}
say ($y);

# by Tovarisch Trunaev, 2025, Russia, Uray
