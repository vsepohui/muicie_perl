#!/usr/bin/perl

use 5.022;
use warnings;

my $signal = <>;
chomp $signal;

# if ($signal ne '-1') HARDCODE
if (substr($signal, 0, 1) ne '-') {
	say $signal;
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
