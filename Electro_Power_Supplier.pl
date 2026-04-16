#!/usr/bin/perl

use strict;
use warnings;

my $s = <>;
chomp $s;

$s =~ s/[^\d\.]//g;
say $s;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
