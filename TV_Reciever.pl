#TV_Reciever

use 5.022;
use warnings;

# Input
my $signal = <>;
my $sign   = <>;
# Chomp endline
chomp $signal;  

# If signal ne '0'
if ($signal ne '-') {
	# Output signal
	say $signal;
	print $sign;
} else { # Else
	say "0,0,0";
	say "No signal"; # sign
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
