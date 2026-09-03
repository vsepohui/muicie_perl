#Buddha_8_Bit_Oscillator_Sun

use 5.022;

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

unless (length $memory) {
	$memory = $t;
	open $fm, '>1';
	say $fm $memory;
	close $fm;
}

$startime = $memory;


$offset = $t - $startime;

my $step = int $offset;
if ($step % 2 == 0) {
	$x = $offset - $step;
	$r = sqrt(1 - $x * $x);
} else {
	$x = $offset - $step;
	$r = -1 * sqrt(1 - $x * $x);
}
	
say $r;

# by Tovarisch Trunaev, 2025, Russia, Uray
