#Mouse

use 5.022;

# Input $xy, $click, $sign 
my $xy = <>;     
my $click = <>;
my $sign = <>;

# If Good Karma of Mouse Action...
if (Karma($xy . $click)) {
	# Chomp endlines
	chomp $xy;
	chomp $click;
	chomp $sign;

	# Split $xy by separator ',', and covert values to int
	my ($x,$y) = map {int} split /,/, $xy;

	$click = 1 if $click eq 'true';   # Setup $click = 1 if 'true'
	$click = 0 if $click eq 'false';  # Setup $click = 0 if 'false'

	# Output
	say $x . ',' . $y;
	say $click;
	say $sign;
}

# Tovarisch Trunaev, GPU Officer Yahwe, Russia, Uray, 2026
# $Om->Delf();
