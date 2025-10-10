my $freq = 25.0;

my ($t, $r);

$t = <>;
chomp $t;

if ($t == 0) {
	$r = -1;
} else {
	$r = 1.0 / $t;
	$r = ($r / $freq)
	$r /= 4.0;
}

say $r;

# by Tovarisch Trunaev, 2025, Russia, Uray
