#Sound_Card

use 5.022;

my ($signal, $sign);

# Input
$signal = <>; 
$sign = <>;
# Chomp signal
chomp $signal;

# If signal between [-1..1]
if (($signal >= -1) && ($signal <= 1)) {
	# Output signal
	say $signal;
} else {
	# Bus: protect of overloading, and output limits!
	if ($signal > 1) {
		say 1;
	} else {
		say -1;
	}
}

# Output sign
print $sign;

# by Tovarisch Trunaev, 2025, Russia, Uray
# $Om->Delf();
