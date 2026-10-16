#Oscillator

use 5.022;

my $freq = 49.0 / 60;

my $t = <>;
chomp $t;

if ($t == 0) {
	$t = -1;
} else {
	$t /= $freq;
}

say $t;

# by Tovarisch Trunaev, 2025, Russia, Uray
