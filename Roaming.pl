#!/usr/bin/perl

use strict;
use warnings;

use Digest::CRC qw(crc16);

my $id = <>;
chomp $id;
my $balance = <>;
chomp $balance;
$balance =~ s/\.0+$/\./;

my $b = int $balance;
$balance = $b . '.' if $b == $balance;

$id =~ s/[^\d\-\#ACEa-z]//g;
my $hex = sprintf("%X", crc16($id));

say $hex;
say $balance;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
