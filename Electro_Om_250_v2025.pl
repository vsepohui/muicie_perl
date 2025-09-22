my $freq = 250;
my $r = 1;

my ($t, $y);
my $half_freq;
my $step;
my $j;

$half_freq = $freq / 2;
$t = <>;
$t += 24*60*60*2;

if (($t == int ($t)) && (($t / $half_freq) == 0)) {
	$y = 0;
} else { 
	$step = int ($t / $half_freq);
	if (($step / 2) == 0) {
		$j = 1;
	} else {
		$j = -1;
    }
	$y = $j * sqrt (($r*$r) - ($t*$t));
}
say ($y);

# by Tovarisch Trunaev, 2025, Russia, Uray
