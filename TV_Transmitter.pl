#!/usr/bin/perl

use strict;
use warnings;

my $signal = <>;
chomp $signal;

if ($signal ne '-1') {
	say $signal;
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
