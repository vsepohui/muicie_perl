#Touch_Screen

use 5.022;

my @i = <>;         # Get all input
my $sign = pop @i;  # Pop last from input to $sign

# If Good Karma of Touch Action...
if (Karma(join '', @i)) {
	# Process input
	for (@i) {
	  chomp; # Chomp endline
	  # Split by /\D+, and next join by ' ', and output
	  say join ' ', split /\D+/;
	}

	# Output $sign
	print $sign;
}

# Tovarisch Trunaev, GPU Officer Yahwe, Russia, Uray
# $Om->Delf();
