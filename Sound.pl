#!/usr/bin/perl

use 5.022;

my $freq = 250.0;
my $SIM = 60.0;
my ($t, $a, $r);

$a = $freq / $SIM;
$t = <>;
$r = $a * $t;
 
say $r;

# Code by GPU Officer Yahwe
