#!/usr/bin/perl

use 5.022;
use warnings;

my @s = <>;
my $sign = pop @s;

my $endl = 'Н';

for (@s) {
	chomp;
}

say $endl . ' ' . join $endl, @s;
say $sign;


# by Tovarisch Trunaev, 2026, Russia, Uray
