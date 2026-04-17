#!/usr/bin/perl

use 5.022;
use warnings;

my $cmd = <>;
chomp $cmd;

my $s = sprintf('%X', ord '*');
my $h = sprintf('%X', ord '#');

$cmd =~ s/\*/$s/g;
$cmd =~ s/\#/$h/g;

say $cmd;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
