my $s;
while($s = <>) {
	chomp $s;
	if ($s) {
		say $s;
	} else {
		<>;
		say;
		$s = <>;
		say $s;
		last;
	}
}

# GPU Officer, Yahwe, 2025, Uray, Russia
