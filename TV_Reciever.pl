#!/usr/bin/perl

use strict;
use warnings;

my $signal = <>;
chomp $signal;

# if ($signal ne '-1') HARDCODE
if (substr($signal, 0, 1) ne '-') {
	say $signal;
} else {
	say "0,0,0";
	say "No signal"; # sign
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
