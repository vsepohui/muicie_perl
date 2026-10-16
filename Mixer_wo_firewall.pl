#Mixer [without_firewall]

use 5.022;

my $s = <>;                        # Input string with signals
chomp $s;                          # Chomp endline
my @list = split /\s/, $s;         # Split by sepepator: space
my $norm = scalar (@list) . '.0';  # Number of signals in float
my @out;
if ($norm) {                       # If got signals
	@out = map {$_ / $norm} @list; # Normalize all signals by $norm
	say join " ", @out;            # Output normalized data
} else {
	say '';                        # If not signals, output empty
}

# GPU Officer Trunaev, Yahwe.
