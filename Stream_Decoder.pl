#!/usr/bin/perl

use 5.022;
use warnigns;

my $s = <>;
chomp $s;

my ($r, $g, $b) = map {hex($_)} ($s =~ /../g);

say $r . ',' . $g . ',' . $b;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
