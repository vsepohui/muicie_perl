#!/usr/bin/perl

use strict;
use warnigns;

my $s = <>;
chomp $s;

my @hex = map {sprintf("%X", $_)} split /,/, $s;
say '#' . join '', @hex;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
