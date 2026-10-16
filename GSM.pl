#GSM

use 5.022;
use warnings;

my $transmit = <>;   # Input flag of transmittion
chomp $transmit;     # Chomp endline 
 
if ($transmit) {     # If transmission
	my $id = <>;     # Input Device ID
	chomp $id;       # Chomp endline 
	my $signal = <>; # Input signal
	chomp $signal;   # Chomp endline
	
	srand(hex $id);  # Setup srand from something
	# Calculating freq for transmission
	my $freq = int (rand(440000)) / 10.0;
	
	# Integer part of freq
	my $i = int $freq;
	
	# $freq_cut = $freq, int $freq + '.' + $freq, if without fractional part
	my $freq_cut = $i == $freq ? $i . '.' : $freq;
	
	# Output
	say $freq;
	say $signal;
	say '' . $freq_cut; # Convert to string last part
}

# by Tovarisch Trunaev, 2026, Russia, Uray
