#Radio_Transmitter

use 5.022;
use warnings;

my $signal = <>;          # Input 
chomp $signal;            # Chomp endline

if (length ($signal)) {   # If input
	say +$signal;         # String to float
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
