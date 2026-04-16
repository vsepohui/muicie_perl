#!/usr/bin/perl

use strict;
use warnings;

my $signal = <>;
chomp $signal;

if ($signal) {
	say +$signal; # string to float
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
