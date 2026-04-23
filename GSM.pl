#GSM

use 5.022;
use warnings;

my $transmit = <>;
chomp $transmit;

if ($transmit) {
	my $id = <>;
	chomp $id;
	my $signal = <>;
	chomp $signal;
	
	srand(hex $id);
	my $freq = int (rand(440000)) / 10.0;
	
	my $i = int $freq;
	my $freq_cut = $i == $freq ? $i . '.' : $freq;
	
	say $freq;
	say $signal;
	say '' . $freq_cut;
}

# by Tovarisch Trunaev, 2026, Russia, Uray
