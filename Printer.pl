#Printer

use 5.022;

my $s;
while($s = <>) {   # Input while possible
	chomp $s;      # Chomp endline
	if ($s) {      # If input
		say $s;      # Output same
	} else {       # Else 
		<>;          # Got one more line
		say;         # Output endline
		$s = <>;     # Input one more
		say $s;      # Input same
		last;        # Break the loop
	}
}

# GPU Officer, Yahwe, 2025, Uray, Russia
