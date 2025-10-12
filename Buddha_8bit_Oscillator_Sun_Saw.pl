my $length = 1.0; # Length of full rotation in seconds
my $startime;
my $step = 0;
my $offset = 0;
my $x;

my ($t, $r);

$t = <>;
chomp $t;

my $fm;
open $fm, '1';
my $memory = <$fm>;
close $fm;

chomp $memory;
$startime = $memory // $t;

$offset = $t - $startime;

$step = int ($offset / $length);
if ($step % 2 == 0) {
	$x = $offet - $step * $length;
	$r = sqrt(1 - $offset * $offset);
} else {
	$x = $offet - $step * $length;
	$r = -1 * sqrt(1 - $offset * $offset);
}

open $fm, '>1';
say $fm $t;
close $fm;

say $r;

# by Tovarisch Trunaev, 2025, Russia, Uray
