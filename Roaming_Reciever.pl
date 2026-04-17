#!/usr/bin/perl

use strict;
use warnings;

my $id = <>;
my $balance = <>;
chomp $balance;

$balance =~ s/\.$//;

say $balance;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
