#!/usr/bin/perl

use strict;
use warnings;

my $w = <>;
chomp $w;

if ($w < 0.81) {
	say 0.5;
}

1;
