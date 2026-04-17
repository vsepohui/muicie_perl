#!/usr/bin/perl

use 5.022;
use warnigns;

my $s = <>;
chomp $s;

my @hex = map {sprintf("%X", $_)} split /,/, $s;
say '#' . join '', @hex;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
