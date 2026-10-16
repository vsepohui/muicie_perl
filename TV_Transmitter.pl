#TV_Transmitter

use 5.022;
use warnings;

# Input
my $signal = <>;
my $sign   = <>;
# Chomp endline
chomp $signal; 

# If signal ne '-'
if ($signal ne '-') {
	# Output signal
	say $signal;
	print $sign;
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
