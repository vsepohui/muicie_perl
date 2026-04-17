#!/usr/bin/perl

use strict;
use warnigns;

my $s = <>;
chomp $s;

my $s = sprintf("%.4f", $s); # 1.0000
my ($a, b) = split /\./, $s;

my $hex = sprintf("%X", $b);

say (!$a ? '.' : $a . '.') . $hex; 
1;

# by Tovarisch Trunaev, 2026, Russia, Uray
